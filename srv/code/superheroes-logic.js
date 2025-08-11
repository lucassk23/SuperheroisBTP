const cds = require("@sap/cds");

module.exports = async function (results, req) {
	if (!Array.isArray(results)) {
		results = [results];
	}

	const db = await cds.connect.to("db"); // conexão com o modelo

	for (const result of results) {
		if (!result) continue;



		result.descriptionDynamic = result.description;
		// Adiciona descrição para heróis imortais
		if (result.age > 500) {
			result.descriptionDynamic = `An immortal ${result.descriptionDynamic || 'being'}`;
		}

		// Busca os superpoderes associados ao herói
		const powers = await db.run(
			SELECT.from("SuperheroesBTP.Superpowers").where({ superHeroes_ID: result.ID })
		);

		if (powers?.length > 0) {
			const powerNames = powers.map(p => p.name).join(", ");
			result.descriptionDynamic = `${result.descriptionDynamic || ''} Possesses powers: ${powerNames}.`.trim();

			// Marca heróis com muitos poderes
			if (powers.length >= 3) {
				result.legendary = true;
			}
		}


		if (result.secretIdentity_ID == null) {
			result.descriptionDynamic = `${result.descriptionDynamic || ''} No secret identity known.`.trim();
		} else {
			const secretIdentity = await db.run(
				SELECT.one.from("SuperheroesBTP.SecretIdentities").where({ ID: result.secretIdentity_ID })
			);

			if (secretIdentity) {
				result.descriptionDynamic = `${result.descriptionDynamic || ''} Secretly known as ${secretIdentity.name}.`.trim();
			}
		}
		// Logs para debugging (apague em produção)
		console.log(`[Hero: ${result.name}] Final Description: ${result.descriptionDynamic}`);
		console.log(Object.keys(result));

	}
};
