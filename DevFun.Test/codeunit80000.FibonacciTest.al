codeunit 80000 "Fibonacci Test"
{
    Subtype = Test;

    var
        Assert: Codeunit "Library Assert";

    [Test]
    procedure FibonacciListTest()
    var
        FibonacciMgt: Codeunit "NVI - Fibonacci Mgt.";
    begin
        Assert.AreEqual(FibonacciMgt.GetFibonacci(0), 0, 'Result of 0 Fibonacci must be 0');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(5), 5, 'Result of 5 Fibonacci must be 5');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(10), 55, 'Result of 10 Fibonacci must be 55');
        Assert.AreEqual(FibonacciMgt.GetFibonacci(25), 75025, 'Result of 25 Fibonacci must be 75025');
    end;
}
