unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit2, Unit4;

type
  TForm1 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Registracija: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure RegistracijaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
Form2.Show;
Self.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.RegistracijaClick(Sender: TObject);
begin
  Form4.Show;
  Self.Hide;
end;

end.
