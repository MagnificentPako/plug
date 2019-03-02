with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "test";
  src = ./src;

  buildInputs = [ (import "/etc/nixos/pkgs/emojicode")
                  (import "/home/paul/doc/dev/Cpp/emojicode-net")
                  openssl
                  zlib
                ];

  buildPhase = ''
    emojicodec main.🍇 -S $EMOJICODE_PATH
  '';

  installPhase = ''
    mkdir $out -p
    cp main $out
  '';

}
