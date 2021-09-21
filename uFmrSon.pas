unit uFmrSon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFmrMain, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TFmrMain = class(TFmrBase)
    btnExit: TSpeedButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmrMain: TFmrMain;

implementation

{$R *.dfm}

uses uFmrMessages;

procedure TFmrMain.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFmrMain.Button1Click(Sender: TObject);
begin
  fmrMensagem.Mensagem('Problemas ao gravar', 'Informe todos os dados do produto para completar o cadastro',
    msgErro);
end;

procedure TFmrMain.Button2Click(Sender: TObject);
begin
  fmrMensagem.Mensagem('Problemas ao gravar', 'Informe todos os dados do produto para completar o cadastro',
    msgErro);

end;

procedure TFmrMain.Button3Click(Sender: TObject);
begin
  if (fmrMensagem.Mensagem('Gostou da mensagem ?', 'Esta mensagem personalizada é um patrocinio Munirzex Coders', msgSimNao) = mrYes) then
    fmrMensagem.Mensagem('Uhull', 'Que bom, deu trabalho fazer tudo isso', msgOk)
  else
    fmrMensagem.Mensagem('Poxa', 'Tudo bem, vou tentar melhorar para a proxima', msgErro)
end;

procedure TFmrMain.Button4Click(Sender: TObject);
begin
  fmrMensagem.Mensagem('Cadastro concluido', 'Esta mensagem é apenas informativo e será fechada automaticamente',msgOk, 10);
end;

procedure TFmrMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fmrMensagem.Mensagem('Confirme o fechamento do Sistema ?', '',msgSimNao,5) = mrNo then
    abort;

end;

end.
