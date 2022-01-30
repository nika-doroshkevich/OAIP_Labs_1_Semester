Program Lab8_myv;

{$APPTYPE CONSOLE}

Var
  i:Integer;
  S,NewS:String;

Begin
  Readln(S);
  NewS:='';
  i:=1;
  While (S[i]<>' ') and (S[i]<>',') and (S[i]<>'.') do
  Begin
    NewS:=NewS + S[i];
    Inc(i);
  End;
  Writeln(NewS);
  Readln;
End.
 