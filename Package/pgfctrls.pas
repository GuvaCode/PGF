{ This file was automatically created by Lazarus. Do not edit!
  This source is only used to compile and install the package.
 }

unit pgfctrls;

{$warn 5023 off : no warning about unused units}
interface

uses
  pgf_descriprors, LazarusPackageIntf;

implementation

procedure Register;
begin
  RegisterUnit('pgf_descriprors', @pgf_descriprors.Register);
end;

initialization
  RegisterPackage('pgfctrls', @Register);
end.
