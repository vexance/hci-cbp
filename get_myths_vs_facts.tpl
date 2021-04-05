%include('template_header.tpl')

<body>
    <div class="w3-card-4 w3-margin-top w3-margin-bottom w3-margin-right w3-margin-left">
        <div class="w3-container w3-blue-grey"><h4 class="w3-center">Covid-19 Myths vs. Facts</h4></div>
        
        <div class="w3-container w3-margin-left w3-margin-right">
            <p>The following are some common myths about the Covid-19 vaccines. Please select the drop-down items to view the official facts provided by the <a href="https://www.cdc.gov/coronavirus/2019-ncov/vaccines/facts.html" target="_blank">CDC</a>. If these FAQs do not answer your questions, we reccommend you consult the <a href="https://www.cdc.gov/coronavirus/2019-ncov/" target="_blank">CDC website</a></p>
        </div>

        <div class="w3-container">
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="myth_one" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Myth: The Covid-19 vaccines can make someone sick with Covid-19.</h5></div>
                <div id="fact_one" class="w3-container" hidden="true">
                    <p>Fact: None of the Covid-19 vaccines recommended by the FDA contain the live virus that is currently affecting the world. Getting a Covid vaccine <i>cannot</i> make you contract the virus.</p>
                </div>
            </div>
                
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="myth_two" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Myth: Taking the Covid-19 vaccine will make me test positive for viral Coronavirus tests.</h5></div>
                <div id="fact_two" class="w3-container" hidden="true">
                    <p>Fact: None of the recommended Covid-19 vaccines will make someone test positive for the virus on a viral test. Viral tests will determine whether or not you have a current infection; they do not check for antibodies against the virus.</p>
                </div>
            </div>
                
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="myth_three" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Myth: If I have already recovered from Covid-19, I don't need to take the vaccine.</h5></div>
                <div id="fact_three"  class="w3-container" hidden="true">
                    <p>Fact: While recovering from the Coronavirus will protect you for some time, experts do not know how long individuals will be resistant to the virus. Healthcare professionals recommend people get vaccinated regardless of whether they have had Covid-19 in the past.</p>
                </div>
            </div>
        
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="myth_four" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Myth: The vaccine won't really protect me from getting the virus.</h5></div>
                <div id="fact_four"  class="w3-container" hidden="true">
                    <p>Fact: The Covid-19 vaccine has been shown to reduce the chance of people contracting the virus. It does this by training someone's immune system to recognize and fight Covid-19.</p>
                </div>
            </div>

            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="myth_five" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Myth: The Covid-19 vaccine will change my DNA.</h5></div>
                <div id="fact_five"  class="w3-container" hidden="true">
                    <p>Fact: The Covid-19 vaccines do not alter DNA. The vaccines work with the body's natural defenses to help develop immunity to the disease.</p>
                </div>
            </div>

        </div>
        <br />

		<div class="w3-container w3-blue-grey">
			<div class="w3-left"><a href="/WhatsMyRisk" class="w3-button w3-teal w3-margin">Previous</a></div>
			<div class="w3-right"><a href="/FAQ" class="w3-button w3-teal w3-margin">Next</a></div>
		</div>

	</div>
</body>

<script>
	$(document).ready(function(){
		$('#myth_one').click(function(){
			$('#fact_one').slideToggle();
		});
		$('#myth_two').click(function(){
			$('#fact_two').slideToggle();
		});
		$('#myth_three').click(function(){
			$('#fact_three').slideToggle();
		});
		$('#myth_four').click(function(){
			$('#fact_four').slideToggle();
		});
		$('#myth_five').click(function(){
			$('#fact_five').slideToggle();
		});
		$('#myth_six').click(function(){
			$('#fact_six').slideToggle();
		});
	});
	</script>

%include('template_footer.tpl')