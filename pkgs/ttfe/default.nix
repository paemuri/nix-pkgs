{
  lib,
  stdenv,
  fetchFromSourcehut,
  hareHook,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "ttfe";
  version = "1.0.0";

  src = fetchFromSourcehut {
    owner = "~paemuri";
    repo = "ttfe";
    rev = "v${finalAttrs.version}";
    hash = "sha256-r7UFaqOILH1GL3t5qn+7XLSJUg7YlOsqx6YyStukwkg=";
  };

  nativeBuildInputs = [ hareHook ];

  buildPhase = ''
    runHook preBuild
    hare build -o ttfe .
    runHook postBuild
  '';

  doCheck = true;
  checkPhase = ''
    runHook preCheck
    hare test .
    runHook postCheck
  '';

  installPhase = ''
    runHook preInstall
    install -Dm755 -t $out/bin ttfe
    runHook postInstall
  '';

  meta = {
    description = "2048 game in the terminal";
    homepage = "https://sr.ht/~paemuri/ttfe";
    license = lib.licenses.unlicense;
    mainProgram = "ttfe";
    inherit (hareHook.meta) platforms badPlatforms;
  };
})
