unit Unit5;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit9, Unit10,
  Unit11, Unit12;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses Unit3;

{$R *.fmx}

procedure TForm5.Button1Click(Sender: TObject);
begin
Form9.Show;
Self.Hide;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
 Form10.Show;
 Self.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Form11.Show;
Self.Hide;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Form12.Show;
Self.Hide;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
Form3.Show;
Self.Hide;
end;

end.
