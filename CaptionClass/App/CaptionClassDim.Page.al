// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.App;

using Microsoft.Sales.Customer;
using Microsoft.Finance.GeneralLedger.Setup;

page 50100 "CaptionClass Dim"
{
    Caption = 'CaptionClass Dim Example';
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "Caption Class Dim";
    PageType = List;

    layout
    {
        area(Content)
        {
            repeater(Entries)
            {
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}