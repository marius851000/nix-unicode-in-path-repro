{ pkgs ? import <nixpkgs> {}}:

let
    body_read = ./. + "/accés.txt";
in
pkgs.stdenv.mkDerivation {
  name = "testcharacter";
  phases = "installPhase";

  installPhase = ''
    ln -s "${body_read}" $out
  '';
}
