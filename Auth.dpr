program Auth;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Jhonson,
  System.SysUtils,
  Horse.HandleException,
  Controllers.Auth in 'src\controller\Controllers.Auth.pas',
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProvidersConnection: TDataModule},
  Services.Auth in 'src\services\Services.Auth.pas' {ServiceAuth: TDataModule};

begin
  THorse
  .Use(Jhonson())
  .Use(HandleException);

  Controllers.Auth.Registry;

  THorse.Listen(8000);
end.
