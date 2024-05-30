unit Unit6;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ExtCtrls, Unit13, Unit14,
  Unit15, Unit16, Unit17, Unit18;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses Unit3;

{$R *.fmx}

procedure TForm6.Button1Click(Sender: TObject);
begin
Form14.Show;
Self.Hide;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form15.Show;
Self.Hide;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
Form16.Show;
Self.Hide;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
Form17.Show;
Self.Hide;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
Form3.Show;
Self.Hide;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
Form18.Show;
Self.Hide;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
Form13.Show;
Self.Hide;
end;

end.
