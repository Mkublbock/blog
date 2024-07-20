codeunit 50100 "Caption Class EventSubs"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Caption Class", OnResolveCaptionClass, '', false, false)]
    local procedure "OnResolveCaptionClass"(CaptionArea: Text; CaptionExpr: Text; Language: Integer; var Caption: Text; var Resolved: Boolean)
    begin
        Message('OnResolveCaptionClass EventSub');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Caption Class", OnAfterCaptionClassResolve, '', false, false)]
    local procedure "OnAfterCaptionClassResolve"(Language: Integer; CaptionExpression: Text; var Caption: Text[1024])
    begin
        Message('OnAfterCaptionClassResolve EventSub');
    end;

}