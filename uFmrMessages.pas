unit uFmrMessages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFmrMain, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.StdCtrls;

type

  TTipo = (msgOk, msgErro, msgSimNao);

  TfmrMensagem = class(TFmrBase)
    lblTipo: TLabel;
    lblTitulo: TLabel;
    lblMensagem: TLabel;
    lblTempo: TLabel;
    Bevel1: TBevel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    Timer1: TTimer;
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    tipoMensagem: TTipo;
    tempo: integer;
  public
    function Mensagem(Titulo: string; Text: string; Tipo: TTipo): TModalResult; overload;
    function Mensagem(Titulo: string; Text: string; Tipo: TTipo; Tempo:integer): TModalResult;overload;


  end;

var
  fmrMensagem: TfmrMensagem;

implementation

{$R *.dfm}

{ TfmrMensagem }

function TfmrMensagem.Mensagem(Titulo, Text: string; Tipo: TTipo;
  Tempo: integer): TModalResult;
begin
  tipoMensagem := Tipo;
  if(Tipo = msgOk) or (Tipo = msgSimNao) then
    lblTipo.Caption := ':)'
  else
    lblTipo.Caption := ':(';

  lblTitulo.Caption := Titulo;
  lblMensagem.Caption := Text;

  if(Tipo = msgOk) or (Tipo = msgErro) then
  begin
    btn2.visible := False;
    btn1.Caption := 'Ok';
  end
  else
  begin
    btn2.Visible := True;
    btn1.Caption := 'Não';
  end;

  Mensagem := Self.ShowModal;
  Timer1.Enabled := false;
  lblTempo.Visible := false;
end;

procedure TfmrMensagem.btn1Click(Sender: TObject);
begin
  if tipoMensagem = msgOk then
    Close
  else
    ModalResult := mrNo;

end;

procedure TfmrMensagem.btn2Click(Sender: TObject);
begin
  ModalResult := mrYes;

end;

procedure TfmrMensagem.FormShow(Sender: TObject);
begin
  pnlMain.Left := (Self.Width - pnlMain.Width) div 2;
  pnlMain.Top := (Self.Height - pnlMain.Height) div 2;

end;

function TfmrMensagem.Mensagem(Titulo, Text: string; Tipo: TTipo): TModalResult;
begin
  lblTempo.Caption := 'Esta janela será fechada automaticamente em ' +
    IntToStr(Tempo) + ' segundos';
  self.tempo := Tempo;
  Timer1.Enabled := true;
  lblTempo.Visible := true;
  Mensagem := Mensagem(Titulo, Text, Tipo);
end;

procedure TfmrMensagem.Timer1Timer(Sender: TObject);
begin
  dec(Self.tempo);
  lblTempo.Caption := 'Esta janela será fechada automaticamente em' +
    IntToStr(Tempo);
  if (Tempo > 1) then
    lblTempo.Caption := lblTempo.Caption + ' segundos'
  else
    lblTempo.Caption := lblTempo.Caption + 'segundo';

  if (self.tempo = -1) then
  begin
    Timer1.Enabled := false;
    btn1.Click;
  end;

end;

end.
