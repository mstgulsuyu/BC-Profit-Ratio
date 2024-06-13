codeunit 50100 SalesLineProfitEventHandler
{
    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterValidateEvent', 'No.', true, true)]
    local procedure OnAfterValidateType(var Rec: Record "Sales Line"; var xRec: Record "Sales Line")
    var
        Item: Record Item;
    begin
        if Rec.Type = Rec.Type::Item then
            if Rec."No." <> '' then begin
                Item.Get(Rec."No.");
                Rec.ProfitRatio := Item.ProfitRatio;
            end;
    end;
}
