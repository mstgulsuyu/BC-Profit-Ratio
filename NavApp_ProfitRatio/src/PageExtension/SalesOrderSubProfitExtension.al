pageextension 50101 SalesOrderSubProfitExtension extends "Sales Order Subform"
{
    layout
    {
        addafter("Unit Price")
        {
            field(ProfitRatio; Rec.ProfitRatio)
            {
                ApplicationArea = All;
            }
        }
    }
}
