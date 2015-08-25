program BusManagementSystem;

uses
  Forms,
  Login in 'Login.pas' {formLogin},
  Database in 'Database.pas' {DataModule1: TDataModule},
  MainMenu in 'MainMenu.pas' {formMainMenu},
  Manager in 'Manager.pas' {formManager},
  Driver in 'Driver.pas' {formDriver},
  Bus in 'Bus.pas' {formBus},
  BusType in 'BusType.pas' {formBusType},
  Station in 'Station.pas' {formStation},
  Role in 'Role.pas' {formRole},
  About in 'About.pas' {formAbout},
  Stop in 'Stop.pas' {formStop};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformLogin, formLogin);
  Application.CreateForm(TformMainMenu, formMainMenu);
  Application.CreateForm(TformManager, formManager);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TformDriver, formDriver);
  Application.CreateForm(TformBus, formBus);
  Application.CreateForm(TformBusType, formBusType);
  Application.CreateForm(TformStation, formStation);
  Application.CreateForm(TformRole, formRole);
  Application.CreateForm(TformAbout, formAbout);
  Application.CreateForm(TformStop, formStop);
  Application.Run;
end.
