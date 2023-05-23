unit Jadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, ExtCtrls, TeeProcs, TeEngine, Chart, StdCtrls,
  DBGrids, Series, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    cht1: TChart;
    Button1: TButton;
    Button2: TButton;
    dbgrd1: TDBGrid;
    brsrsSeries1: TBarSeries;
    Button3: TButton;
    qry2: TADOQuery;
    frxjadwal: TfrxReport;
    frxDBJadwal: TfrxDBDataset;
    frxDBdetailjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxReport;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Ujadwal;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var i:Integer;
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
  qry1.Open;
  for i:=1 to qry1.RecordCount do
    begin
      cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
      qry1.Next;
    end;
  dbgrd1.Columns[2].Width:=90;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  qry1.SQL.Clear;
  qry1.SQL.Add('select * from jadwal_table');
  qry1.Open;

  dbgrd1.Columns[0].Width:=20;
  dbgrd1.Columns[1].Width:=50;
  dbgrd1.Columns[2].Width:=50;
  dbgrd1.Columns[3].Width:=60;
  dbgrd1.Columns[5].Width:=60;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
  cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
  dbgrd1.Columns[0].Width:=30;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[5].Width:=50;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm8.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
    begin
      qry2.SQL.Clear;
      qry2.SQL.Add('select * from jadwal_table where kelas="'+view.TagStr+'"');
      qry2.Open;

      frxdetailjadwal.ShowReport();
    end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
 Form9.ShowModal;
end;

end.
