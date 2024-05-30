unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit5, Unit6,
  Unit7, Unit8;

type
  TForm3 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.fmx}

procedure TForm3.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form5.Show;
Self.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form6.Show;
Self.Hide;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form7.Show;
Self.Hide;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
Form8.Show;
Self.Hide;
end;

end.
