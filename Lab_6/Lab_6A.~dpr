Program Lab_6A;
{The program for sorting the matrix.
The program uses 2 sorting methods:
bubble sorting (for grid row elements) and
selection sorting (for sorting rows by their minimum elements).
The program prints the sorted matrix.}

//Application type - console application
{$APPTYPE CONSOLE}

Const
  Row=9;
  Col=7;
  //Row - Size of row
  //Col - Size of column

Var
  Arr:Array[1..Row,1..Col+1] of Integer;
  i,j,k,iMin:Integer;
  Temp:Integer;
  {Arr - Array
  i - Value of the array rows; cycles counter
  j - Value of the array columns; cycles counter
  k - Cycles counter
  iMin - Minimum element
  Temp - Time variable for swap}

Begin
  //Fill the matrix with random numbers
  Randomize;
  For i:=1 to Row do
    For j:=1 to Col do
      Arr[i,j]:=Random(101)-50;

  //Output of the original matrix
  Writeln('Original matrix:');
  For i:=1 to Row do
  Begin
    For j:=1 to Col do
      Write(Arr[i,j]:7);
    Writeln;
  End;

  //Sorts elements of matrix rows using the bubble method
  //Start of cycle A1 by parameter i
  For i:=1 to Row do

    //Start of cycle A1.1 by parameter k
    For k:=1 to Col-1 do

      //Start of cycle A1.1.1 by parameter j
      For j:=1 to Col-k do

        If Arr[i,j]>Arr[i,j+1] then
        Begin
          //Swap of elements
          Temp:=Arr[i,j];
          Arr[i,j]:=Arr[i,j+1];
          Arr[i,j+1]:=Temp;
        End;

      //End of cycle A1.1.1 by parameter j
    //End of cycle A1.1 by parameter k
  //End of cycle A1 by parameter i

  //Start of cycle A2 by parameter i
  For i:=1 to Row do
  Begin
    Arr[i,Col+1]:=Arr[i,1];

    //Start of cycle A2.1 by parameter j
    For j:=2 to Col do
      If Arr[i,Col+1]>Arr[i,j] then
        Arr[i,Col+1]:=Arr[i,j];
    //End of cycle A2.1 by parameter j

  End;
  //End of cycle A2 by parameter i

  //Sorts rows by their minimum elements
  //Start of cycle A3 by parameter i
  For i:=1 to Row-1 do
  Begin
    iMin:=i;

    //Start of cycle A3.1 by parameter j
    For j:=i+1 to Row do
      If Arr[iMin,Col+1]>Arr[j,Col+1] then
        iMin:=j;
      If iMin<>i then

        //Start of cycle A3.1.1 by parameter j
        For j:=1 to Col+1 do
        Begin
          //Swap of elements
          Temp:=Arr[i,j];
          Arr[i,j]:=Arr[iMin,j];
          Arr[iMin,j]:=Temp;
        End;
        //End of cycle A3.1.1 by parameter j
    //End of cycle A3.1 by parameter j
  End;
  //End of cycle A3 by parameter i

  //Output of the sorted matrix
  Writeln;
  Writeln('Sorted matrix:');
  For i:=1 to Row do
  Begin
    For j:=1 to Col do
      Write(Arr[i,j]:7);
    Writeln;
  End;

  Readln
End. 
