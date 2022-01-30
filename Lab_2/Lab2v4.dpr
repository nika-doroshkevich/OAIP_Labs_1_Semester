Program Lab2v4;
//Program for calculating the greatest common factor (for two or more numbers)

//Application type - console application
{$APPTYPE CONSOLE}

// Variable description section
Var
  I,AmountN:Integer;
  Dividend,Divisor,Quotient:Integer;
  Flag:Integer;
  S:String;
  {I-Cycles monitoring
  AmountN-Amount of numbers
  Dividend-Dividend when calculating the GCF
  Divisor-Divisor when calculating the GCF
  Quotient-Quotient when calculating the GCF
  Flag-Process monitoring
  S-Enter all user data}

Begin
  //Enter and verify data entry for the amount of numbers
  Repeat
    Writeln('Enter the amount of numbers for which you want to find the GCF:');
    Readln(S);
    Val(S,AmountN,Flag);
    If (Flag<>0)  or (AmountN<=1) then
      Writeln ('Incorrect value or zero entered. Try again.');
  Until (Flag=0) and (AmountN>1);

  //Enter and verify data entry for the first number
  Repeat
    Writeln('Enter all numbers by clicking "Enter" after each number');
    Readln(S);
    Val(S,Dividend,Flag);
    If (Flag<>0)  or (Dividend=0) then
      Writeln ('Incorrect value or zero entered. Try again.');
  Until (Flag=0) and (Dividend<>0);

  //Start of cycle A1 by parameter I
  I:=1;
  Repeat
    //Enter and verify data entry for all of the next numbers
    Repeat
      Readln(S);
      Val(S,Divisor,Flag);
      If (Flag<>0)  or (Divisor=0) then
        Writeln ('Incorrect value or zero entered. Try again.');
    Until (Flag=0) and (Divisor<>0);

    //Start of cycle A2 by parameter Divisor
    While Divisor<>0 do
    Begin

      //Calculating values
      Quotient:=Abs(Dividend mod Divisor);
      Dividend:=Abs(Divisor);
      Divisor:=Quotient;
    End;
    //End of cycle A2 by parameter Divisor

    I:=I+1;
  Until I>=AmountN;
  //End of cycle A1 by parameter I

  Writeln('GCF = ',Dividend);
  Readln;
End.
