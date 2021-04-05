%include('template_header.tpl')

<body>

    <div class="w3-card-4 w3-margin-left w3-margin-right w3-margin-top w3-margin-bottom">
        <div class="w3-container w3-blue-grey"><h4 class="w3-center">Symptom Check Results</h4></div>
        % if len(indicators) == 0:
            <p class="w3-margin-right w3-margin-left">Great news! None of the items you entered are recognized by the CDC as potential indicators of Covid-19.</p>
        % else:
            <p class="w3-margin-right w3-margin-left">One or more symptoms that you mentioned could potentially be reactions to Covid-19. More details regarding the breakdown of your results can be seen below.</p>
        % end
        <div class="w3-container w3-margin-left w3-margin-right w3-margin-bottom">
        % if len(indicators) != 0:
            <p>The following symptoms you entered are recognized by the CDC as potential symptoms of Covid-19.</p>
            <ul>
                % for item in indicators:
                    <li>{{item}}</li>
                % end
            </ul>
        % end
        % if len(benigns) != 0:
            <p>The following symptoms you mentioned are not currently listed by the CDC as potential effects of Covid-19.</p>
            <ul>
                % for item in benigns:
                    <li>{{item}}</li>
                % end
            </ul>
        % end
        <br />
        <a href="/Home" class="w3-margin-bottom"><div class="w3-button w3-green"> Home </div></a>
        </div>
        <br />
    </div>

    <div class="w3-container w3-blue-grey">
		<div class="w3-left"><a href="/HealthyHabits" class="w3-button w3-teal w3-margin">Previous</a></div>
		<div class="w3-right"><a href="/SocialDistancing" class="w3-button w3-teal w3-margin">Next</a></div>
	</div>

</body>

%include('template_footer.tpl')
