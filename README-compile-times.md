# llama.cpp Compile Times

Auto-generated on 2026-09-12 03:10:35 UTC

## Configuration

- **Commit:** [d3146f2](https://github.com/ggml-org/llama.cpp/commit/d3146f2) (ggml-webgpu: Update to a recent version of Dawn (#28683))
- **CMake flags:** `-DGGML_CCACHE=OFF -DGGML_METAL=OFF -DLLAMA_BUILD_TESTS=ON -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_UI=OFF`
- **Files measured:** 258

## Compile Times Over Commits

![](compile-times.png)

## Cumulative Times by Directory

| Directory | Time |
|-----------|------|
| [ggml/](https://github.com/ggml-org/llama.cpp/tree/d3146f2/ggml)     | 6.3s     |
| [src/](https://github.com/ggml-org/llama.cpp/tree/d3146f2/src)      | 0.4s      |
| [common/](https://github.com/ggml-org/llama.cpp/tree/d3146f2/common)   | 0.7s    |
| [tools/](https://github.com/ggml-org/llama.cpp/tree/d3146f2/tools)    | 18.1s    |
| [tests/](https://github.com/ggml-org/llama.cpp/tree/d3146f2/tests)   | 40.6s    |

## Compile Times by Directory

### ggml/

| Time | File |
|------|------|
| 1.4s | [ggml/src/ggml-quants.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-quants.c) |
| 0.8s | [ggml/src/ggml-backend-meta.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-backend-meta.cpp) |
| 0.7s | [ggml/src/gguf.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/gguf.cpp) |
| 0.5s | [ggml/src/ggml-blas/ggml-blas.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-blas/ggml-blas.cpp) |
| 0.4s | [ggml/src/ggml-backend.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-backend.cpp) |
| 0.4s | [ggml/src/ggml.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml.c) |
| 0.4s | [ggml/src/ggml-backend-reg.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-backend-reg.cpp) |
| 0.3s | [ggml/src/ggml-opt.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-opt.cpp) |
| 0.2s | [ggml/src/ggml.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml.cpp) |
| 0.2s | [ggml/src/ggml-backend-dl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-backend-dl.cpp) |
| 0.1s | [ggml/src/ggml-alloc.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-alloc.c) |
| 0.1s | [ggml/src/ggml-threading.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-threading.cpp) |
| 0.0s | [ggml/src/ggml-cpu/arch/arm/repack.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/arch/arm/repack.cpp) |
| 0.0s | [ggml/src/ggml-cpu/arch/arm/quants.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/arch/arm/quants.c) |
| 0.0s | [ggml/src/ggml-cpu/ggml-cpu.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/ggml-cpu.cpp) |
| 0.0s | [ggml/src/ggml-cpu/ggml-cpu.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/ggml-cpu.c) |
| 0.0s | [ggml/src/ggml-cpu/vec.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/vec.cpp) |
| 0.0s | [ggml/src/ggml-cpu/traits.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/traits.cpp) |
| 0.0s | [ggml/src/ggml-cpu/llamafile/sgemm.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/llamafile/sgemm.cpp) |
| 0.0s | [ggml/src/ggml-cpu/repack.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/repack.cpp) |
| 0.0s | [ggml/src/ggml-cpu/quants.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/quants.c) |
| 0.0s | [ggml/src/ggml-cpu/amx/mmq.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/amx/mmq.cpp) |
| 0.0s | [ggml/src/ggml-cpu/iqp.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/iqp.cpp) |
| 0.0s | [ggml/src/ggml-cpu/hbm.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/hbm.cpp) |
| 0.0s | [ggml/src/ggml-cpu/binary-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/binary-ops.cpp) |
| 0.0s | [ggml/src/ggml-cpu/amx/amx.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/amx/amx.cpp) |
| 0.0s | [ggml/src/ggml-cpu/unary-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/unary-ops.cpp) |
| 0.0s | [ggml/src/ggml-cpu/ops.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/ggml/src/ggml-cpu/ops.cpp) |

### src/

| Time | File |
|------|------|
| 0.0s | [src/llama-mmap.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-mmap.cpp) |
| 0.0s | [src/llama-arch.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-arch.cpp) |
| 0.0s | [src/unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/unicode.cpp) |
| 0.0s | [src/unicode-data.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/unicode-data.cpp) |
| 0.0s | [src/llama.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama.cpp) |
| 0.0s | [src/llama-vocab.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-vocab.cpp) |
| 0.0s | [src/llama-sampler.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-sampler.cpp) |
| 0.0s | [src/llama-quant.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-quant.cpp) |
| 0.0s | [src/llama-model.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-model.cpp) |
| 0.0s | [src/llama-model-saver.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-model-saver.cpp) |
| 0.0s | [src/llama-model-loader.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-model-loader.cpp) |
| 0.0s | [src/llama-memory.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-memory.cpp) |
| 0.0s | [src/llama-memory-recurrent.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-memory-recurrent.cpp) |
| 0.0s | [src/llama-memory-hybrid.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-memory-hybrid.cpp) |
| 0.0s | [src/llama-memory-hybrid-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-memory-hybrid-iswa.cpp) |
| 0.0s | [src/llama-memory-hybrid-idx.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-memory-hybrid-idx.cpp) |
| 0.0s | [src/llama-kv-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache.cpp) |
| 0.0s | [src/llama-kv-cache-msa.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache-msa.cpp) |
| 0.0s | [src/llama-kv-cache-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache-iswa.cpp) |
| 0.0s | [src/llama-kv-cache-dsv4.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache-dsv4.cpp) |
| 0.0s | [src/llama-kv-cache-dsa.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache-dsa.cpp) |
| 0.0s | [src/llama-io.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-io.cpp) |
| 0.0s | [src/llama-impl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-impl.cpp) |
| 0.0s | [src/llama-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-grammar.cpp) |
| 0.0s | [src/llama-cparams.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-cparams.cpp) |
| 0.0s | [src/llama-context.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-context.cpp) |
| 0.0s | [src/llama-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-chat.cpp) |
| 0.0s | [src/llama-batch.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-batch.cpp) |
| 0.0s | [src/llama-adapter.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-adapter.cpp) |
| 0.0s | [src/llama-kv-cache-dsa-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-kv-cache-dsa-iswa.cpp) |
| 0.0s | [src/llama-hparams.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-hparams.cpp) |
| 0.0s | [src/llama-graph.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/src/llama-graph.cpp) |

### common/

| Time | File |
|------|------|
| 0.0s | [common/reasoning-budget.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/reasoning-budget.cpp) |
| 0.0s | [common/parsers/muse-glimmer.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/muse-glimmer.cpp) |
| 0.0s | [common/jinja/value.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/value.cpp) |
| 0.0s | [common/jinja/string.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/string.cpp) |
| 0.0s | [common/jinja/runtime.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/runtime.cpp) |
| 0.0s | [common/preset.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/preset.cpp) |
| 0.0s | [common/jinja/parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/parser.cpp) |
| 0.0s | [common/log.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/log.cpp) |
| 0.0s | [common/json-schema-to-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/json-schema-to-grammar.cpp) |
| 0.0s | [common/fit.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/fit.cpp) |
| 0.0s | [common/download.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/download.cpp) |
| 0.0s | [common/debug.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/debug.cpp) |
| 0.0s | [common/common.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/common.cpp) |
| 0.0s | [common/chat.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/chat.cpp) |
| 0.0s | [common/chat-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/chat-peg-parser.cpp) |
| 0.0s | [common/chat-diff-analyzer.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/chat-diff-analyzer.cpp) |
| 0.0s | [common/chat-auto-parser-helpers.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/chat-auto-parser-helpers.cpp) |
| 0.0s | [common/jinja/caps.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/caps.cpp) |
| 0.0s | [common/unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/unicode.cpp) |
| 0.0s | [common/trie.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/trie.cpp) |
| 0.0s | [common/subproc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/subproc.cpp) |
| 0.0s | [common/speculative.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/speculative.cpp) |
| 0.0s | [common/sampling.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/sampling.cpp) |
| 0.0s | [common/parsers/qwen3-coder.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/qwen3-coder.cpp) |
| 0.0s | [common/peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/peg-parser.cpp) |
| 0.0s | [common/parsers/parsers.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/parsers.cpp) |
| 0.0s | [common/ngram-mod.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/ngram-mod.cpp) |
| 0.0s | [common/ngram-map.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/ngram-map.cpp) |
| 0.0s | [common/ngram-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/ngram-cache.cpp) |
| 0.0s | [common/parsers/ministral3.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/ministral3.cpp) |
| 0.0s | [common/parsers/minimax-m3.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/minimax-m3.cpp) |
| 0.0s | [common/parsers/minicpm5.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/minicpm5.cpp) |
| 0.0s | [common/llguidance.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/llguidance.cpp) |
| 0.0s | [common/parsers/lfm2.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/lfm2.cpp) |
| 0.0s | [common/jinja/lexer.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/jinja/lexer.cpp) |
| 0.0s | [common/parsers/kimi-k3.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/kimi-k3.cpp) |
| 0.0s | [common/parsers/kimi-k2.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/kimi-k2.cpp) |
| 0.0s | [common/json.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/json.cpp) |
| 0.0s | [common/imatrix-loader.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/imatrix-loader.cpp) |
| 0.0s | [common/hf-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/hf-cache.cpp) |
| 0.0s | [common/parsers/gpt-oss.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/gpt-oss.cpp) |
| 0.0s | [common/parsers/gigachat-v3.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/gigachat-v3.cpp) |
| 0.0s | [common/parsers/gemma4.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/gemma4.cpp) |
| 0.0s | [common/parsers/functionary-v3-2.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/functionary-v3-2.cpp) |
| 0.0s | [common/parsers/deepseek.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/deepseek.cpp) |
| 0.0s | [common/console.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/console.cpp) |
| 0.0s | [common/parsers/cohere2moe.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/parsers/cohere2moe.cpp) |
| 0.0s | [common/chat-auto-parser-generator.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/chat-auto-parser-generator.cpp) |
| 0.0s | [common/arg.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/common/arg.cpp) |

### tools/

| Time | File |
|------|------|
| 2.8s | [tools/mtmd/mtmd-helper.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd-helper.cpp) |
| 2.0s | [tools/llama-bench/llama-bench.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/llama-bench/llama-bench.cpp) |
| 1.4s | [tools/imatrix/imatrix.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/imatrix/imatrix.cpp) |
| 1.2s | [tools/cli/cli-context.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/cli/cli-context.cpp) |
| 1.0s | [tools/perplexity/perplexity.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/perplexity/perplexity.cpp) |
| 0.8s | [tools/completion/completion.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/completion/completion.cpp) |
| 0.7s | [tools/mtmd/mtmd-cli.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd-cli.cpp) |
| 0.6s | [tools/cli/cli.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/cli/cli.cpp) |
| 0.6s | [tools/mtmd/mtmd-helper-gen.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd-helper-gen.cpp) |
| 0.6s | [tools/cli/cli-client.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/cli/cli-client.cpp) |
| 0.6s | [tools/cvector-generator/cvector-generator.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/cvector-generator/cvector-generator.cpp) |
| 0.5s | [tools/quantize/quantize.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/quantize/quantize.cpp) |
| 0.5s | [tools/export-lora/export-lora.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/export-lora/export-lora.cpp) |
| 0.4s | [tools/mtmd/debug/mtmd-debug.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/debug/mtmd-debug.cpp) |
| 0.4s | [tools/batched-bench/batched-bench.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/batched-bench/batched-bench.cpp) |
| 0.4s | [tools/results/results.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/results/results.cpp) |
| 0.3s | [tools/tts/tts.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/tts/tts.cpp) |
| 0.3s | [tools/tokenize/tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/tokenize/tokenize.cpp) |
| 0.3s | [tools/fit-params/fit-params.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/fit-params/fit-params.cpp) |
| 0.3s | [tools/gguf-split/gguf-split.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/gguf-split/gguf-split.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/deprecation-warning.cpp) |
| 0.0s | [tools/server/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/main.cpp) |
| 0.0s | [tools/quantize/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/quantize/main.cpp) |
| 0.0s | [tools/perplexity/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/perplexity/main.cpp) |
| 0.0s | [tools/fit-params/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/fit-params/main.cpp) |
| 0.0s | [tools/completion/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/completion/main.cpp) |
| 0.0s | [tools/batched-bench/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/batched-bench/main.cpp) |
| 0.0s | [tools/llama-bench/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/llama-bench/main.cpp) |
| 0.0s | [tools/cli/main.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/cli/main.cpp) |
| 0.0s | [tools/mtmd/models/youtuvl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/youtuvl.cpp) |
| 0.0s | [tools/mtmd/models/yasa2.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/yasa2.cpp) |
| 0.0s | [tools/mtmd/models/whisper-enc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/whisper-enc.cpp) |
| 0.0s | [tools/mtmd/models/step3vl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/step3vl.cpp) |
| 0.0s | [tools/mtmd/models/siglip.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/siglip.cpp) |
| 0.0s | [tools/server/server.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server.cpp) |
| 0.0s | [tools/server/server-tools.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-tools.cpp) |
| 0.0s | [tools/server/server-task.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-task.cpp) |
| 0.0s | [tools/server/server-stream.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-stream.cpp) |
| 0.0s | [tools/server/server-schema.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-schema.cpp) |
| 0.0s | [tools/server/server-queue.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-queue.cpp) |
| 0.0s | [tools/server/server-models.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-models.cpp) |
| 0.0s | [tools/server/server-mcp.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-mcp.cpp) |
| 0.0s | [tools/server/server-http.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-http.cpp) |
| 0.0s | [tools/server/server-context.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-context.cpp) |
| 0.0s | [tools/server/server-common.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-common.cpp) |
| 0.0s | [tools/server/server-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/server/server-chat.cpp) |
| 0.0s | [tools/mtmd/models/qwen3vl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/qwen3vl.cpp) |
| 0.0s | [tools/mtmd/models/qwen3tts-spkenc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/qwen3tts-spkenc.cpp) |
| 0.0s | [tools/mtmd/models/qwen3tts-gen.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/qwen3tts-gen.cpp) |
| 0.0s | [tools/mtmd/models/qwen3a.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/qwen3a.cpp) |
| 0.0s | [tools/mtmd/models/qwen2vl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/qwen2vl.cpp) |
| 0.0s | [tools/mtmd/models/pockettts-seanet.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/pockettts-seanet.cpp) |
| 0.0s | [tools/mtmd/models/pockettts-gen.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/pockettts-gen.cpp) |
| 0.0s | [tools/mtmd/models/pixtral.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/pixtral.cpp) |
| 0.0s | [tools/mtmd/models/parakeet.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/parakeet.cpp) |
| 0.0s | [tools/mtmd/models/nemotron-v2-vl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/nemotron-v2-vl.cpp) |
| 0.0s | [tools/mtmd/models/muse-glimmer.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/muse-glimmer.cpp) |
| 0.0s | [tools/mtmd/mtmd.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd.cpp) |
| 0.0s | [tools/mtmd/mtmd-image.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd-image.cpp) |
| 0.0s | [tools/mtmd/mtmd-audio.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/mtmd-audio.cpp) |
| 0.0s | [tools/mtmd/models/mobilenetv5.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/mobilenetv5.cpp) |
| 0.0s | [tools/mtmd/models/minimax-m3.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/minimax-m3.cpp) |
| 0.0s | [tools/mtmd/models/minicpmv.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/minicpmv.cpp) |
| 0.0s | [tools/mtmd/models/mimovl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/mimovl.cpp) |
| 0.0s | [tools/mtmd/models/mimo-audio.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/mimo-audio.cpp) |
| 0.0s | [tools/mtmd/models/llava.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/llava.cpp) |
| 0.0s | [tools/mtmd/models/llama4.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/llama4.cpp) |
| 0.0s | [tools/mtmd/models/kimivl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/kimivl.cpp) |
| 0.0s | [tools/mtmd/models/kimik25.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/kimik25.cpp) |
| 0.0s | [tools/mtmd/models/internvl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/internvl.cpp) |
| 0.0s | [tools/mtmd/models/hunyuanvl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/hunyuanvl.cpp) |
| 0.0s | [tools/mtmd/models/granite4-vision.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/granite4-vision.cpp) |
| 0.0s | [tools/mtmd/models/granite-speech.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/granite-speech.cpp) |
| 0.0s | [tools/mtmd/models/glm4v.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/glm4v.cpp) |
| 0.0s | [tools/mtmd/models/gemma4v.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/gemma4v.cpp) |
| 0.0s | [tools/mtmd/models/gemma4uv.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/gemma4uv.cpp) |
| 0.0s | [tools/mtmd/models/gemma4ua.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/gemma4ua.cpp) |
| 0.0s | [tools/mtmd/models/gemma4a.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/gemma4a.cpp) |
| 0.0s | [tools/mtmd/models/exaone4_5.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/exaone4_5.cpp) |
| 0.0s | [tools/mtmd/models/dotsocr.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/dotsocr.cpp) |
| 0.0s | [tools/mtmd/models/dots3note.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/dots3note.cpp) |
| 0.0s | [tools/mtmd/models/deepseekocr2.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/deepseekocr2.cpp) |
| 0.0s | [tools/mtmd/models/deepseekocr.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/deepseekocr.cpp) |
| 0.0s | [tools/mtmd/models/deepseek4v.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/deepseek4v.cpp) |
| 0.0s | [tools/mtmd/models/conformer.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/conformer.cpp) |
| 0.0s | [tools/mtmd/models/cogvlm.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/cogvlm.cpp) |
| 0.0s | [tools/mtmd/clip.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/clip.cpp) |
| 0.0s | [tools/mtmd/models/pockettts-spkenc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/pockettts-spkenc.cpp) |
| 0.0s | [tools/mtmd/models/paddleocr.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tools/mtmd/models/paddleocr.cpp) |

### tests/

| Time | File |
|------|------|
| 7.2s | [tests/test-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-chat.cpp) |
| 4.3s | [tests/test-backend-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-backend-ops.cpp) |
| 2.6s | [tests/test-jinja.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-jinja.cpp) |
| 2.5s | [tests/test-chat-auto-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-chat-auto-parser.cpp) |
| 2.5s | [tests/test-chat-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-chat-peg-parser.cpp) |
| 1.3s | [tests/test-batch-alloc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-batch-alloc.cpp) |
| 1.3s | [tests/gguf-model-data.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/gguf-model-data.cpp) |
| 1.0s | [tests/test-model-resolution.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-model-resolution.cpp) |
| 0.9s | [tests/test-chat-template.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-chat-template.cpp) |
| 0.9s | [tests/test-backend-sampler.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-backend-sampler.cpp) |
| 0.9s | [tests/test-mtmd-impl.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-mtmd-impl.cpp) |
| 0.8s | [tests/test-json-schema-to-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-json-schema-to-grammar.cpp) |
| 0.8s | [tests/test-chat-analysis.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-chat-analysis.cpp) |
| 0.7s | [tests/test-quantize-stats.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-quantize-stats.cpp) |
| 0.7s | [tests/test-save-load-state.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-save-load-state.cpp) |
| 0.6s | [tests/test-grammar-integration.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-grammar-integration.cpp) |
| 0.6s | [tests/test-fusion.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-fusion.cpp) |
| 0.5s | [tests/test-arg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-arg-parser.cpp) |
| 0.5s | [tests/test-llama-archs.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-llama-archs.cpp) |
| 0.5s | [tests/test-recurrent-state-rollback.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-recurrent-state-rollback.cpp) |
| 0.5s | [tests/test-gguf.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-gguf.cpp) |
| 0.5s | [tests/test-export-graph-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-export-graph-ops.cpp) |
| 0.4s | [tests/test-quant-type-selection.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-quant-type-selection.cpp) |
| 0.4s | [tests/test-thread-safety.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-thread-safety.cpp) |
| 0.4s | [tests/test-opt.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-opt.cpp) |
| 0.4s | [tests/test-llama-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-llama-grammar.cpp) |
| 0.4s | [tests/test-reasoning-budget.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-reasoning-budget.cpp) |
| 0.4s | [tests/test-tokenizer-0.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-tokenizer-0.cpp) |
| 0.3s | [tests/test-state-restore-fragmented.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-state-restore-fragmented.cpp) |
| 0.3s | [tests/test-grammar-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-grammar-parser.cpp) |
| 0.3s | [tests/test-alloc.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-alloc.cpp) |
| 0.3s | [tests/test-sampling.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-sampling.cpp) |
| 0.3s | [tests/test-tokenizer-1-bpe.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-tokenizer-1-bpe.cpp) |
| 0.3s | [tests/test-quantize-perf.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-quantize-perf.cpp) |
| 0.2s | [tests/test-tokenizer-1-spm.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-tokenizer-1-spm.cpp) |
| 0.2s | [tests/test-gbnf-validator.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-gbnf-validator.cpp) |
| 0.2s | [tests/test-rset-release.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-rset-release.cpp) |
| 0.2s | [tests/test-model-load-cancel.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-model-load-cancel.cpp) |
| 0.2s | [tests/test-autorelease.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-autorelease.cpp) |
| 0.2s | [tests/test-barrier.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-barrier.cpp) |
| 0.2s | [tests/test-quantize-fns.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-quantize-fns.cpp) |
| 0.2s | [tests/test-log.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-log.cpp) |
| 0.1s | [tests/test-gguf-model-data.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-gguf-model-data.cpp) |
| 0.1s | [tests/test-rope.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-rope.cpp) |
| 0.1s | [tests/test-unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-unicode.cpp) |
| 0.1s | [tests/test-col2im-1d.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-col2im-1d.cpp) |
| 0.1s | [tests/peg-parser/simple-tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/simple-tokenize.cpp) |
| 0.0s | [tests/test-mtmd-c-api.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-mtmd-c-api.c) |
| 0.0s | [tests/test-c.c](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-c.c) |
| 0.0s | [tests/peg-parser/test-unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-unicode.cpp) |
| 0.0s | [tests/peg-parser/test-python-dict-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-python-dict-parser.cpp) |
| 0.0s | [tests/test-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/test-peg-parser.cpp) |
| 0.0s | [tests/peg-parser/test-json-serialization.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-json-serialization.cpp) |
| 0.0s | [tests/peg-parser/test-json-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-json-parser.cpp) |
| 0.0s | [tests/peg-parser/test-gbnf-generation.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-gbnf-generation.cpp) |
| 0.0s | [tests/peg-parser/test-basic.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/test-basic.cpp) |
| 0.0s | [tests/peg-parser/simple-tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/d3146f2/tests/peg-parser/simple-tokenize.cpp) |

