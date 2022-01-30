Program Lab3v1vers2;
//A program for calculating a converging series
//X varies from 0.2 to 0.9 in step 0.1
//Print Eps, X, Y, K

//Application type - console application
{$APPTYPE CONSOLE}

Const
  EPS1=1E-4;
  EPS2=1E-5;
  //EPS1 - 1-st limit of accuracy
  //EPS2 - 2-nd limit of accuracy

Var
  X,Y,Chisl,Elem,Eps:Real;
  K:Byte;
  Flag:Boolean;
  {X - Function argument
  Y - Function value
  Chisl - Numerator value
  Elem - Series element value
  Eps - Value of limit involved in the cycle
  K - The value of the function argument; counter of total number of terms
  Flag - Flag for control of limit value change}

Begin

  //Start of cycle A1 by parameter X
  X:=0.2;
  Flag:=True;
  Repeat

    //Check Flag condition to select accuracy
    If Flag then
      Eps:=EPS1
    Else Eps:=EPS2;

    //Start of cycle A2 by parameter Elem
    Y:=0;
    //Calculates the recursive part
    Chisl:=-X*X*X;
    K:=1;
    //Calculates the first element
    Elem:=Chisl/(K*(K+1)*(K+2));
    Repeat

      //Operators's value change
      Y:=Y+Elem;
      Chisl:=-Chisl*X*X;
      Inc(K);
      Elem:=Chisl/(K*(K+1)*(K+2));
    Until Abs(Elem)<=Eps;
    //End of cycle A2 by parameter Elem

    WriteLn('Eps=',Eps:8:5,'  X=',x:4:1,'  Y=',Y:10:6,'  K=',K);

    //Check Flag condition to modification of X
    If not Flag then
      X:=X+0.1;
    Flag:=not Flag;

  Until X>=0.9;
  //End of cycle A1 by parameter X

  Readln
End.
