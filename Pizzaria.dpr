program Pizzaria;

uses
  Vcl.Forms,
  uFmrMain in 'uFmrMain.pas' {FmrBase},
  uFmrSon in 'uFmrSon.pas' {FmrMain},
  uFmrOpening in 'uFmrOpening.pas' {fmrAbertura},
  uFmrMessages in 'uFmrMessages.pas' {fmrMensagem},
  uFmrLogin in 'uFmrLogin.pas' {fmrLogin},
  uDmDados in 'uDmDados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmrMain, FmrMain);
  Application.CreateForm(TfmrAbertura, fmrAbertura);
  Application.CreateForm(TfmrMensagem, fmrMensagem);
  Application.CreateForm(TfmrLogin, fmrLogin);
  Application.CreateForm(TdmDados, dmDados);
  fmrAbertura.ShowModal;
  fmrLogin.ShowModal;
  Application.Run;
end.
