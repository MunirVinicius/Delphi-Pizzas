unit uFmrMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFmrBase = class(TForm)
    pnlTitle: TPanel;
    pnlFooter: TPanel;
    pnlMain: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmrBase: TFmrBase;

implementation

{$R *.dfm}

end.
