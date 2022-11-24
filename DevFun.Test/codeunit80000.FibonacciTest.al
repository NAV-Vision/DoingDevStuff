codeunit 80000 "Fibonacci Test"
{
    Subtype = Test;

    var
        MessageDisplayed: Boolean;
        Assert: Codeunit "Library Assert";

    [Test]
    procedure FibonacciListTest()
    var
        FibonacciMgt: Codeunit "NVI - Fibonacci Mgt.";
    begin
        Assert.AreEqual(FibonacciMgt.GetFibonacci(1), 0, 'Result of 1 Fibonacci must be 0');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(5), 3, 'Result of 5 Fibonacci must be 3');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(10), 34, 'Result of 10 Fibonacci must be 34');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(25), 75025, 'Result of 25 Fibonacci must be 75025');
    end;
}
