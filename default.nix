{
  pkgs ? import <nixpkgs> { },
}:

{
  torresmo = pkgs.callPackage ./pkgs/torresmo { };
}
