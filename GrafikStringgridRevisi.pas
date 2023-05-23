unit GrafikStringgridRevisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    cht1: TChart;
    psrsSeries1: TPieSeries;
    Button1: TButton;
    ComboBox2: TComboBox;
    Button2: TButton;
    Button3: TButton;
    procedure charadd;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.charadd;
var i:Integer;
begin
  cht1.Series[0].Clear; //membersihkan tampilan char
  for i:=1 to StringGrid1.RowCount-1 do
    begin
      cht1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
    end;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount := 1;
  StringGrid1.ColCount := 4;
  StringGrid1.Cells[0,0] := 'NO';
  StringGrid1.Cells[1,0] := 'JUMLAH TERDAFTAR';
  StringGrid1.Cells[2,0] := 'FAKULTAS';
  StringGrid1.Cells[3,0] := 'TAHUN ANGKATAN';

  StringGrid1.ColWidths[0] := 20;
  StringGrid1.ColWidths[0] := 70;
  StringGrid1.ColWidths[0] := 170;
  StringGrid1.ColWidths[0] := 100;
end;

procedure TForm7.Button1Click(Sender: TObject); //add data stringgrid
begin
  StringGrid1.RowCount := StringGrid1.RowCount+1;
  StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
  StringGrid1.Cells[1,StringGrid1.RowCount -1] := Edit1.Text;
  StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
  StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
  charadd; //procedure
end;

procedure TForm7.Button2Click(Sender: TObject); //Hapus in selected
var a, b : Integer;
begin
  a := StringGrid1.Selection.Bottom - StringGrid1.Selection.Top +1;
  for b := StringGrid1.Selection.Bottom +1 to StringGrid1.RowCount -1 do
  StringGrid1.Rows[b-a] := StringGrid1.Rows[b];
  StringGrid1.RowCount := StringGrid1.RowCount -1;
  charadd; //procedure
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  StringGrid1.RowCount := StringGrid1.RowCount-
  MAX_PATH; //hapus isi data stringgrid all
  charadd; //procedure
end;

end.
