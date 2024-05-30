unit Unit7;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls,
  FMX.Objects, FMX.Edit;

type
  TForm7 = class(TForm)
    Button1: TButton;
    editUN: TEdit;
    Text1: TText;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation
uses Unit3;
{$R *.fmx}

procedure TForm7.Button1Click(Sender: TObject);
begin
 Form3.Show;
 Self.Hide;
end;

end.
