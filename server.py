import bottle

config = {
    'CovidSymptoms': [ # https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html
        'fever', 'chills', 'cough', 'coughing', 'shortness of breath', 'difficulty breathing', 'fatigue',
        'muscle aches', 'body aches', 'loss of taste', 'loss of smell', 'no taste', 'no smell', 
        'sore throat', 'congestion', 'runny nose', 'nausea', 'vomitting', 'diarrhea', 'trouble breathing',
        'persistent chest pain', 'chest pain', 'pressure in the chest', 'pain in the chest', 'confusion',
        'new confusion', 'inability to stay awake', 'inability to wake', 'discolored skin', 'pale skin',
        'discolored lips', 'pale lips', 'discolored nails', 'pale nails'
    ],
    'HighRiskConditions': [
        'Cancer', 'Chronic Kidney Disease', 'COPD', 'Down Syndome', 'Heart Conditions', 'Immunocompromsied State (organ)', 
        'Obesity', 'Severe Obesity' ,'Pregnancy', 'Sickle Cell Disease', 'Smoking', 'Type 2 Diabetes'
    ],
    'RiskConditions': [
        'Asthma', 'Cerebrovascular Disease', 'Cystic Fibrosis', 'Hypertension or High Blood Pressure', 'Immunocompromised State (other)',
        'Neurologic Conditions', 'Liver Disease' ,'Overweight', 'Pulmonary Fibrosis', 'Thalassemia', 'Type 1 Diabetes'
    ]
}

@bottle.get('/')
def get_index():
    return bottle.template('get_index')

@bottle.get('/Home')
def get_home():
    return bottle.template('get_index')

@bottle.get('/WhatsMyRisk')
def get_whats_my_risk():
    return bottle.template('get_whats_my_risk')

@bottle.post('/WhatsMyRisk')
def post_whats_my_risk_post():
    age = int(bottle.request.forms.get('age').strip())
    fname = bottle.request.forms.get('fname').strip()
    
    risk_score = 0
    breakdown = []
    if age > 55:
        breakdown.append( f'You informed us that your age is {age} years. Older aged individuals are at an increased risk for severe reactions to Covid-19')
    else:
        breakdown.append(f'You informed us that your age is below 55 years. Younger individuals are not currently identified as being at increased risk.')

    for param in bottle.request.forms:# https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html
        val = bottle.request.forms.get(param)
        if val in config['HighRiskConditions']:
            breakdown.append(f'Your existing habit/condition of {val} increases the risk that you will have a severe reaction to the symptoms of Covid-19.')
            risk_score += 6
        elif val in config['RiskConditions']:
            breakdown.append(f'Individuals with pre-existing health conditions such as {val} may be at increased risks of severe reactions to the Coronavirus.')
            risk_score += 3

    risk = 'a regular'
    if risk_score > 10:
        risk = 'a high'
    elif risk_score > 4:
        risk = 'an increased'
    msg = f'Based off your responses to the questionnaire, we have determined you are at {risk} risk for severe reactions to Covid-19. A breakdown of factors contributing to your assessment can be seen below.'
    
    return bottle.template('post_whats_my_risk', fname = fname, msg = msg, breakdown = breakdown)

@bottle.get('/SymptomCheck')
def get_symptom_check():
    return bottle.template('get_symptom_check')

@bottle.post('/SymptomCheck')
def post_symptom_check_post():
    submission = bottle.request.forms.get('input_symptoms', '').strip()
    symptoms = submission.lower().split(',')
    if 'and' in symptoms:
        symptoms.remove('and')
    
    indicators = []
    benigns = []
    for symptom in symptoms:
        symptom = symptom.strip()
        if symptom in config['CovidSymptoms']:
            indicators.append(symptom.capitalize())
        else:
            benigns.append(symptom.capitalize())

    if len(indicators) == 0:
        msg = 'The symptoms you entered do not map to any known Covid-19 symptoms listed by the CDC.'
    else:
        msg = f'The CDC recognizes a few of the items you entered as potential symptom(s) of Covid-19. We recommend you consult with your healthcare professional for additional guidance.'
    
    return bottle.template('post_symptom_check', indicators = indicators, benigns = benigns)

@bottle.get('/HealthyHabits')
def get_healthy_habits():
    return bottle.template('get_healthy_habits')

@bottle.get('/MonitoringHealth')
def get_monitoring_health():
    return bottle.template('get_monitoring_health')

@bottle.get('/SocialDistancing')
def get_social_distancing():
    return bottle.template('get_social_distancing')

@bottle.get('/StayingConnected')
def get_staying_connected():
    return bottle.template('get_staying_connected')

@bottle.get('/MythsVsFacts')
def get_myths_vs_facts():
    return bottle.template('get_myths_vs_facts')

@bottle.get('/FAQ')
def get_faq():
    return bottle.template('get_faq')

@bottle.route('/static/<filepath:path>')
def serve_static(filepath):
    return bottle.static_file(filepath, root='./static/')

bottle.run(host='localhost', port=80)
