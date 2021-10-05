unit uFmrBasePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFmrMain, Vcl.ExtCtrls, uDmDados,
  uFmrMessages, System.Actions, Vcl.ActnList, Data.DB, FireDAC.comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfmrBasePesquisa = class(TFmrBase)
    dts: TDataSource;
    ActionList1: TActionList;
    actVoltar: TAction;
    actIncluir: TAction;
    actAlterar: TAction;
    actImprimir: TAction;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnImprimir: TButton;
    btnVoltar: TButton;
    pnlPesquisar: TPanel;
    DBGrid1: TDBGrid;
    procedure actVoltarExecute(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    SqlInicial : string;
    procedure AbreCadastro(); virtual;
    procedure Pesquisar(sql: string); virtual;
  end;

var
  fmrBasePesquisa: TfmrBasePesquisa;

implementation

{$R *.dfm}

procedure TfmrBasePesquisa.AbreCadastro;
begin

end;

procedure TfmrBasePesquisa.actAlterarExecute(Sender: TObject);
begin
  if (dts.DataSet.IsEmpty) then
  begin
    fmrMensagem.Mensagem('Problemas ao Alterar',
      'Não existem dados para alterar! selecione um registro e faça sua pesquisa',
      msgErro);
    Abort;
  end;

  dts.DataSet.Edit;
  AbreCadastro();
  dts.DataSet.Refresh;

end;

procedure TfmrBasePesquisa.actIncluirExecute(Sender: TObject);
begin
  dts.DataSet.Append;
  AbreCadastro();
  dts.DataSet.Refresh;
end;


procedure TfmrBasePesquisa.actVoltarExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmrBasePesquisa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Tag = 0 then
  begin
    dts.DataSet.Close;
    TFDQuery(dts.DataSet).SQL.Clear;
    TFDQuery(dts.DataSet).SQL.Add(sqlInicial);
  end;
end;

procedure TfmrBasePesquisa.FormShow(Sender: TObject);
begin
  sqlInicial := TFDQuery(dts.DataSet).SQL.Text;
  dts.DataSet.Open;
end;

procedure TfmrBasePesquisa.Pesquisar(sql: string);
begin
  TFDQuery(dts.DataSet).SQL.Clear;
  TFDQuery(dts.DataSet).SQL.Add(sql);
  dts.DataSet.Open;
end;

end.
