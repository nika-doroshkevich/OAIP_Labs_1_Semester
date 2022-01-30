Program Lab3;
//Task condition: find function value f(X)
//X varies from 0.2 to 0.9 in increments of 0.1
//For two limit - 0.0001 and 0.00001
//Print X, Y, Amount,
//where Amount is the number of iterations completed in the cycle

//Application type - console application
{$APPTYPE CONSOLE}


Const
  Eps1=0.0001;
  Eps2=0.00001;
  {Eps1 - 1-st limit of accuracy
  Eps2 - 2-nd limit of accuracy}

// Variable description section
Var
  Temp1,Temp2,Temp3,Temp4,Temp5:Real;
  X,Y,El,Amount:Real;
  {Temp1,Temp2-Multipliers of numerator
  Temp3,Temp4,Temp5-Multipliers of denominator
  X-Function's argument
  Y-Function's value
  El-Accuracy operator
  Amount-Iteration value number}

Begin

  //Eps1 output
  //Start of cycle A1 by parameter X
  Writeln('Eps1=',Eps1:7:4);
  X:=0.2;
  While X<=0.9 do
  Begin

    //Var inizialization
    Temp1:=X*X*X;
    Temp2:=-1;
    Temp3:=1;
    Temp4:=2;
    Temp5:=3;
    Amount:=0;
    Y:=0;
    El:=Eps1+1;

    //Start of cycle A2 by parameter El
    While Abs(El)>Eps1 do
    Begin
      Amount:=Amount+1;
      El:=(Temp1*Temp2)/(Temp3*Temp4*Temp5);
      Y:=Y+El;
      Temp1:=Temp1*X*X;
      Temp2:=Temp2*(-1);
      Temp3:=Temp3+1;
      Temp4:=Temp4+1;
      Temp5:=Temp5+1;
    End;
    Writeln('X=',X:4:1,'   Y=',Y:12:8,'   Amount=',Amount:3:0);
    X:=X+0.1;
  End;


  Writeln;
  Writeln('Eps2=',Eps2:8:5);
  X:=0.2;
  While X<=0.9 do
  Begin
    Temp1:=X*X*X;
    Temp2:=-1;
    Temp3:=1;
    Temp4:=2;
    Temp5:=3;
    Amount:=0;
    Y:=0;
    El:=Eps2+1;
    While Abs(El)>Eps2 do
    Begin
      Amount:=Amount+1;
      El:=(Temp1*Temp2)/(Temp3*Temp4*Temp5);
      Y:=Y+El;
      Temp1:=Temp1*X*X;
      Temp2:=Temp2*(-1);
      Temp3:=Temp3+1;
      Temp4:=Temp4+1;
      Temp5:=Temp5+1;
    End;
    Writeln('X=',X:4:1,'   Y=',Y:12:8,'   Amount=',Amount:3:0);
    X:=X+0.1;
  End;
  Readln;
End.



