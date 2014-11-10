unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }

    var ch:char;
    var num, bigCh, smallCh, space, offset:integer;
    var str,newStr:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

var i:integer;
procedure TForm1.Button1Click(Sender: TObject);
begin
  Form1.Memo1.Lines.Add('The number of characters in text "' + Form1.Edit1.Text + '" is ' + IntToStr(length(Form1.Edit1.Text)) + '.');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  num:= 0;
  bigCh:= 0;
  smallCh:= 0;
  space:= 0;
  str:= Form1.Edit1.Text;
  for i:= 0 to length(str) do
      begin
        ch:= str[i];
        case ch of
             char(32): str[i]:= '*';
        end;
      end;
  Form1.Memo1.Lines.Add(str);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  num:= 0;
  bigCh:= 0;
  smallCh:= 0;
  space:= 0;
  str:= Form1.Edit1.Text;
  for i:= 0 to length(str) do
      begin
        ch:= str[i];
        case ch of
             '0'..'9': num += 1;
        end;
      end;
  Form1.Memo1.Lines.Add('The number of numbers in text "' + Form1.Edit1.Text + '" is ' + IntToStr(num) + '.');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  for i:= 0 to 255 do
      Form1.Memo1.Lines.Add(intToStr(i) + ': ' + char(i));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  str:= Form1.Edit1.Text;
  offset:= StrToInt(Form1.Edit2.Text);

  {for i:=0 to length(str) do
      begin
        ch:= str[i];
        str[i]:= char(ord(ch) + offset);

      end;
  }
  Form1.Memo1.Lines.Add(str + IntToStr(offset));
        {case ch of
             char(32)..char(126): // 32 zacina ' ' a 126 konci ~
               begin
                    if (offset >= 0) then
                               if (ord(ch) > 126 - offset) or (ord(ch) < 32 - offset) then
                                   if (offset > 94) then
                                         str[i]:= char( 32 + round(94*((offset/94) - trunc(offset/94))))
                                   else
                                         str[i]:= char( 32 + round(94*((offset/94))))
                               else
                                   str[i]:= char(ord(ch) + offset)
                    else
                               if (ord(ch) > 126 - offset) or (ord(ch) < 32 - offset) then
                                   if (offset < -94) then
                                         str[i]:= char( 32 + round((-94)*((offset/94) - trunc(offset/94))))
                                   else
                                         str[i]:= char( 32 + round((-94)*((offset/94))))
                               else
                                   str[i]:= char(ord(ch) + offset)
               end;
        end;}
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form1.Memo1.Clear;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  num:= 0;
  bigCh:= 0;
  smallCh:= 0;
  space:= 0;
  str:= Form1.Edit1.Text;
  for i:= 0 to length(str) do
      begin
        ch:= str[i];
        case ord(ch) of
             32: space += 1;
             ord('0')..ord('9'): num += 1;
             65..90: bigCh += 1;
             97..122: smallCh += 1;
        end;
      end;
  Form1.Memo1.Lines.Add('In the text "' + Form1.Edit1.Text + '" are ' + IntToStr(space) + ' spaces, ' + IntToStr(num) + ' numbers, ' + IntToStr(smallCh) + ' lowercase letters and ' + IntToStr(bigCh) + ' uppercase letters.');
end;

end.





































