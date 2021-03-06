{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
  
  callPackage = pkgs.lib.callPackageWith (pkgs // pkgs.xlibs // self);
  
  self = {
    pkgconfig = callPackage ../nixpkgs/pkgs/development/tools/misc/pkgconfig { };
  
  };
in
self
