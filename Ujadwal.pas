unit Ujadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm9 = class(TForm)
    GrupBox1: TGroupBox;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    dtp1: TDateTimePicker;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  upd:String;

implementation
uses Jadwal, MainMenu, ADODB;

{$R *.dfm}

procedure TForm9.bersih;
begin
  Edit1.Text := '00:00';
  Edit2.Text := '00:00';
  ComboBox1.Text := '--- PILIH HARI ---';
  Edit3.Text := '-';
  Edit4.Text := '-';
  Edit5.Text := '-';
  Edit6.Text := '0';

  dbgrd1.Columns[0].Width:=20;
  dbgrd1.Columns[1].Width:=50;
  dbgrd1.Columns[2].Width:=50;
  dbgrd1.Columns[3].Width:=60;
  dbgrd1.Columns[5].Width:=60;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=90;

  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
end;

procedure TForm9.Button1Click(Sender: TObject);
var a:Integer;
begin
  if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00')then
      begin
        ShowMessage('DATA BELUM DIISI DENGAN BENAR');
      end else
    if (ComboBox1.Text='') or (ComboBox1.Text='--- PILIH HARI ---')then
      begin
        ShowMessage('HARI BELUM DIISI DENGAN BENAR');
      end else
    if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
      begin
        ShowMessage('INPUT RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
      end else
    if (Edit5.text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
      begin
        ShowMessage('INPUT KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
      end else
    if (Form8.qry1.Locate('hari',ComboBox1.Text,[])) and (Form8.qry1.Locate('jam_mulai',Edit1.Text,[])) then // validasi membandingkan data inputan dengan data di table
      begin
        ShowMessage('DATA SUDAH ADA DI DALAM SISTEM');
        Edit1.SetFocus;
      end else

    begin  // Kode simpan
      a:=Form8.qry1.RecordCount+1;
      with Form8.qry1 do //Kode simpan
      begin
        SQL.Clear;
        SQL.Add('insert into jadwal_table values ("'+inttostr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+ComboBox1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
        ExecSQL;
        bersih; // procedure bersih
        ShowMessage('DATA BERHASIL DI SIMPAN');
      end;
    end;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
  try
    upd:=Form8.qry1.Fields[0].AsString;
    Edit1.Text:=Form8.qry1.Fields[1].AsString;
    Edit2.Text:=Form8.qry1.Fields[2].AsString;
    ComboBox1.Text:=Form8.qry1.Fields[3].AsString;
    dtp1.Date:=Form8.qry1.Fields[4].AsDateTime;
    Edit3.Text:=Form8.qry1.Fields[5].AsString;
    Edit4.Text:=Form8.qry1.Fields[6].AsString;
    Edit5.Text:=Form8.qry1.Fields[7].AsString;
    Edit6.Text:=Form8.qry1.Fields[8].AsString;

    Button1.Enabled := False;
    Button2.Enabled := True;
    Button3.Enabled := True;
  except
    //kosong
  end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
  bersih; //procedure bersih
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
    if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00')then
      begin
        ShowMessage('DATA BELUM DIISI DENGAN BENAR');
      end else
    if (ComboBox1.Text='') or (ComboBox1.Text='--- PILIH HARI ---')then
      begin
        ShowMessage('HARI BELUM DIISI DENGAN BENAR');
      end else
    if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
      begin
        ShowMessage('INPUT RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
      end else
    if (Edit5.text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
      begin
        ShowMessage('INPUT KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
      end else
    if (Edit1.Text= Form8.qry1.Fields[1].AsString) and (ComboBox1.Text= Form8.qry1.Fields[3].AsString) then //perbandingan dari inputan dan table
      begin
        ShowMessage('DATA TIDAK ADA PERUBAHAN');
      end else

      begin
        //Kode Update
        with Form8,qry1 do
          begin
            SQL.Clear;
            SQL.Add('update jadwal_table set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'" where no="'+upd+'"');
            ExecSQL;
            bersih; //procedure bersih
            ShowMessage('DATA BERHASIL DI UPDATE');
          end;
      end;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  if (Edit1.Text='') or (Edit1.Text='00:00') or (Edit2.Text='') or (Edit2.Text='00:00')then
    begin
      ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
  if (ComboBox1.Text='') or (ComboBox1.Text='--- PILIH HARI ---')then
    begin
      ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
  if (Edit3.Text='') or (Edit3.Text='-') or (Edit4.Text='') or (Edit4.Text='-')then
    begin
      ShowMessage('INPUT RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
    end else
  if (Edit5.text='') or (Edit5.Text='-') or (Edit6.Text='') or (Edit6.Text='0')then
    begin
      ShowMessage('INPUT KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
    end else

    begin
      //Kode delete
      if MessageDlg('APAKAH ANDA YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)=mryes then
        begin
          with Form8.qry1 do
            begin
              SQL.Clear;
              SQL.Add('delete from jadwal_table where no="'+upd+'"');
              ExecSQL;
              bersih; //procedure bersih
              ShowMessage('DATA BERHASIL DIHAPUS');
            end;
        end else
        begin
          ShowMessage('DATA BATAL DIHAPUS');
        end;
    end;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  bersih;
end;

end.
