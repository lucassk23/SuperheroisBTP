namespace SuperheroesBTP;
using { cuid, managed } from '@sap/cds/common';

@assert.unique: { name: [name] }
entity SuperHeroes : cuid, managed {
  name: String(100) @mandatory;
  alias: String(100);
  age: Integer;
  gender: String(10);
  description: String(500);
  descriptionDynamic: String(500);
  superpowers: Association to many Superpowers on superpowers.superHeroes = $self;
  secretIdentity: Association to SecretIdentities;
  superpowers1: Association to Superpowers;
}

@assert.unique: { name: [name] }
entity Superpowers : cuid {
  name: String(100) @mandatory;
  description: String(500);
  superhero: String(100);
  superheroes: Association to many SuperHeroes on superheroes.superpowers1 = $self;
  superHeroes: Association to SuperHeroes;
}

@assert.unique: { name: [name] }
entity SecretIdentities : cuid {
  name: String(100) @mandatory;
  description: String(500);
  superhero: String(100);
  superheroes: Association to SuperHeroes;
}

