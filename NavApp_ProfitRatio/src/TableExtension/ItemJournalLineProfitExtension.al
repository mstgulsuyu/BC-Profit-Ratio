tableextension 50103 ItemJnlLineProfitExtension extends "Item Journal Line"
{
    fields
    {
        field(50100; ProfitRatio; Decimal)
        {
            Caption = 'Profit Ratio';
            DataClassification = ToBeClassified;
        }
    }
}
