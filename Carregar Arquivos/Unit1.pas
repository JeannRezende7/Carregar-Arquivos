unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    dg_text: TOpenTextFileDialog;
    dg_img: TOpenPictureDialog;
    Button3: TButton;
    dg_salvar: TSaveDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   if dg_img.Execute then
  begin
    Image1.Picture.LoadFromFile(dg_img.FileName);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if dg_text.Execute then
  begin
    Memo1.Lines.LoadFromFile(dg_text.FileName);
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    if dg_salvar.Execute then
    begin
      Memo1.Lines.SaveToFile(dg_salvar.FileName + '.docx');
    end;
end;

end.
