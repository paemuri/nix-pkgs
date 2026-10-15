{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.8";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-W5d1d+I1uoVw7CDyvMyO8FDwjTTjEj90Fneect50CiE=";
  };

  cargoHash = "sha256-Nl4ok7HIrb7j7+RaVBgv2TBDs/KmZ19AIrCAFNhdGJQ=";

  meta = {
    description = "Dead-simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
