program main_menu;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {Form1},
  Latihan1 in 'Latihan1.pas' {Form2},
  Latihan2 in 'Latihan2.pas' {Form3},
  Kondisional1 in 'Kondisional1.pas' {Form4},
  Kondisional2 in 'Kondisional2.pas' {Form5},
  GrafikStringgrid in 'GrafikStringgrid.pas' {Form6},
  GrafikStringgridRevisi in 'GrafikStringgridRevisi.pas' {Form7},
  Jadwal in 'Jadwal.pas' {Form8},
  Ujadwal in 'Ujadwal.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
