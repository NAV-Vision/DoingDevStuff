pageextension 50000 "NVI - Customer List" extends "Customer List"
{
    trigger OnOpenPage()
    var
        DoYouDare: Codeunit "NVI - Do You Dare";
    begin
        DoYouDare.CanYouRead();
    end;
}
