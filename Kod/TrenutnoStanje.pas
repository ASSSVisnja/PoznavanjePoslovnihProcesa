unit TrenutnoStanje;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls;

type
  TForm24 = class(TForm)
    ImageViewer1: TImageViewer;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation
uses Finansije;
{$R *.fmx}

procedure TForm24.Button2Click(Sender: TObject);
begin
Form22.Show;
Self.Hide;
end;

end.
