table 50100 "Caption Class Dim"
{
    DataClassification = ToBeClassified;
    LookupPageId = "CaptionClass Dim";
    DrillDownPageId = "CaptionClass Dim";

    fields
    {
        field(2; "Global Dimension 1 Code"; Code[20])
        {
            CaptionClass = '1,1,1';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(3; "Global Dimension 2 Code"; Code[20])
        {
            CaptionClass = '1,1,2';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
    }

    keys
    {
        key(PK; "Global Dimension 1 Code", "Global Dimension 2 Code")
        {
            Clustered = true;
        }
    }

}