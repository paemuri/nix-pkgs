{
  pkgs ? import <nixpkgs> { },
}:

{
  torresmo = pkgs.callPackage ./pkgs/torresmo { };
  ttfe = pkgs.callPackage ./pkgs/ttfe { };
}
