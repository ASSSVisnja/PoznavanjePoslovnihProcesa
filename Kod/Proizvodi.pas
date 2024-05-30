unit Proizvodi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Prihodi,
  ProizvodiTabela;

type
  TForm34 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form34: TForm34;

implementation
uses Administracija;
{$R *.fmx}

procedure TForm34.Button1Click(Sender: TObject);
begin
Form35.Show;
Self.Hide;
end;

procedure TForm34.Button2Click(Sender: TObject);
begin
Form23.Show;
Self.Hide;
end;

procedure TForm34.Button3Click(Sender: TObject);
begin
Form27.Show;
Self.Hide;
end;

end.
