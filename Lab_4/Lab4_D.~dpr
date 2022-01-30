Program Lab4_D;
//The program for calculating the longest sawtooth (teeth up) sequence
//Print the value of the longest sawtooth sequence

//Application type - console application
{$APPTYPE CONSOLE}

Const
  Size=50;
  X:Array[1..Size] of Integer=(-9,-16,-16,-11,1,-14,-17,5,-1,4,0,-12,-12,-8,-4,-1,-15,20,8,-14,-7,-1,-13,13,-19,-2,10,20,17,19,0,-4,-9,16,5,-15,-20,-16,-13,-9,-5,17,-3,1,18,-20,-3,11,-20,-14);

Var
  i,Max,IFirst:Byte;
  {i - Value of the array element; cycle counter
  Max - Maximum length of the sawtooth sequence
  IFirst - Start of sequence}

Begin
  //Displays  elements of array
  Writeln('Elements of array:');
  For i:=1 to Size do
    Write(x[i],'':2);
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
