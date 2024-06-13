tableextension 50101 SalesLineProfitExtension extends "Sales Line"
{
    fields
    {
        field(50001; ProfitRatio; Decimal)
        {
            Caption = 'ProfitRatio';
            DataClassification = ToBeClassified;
        }
    }
}
