codeunit 50101 SalesPostProfitEventHandler
{
    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyItemJnlLineFromSalesLine', '', true, true)]
    local procedure OnAfterCopyItemJnlLineFromSalesLine(var ItemJnlLine: Record "Item Journal Line"; SalesLine: Record "Sales Line")
    begin
        ItemJnlLine.ProfitRatio := SalesLine.ProfitRatio;
    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Ledger Entry", 'OnAfterCopyTrackingFromItemJnlLine', '', true, true)]
    local procedure OnAfterCopyTrackingFromItemJnlLine(var ItemLedgerEntry: Record "Item Ledger Entry"; ItemJnlLine: Record "Item Journal Line")
    begin
        ItemLedgerEntry.ProfitRatio := ItemJnlLine.ProfitRatio;
    end;
}
