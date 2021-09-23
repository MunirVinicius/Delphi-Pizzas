unit uFmrLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFmrMain, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TfmrLogin = class(TFmrBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    edtNome: TEdit;
    edtSenha: TEdit;
    btnEntrar: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    logou : boolean;
  public
    { Public declarations }
  end;

var
  fmrLogin: TfmrLogin;

implementation

{$R *.dfm}

procedure TfmrLogin.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmrLogin.btnEntrarClick(Sender: TObject);
begin
  logou := true;
  Close;
end;

procedure TfmrLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not logou then
    Application.Terminate;

end;

procedure TfmrLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnEntrar.Click;

end;

procedure TfmrLogin.FormShow(Sender: TObject);
begin
  logou := false;
  pnlMain.Left := (Self.Width - pnlMain.Width) div 2;
  pnlMain.Top := (Self.Height - pnlMain.Height) div 2;
end;

end.
