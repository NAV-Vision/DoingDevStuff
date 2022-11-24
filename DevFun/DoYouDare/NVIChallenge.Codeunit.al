codeunit 50010 "NVI - Challenge"
{
    internal procedure CanYouRead()
    var
        ConfirmManagement: Codeunit "Confirm Management";
        CanYouReadQst: Label '%1 \Can you guess the code?', Comment = '%1=Code value to show users';
    begin
        ConfirmManagement.GetResponse(StrSubstNo(CanYouReadQst, SequenceToText(GetSequence())), true);
    end;

    internal procedure ConvertIntegerToChar(i: Integer): text
    begin
        exit(GetText().Substring(i, 1));
    end;

    local procedure GetText(): text
    var
        AlfabetTok: Label 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', Locked = true;
    begin
        exit(AlfabetTok)
    end;

    local procedure GetSequence() Sentence: list of [Integer]
    begin
        Sentence.Add(9);
        Sentence.Add(6);
        Sentence.Add(25);
        Sentence.Add(15);
        Sentence.Add(21);
        Sentence.Add(3);
        Sentence.Add(1);
        Sentence.Add(14);
        Sentence.Add(18);
        Sentence.Add(5);
        Sentence.Add(1);
        Sentence.Add(4);
        Sentence.Add(20);
        Sentence.Add(8);
        Sentence.Add(9);
        Sentence.Add(19);
        Sentence.Add(23);
        Sentence.Add(5);
        Sentence.Add(14);
        Sentence.Add(5);
        Sentence.Add(5);
        Sentence.Add(4);
        Sentence.Add(25);
        Sentence.Add(15);
        Sentence.Add(21);
    end;

    local procedure SequenceToText(Sequence: list of [Integer]) Result: Text
    var
        i: Integer;
    begin
        foreach i in Sequence do
            Result += Format(i);
    end;
}
