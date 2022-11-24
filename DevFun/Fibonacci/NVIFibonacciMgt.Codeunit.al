codeunit 50000 "NVI - Fibonacci Mgt."
{
    internal procedure GetFibonacci(input: Integer): Integer
    begin
        if (input <= 0) then
            exit(0)
        else
            if (input <= 2) then
                exit(1)
            else
                exit(GetFibonacci(input - 1) + (GetFibonacci(input - 2)));
    end;
}
