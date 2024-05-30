unit Administracija;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Finansije,
  Unit28, DodajZaposlenog, Sigurnos, Odrzavanje, Proizvodi;

type
  TForm27 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form27: TForm27;

implementation

{$R *.fmx}

procedure TForm27.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm27.Button2Click(Sender: TObject);
begin
Form22.Show;
Self.Hide;
end;

procedure TForm27.Button3Click(Sender: TObject);
begin
ObrisiZaposlenog.Show;
Self.Hide;
end;

procedure TForm27.Button4Click(Sender: TObject);
begin
Form24.Show;
Self.Hide;
end;

procedure TForm27.Button5Click(Sender: TObject);
begin
Form29.Show;
Self.Hide;
end;

procedure TForm27.Button6Click(Sender: TObject);
begin
Form30.Show;
Self.Hide;
end;

procedure TForm27.Button7Click(Sender: TObject);
begin
Form34.Show;
Self.Hide;
end;

end.
