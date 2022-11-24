page 50000 "Fibonacci List"
{
    ApplicationArea = All;
    Caption = 'Fibonacci List';
    PageType = List;
    SourceTable = "Name/Value Buffer";
    UsageCategory = Lists;
    SourceTableTemporary = true;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Value"; Rec."Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Value of Fibonacci';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        ExcelBufferDialogManagement: Codeunit "Excel Buffer Dialog Management";
        i: Integer;
        nextNo: text;
        CalcTok: Label 'Calculating....';
    begin
        ExcelBufferDialogManagement.Open(CalcTok);
        for i := 0 to 25 do begin
            nextNo := format(FibonacciMgt.GetFibonacci(i));
            rec.AddNewEntry(CopyStr(nextNo, 1, 250), nextNo);
            ExcelBufferDialogManagement.SetProgress(i)
        end;
        ExcelBufferDialogManagement.Close();
    end;

    var
        FibonacciMgt: Codeunit "NVI - Fibonacci Mgt.";
}
