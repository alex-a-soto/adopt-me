#! /usr/bin/env nix-shell
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs

    # keep this line if you use bash
    pkgs.bashInteractive
  ];

  shellHook = ''
        export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
}
