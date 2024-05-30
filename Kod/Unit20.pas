unit Unit20;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TForm20 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation
uses Unit3, Unit5;
{$R *.fmx}

procedure TForm20.Button1Click(Sender: TObject);
begin
Form5.Show;
Self.Hide;
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
Form3.Show;
Self.Hide;
end;

end.
