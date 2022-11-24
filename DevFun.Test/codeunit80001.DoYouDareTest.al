codeunit 80001 "Do You Dare Test"
{
    Subtype = Test;

    var
        Assert: Codeunit "Library Assert";
        QuestionAsked: Boolean;

    [Test]
    [HandlerFunctions('DoYouDareMessageHandler')]
    procedure DoYouDareMessage()
    var
        CustList: TestPage "Customer List";
    begin
        CustList.OpenView();
        CustList.Close();
        if (not QuestionAsked) then
            ERROR('Message was not displayed!');
    end;

    [ConfirmHandler]
    procedure DoYouDareMessageHandler(Question: Text[1024]; var Reply: Boolean)
    begin
        QuestionAsked := QuestionAsked or (Question = '9625152131141851420891923514554251521 \Can you guess the code?');
    end;
}
