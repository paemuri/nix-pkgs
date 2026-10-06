{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.3";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-Q4EvH5KzIKKAXMeeSJJxpL91cpUDJ3NhzSimZgCVKrw=";
  };

  cargoHash = "sha256-p8sLOgZ0XSQI3muX1+3xf50U05KIWYdECksG57Qoifg=";

  meta = {
    description = "Dead simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
