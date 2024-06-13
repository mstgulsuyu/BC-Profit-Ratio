tableextension 50102 ItemLedgerEntryProfitExtension extends "Item Ledger Entry"
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
