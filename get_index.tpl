%include('template_header.tpl')

<style>

.padding-0 {
    padding:0!important
}

.border-3{
    border-width:3px!important;
}
.padding-13 {
     padding-top:13px!important;
     padding-bottom:13px!important
}

.arrow {
    background: #fff;
    height: 3px;
    width: 30px;
    /*margin: 0 auto;*/
    position: relative;
    cursor: pointer;
}
.arrow::before,
.arrow::after {
    content: "";
    background: #fff;
    position: absolute;
    height: 3px;
    width: 15px;
}

.arrow::before {
    right: -3px;
    bottom: -4px;
    transform: rotate(-45deg);
}

.arrow::after {
    right: -3px;
    top: -4px;
    transform: rotate(45deg);
}

.arrow-left::before {
    left: -3px;
    transform: rotate(45deg);
}

.arrow-left::after {
    left: -3px;    
    transform: rotate(-45deg);
}

.arrow-rotate{
     transform: rotate(-45deg);
}

</style>

<body>
    
    <div class="w3-card-4 w3-margin-left w3-margin-right w3-margin-top w3-margin-bottom">
		<div class="w3-container w3-blue-grey">
			<h4 class="w3-center">Your Learning Roadmap</h4>
		</div>
		<div class="w3-row  w3-blue">




			<div class="w3-display-container" style="height:390px; width:850px; margin:auto; ">
                <div class="">
                <a href="/SymptomCheck" class="w3-btn w3-circle w3-display-position padding-0" style="top:20px; left:15px; width:180px;">                
					<div class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                        <p class="w3-margin">Symptom<br/>Check</p>
                    </div>				
                </a>
                 <a href="/HealthyHabits" class="w3-btn w3-circle w3-display-position padding-0" style="top:20px; left:335px; width:180px;">                
					<div class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">Healthy<br/>Habits</p>
                    </div>				
                </a>
                 <a href="/MonitoringHealth" class="w3-btn w3-circle w3-display-position padding-0" style="top:20px; left:655px; width:180px;">                
					<div class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">Monitoring<br/>Your Health</p>
                    </div>				
                </a>

                 <a href="/StayingConnected" class="w3-btn w3-circle w3-display-position padding-0" style="top:150px; left:170px; width:180px;">                
					<div  class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">Staying<br/>Connected</p>
                    </div>				
                </a>
                 <a href="/SocialDistancing" class="w3-btn w3-circle w3-display-position padding-0" style="top:150px; left:500px; width:180px;">                
					<div  class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">Social<br/>Distancing</p>
                    </div>				
                </a>
                <a href="/WhatsMyRisk" class="w3-btn w3-circle w3-display-position padding-0" style="top:290px; left:15px; width:180px;">                
					<div  class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">What’s My<br/>Risk?</p>
                    </div>				
                </a>
                <a href="/MythsVsFacts" class="w3-btn w3-circle w3-display-position padding-0" style="top:290px; left:335px; width:180px;">                
					<div  class="w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">Myths vs.<br/>Facts</p>
                    </div>				
                </a>
                <a href="/FAQ" class="w3-btn w3-circle w3-display-position padding-0" style="top:290px; left:655px; width:180px;">                
					<div  class="padding-13 w3-light-blue w3-circle w3-center w3-border border-3 w3-border-cyan w3-hover-light-green w3-hover-border-green">
                    <p class="w3-margin">FAQ</p>
                    </div>				
                </a>
                 
                                       

                <div class="arrow" style="width:140px; top:60px; left:195px;"></div>
                <div class="arrow" style="width:140px; top:57px; left:515px;"></div>

                <div class="arrow arrow-left arrow-rotate" style="width:104px; top:131px; left:660px;"></div>
                <div class="arrow arrow-left" style="width:150px; top:180px; left:350px;"></div>
                <div class="arrow arrow-left arrow-rotate" style="width:108px; top:236px; left:90px;"></div>

                <div class="arrow" style="width:140px; top:315px; left:195px;"></div>
                <div class="arrow" style="width:140px; top:312px; left:515px;"></div>
                </div>
			</div>
		</div>
        <div class="w3-container w3-blue-grey">           					
            <div class="w3-right">
                <a href="/SymptomCheck" class="w3-button w3-margin w3-teal w3-round-large">Get Started</a>
            </div>           
		</div>
	</div>
</body>

%include('template_footer.tpl')