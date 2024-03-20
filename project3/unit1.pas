unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  k1, k2, res, i: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  k1 := StrToInt(Edit1.Text);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  k2:= StrToInt(Edit2.Text);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  Memo1.Lines.add('число ' + Edit1.Text + ' в степени ' + Edit2.Text + ' равно: ' + IntToStr(res));

end;
begin
  res := 1;
for i := 1 to abs(k2) do
    res := res * k1;
end.

