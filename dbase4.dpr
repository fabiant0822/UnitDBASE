program dbase4;

uses
  Vcl.Forms,
  dbUnit4 in 'dbUnit4.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
