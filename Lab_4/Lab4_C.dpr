Program Lab4_C;
//The program for calculating the longest sawtooth (teeth up) sequence
//Print the value of the longest sawtooth sequence

//Application type - console application
{$APPTYPE CONSOLE}

Const
  Size=50;
  //Array size

Type
  Mas=Array[1..Size] of Integer;

Var
  X:Mas;
  i,Max,IFirst:Byte;
  {X - Array
  i - Value of the array element; cycle counter
  Max - Maximum length of the sawtooth sequence
  IFirst - Start of sequence}

Begin
  //Enter array elements using a random number generator
  Randomize;
  Writeln('Elements of array:');
  For i:=1 to Size do
   Begin
    X[i]:=Random(41)-20;
    Write(x[i],'':2);
   End;
   Writeln;

  //Start of cycle A1 by parameter i
  Max:=0;
  i:=2;
  While i<=Size do
   Begin
    IFirst:=i-1;

    //Start of cycle A2 by parameter i
    While (i<Size) and (X[i-1]<X[i]) and (X[i]>X[i+1]) do
      Inc(i,2);
      //End of cycle A2 by parameter i

    //Replace the maximum if it is greater than the previous
    If i-IFirst>Max then
      Max:=i-IFirst;

    Inc(i);
  End;
  //End of cycle A1 by parameter i

  Writeln;
  Writeln('The longest sawtooth sequence= ',Max);
  Readln
End.
 