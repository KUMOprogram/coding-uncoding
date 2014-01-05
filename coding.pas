program codes;
uses wincrt;
var a:array[1..100] of char;
    b:array[1..100] of integer;
    c:array[1..100] of char;
    x,y:string;
    k,i:integer;


BEGIN
 writeln('That program excists for coding and uncoding');
 writeln('messages in CEASAR code and ASCII code');
 writeln;
 writeln('CODE CEASAR:   dinei ena gramma mprosta, to "z" einai "a"');
 writeln('UNCODE CEASAR: dinei ena gramma pisw, to "a" einai "z", ta kena einai "!"');
 writeln('CODE ASCII:    metatrepei protash se noumera ascii');
 writeln('UNCODE ASCII:  metatrepei noumera ascii se grammata,');
 writeln('               keno einai to 32 kai enter to 13');

writeln;

 write('your message is REAL or CODE (write "real" or "code"): ');
 read(x);

readln;

{coding}

 if x='real' then
 begin
  write('ASCII or CEASAR (write "ascii" or "ceasar"): ');
  read(y);

  readln;

  write('give your message (use ENTER to end message): ');
  for i:=1 to 100 do
  begin
   read(a[i]);
   if a[i]=char(13) then
   begin
    i:=100;
   end;
  end;

  readln;

  if y='ascii' then
  begin
   for i:=1 to 100 do
   begin
    b[i]:=ord(a[i]);
   end;
    write('ASCII CODED MESSAGE: ');
   for i:=1 to 100 do
   begin
    write(b[i],' ');
    if b[i]=13 then
    begin
     i:=100;
    end;
   end;
  end

  else if y='ceasar' then
  begin
   for i:=1 to 100 do
   begin
    if a[i]='z' then
    begin
     c[i]:='a';
    end
    else
    begin
     c[i]:=char(ord(a[i])+1);
    end;
   end;
   write('CEASAR CODED MESSAGE: ');
   for i:=1 to 100 do
   begin
    write(c[i]);
   end;
  end;

 end;

{uncoding}

 if x='code' then
 begin
  write('ASCII or CEASAR (write "ascii" or "ceasar"): ');
  read(y);

  readln;

  if y='ascii' then
  begin

   writeln('give your message (use 13 to end message): ');
   for i:=1 to 100 do
   begin
    readln(b[i]);
    if b[i]=13 then
    begin
     i:=100;
    end;
   end;

  readln;

   for i:=1 to 100 do
   begin
    a[i]:=char(b[i]);
   end;
   write('ASCII UNCODED MESSAGE: ');
   for i:=1 to 100 do
   begin
    write(a[i]);
   end;

  end

  else if y='ceasar' then
  begin

 {xrhsimopoiw enan metrhth "k" gt gemizei automata ta kena me diaxwristhkes teleies
 logo tou ord-1 au8ereta opote periorozw ton pinaka epanalhpsewn gia kaluterh eikona}

   k:=0;
   write('give your message (use ENTER to end message): ');
   for i:=1 to 100 do
   begin
    read(c[i]);
    if c[i]=char(13) then
    begin
     i:=100;
    end;
    k:=k+1;
   end;

  readln;
    
   for i:=1 to k do
   begin
    if c[i]='a' then
    begin
     a[i]:='z';
    end
    else
    begin
     a[i]:=char(ord(c[i])-1);
    end;
    if a[i]=char(13) then
    begin
     i:=100;
    end;
   end;
   write('CEASAR UNCODED MESSAGE: ');
   for i:=1 to k do
   begin
    write(a[i]);
   end;
  end;

 end;


END.
