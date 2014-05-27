unit QRCodeGen_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ExtDlgs, DelphiZXingQRCode;

type
  TForm1 = class(TForm)
    edtText: TEdit;
    Label1: TLabel;
    cmbEncoding: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    edtQuietZone: TEdit;
    Label4: TLabel;
    ButtonSave: TButton;
    Image1: TImage;
    SavePictureDialog1: TSavePictureDialog;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    ButtonSaveAs: TButton;
    procedure FormCreate(Sender: TObject);
    procedure edtTextChange(Sender: TObject);
    procedure cmbEncodingChange(Sender: TObject);
    procedure edtQuietZoneChange(Sender: TObject);
    procedure cmbErrorCorrectionLevelChange(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
    procedure ButtonSaveAsClick(Sender: TObject);
  private
    BMP: TBitmap;
  public
    procedure Update;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.cmbEncodingChange(Sender: TObject);
begin
  Update;
end;

procedure TForm1.cmbErrorCorrectionLevelChange(Sender: TObject);
begin
  Update;
end;

procedure TForm1.edtQuietZoneChange(Sender: TObject);
begin
  Update;
end;

procedure TForm1.edtTextChange(Sender: TObject);
begin
  Update;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Update;
end;

procedure TForm1.Update;
var
  QRCode: TDelphiZXingQRCode;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data := edtText.Text;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    BMP := TBitmap.Create;
    try
      QRCode.DrawQrcode(BMP);
      if CheckBox1.Checked then // Salvar imagem com o path predefinido
        BMP.SaveToFile('C:\temp.bmp');

      Image1.Picture.Bitmap := BMP;
    finally
      BMP.Free;
    end;
  finally
    QRCode.Free;
  end;
end;

procedure TForm1.ButtonSaveClick(Sender: TObject);
begin
  Image1.Picture.SaveToFile('C:\temp2.bmp');
end;

procedure TForm1.ButtonSaveAsClick(Sender: TObject);
begin
  if SavePictureDialog1.Execute then
  begin
    Image1.Picture.Bitmap.SaveToFile(SavePictureDialog1.FileName);
  end;
end;

end.
