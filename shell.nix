{ pkgs ? import <nixpkgs> {
  overlays =  [
    (self: super:
{
  opencv4 = super.opencv4.overrideAttrs (old: {
    version = "4.5.0";

    src = super.fetchFromGitHub {
      owner = "opencv";
      repo = "opencv";
      rev    = "4.5.0";
      sha256 = "0kv64hinfb07m7rld8b5iy8qkwi465rl1v8pf3fvd2ankmyb1m5w";
    };
  });
}) ];
}}:

with pkgs;

mkShell {
  buildInputs = [
    go
    opencv4
    pkgconfig
  ];
}
