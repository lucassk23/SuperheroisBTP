const { array } = require("@sap/cds");

/**
 * 
 * @After(event = { "READ" }, entity = "superheroesBTPSrv.SuperHeroes")
 * @param {(Object|Object[])} results - For the After phase only: the results of the event processing
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
 */
module.exports = async function(results, request) {
if(!Array.isArray(results)){
	results=[results];
}

for (const result of results) {
    if (result && result.age > 500){
		result.description = `an immortal ${result.description || ''}`;
	}
    }

}