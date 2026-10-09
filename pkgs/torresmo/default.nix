{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.6";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-QsxPlDuNcZ+EXkffBStmL9oe1YdozyMGSmF9B/PsT54=";
  };

  cargoHash = "sha256-tm5POOVHvD/NbOxylFPyXDqEoSLeoc3tI4cDqWLTAVM=";

  meta = {
    description = "Dead simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
