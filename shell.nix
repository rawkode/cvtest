with (import <nixpkgs> { });
mkShell {
  buildInputs = [
    go
    opencv4
    pkgconfig
  ];
}
