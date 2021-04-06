%include('template_header.tpl')
<body>

    <div class="w3-card-4 w3-margin-left w3-margin-right w3-margin-top w3-margin-bottom">
        <div class="w3-container w3-blue-grey"><h4 class="w3-center">What's My Risk? - A Covid-19 Risk Assessment Tool</h4></div>
        <p class="w3-margin-right w3-margin-left">Hi {{fname}}, and thank you for taking the time to complete this risk assessment tool. {{msg}}</p>
        <ul class="w3-margin-right w3-margin-left">
            % for comment in breakdown:
                <li>{{comment}}</li>
            % end
        </ul>
        <br />     

        <div class="w3-container w3-blue-grey">
            <div class="w3-left"><a href="/StayingConnected" class="w3-button w3-teal w3-margin">Previous</a></div>
            <div class="w3-right"><a href="/MythsVsFacts" class="w3-button w3-teal w3-margin">Next</a></div>
        </div>

    </div>

    <!-- <div class="w3-container w3-blue-grey">
        <div class="w3-left"><a href="/StayingConnected" class="w3-button w3-teal w3-margin">Previous</a></div>
        <div class="w3-right"><a href="/MythsVsFacts" class="w3-button w3-teal w3-margin">Next</a></div>
    </div> -->

</body>

%include('template_footer.tpl')
