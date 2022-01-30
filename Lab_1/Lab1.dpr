Program Lab1;
{$APPTYPE CONSOLE}
Var
  n:Shortint;
  x,sum,f:Real;
Begin
  x:=0.6;
  While x<=1.1 do
  Begin
    sum:=0;
    For n:=1 to 15 do
    Begin
      sum:=sum+sin((3*n-1)/(n+1))*sin((3*n-1)/(n+1))+exp(exp(ln(x/n)/4));
      If n>=10 then
      Begin
        f:=(Pi/((exp(ln(x)/3))+3/(x+5)))*sum;
        Writeln('x=',x:0:1,'  ','n=',n,'  ','f=',f:6:3);
      End;
    End;
    x:=x+0.1;
  End;
  Readln;
End.

