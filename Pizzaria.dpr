program Pizzaria;

uses
  Vcl.Forms,
  uFmrMain in 'uFmrMain.pas' {FmrBase},
  uFmrSon in 'uFmrSon.pas' {FmrMain},
  uFmrOpening in 'uFmrOpening.pas' {fmrAbertura},
  uFmrMessages in 'uFmrMessages.pas' {fmrMensagem},
  uFmrLogin in 'uFmrLogin.pas' {fmrLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmrMain, FmrMain);
  Application.CreateForm(TfmrAbertura, fmrAbertura);
  Application.CreateForm(TfmrMensagem, fmrMensagem);
  Application.CreateForm(TfmrLogin, fmrLogin);
  fmrAbertura.ShowModal;
  fmrLogin.ShowModal;
  Application.Run;
end.
