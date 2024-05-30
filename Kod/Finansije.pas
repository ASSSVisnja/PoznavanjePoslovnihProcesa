unit Finansije;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Prihodi,
  Rashodi, TrenutnoStanje;

type
  TForm22 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Registracija: TButton;
    Button3: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure RegistracijaClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation
uses Administracija;

{$R *.fmx}

procedure TForm22.Button1Click(Sender: TObject);
begin
Form23.Show;
Self.Hide;
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
Form27.Show;
Self.Hide;
end;

procedure TForm22.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm22.RegistracijaClick(Sender: TObject);
begin
Form25.Show;
Self.Hide;
end;

end.
