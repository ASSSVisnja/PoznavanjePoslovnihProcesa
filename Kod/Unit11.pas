unit Unit11;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit19;

type
  TForm11 = class(TForm)
    ImageViewer1: TImageViewer;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation
uses Unit5;
{$R *.fmx}

procedure TForm11.Button1Click(Sender: TObject);
begin
 Form5.Show;
    Self.Hide;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
 Form19.Show;
 Self.Hide;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
Form19.Show;
 Self.Hide;
end;

end.
