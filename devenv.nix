{ pkgs, lib, config, inputs, ... }:

let
  xorgLibs = with pkgs.xorg; [ libX11 libXrandr libXcursor libXi ];
in
{
  packages = with pkgs; [ python3 cmake ninja libGLU openjdk17 ] ++ xorgLibs;
}
