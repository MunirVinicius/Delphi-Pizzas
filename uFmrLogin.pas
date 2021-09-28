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
    nVezes : integer;
  public
    { Public declarations }
  end;

var
  fmrLogin: TfmrLogin;

implementation

{$R *.dfm}

uses uDmDados, uFmrMessages;

procedure TfmrLogin.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmrLogin.btnEntrarClick(Sender: TObject);
begin

  with dmDados do
  begin
    qryLogin.Close;

    qryLogin.ParamByName('Nome').Value := edtNome.Text;
    qryLogin.ParamByName('Senha').Value := edtSenha.Text;

    qryLogin.Open;

    if (qryLogin.IsEmpty) then
    begin
      dec(nVezes);
      fmrMensagem.Mensagem('Acesso Negado!',
        'Nome do usuario ou Senha invalidos!' + #13 +
        'Numero de tentativas restantes: ' + IntToStr(nVezes), msgErro, 15);

      if (nVezes = 0) then
        btnCancelar.Click;
    end
    else
    begin
      logou := true;
      qryLogin.Close;
      Close;
    end;
  end;
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
  nVezes := 3;
  pnlMain.Left := (Self.Width - pnlMain.Width) div 2;
  pnlMain.Top := (Self.Height - pnlMain.Height) div 2;
end;

end.
