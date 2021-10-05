program Pizzaria;

uses
  Vcl.Forms,
  uFmrMain in 'uFmrMain.pas' {FmrBase},
  uFmrSon in 'uFmrSon.pas' {FmrMain},
  uFmrOpening in 'uFmrOpening.pas' {fmrAbertura},
  uFmrMessages in 'uFmrMessages.pas' {fmrMensagem},
  uFmrLogin in 'uFmrLogin.pas' {fmrLogin},
  uDmDados in 'uDmDados.pas' {dmDados: TDataModule},
  uFmrBasePesquisa in 'uFmrBasePesquisa.pas' {fmrBasePesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFmrMain, FmrMain);
  Application.CreateForm(TfmrMensagem, fmrMensagem);
  Application.CreateForm(TfmrAbertura, fmrAbertura);
  Application.CreateForm(TfmrLogin, fmrLogin);
  Application.CreateForm(TfmrBasePesquisa, fmrBasePesquisa);
  fmrAbertura.ShowModal;
  fmrLogin.ShowModal;
  Application.Run;
end.
