Program Bacteria;
{Task condition:
A red bacteria turns green in 1 cycle of time.
A green bacteria is divided into 2 (red and green) in 1 cycle of time.
Display the value of green, red bacterias, their sum on T cycle.}

//Application type - console application
{$APPTYPE CONSOLE}

// Variable description section
Var
  Green1,Green,Red,T,Sum,I:Integer;
  Flag:Integer;
  S:String;
  {Green1-Number of green bacteria in the previous cycle
  Green-Number of green bacteria
  Red-Number of red bacteria
  T-Number of cycles
  Sum-Sum of bacteria
  I-Cycles monitoring
  Flag-Process monitoring
  S-Enter all user data}

Begin
  //Enter and verify data entry for the number of green
  //bacteria
  Repeat
    Writeln('Enter the number of green bacteria:');
    Readln(S);
    Val(S,Green,Flag);
    If (Flag<>0)  or (Green<0) then
    Writeln ('Incorrect value entered.');
  Until (Flag=0) and (Green>=0);

  //Enter and verify data entry for the number of red
  //bacteria
  Repeat
    Writeln('Enter the number of red bacteria:');
    Readln(S);
    Val(S,Red,Flag);
    If (Green=0) and (Red=0) then
    Flag:=1;
    If (Flag<>0)  or (Red<0) then
    Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (Red>=0);

  //Enter and verify data entry for the number of cycles
  Repeat
    Writeln('Enter the number of cycles:');
    Readln(S);
    Val(S,T,Flag);
    If (Flag<>0)  or (T<=0) then
    Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (T>0);

  //Start of cycle A1 by parameter I
  Sum:=0;
  Green1:=0;
  For I:=1 to T do
  Begin

    //Calculating values
    Green1:=Green+Red;
    Red:=Green;
    Green:=Green1;
    Sum:=Green+Red;
  End;
  
  //Type Integer overflow check and display values
  If (Red>=0) and (Green>=0) and (Sum>=0) then
  Writeln('Number of green bacteria - ',Green1,
          ', number of red bacteria - ',Red,', sum - ',Sum,'.')
  Else
  Writeln('Values are too large, calculations are impossible.');

  //End of cycle A1 by parameter I
  Readln;
End.




