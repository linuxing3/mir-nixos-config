{
  stdenv,
  fetchurl,
  lib,
  ...
}:
stdenv.mkDerivation rec {
  pname = "zigup";
  version = "latest";

  src = fetchurl {
    url = "https://github.com/marler8997/zigup/releases/latest/download/zigup-x86_64-linux.tar.gz";
    sha256 = "1y9kql9a558z5dz2ih2pqgcib7d15x3f6kwrdnf2drrs07m3gyzd";
  };

  unpackPhase = ''
    tar -xzf $src
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp zigup $out/bin
    chmod +x $out/bin/zigup
  '';

  meta = with lib; {
    description = "Zig version manager";
    homepage = "https://github.com/marler8997/zigup";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
