{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.5";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-eT//P5ARZEL2RpMbfNyhgOWsyP6rERLKVcDEpacB1uU=";
  };

  cargoHash = "sha256-aXG7PUzLJJUgJQ2godqcvNpI61S2qfEiHNIXNK+l5Aw=";

  meta = {
    description = "Dead simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
