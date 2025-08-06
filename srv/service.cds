using { SuperheroesBTP as my } from '../db/schema.cds';

@path: '/service/superheroesBTP'
@requires: 'authenticated-user'
service superheroesBTPSrv {
  @odata.draft.enabled
  entity SuperHeroes as projection on my.SuperHeroes;
  @odata.draft.enabled
  entity Superpowers as projection on my.Superpowers;
  @odata.draft.enabled
  entity SecretIdentities as projection on my.SecretIdentities;
}