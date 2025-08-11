/**
 * 
 * @Before(event = { "READ" }, entity = "superheroesBTPSrv.SuperHeroes")
 * @param {cds.Request} request - User information, tenant-specific CDS model, headers and query parameters
*/

const REQUIRED_FIELDS = [
  "ID",                 // usado para buscar superpoderes
  "description",        // para montar descriptionDynamic
  "secretIdentity_ID",  // para buscar identidade secreta
  "age",                // para verificar se é imortal
  "name"                // para logs e debug
];


module.exports = async function(request) {

   if (!request.query.SELECT.columns) return;

    REQUIRED_FIELDS.forEach(field => {
      const alreadyHasField = request.query.SELECT.columns.some(
        col => col.ref && col.ref[0] === field
      );

      if (!alreadyHasField) {
        request.query.SELECT.columns.push({ ref: [field] });
      }
    });
  }

