Program Lab_5B;
{Program for filling the array with numbers from 1,2,3,...
spirally, starting at the upper right, clockwise.}

//Application type - console application
{$APPTYPE CONSOLE}

Var
  A:Array[1..30,1..30] of Integer;
  i,j,x,y:Integer;
  Size,Znach,Direction,Dlin:Integer;
  S:String;
  Flag:Integer;
  {A - Array
  i,j - Cycles counters
  x,y - The coordinates of the element
  Size - Size of array
  Znach - Value (1,2,3,...,Size)
  Direction - Direction switch
  Dlin - Length of travel to turn
  S - Variable for user input
  Flag - Flag for checking entered data}

Begin
  //Checks user input for correctness
  Repeat
    Write('Enter the dimension of the matrix:');
    Readln(S);
    Val(S,Size,Flag);
    If (Flag <> 0) or (Size > 30) or (Size < 0)then
      Writeln('Incorrect value entered. Try again.');
  Until (Flag = 0) and (Size <= 30) and (Size > 0);

  //Start of cycle A1 by parameter Dlin
  x:=Size;
  y:=0;
  Znach:=1;
  Dlin:=Size;
  Direction:=1;
  While Dlin<>0 do
  Begin

    //Start of cycle A1.1 by parameter i
    i:=0;
    While i<>Dlin do
    Begin
      y:=y+Direction;
      A[y,x]:=Znach;
      Znach:=Znach+1;
      i:=i+1;
    End;
    //End of cycle A1.1 by parameter i

    //Start of cycle A1.2 by parameter i
    i:=0;
    Dlin:=Dlin-1;
    While i<>Dlin do
    Begin
      x:=x-Direction;
      A[y,x]:=Znach;
      Znach:=Znach+1;
      i:=i+1;
    End;
    //End of cycle A1.2 by parameter i

    Direction:=-Direction;
  End;
  //End of cycle A1 by parameter Dlin

  //Output array
  For i:=1 to Size do
  Begin
    For j:=1 to Size do
      Write(A[i,j]:4);
      Writeln;
  End;
  Readln
End.
