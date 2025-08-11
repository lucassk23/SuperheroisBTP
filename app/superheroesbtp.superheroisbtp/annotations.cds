using superheroesBTPSrv as service from '../../srv/service';
using from '../annotations';

annotate service.SuperHeroes with @(
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : alias,
            },
            {
                $Type : 'UI.DataField',
                Value : age,
            },
            {
                $Type : 'UI.DataField',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Value : description,
            },
             {
                $Type : 'UI.DataField',
                Label : 'Superpower',
                Value : superpowers1_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : secretIdentity_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
                @UI.Hidden,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
                @UI.Hidden,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
                @UI.Hidden,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
                @UI.Hidden,
            },
        ],
    },
    UI.SelectionFields : [
        
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Value : descriptionDynamic,
            Label : 'Descrição',

        },
        {
            $Type : 'UI.DataField',
            Value : alias,
        },
        {
            $Type : 'UI.DataField',
            Value : age,
        },
        {
            $Type : 'UI.DataField',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Value : description,
            @UI.Hidden,

        },
        {
            $Type : 'UI.DataField',
            Value : secretIdentity_ID,
            @UI.Hidden,
        },
    ],
);

