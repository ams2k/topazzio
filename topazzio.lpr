program topazzio;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, DM.Server, View.Main;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Title := 'Gerador de Projeto Lazarus';
  Application.Scaled := True;
  Application.Initialize;
  Application.CreateForm(TDMServer, DMServer);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

