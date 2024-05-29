validate:
	@cd smithy && smithy validate

build-smithy:
	@cd smithy && smithy build

watch:
	@watchexec --restart --exts rs -- cargo run --bin echo-server

client:
	@cargo run --bin echo-client
