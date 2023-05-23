unit Latihan2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
    input1, input2, tambah, kurang, kali, bagi : Real;
begin
    input1 := strtofloat(Edit1.Text);
    input2 := strtofloat(Edit2.Text);

    tambah := input1 + input2;
    Edit3.Text := FloatToStr(tambah);

    kurang := input1 - input2;
    Edit4.Text := FloatToStr(kurang);

    kali := input1 * input2;
    Edit5.Text := FloatToStr(kali);

    bagi := input1 / input2;
    Edit6.Text := FloatToStr(bagi);
end;


procedure TForm3.Button2Click(Sender: TObject);
var
  input1, input2, tambah : Real;
begin
  input1 := strtofloat(Edit1.Text);
  input2 := strtofloat(Edit2.Text);

  tambah := input1 + input2;
  Edit3.Text := FloatToStr(tambah);
end;


procedure TForm3.Button3Click(Sender: TObject);
var
  input1, input2, kurang : Real;
begin
  input1 := strtofloat(Edit1.Text);
  input2 := strtofloat(Edit2.Text);

  kurang := input1 - input2;
  Edit4.Text := FloatToStr(kurang);
end;


procedure TForm3.Button4Click(Sender: TObject);
var
  input1, input2, kali : Real;
begin
  input1 := strtofloat(Edit1.Text);
  input2 := strtofloat(Edit2.Text);

  kali := input1 * input2;
  Edit5.Text := FloatToStr(kali);
end;


procedure TForm3.Button5Click(Sender: TObject);
var
  input1, input2, bagi : Real;
begin
  input1 := strtofloat(Edit1.Text);
  input2 := strtofloat(Edit2.Text);

  bagi := input1 / input2;
  Edit6.Text := FloatToStr(bagi);
end;


end.
