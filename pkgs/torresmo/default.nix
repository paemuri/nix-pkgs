{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.7";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-18oigqNMwUv1qDzEG/Lw74dZdrkWaMC/ViYDcAJ2X4w=";
  };

  cargoHash = "sha256-tYuM4V4ozWQBcFQb45hnOyElGNFvhVy+y124FSkzk98=";

  meta = {
    description = "Dead simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
