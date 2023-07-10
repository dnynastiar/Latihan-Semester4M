object Form2: TForm2
  Left = 279
  Top = 166
  Width = 928
  Height = 480
  Caption = 'Input Data Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 16
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object l2: TLabel
    Left = 16
    Top = 80
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object l3: TLabel
    Left = 16
    Top = 112
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object e1: TEdit
    Left = 72
    Top = 48
    Width = 265
    Height = 21
    TabOrder = 0
  end
  object b1: TButton
    Left = 16
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = b1Click
  end
  object dg1: TDBGrid
    Left = 16
    Top = 152
    Width = 320
    Height = 120
    DataSource = d1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Width = 47
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jenis'
        Title.Alignment = taCenter
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'jurusan'
        Title.Alignment = taCenter
        Width = 103
        Visible = True
      end>
  end
  object b2: TButton
    Left = 104
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 192
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Clear Form'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 368
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Print'
    TabOrder = 6
  end
  object c1: TComboBox
    Left = 72
    Top = 80
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Pagi'
      'Siang')
  end
  object c2: TComboBox
    Left = 72
    Top = 112
    Width = 265
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Bahasa'
      'IPA'
      'IPS')
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_laporansiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\ACER\Documents\Kuliah\Visual\Visual2\Project-akhir\libm' +
      'ysql.dll'
    Left = 352
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from tb_kelas')
    Params = <>
    Left = 384
    Top = 40
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 416
    Top = 40
  end
end
