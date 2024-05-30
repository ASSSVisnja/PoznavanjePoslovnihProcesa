unit Unit16;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls,
  FMX.Objects, FMX.Edit;

type
  TForm16 = class(TForm)
    ImageViewer1: TImageViewer;
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
  Form16: TForm16;

implementation
 uses Unit6;
{$R *.fmx}

procedure TForm16.Button1Click(Sender: TObject);
begin
 Form6.Show;
 Self.Hide;
end;

end.
