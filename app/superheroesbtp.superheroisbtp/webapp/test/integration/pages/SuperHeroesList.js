sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'superheroesbtp.superheroisbtp',
            componentId: 'SuperHeroesList',
            contextPath: '/SuperHeroes'
        },
        CustomPageDefinitions
    );
});