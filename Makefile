all : otelcol
.PHONY : all

otelcol :
	GO111MODULE=on CGO_ENABLED=0 go build -o ./bin/otelcontribcol $(BUILD_INFO) ./cmd/otelcontribcol

.PHONY : clean
clean :
	-rm -r ./bin