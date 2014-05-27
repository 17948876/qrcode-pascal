program QRCodeGen_Demo;

uses
  Vcl.Forms,
  QRCodeGen_Principal in 'QRCodeGen_Principal.pas' {Form1},
  DelphiZXingQRCode in 'DelphiZXingQRCode.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
