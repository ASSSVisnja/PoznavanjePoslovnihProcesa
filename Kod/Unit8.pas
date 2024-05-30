unit Unit8;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, FMX.Edit;

type
  TForm8 = class(TForm)
    Z: TImageViewer;
    Button2: TButton;
    editUN: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation
uses Unit3;
{$R *.fmx}

procedure TForm8.Button2Click(Sender: TObject);
begin
Form3.Show;
Self.Hide;
end;

end.
