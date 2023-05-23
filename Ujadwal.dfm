object Form9: TForm9
  Left = 192
  Top = 125
  Width = 1044
  Height = 640
  Caption = 'FORM TAMBAH JADWAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GrupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 977
    Height = 273
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 61
      Height = 16
      Caption = 'JAM AWAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 248
      Top = 40
      Width = 62
      Height = 16
      Caption = 'JAM AKHIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 80
      Width = 115
      Height = 16
      Caption = 'HARI PELAKSANAAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 144
      Width = 56
      Height = 16
      Caption = 'RUANGAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 176
      Width = 79
      Height = 16
      Caption = 'MATA KULIAH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 40
      Top = 208
      Width = 36
      Height = 16
      Caption = 'KELAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 40
      Top = 240
      Width = 79
      Height = 16
      Caption = 'TOTAL HADIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 40
      Top = 112
      Width = 54
      Height = 16
      Caption = 'TANGGAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '00:00'
    end
    object Edit2: TEdit
      Left = 320
      Top = 40
      Width = 121
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '00:00'
    end
    object ComboBox1: TComboBox
      Left = 176
      Top = 80
      Width = 265
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '--- PILIH HARI ---'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 176
      Top = 112
      Width = 265
      Height = 21
      Date = 45066.791174861110000000
      Time = 45066.791174861110000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 176
      Top = 144
      Width = 265
      Height = 21
      TabOrder = 4
      Text = '-'
    end
    object Edit4: TEdit
      Left = 176
      Top = 176
      Width = 265
      Height = 21
      TabOrder = 5
      Text = '-'
    end
    object Edit5: TEdit
      Left = 176
      Top = 208
      Width = 265
      Height = 21
      TabOrder = 6
      Text = '-'
    end
    object Edit6: TEdit
      Left = 176
      Top = 240
      Width = 265
      Height = 21
      TabOrder = 7
      Text = '0'
    end
    object Button1: TButton
      Left = 616
      Top = 80
      Width = 105
      Height = 49
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 752
      Top = 80
      Width = 105
      Height = 49
      Caption = 'EDIT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 616
      Top = 160
      Width = 105
      Height = 49
      Caption = 'HAPUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 752
      Top = 160
      Width = 105
      Height = 49
      Caption = 'BATAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Button4Click
    end
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 312
    Width = 977
    Height = 257
    DataSource = Form8.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
