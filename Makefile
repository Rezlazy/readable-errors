install_protoc_gen_go_names:
	go install ./cmd/protoc-gen-go-names

example_generate: install_protoc_gen_go_names
	protoc --go_out=. --go-names_out=. example/api/proto/example.proto
