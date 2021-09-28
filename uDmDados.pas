unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, Vcl.ImgList, Vcl.Controls,
  FireDAC.Comp.UI;

type
  TdmDados = class(TDataModule)
    Conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    img32: TImageList;
    img48: TImageList;
    qryLogin: TFDQuery;
    qryUsuario: TFDQuery;
    qryTipo: TFDQuery;
    qryCliente: TFDQuery;
    qryFormaPagto: TFDQuery;
    qryProduto: TFDQuery;
    qryPedido: TFDQuery;
    qryItemPedido: TFDQuery;
    qryEntrega: TFDQuery;
    qryUsuarioIdUsuario: TFDAutoIncField;
    qryUsuarioNomeUsuario: TStringField;
    qryUsuarioSenhaUsuario: TStringField;
    qryTipoIdTipo: TFDAutoIncField;
    qryTipoNomeTipo: TStringField;
    qryClienteIdCliente: TFDAutoIncField;
    qryClienteNomeCliente: TStringField;
    qryClienteEndereco: TStringField;
    qryClienteBairro: TStringField;
    qryClienteCep: TStringField;
    qryClienteTelefone: TStringField;
    qryClienteCelular: TStringField;
    qryClienteAtivo: TBooleanField;
    qryFormaPagtoIdFormaPagto: TFDAutoIncField;
    qryFormaPagtoDescricao: TStringField;
    qryProdutoIdProduto: TFDAutoIncField;
    qryProdutoIdTipo: TLongWordField;
    qryProdutoNomeProduto: TStringField;
    qryProdutoDescricao: TStringField;
    qryProdutoQtde: TLongWordField;
    qryProdutoVenda: TBCDField;
    qryPedidoIdPedido: TFDAutoIncField;
    qryPedidoIdFormaPagto: TLongWordField;
    qryPedidoIdCliente: TLongWordField;
    qryPedidoDataPedido: TDateTimeField;
    qryPedidoEntregar: TBooleanField;
    qryPedidoPrevisaoEntrega: TDateTimeField;
    qryItemPedidoIdItemPedido: TFDAutoIncField;
    qryItemPedidoIdPedido: TLongWordField;
    qryItemPedidoIdProduto: TLongWordField;
    qryItemPedidoQtde: TLongWordField;
    qryItemPedidoObservacao: TStringField;
    qryEntregaIdEntrega: TFDAutoIncField;
    qryEntregaIdPedido: TLongWordField;
    qryEntregaEndereco: TStringField;
    qryEntregaBairro: TStringField;
    qryEntregaCep: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
