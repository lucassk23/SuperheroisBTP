using { superheroesBTPSrv } from '../srv/service.cds';

annotate superheroesBTPSrv.SuperHeroes with @UI.HeaderInfo: { TypeName: 'Superhero', TypeNamePlural: 'Superheroes', Title: { Value: name } };
annotate superheroesBTPSrv.SuperHeroes with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superheroesBTPSrv.SuperHeroes with @UI.Identification: [{ Value: name }];
annotate superheroesBTPSrv.SuperHeroes with {
  secretIdentity @Common.ValueList: {
    CollectionPath: 'SecretIdentities',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: secretIdentity_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'superhero'
      },
    ],
  }
};
annotate superheroesBTPSrv.SuperHeroes with {
  superpowers1 @Common.ValueList: {
    CollectionPath: 'Superpowers',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superpowers1_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'superhero'
      },
    ],
  }
};
annotate superheroesBTPSrv.SuperHeroes with @UI.DataPoint #alias: {
  Value: alias,
  Title: 'Alias',
};
annotate superheroesBTPSrv.SuperHeroes with {
  name @title: 'Name';
  alias @title: 'Alias';
  age @title: 'Age';
  gender @title: 'Gender';
  description @title: 'Description';
  createdAt @title: 'Created At';
  createdBy @title: 'Created By';
  modifiedAt @title: 'Modified At';
  modifiedBy @title: 'Modified By'
};

annotate superheroesBTPSrv.SuperHeroes with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: alias },
 { $Type: 'UI.DataField', Value: age },
 { $Type: 'UI.DataField', Value: gender },
 { $Type: 'UI.DataField', Value: description },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID },
    { $Type: 'UI.DataField', Label: 'Superpower', Value: superpowers1_ID }
];

annotate superheroesBTPSrv.SuperHeroes with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: name },
 { $Type: 'UI.DataField', Value: alias },
 { $Type: 'UI.DataField', Value: age },
 { $Type: 'UI.DataField', Value: gender },
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: createdAt },
 { $Type: 'UI.DataField', Value: createdBy },
 { $Type: 'UI.DataField', Value: modifiedAt },
 { $Type: 'UI.DataField', Value: modifiedBy },
    { $Type: 'UI.DataField', Label: 'Secret Identity', Value: secretIdentity_ID },
    { $Type: 'UI.DataField', Label: 'Superpower', Value: superpowers1_ID }
  ]
};

annotate superheroesBTPSrv.SuperHeroes with {
  secretIdentity @Common.Text: { $value: secretIdentity.name, ![@UI.TextArrangement]: #TextOnly };
  superpowers1 @Common.Text: { $value: superpowers1.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superheroesBTPSrv.SuperHeroes with {
  superpowers @Common.Label: 'Superpowers';
  secretIdentity @Common.Label: 'Secret Identity';
  superpowers1 @Common.Label: 'Superpower'
};

annotate superheroesBTPSrv.SuperHeroes with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#alias' }
];

annotate superheroesBTPSrv.SuperHeroes with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superheroesBTPSrv.SuperHeroes with @UI.SelectionFields: [
  secretIdentity_ID,
  superpowers1_ID
];

annotate superheroesBTPSrv.Superpowers with @UI.HeaderInfo: { TypeName: 'Superpower', TypeNamePlural: 'Superpowers', Title: { Value: name } };
annotate superheroesBTPSrv.Superpowers with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superheroesBTPSrv.Superpowers with @UI.Identification: [{ Value: name }];
annotate superheroesBTPSrv.Superpowers with {
  superHeroes @Common.ValueList: {
    CollectionPath: 'SuperHeroes',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superHeroes_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'alias'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate superheroesBTPSrv.Superpowers with {
  description @title: 'Description';
  superhero @title: 'Superhero'
};

annotate superheroesBTPSrv.Superpowers with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: superhero },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superHeroes_ID }
];

annotate superheroesBTPSrv.Superpowers with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: superhero },
    { $Type: 'UI.DataField', Label: 'Superhero', Value: superHeroes_ID }
  ]
};

annotate superheroesBTPSrv.Superpowers with {
  superHeroes @Common.Text: { $value: superHeroes.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superheroesBTPSrv.Superpowers with {
  superheroes @Common.Label: 'Superheroes';
  superHeroes @Common.Label: 'Superhero'
};

annotate superheroesBTPSrv.Superpowers with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superheroesBTPSrv.Superpowers with @UI.SelectionFields: [
  superHeroes_ID
];

annotate superheroesBTPSrv.SecretIdentities with @UI.HeaderInfo: { TypeName: 'Secret Identity', TypeNamePlural: 'Secret Identities', Title: { Value: name } };
annotate superheroesBTPSrv.SecretIdentities with {
  ID @UI.Hidden @Common.Text: { $value: name, ![@UI.TextArrangement]: #TextOnly }
};
annotate superheroesBTPSrv.SecretIdentities with @UI.Identification: [{ Value: name }];
annotate superheroesBTPSrv.SecretIdentities with {
  superheroes @Common.ValueList: {
    CollectionPath: 'SuperHeroes',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: superheroes_ID, 
        ValueListProperty: 'ID'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'name'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'alias'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'age'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'gender'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'description'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'createdBy'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedAt'
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'modifiedBy'
      },
    ],
  }
};
annotate superheroesBTPSrv.SecretIdentities with {
  description @title: 'Description';
  superhero @title: 'Superhero'
};

annotate superheroesBTPSrv.SecretIdentities with @UI.LineItem: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: superhero },
    { $Type: 'UI.DataField', Label: 'Superheroes', Value: superheroes_ID }
];

annotate superheroesBTPSrv.SecretIdentities with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
 { $Type: 'UI.DataField', Value: description },
 { $Type: 'UI.DataField', Value: superhero },
    { $Type: 'UI.DataField', Label: 'Superheroes', Value: superheroes_ID }
  ]
};

annotate superheroesBTPSrv.SecretIdentities with {
  superheroes @Common.Text: { $value: superheroes.name, ![@UI.TextArrangement]: #TextOnly }
};

annotate superheroesBTPSrv.SecretIdentities with {
  superheroes @Common.Label: 'Superheroes'
};

annotate superheroesBTPSrv.SecretIdentities with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate superheroesBTPSrv.SecretIdentities with @UI.SelectionFields: [
  superheroes_ID
];

