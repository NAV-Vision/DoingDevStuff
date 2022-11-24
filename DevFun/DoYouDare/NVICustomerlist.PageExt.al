pageextension 50000 "NVI - Customer List" extends "Customer List"
{
    trigger OnOpenPage()
    var
        Challenge: Codeunit "NVI - Challenge";
    begin
        Challenge.CanYouRead();
    end;
}
