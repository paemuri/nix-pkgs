{
  lib,
  rustPlatform,
  fetchCrate,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "torresmo";
  version = "1.0.9";

  src = fetchCrate {
    inherit (finalAttrs) pname version;
    hash = "sha256-7855wBmpCipJsfe7H5cipypraUQRqk4Ga+Wxx4o0UZo=";
  };

  cargoHash = "sha256-UxyXyDTKzTjJ/9t4MOGjaC+z3gBS0w639wStHHJI8sQ=";

  meta = {
    description = "Dead-simple and minimal TUI client for the Transmission daemon";
    homepage = "https://sr.ht/~paemuri/torresmo";
    license = lib.licenses.unlicense;
    mainProgram = "torresmo";
    platforms = lib.platforms.unix;
  };
})
