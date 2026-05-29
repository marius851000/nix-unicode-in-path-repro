{ pkgs ? import <nixpkgs> {}}:

let
  body_read = builtins.path {
    path = ./. + "/accés.txt";
    name = "acces.txt";
  };
in
pkgs.stdenv.mkDerivation {
  name = "testcharacter";
  phases = "installPhase";

  installPhase = ''
    ln -s "${body_read}" $out
  '';
}
