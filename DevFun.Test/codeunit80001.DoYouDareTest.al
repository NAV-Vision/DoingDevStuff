codeunit 80001 "Do You Dare Test"
{
    Subtype = Test;

    var
        Assert: Codeunit "Library Assert";
        MessageDisplayed: Boolean;

    [Test]
    [HandlerFunctions('DoYouDareMessageHandler')]
    procedure DoYouDareMessage()
    var
        CustList: TestPage "Customer List";
    begin
        CustList.OpenView();
        CustList.Close();
        if (not MessageDisplayed) then
            ERROR('Message was not displayed!');
    end;

    [MessageHandler]
    procedure DoYouDareMessageHandler(Message: Text[1024])
    begin
        MessageDisplayed := MessageDisplayed or (Message = '9625152131141851420891923514554251521 \Can you guess the code?');
    end;
}
