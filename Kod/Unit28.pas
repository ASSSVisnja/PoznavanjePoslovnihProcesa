unit Unit28;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, Data.DB, Data.Win.ADODB,
  FMX.Controls.Presentation, FMX.Edit, FMX.StdCtrls, Unit21;

type
  TObrisiZaposlenog = class(TForm)
    editID: TEdit;
    Button1: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ObrisiZaposlenog: TObrisiZaposlenog;

implementation

uses Administracija;

{$R *.fmx}

procedure TObrisiZaposlenog.Button1Click(Sender: TObject);
var
  sID: String;
begin
  sID := editID.Text;


 with DataModule21 do
 begin
        Zaposleni.Close;
        Zaposleni.SQL.Clear;
        Zaposleni.SQL.Text := 'DELETE FROM ZaposleniAdministracija WHERE ID = :ID';
        Zaposleni.Parameters.ParamByName('ID').DataType := ftInteger;
        Zaposleni.Parameters.ParamByName('ID').Value := StrToInt(sID);
        Zaposleni.ExecSQL;

        // Provera da li je zaposleni uspešno obrisan
        if Zaposleni.RowsAffected > 0 then
          ShowMessage('Zaposleni sa ID ' + sID + ' je uspešno obrisan.')
        else
          ShowMessage('Nije pronađen zaposleni sa datim ID: ' + sID);
 end;
end;

procedure TObrisiZaposlenog.Button3Click(Sender: TObject);
begin
  Form27.Show;
  Self.Hide;
end;

end.

