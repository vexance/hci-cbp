%include('template_header.tpl')

<style>
img {
  border-radius: 50%;
}
</style>
<body>
    <div class="w3-card-4 w3-margin-top w3-margin-bottom w3-margin-right w3-margin-left">
        <div class="w3-container w3-blue-grey"><h4 class="w3-center">Healthy Habits</h4></div>
        
        <div class="w3-container w3-margin-left w3-margin-right">
            <p>Until there is a vaccine to protect against COVID-19, the best way to protect yourself is to avoid being exposed to the virus that causes COVID-19. The following healthy habits – when combined – are the best ways to protect yourself and help reduce the spread of COVID-19.</p>
        </div>

        <div class="w3-container">
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_one" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Stay Home</h5></div>
                <div id="answer_one" class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/stayHome.png" tyle="width:300px"/>
							</td>
							<td>    
								<p>You’re safest in your own home, so avoid going out unless it’s essential. If you need to go out, being outdoors in the fresh air is the second best alternative. The risk of infection increases when you go indoors (other than your home) because the virus spreads from person to person via respiratory droplets when an infected person coughs, sneezes, or speaks. Think about it as “Avoiding the 3 Cs”: Close spaces with poor ventilation, Crowded places with groups of people, and Close-contact settings like one-on-one conversations. </p>
								<p>For more detailed information, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/how-covid-spreads.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>

                </div>
            </div>
                
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_two" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Practice Social Distancing</h5></div>
                <div id="answer_two" class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/distance.png" tyle="width:300px"/>
							</td>
							<td>  
								<p>When you do go out, protect yourself by practicing social distancing. This includes staying at least six feet away from other people. COVID-19 spreads mainly among people who are in close contact (within about 6 feet) for a prolonged period. Since people can spread the virus before they know they are sick, it is important to stay at least 6 feet away from others when possible, even if you — or they — do not have any symptoms. Social distancing is especially important for people who are at higher risk for severe illness from COVID-19.</p>
				   
								<p>For more detailed information, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/symptoms.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>
                </div>
            </div>
                
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_three" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Cover Your Face</h5></div>
                <div id="answer_three"  class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/mask.png" tyle="width:300px"/>
							</td>
							<td> 
								<p>Wear a mask or other type of face covering when you are not able to practice safe social distancing, such as when you are at the grocery store, pharmacy, hardware store, or using any form of public transportation. It is important to also wear a mask when you are outside but can’t maintain social distancing from other people not in your household. If you’re out in the open at a park, hiking trail or non-crowded beach, there is no need to wear a mask.</p>
								<p>For more detailed information, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/symptoms-testing/testing.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>
                </div>
            </div>
        
            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_four" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Hand Hygiene</h5></div>
                <div id="answer_four"  class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/washHands.gif" tyle="width:300px"/>
							</td>
							<td> 
								<p>The CDC recommends these five steps every time you wash your hands:</p>
									<ul class="w3-ul w3-border">
										<li>Wet your hands with clean, running water (warm or cold) and apply soap.</li>
										<li>Lather your hands by rubbing them together with the soap. Lather the backs of your hands, between your fingers, and under your nails.</li>
										<li>Scrub your hands for at least 20 seconds. Need a timer? Hum the “Happy Birthday” song from beginning to end twice.</li>
										<li>Rinse your hands well under clean, running water.</li>
										<li>Dry your hands using a clean towel or air dry them.</li>
									</ul>
								<p>According to the World Health Organization, the process of washing your hands, from start to finish, should take 40-60 seconds. This graphic makes it easy to remember!</p>
								<p>For more detailed information, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/prevent-getting-sick/prevention.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>
                </div>
            </div>

            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_five" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Avoid Touching Your Nose, Eyes, and Mouth</h5></div>
                <div id="answer_five"  class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/avoid.png" tyle="width:300px"/>
							</td>
							<td> 
								<p>It’s estimated that people touch their face about 23 times an hour! To help prevent infections, keep your hands away from your nose, eyes, and mouth. Touching the mucous membranes on your face with unwashed hands allows germs that cause respiratory infections like COVID-19 to enter the body. When we touch people who are sick, or touch dirty surfaces, we contaminate our hands with germs, and we can infect ourselves with those germs by touching our face.</p>
								<p>For more detailed information, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/if-you-are-sick/steps-when-sick.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>
                </div>
            </div>

            <div class="w3-card w3-margin-right w3-margin-left w3-margin-top">
                <div id="question_six" class="w3-container w3-light-grey" style="cursor: pointer;"><h5>Don’t Go Out and Avoid Contacts If You Have Symptoms</h5></div>
                <div id="answer_six"  class="w3-container" hidden="true">
					<table>
						<tr>
							<td width="300"><img src="./static/NoCon.png" tyle="width:300px"/>
							</td>
							<td> 
							<p>Coping with stress can be a difficult process, but there are recommendations to help manage stress and keep yourself feeling positive. To start, take a break from monitoring news stories involving Covid-19. Constantly hearing about the pandemic may be a major factor that contributes to your stress. Secondly, take care of your body by eating healthy, exercising, and getting adequate sleep. Finding time to unwind and connect (while practicing social distancing) with others to share your thoughts and feelings. If you feel as though stress levels are getting too high, please do not hesitate to reach out to a mental health provider to discuss your situation.</p>
							<p>For more detailed information and recommendations, please visit the <a href="https://www.cdc.gov/coronavirus/2019-ncov/daily-life-coping/managing-stress-anxiety.html" target="_blank">CDC website</a>.</p>
							</td>
						</tr>
					</table>
                </div>
            </div>

        </div>
        <br />

        <div class="w3-container w3-blue-grey">
            <div class="w3-left"><a href="/Home" class="w3-button w3-teal w3-margin">Previous</a></div>
            <div class="w3-right"><a href="/MonitoringHealth" class="w3-button w3-teal w3-margin">Next</a></div>
        </div>

    </div>
</body>

<script>
$(document).ready(function(){
    $('#question_one').click(function(){
        $('#answer_one').slideToggle();
    });
    $('#question_two').click(function(){
        $('#answer_two').slideToggle();
    });
    $('#question_three').click(function(){
        $('#answer_three').slideToggle();
    });
    $('#question_four').click(function(){
        $('#answer_four').slideToggle();
    });
    $('#question_five').click(function(){
        $('#answer_five').slideToggle();
    });
    $('#question_six').click(function(){
        $('#answer_six').slideToggle();
    });
});
</script>

%include('template_footer.tpl')