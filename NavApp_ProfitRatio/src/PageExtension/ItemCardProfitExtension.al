pageextension 50100 ItemCardProfitExtension extends "Item Card"
{
    layout
    {
        addlast("Prices & Sales")
        {
            field(ProfitRatio; Rec.ProfitRatio)
            {
                ApplicationArea = All;
            }
        }
    }
}
