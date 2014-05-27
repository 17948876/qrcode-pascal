object Form1: TForm1
  Left = 331
  Top = 214
  Caption = 'Gerador de QRCode'
  ClientHeight = 282
  ClientWidth = 534
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 550
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object Label2: TLabel
    Left = 8
    Top = 60
    Width = 55
    Height = 13
    Caption = 'Codifica'#231#227'o'
  end
  object Label3: TLabel
    Left = 184
    Top = 60
    Width = 75
    Height = 13
    Caption = #193'rea de sil'#234'ncio'
  end
  object Label4: TLabel
    Left = 296
    Top = 13
    Width = 41
    Height = 13
    Caption = 'Previs'#227'o'
  end
  object Image1: TImage
    Left = 295
    Top = 32
    Width = 128
    Height = 119
  end
  object Label5: TLabel
    Left = 31
    Top = 154
    Width = 157
    Height = 13
    Caption = '* Caminho padr'#227'o: C:\temp.bmp'
  end
  object edtText: TEdit
    Left = 8
    Top = 32
    Width = 265
    Height = 21
    TabOrder = 0
    Text = 'ACBr'
    OnChange = edtTextChange
  end
  object cmbEncoding: TComboBox
    Left = 8
    Top = 79
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 1
    Text = 'Auto'
    OnChange = cmbEncodingChange
    Items.Strings = (
      'Auto'
      'Numeric'
      'Alphanumeric'
      'ISO-8859-1'
      'UTF-8 without BOM'
      'UTF-8 with BOM')
  end
  object edtQuietZone: TEdit
    Left = 184
    Top = 79
    Width = 89
    Height = 21
    TabOrder = 2
    Text = '4'
    OnChange = edtQuietZoneChange
  end
  object ButtonSave: TButton
    Left = 10
    Top = 176
    Width = 178
    Height = 25
    Caption = 'Salvar imagem C:\temp2.bmp'
    TabOrder = 3
    OnClick = ButtonSaveClick
  end
  object CheckBox1: TCheckBox
    Left = 11
    Top = 136
    Width = 218
    Height = 17
    Caption = 'Salvar imagem a cada altera'#231#227'o'
    TabOrder = 4
  end
  object ButtonSaveAs: TButton
    Left = 10
    Top = 202
    Width = 178
    Height = 25
    Caption = 'Salvar imagem como... '
    TabOrder = 5
    OnClick = ButtonSaveAsClick
  end
  object SavePictureDialog1: TSavePictureDialog
    FileName = 'temp3.bmp'
    Left = 344
    Top = 193
  end
end
