unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    FILE1: TMenuItem;
    LATIHAN1: TMenuItem;
    DATABASE1: TMenuItem;
    LATIHAN11: TMenuItem;
    LATIHAN21: TMenuItem;
    KONDISIONAL11: TMenuItem;
    KONDISIONAL21: TMenuItem;
    GRAFIKSTRINGGRID1: TMenuItem;
    GRAFIKSTRINGGRIDRAVISI1: TMenuItem;
    LAT1: TMenuItem;
    procedure LATIHAN11Click(Sender: TObject);
    procedure LATIHAN21Click(Sender: TObject);
    procedure KONDISIONAL11Click(Sender: TObject);
    procedure KONDISIONAL21Click(Sender: TObject);
    procedure GRAFIKSTRINGGRID1Click(Sender: TObject);
    procedure GRAFIKSTRINGGRIDRAVISI1Click(Sender: TObject);
    procedure DATABASE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Latihan1, Latihan2, Kondisional1, Kondisional2, GrafikStringgrid,
  GrafikStringgridRevisi, Jadwal;

{$R *.dfm}

procedure TForm1.LATIHAN11Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.LATIHAN21Click(Sender: TObject);
begin
form3.ShowModal;
end;

procedure TForm1.KONDISIONAL11Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.KONDISIONAL21Click(Sender: TObject);
begin
form5.ShowModal;
end;

procedure TForm1.GRAFIKSTRINGGRID1Click(Sender: TObject);
begin
form6.ShowModal;
end;

procedure TForm1.GRAFIKSTRINGGRIDRAVISI1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.DATABASE1Click(Sender: TObject);
begin
form8.ShowModal;
end;

end.
