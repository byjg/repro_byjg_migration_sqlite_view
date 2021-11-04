let
	pkgs = import <nixpkgs> {};
	php = pkgs.php74;
in
	pkgs.stdenv.mkDerivation {
		name = "repro_byjg_migration_sqlite_view";
		buildInputs = [
			php
			php.packages.composer
		];
	}
