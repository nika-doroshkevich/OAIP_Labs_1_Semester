Program MonksCalc;
{This program calculates monks's value for every type (high, mid and low).
Initial data are number of eaten by every monks's types pies,
numbers of all monks and pies.}

//Application type - console application
{$APPTYPE CONSOLE}

//Variable description section
Var
  Monks,Pies,ELead,EMiddle,EJunior:Real;
  Lead,Middle,Junior:Real;
  S:String;
  Flag:Integer;
  {Monks-Number of all monks
  Pies-Number of all pies
  ELead-Number of pies that the lead monks should eat
  EMiddle-Number of pies that the middle monks should eat
  EJunior-Number of pies that the junior monks should eat
  Lead-Number of lead monks
  Middle-Number of middle monks
  Junior-Number of junior monks
  S-Enter all user data
  Flag-Process monitoring}

Begin
  //Enter and verify data entry for the number of monks
  Repeat
    Writeln('Enter the number of monks:');
    Readln(S);
    Val(S,Monks,Flag);
    If (Flag<>0)  or (Monks<=0) then
      Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (Monks>0);

  //Enter and verify data entry for the number of pies
  Repeat
    Writeln('Enter the number of pies:');
    Readln(S);
    Val(S,Pies,Flag);
    If (Flag<>0)  or (Pies<=0) then
      Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (Pies>0);

  //Enter and verify data entry for the number of pies for lead monks
  Repeat
    Writeln('Enter the number of pies that the lead monks should eat:');
    Readln(S);
    Val(S,ELead,Flag);
    If (Flag<>0)  or (ELead<=0) then
      Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (ELead>0);

  //Enter and verify data entry for the number of pies for middle monks
  Repeat
    Writeln('Enter the number of pies that the middle monks should eat:');
    Readln(S);
    Val(S,EMiddle,Flag);
    If (Flag<>0)  or (EMiddle<=0) or (ELead<EMiddle) then
      Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (EMiddle>0) and (ELead>EMiddle);

  //Enter and verify data entry for the number of pies for junior monks
  Repeat
    Writeln('Enter the number of pies that the junior monks should eat:');
    Readln(S);
    Val(S,EJunior,Flag);
    If (Flag<>0)  or (EJunior<=0) or (EMiddle<EJunior) then
      Writeln ('Incorrect value or zero entered.');
  Until (Flag=0) and (EJunior>0) and (EMiddle>EJunior);

  //Start of cycle A1 by parameter Lead
  Lead:=1;
  While Lead<=Pies/ELead do
  Begin

    //Calculating values
    Junior:=(Pies+EMiddle*Lead-ELead*Lead-EMiddle*Monks)/(EJunior-EMiddle);

    //Verifying that junior monks are greater than zero
    If Junior>0 then
    Begin

      //Calculating values
      Middle:=Monks-Lead-Junior;

      //Verifying that middle monks are greater than zero
      //and check of real sum and sum of operands with dropped fractional part
      If (Middle>0) and (Trunc(Lead)+Trunc(Middle)+Trunc(Junior)=Lead+Middle+Junior) then
      Begin

        //If all of the above conditions are correct,
        //then the flag is assigned to one and the results are displayed
        Flag:=1;
        Writeln('Number of lead monks - ',Lead:0:0,
                ', Number of middle monks - ',Middle:0:0,
                ', Number of junior monks - ',Junior:0:0,'.');
      End;
    End;

    //Modification of parameter Lead
    Lead:=Lead+1;

  End;
  //End of cycle A1 by parameter Lead

  //Error output if no solutions are available
  If Flag=0 then
    Writeln('No solutions.');
    Readln;
End.

