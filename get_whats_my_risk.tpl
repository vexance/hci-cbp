%include('template_header.tpl')
<body>
    
    <div class="w3-card-4 w3-margin-left w3-margin-right w3-margin-top w3-margin-bottom">
        <div class="w3-container w3-blue-grey"><h4 class="w3-center">What's My Risk? - A Covid-19 Risk Assessment Tool</h4></div>
        <form class="w3-padding-large" action="/WhatsMyRisk" method="POST">
            
            % # Step One: Collect user first and last name
            <div id="form_step_one">
                <p id="para_one">This questionnaire will provide a rough estimate as to whether an individual is at a regular, increased, or high risk for a severe reaction to Covid-19. Results of the tool are not intended to influence health or behavioral decisions, but merely provide a user with an idea of how their current condition might affect Covid-19 symptoms.<br /><br />We will start by getting your name. This information is simply used to customize your results and will not be retained in any database or system.</p>
                <input id="input_fname" name="fname" type="text" placeholder="First Name" />
                <input id="input_lname" name="lname" type="text" placeholder="Last Name" />
            </div>


            % # Step Two: Collect user age
            <div id="form_step_two" hidden="true">
                <p id="para_two">Why hello there, FIRST_NAME. The next thing we'll need is your age.</p>
                <input id="input_age" name="age" type="number" placeholder="Age"/>
            </div>

            % # Step Three: Pre-existing conditions (Increased risk for ANY age - higher risk influence)
            <!-- https://www.cdc.gov/coronavirus/2019-ncov/need-extra-precautions/people-with-medical-conditions.html -->
            <div id="form_step_three" hidden="true">
                <p id="para_three">Excellent, thank you!<br /><br />Now, do you have any of these pre-existing health conditions or lifestyle habits? If not, just select 'Next'.</p>
                <div class="w3-row">
                    <div class="w3-half">
                        <input name="condition_cancer" type="checkbox" value="Cancer"><label for="condition_cancer"> Cancer</label><br />
                        <input name="condition_chronic_kidney" type="checkbox" value="Chronic Kidney Disease"><label for="condition_chronic_kidney"> Chronic Kidney Disease</label><br />
                        <input name="condition_copd" type="checkbox" value="COPD"><label for="condition_copd"> Chronic Obstructive Pulmonary Disease (COPD)</label><br />
                        <input name="condition_down_syndrome" type="checkbox" value="Down Syndome"><label for="condition_down_syndrome"> Down Syndrome</label><br />
                        <input name="condition_heart_conditions" type="checkbox" value="Heart Conditions"><label for="condition_heart_conditions"> Heart Conditions</label><br />
                        <input name="condition_immunocompromised_state" type="checkbox" value="Immunocompromsied State (organ)"><label for="condition_immunocompromised_state"> Immunocompromised State (from organ transplant)</label><br />
                    </div>
                    <div class="w3-half">
                        <input name="condition_obesity" type="checkbox" value="Obesity"><label for="condition_obesity"> Obesity</label><br />
                        <input name="condition_severe_obesity" type="checkbox" value="Severe Obesity"><label for="condition_severe_obesity"> Severe Obesity</label><br />
                        <input name="condition_pregnancy" type="checkbox" value="Pregnancy"><label for="condition_pregnancy"> Pregnancy</label><br />
                        <input name="condition_sickle_cell" type="checkbox" value="Sickle Cell Disease"><label for="condition_sickle_cell"> Sickle Cell Disease</label><br />
                        <input name="condition_smoking" type="checkbox" value="Smoking"><label for="condition_smoking"> Smoking</label><br />
                        <input name="condition_diabetes_two" type="checkbox" value="Type 2 Diabetes"><label for="condition_diabetes_two"> Type 2 Diabetes Mellitus</label><br />
                    </div>
                </div> <!-- Checkbox Row -->
            </div>

            % # Step Four: Pre-existing conditions (Possible increase risk - lower risk influences)
            <!-- https://www.cdc.gov/coronavirus/2019-ncov/need-extra-precautions/people-with-medical-conditions.html -->
            <div id="form_step_four" hidden="true">
                <p id="para_three">Here's a few more conditions to review. If you have a condition or habit you are concerned about that has not been listed, feel free to enter it below. If there are multiple conditions that you would like to add, simply seperate them with commas.</p>
                <div class="w3-row">
                    <div class="w3-half">
                        <input name="condition_asthma" type="checkbox" value="Asthma"><label for="condition_asthma"> Asthma (moderate to severe)</label><br />
                        <input name="condition_cerebrovascular" type="checkbox" value="Cerebrovascular Disease"><label for="condition_cerebrovascular"> Cerebrovascular Diseas</label><br />
                        <input name="condition_cystic_fibrosis" type="checkbox" value="Cystic Fibrosis"><label for="condition_cystic_fibrosis"> Cystic Fibrosis</label><br />
                        <input name="condition_hypertension" type="checkbox" value="Hypertension or High Blood Pressure"><label for="condition_hypertension"> Hypertension or High Blood Pressure</label><br />
                        <input name="condition_immunocompromised_state_other" type="checkbox" value="Immunocompromised State (other)"><label for="condition_immunocompromised_state_other"> Immunocompromised State (other)</label><br />
                        <input name="condition_neurologic" type="checkbox" value="Neurologic Conditions"><label for="condition_neurologic"> Neurologic Conditions (e.g., dementia)</label><br />
                    </div>
                    <div class="w3-half">
                        <input name="condition_liver_disease" type="checkbox" value="Liver Disease"><label for="condition_liver_disease"> Liver Disease</label><br />
                        <input name="condition_overweight" type="checkbox" value="Overweight"><label for="condition_overweight"> Overweight</label><br />
                        <input name="condition_pulmonary_fibrosis" type="checkbox" value="Pulmonary Fibrosis"><label for="condition_pulmonary_fibrosis"> Pulmonary Fibrosis</label><br />
                        <input name="condition_thalassemia" type="checkbox" value="Thalassemia"><label for="condition_thalassemia"> Thalassemia</label><br />
                        <input name="condition_diabetes_one" type="checkbox" value="Type 1 Diabetes"><label for="condition_diabetes_one"> Type 1 Diabetes Mellitus</label><br />
                    </div>
                </div> <!-- Checkbox Row -->
                <br />
                <input id="input_condition_other" name="condition_other" type="text" placeholder="Other" width="200"/>
            </div>

            <div id="form_step_complete" hidden="true">
                <p id="para_complete">Okay, thanks for the information FIRST_NAME. The last thing to do is select 'Calculate Risk' to see your results.</p>
            </div>
            <hr />
            <div id="btn_back" hidden="true"> Back </div>
            <div id="btn_next" class="w3-button w3-green"> Next </div>
            <input id="input_submit" name="submit" type="submit" value="Calculate Risk" hidden="true" disabled="true"/>
            <br />
        </form>
        
        <div class="w3-container w3-blue-grey">
            <div class="w3-left"><a href="/StayingConnected" class="w3-button w3-teal w3-margin">Previous</a></div>
            <div class="w3-right"><a href="/MythsVsFacts" class="w3-button w3-teal w3-margin">Next</a></div>
        </div>
        
    </div>

</body>

<script>
$(document).ready(function() {
    // Protect from early form submission
    $('#input_submit').submit(function() {
        console.log('Test')
        if ($('#form_step_complete').is(':visible'))
            $('#input_submit').submit();
        else return true;
    })

    $('#btn_next').click(function() {
        var fname = $('#input_fname').val();
        // Probably easier to set inner HTML rather than show / hiding each paragraph...
        if ($('#form_step_one').is(':visible')) {
            // Set first names in paragraphs that use it
            var paragraph = $('#para_two').text();
            paragraph = paragraph.replace('FIRST_NAME', fname);
            $('#para_two').text(paragraph);

            paragraph = $('#para_complete').text()
            paragraph = paragraph.replace('FIRST_NAME', fname);
            $('#para_complete').text(paragraph);

            $('#btn_back').addClass('w3-button w3-grey')
            $('#btn_back').show();
            $('#form_step_one').hide();
            $('#form_step_two').show();
        }

        else if ($('#form_step_two').is(':visible')) {
            $('#form_step_two').hide();
            $('#form_step_three').show();
        }

        else if ($('#form_step_three').is(':visible')) {
            $('#form_step_three').hide();
            $('#form_step_four').show();
        }

        else if ($('#form_step_four').is(':visible')) {
            $('#form_step_four').hide();
            $('#form_step_complete').show();

            // Change buttons that are visible
            $('#btn_next').hide();
            $('#input_submit').show();
            $('#input_submit').addClass('w3-button w3-green');
            $('#input_submit').prop('disabled', false)
        }

    });

    $('#btn_back').click(function(){
        if ($('#form_step_two').is(':visible')) {
            $('#form_step_two').hide();
            $('#form_step_one').show();

            $('#btn_back').removeClass('w3-button w3-grey')
            $('#btn_back').hide();
        }

        else if ($('#form_step_three').is(':visible')) {
            $('#form_step_three').hide();
            $('#form_step_two').show();
        }

        else if ($('#form_step_four').is(':visible')) {
            $('#form_step_four').hide();
            $('#form_step_three').show();
        }

        else if ($('#form_step_complete').is(':visible')) {
            $('#form_step_complete').hide();
            $('#form_step_four').show();

            // Change buttons that are visible
            $('#btn_next').show();
            $('#input_submit').prop('disabled', true)
            $('#input_submit').hide();
            $('#input_submit').removeClass('w3-button w3-green')
        }
    });
})
</script>


%include('template_footer.tpl')