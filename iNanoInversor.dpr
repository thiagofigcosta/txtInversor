program iNanoInversor;

uses
  Forms,
  inversor in 'inversor.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'iNano:Inversor';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
