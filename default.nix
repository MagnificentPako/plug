with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "test";
  src = ./src;

  buildInputs = [ (import "/etc/nixos/pkgs/emojicode")
                  (import "/home/paul/doc/dev/Cpp/emojicode-net")
                  openssl
                  zlib
                  nodejs
                  yarn
                ];

  buildPhase = ''
    emojicodec main.🍇 -S $EMOJICODE_PATH
    emojicodec main.🍇 -S $EMOJICODE_PATH -r > docgen/doc.json
    cd docgen
    yarn
    node index.js
    cd ..
  '';

  installPhase = ''
    mkdir $out -p
    mkdir $out/docs -p
    cp main $out  
    cp -r docgen/out/* $out/docs
  '';

}
