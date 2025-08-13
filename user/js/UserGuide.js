function startIntro() {
    introJs().setOptions({
        dontShowAgain: true,
        steps: [
            {
                title: 'Welcome to the event',
                intro: 'Great to have you here. Let\'s take a small walk through before you begin. 👋'
            },
            {
                element: document.querySelector('.weather'),
                title: 'Navigation Bar',
                intro: 'Click on the weather bar and navigate to detail information.',
                position: 'top'
            },
            {
                element: document.querySelector('.chatt'),
                title: 'Live Chat',
                intro: 'See and chat with user and avoid ****msgs.',
                position: 'left'
            },
            {
                element: document.querySelector('.shop'),
                title: 'Shoping',
                intro: 'Click here for shop any this available in our portal',
                position: 'left'
            },
            {
                element: document.querySelector('.rmc'),
                title: 'RMC',
                intro: 'Click here to access the Dailt rate details.',
                position: 'left'
            },
            {
                title: 'Congratulations.',
                intro: 'You are all caught up! Click on the room you want to visit to begin.'
            }
        ]
    }).onexit(function () {
        // This function is called when the intro is exited
        introJs().setOption("dontShowAgain", true);
    }).start();
}

// Get the button element by its ID
const button = document.getElementById("WelcomeVideoClose");

// Attach the startIntro function to the button's click event
button.addEventListener("click", startIntro);