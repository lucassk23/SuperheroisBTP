sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'superheroesbtp/superheroisbtp/test/integration/FirstJourney',
		'superheroesbtp/superheroisbtp/test/integration/pages/SuperHeroesList',
		'superheroesbtp/superheroisbtp/test/integration/pages/SuperHeroesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SuperHeroesList, SuperHeroesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('superheroesbtp/superheroisbtp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSuperHeroesList: SuperHeroesList,
					onTheSuperHeroesObjectPage: SuperHeroesObjectPage
                }
            },
            opaJourney.run
        );
    }
);