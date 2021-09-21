program Pizzaria;

uses
  Vcl.Forms,
  uFmrMain in 'uFmrMain.pas' {FmrBase},
  uFmrSon in 'uFmrSon.pas' {FmrMain},
  uFmrOpening in 'uFmrOpening.pas' {fmrAbertura},
  uFmrMessages in 'uFmrMessages.pas' {fmrMensagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmrMain, FmrMain);
  Application.CreateForm(TfmrAbertura, fmrAbertura);
  Application.CreateForm(TfmrMensagem, fmrMensagem);
  fmrAbertura.ShowModal;
  Application.Run;
end.
