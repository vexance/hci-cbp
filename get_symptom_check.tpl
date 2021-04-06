%include('template_header.tpl')
<body>

<div class="w3-card-4 w3-margin-left w3-margin-right w3-margin-top w3-margin-bottom">
    <div class="w3-container w3-blue-grey"><h4 class="w3-center">CBP Symptom Checker</h4></div>
    <form class="w3-padding-large" action="/SymptomCheck" method="POST">
        <p>One of the most pressing concerns someone may have is whether or not health symptoms they are currently experiencing could be caused by Covid-19. If you have any convers, pleasee nter them below to check whether reputable sources identify them as possible indicators of Covid-19.</p>
        <input name="input_symptoms" type="text" placeholder="Symptoms" />
        
        <br />
        <br />
        <input name="input_submit" type="submit" value="Check Symptoms" class="w3-button w3-green" />
    </form>
    
    <div class="w3-container w3-blue-grey">
		<div class="w3-left"><a href="/Home" class="w3-button w3-teal w3-margin">Previous</a></div>
		<div class="w3-right"><a href="/HealthyHabits" class="w3-button w3-teal w3-margin">Next</a></div>
	</div>

</div>

</body>
%include('template_footer.tpl')