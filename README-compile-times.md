# llama.cpp Compile Times

Auto-generated on 2026-11-18 05:45:03 UTC

## Configuration

- **Commit:** [401563f](https://github.com/ggml-org/llama.cpp/commit/401563f) (vulkan: run rms_norm with a runtime loop count on Qualcomm (#30824))
- **CMake flags:** `-DGGML_CCACHE=OFF -DGGML_METAL=OFF -DLLAMA_BUILD_TESTS=ON -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_UI=OFF -DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON`
- **Files measured:** 262

## Compile Times Over Commits

![](compile-times.png)

## Cumulative Times by Directory

| Directory | Time |
|-----------|------|
| [ggml/](https://github.com/ggml-org/llama.cpp/tree/401563f/ggml)     | 25.9s     |
| [src/](https://github.com/ggml-org/llama.cpp/tree/401563f/src)      | 50.3s      |
| [common/](https://github.com/ggml-org/llama.cpp/tree/401563f/common)   | 57.1s    |
| [tools/](https://github.com/ggml-org/llama.cpp/tree/401563f/tools)    | 53.4s    |
| [tests/](https://github.com/ggml-org/llama.cpp/tree/401563f/tests)   | 78.6s    |

## Compile Times by Directory

### ggml/

| Time | File |
|------|------|
| 5.8s | [ggml/src/ggml-cpu/ops.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/ops.cpp) |
| 1.8s | [ggml/src/ggml-cpu/unary-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/unary-ops.cpp) |
| 1.8s | [ggml/src/ggml-cpu/binary-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/binary-ops.cpp) |
| 1.5s | [ggml/src/ggml-quants.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-quants.c) |
| 1.5s | [ggml/src/ggml-cpu/repack.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/repack.cpp) |
| 1.3s | [ggml/src/ggml-cpu/llamafile/sgemm.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/llamafile/sgemm.cpp) |
| 1.1s | [ggml/src/ggml-blas/ggml-blas.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-blas/ggml-blas.cpp) |
| 1.0s | [ggml/src/ggml-cpu/vec.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/vec.cpp) |
| 1.0s | [ggml/src/ggml-cpu/arch/arm/repack.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/arch/arm/repack.cpp) |
| 0.9s | [ggml/src/gguf.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/gguf.cpp) |
| 0.9s | [ggml/src/ggml-backend-meta.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-backend-meta.cpp) |
| 0.8s | [ggml/src/ggml-backend-reg.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-backend-reg.cpp) |
| 0.6s | [ggml/src/ggml-backend.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-backend.cpp) |
| 0.6s | [ggml/src/ggml-cpu/quants.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/quants.c) |
| 0.4s | [ggml/src/ggml-cpu/ggml-cpu.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/ggml-cpu.c) |
| 0.4s | [ggml/src/ggml-opt.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-opt.cpp) |
| 0.4s | [ggml/src/ggml.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml.c) |
| 0.4s | [ggml/src/ggml-backend-dl.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-backend-dl.cpp) |
| 0.4s | [ggml/src/ggml-cpu/arch/arm/quants.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/arch/arm/quants.c) |
| 0.4s | [ggml/src/ggml-cpu/ggml-cpu.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/ggml-cpu.cpp) |
| 0.3s | [ggml/src/ggml-cpu/tiled/tiled-kernel.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/tiled/tiled-kernel.cpp) |
| 0.3s | [ggml/src/ggml-cpu/tiled/tiled.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/tiled/tiled.cpp) |
| 0.2s | [ggml/src/ggml-cpu/amx/mmq.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/amx/mmq.cpp) |
| 0.2s | [ggml/src/ggml-cpu/amx/amx.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/amx/amx.cpp) |
| 0.2s | [ggml/src/ggml-cpu/traits.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/traits.cpp) |
| 0.2s | [ggml/src/ggml.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml.cpp) |
| 0.1s | [ggml/src/ggml-threading.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-threading.cpp) |
| 0.1s | [ggml/src/ggml-alloc.c](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-alloc.c) |
| 0.0s | [ggml/src/ggml-cpu/hbm.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/ggml/src/ggml-cpu/hbm.cpp) |

### src/

| Time | File |
|------|------|
| 3.7s | [src/llama-model.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-model.cpp) |
| 3.3s | [src/llama-kv-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache.cpp) |
| 2.7s | [src/llama-model-loader.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-model-loader.cpp) |
| 2.5s | [src/llama-kv-cache-dsv4.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache-dsv4.cpp) |
| 1.7s | [src/unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/unicode.cpp) |
| 1.5s | [src/llama-vocab.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-vocab.cpp) |
| 1.5s | [src/llama-memory-hybrid-idx.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-memory-hybrid-idx.cpp) |
| 1.5s | [src/unicode-data.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/unicode-data.cpp) |
| 1.4s | [src/llama-moe-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-moe-cache.cpp) |
| 1.4s | [src/llama-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-grammar.cpp) |
| 1.3s | [src/llama-quant.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-quant.cpp) |
| 1.3s | [src/llama-context.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-context.cpp) |
| 1.2s | build/src/CMakeFiles/llama.dir/Unity/unity_10_cxx.cxx |
| 1.2s | build/src/CMakeFiles/llama.dir/Unity/unity_5_cxx.cxx |
| 1.1s | build/src/CMakeFiles/llama.dir/Unity/unity_6_cxx.cxx |
| 1.1s | [src/llama-memory-recurrent.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-memory-recurrent.cpp) |
| 1.1s | build/src/CMakeFiles/llama.dir/Unity/unity_7_cxx.cxx |
| 1.0s | build/src/CMakeFiles/llama.dir/Unity/unity_11_cxx.cxx |
| 1.0s | [src/llama-sampler.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-sampler.cpp) |
| 1.0s | [src/llama-graph.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-graph.cpp) |
| 1.0s | build/src/CMakeFiles/llama.dir/Unity/unity_9_cxx.cxx |
| 0.9s | build/src/CMakeFiles/llama.dir/Unity/unity_1_cxx.cxx |
| 0.9s | [src/llama-memory-hybrid-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-memory-hybrid-iswa.cpp) |
| 0.9s | [src/llama-memory-hybrid.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-memory-hybrid.cpp) |
| 0.9s | [src/llama-kv-cache-dsa-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache-dsa-iswa.cpp) |
| 0.8s | [src/llama-kv-cache-msa.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache-msa.cpp) |
| 0.8s | [src/llama-kv-cache-dsa.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache-dsa.cpp) |
| 0.8s | [src/llama-kv-cache-iswa.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-kv-cache-iswa.cpp) |
| 0.8s | build/src/CMakeFiles/llama.dir/Unity/unity_3_cxx.cxx |
| 0.7s | build/src/CMakeFiles/llama.dir/Unity/unity_4_cxx.cxx |
| 0.7s | [src/llama-batch.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-batch.cpp) |
| 0.7s | build/src/CMakeFiles/llama.dir/Unity/unity_2_cxx.cxx |
| 0.7s | build/src/CMakeFiles/llama.dir/Unity/unity_0_cxx.cxx |
| 0.6s | [src/llama-mmap.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-mmap.cpp) |
| 0.6s | [src/llama-memory.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-memory.cpp) |
| 0.5s | [src/llama-adapter.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-adapter.cpp) |
| 0.5s | build/src/CMakeFiles/llama.dir/Unity/unity_8_cxx.cxx |
| 0.5s | [src/llama-model-saver.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-model-saver.cpp) |
| 0.4s | [src/llama-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-chat.cpp) |
| 0.4s | [src/llama.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama.cpp) |
| 0.3s | [src/llama-arch.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-arch.cpp) |
| 0.3s | [src/llama-mmap.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-mmap.cpp) |
| 0.2s | [src/llama-impl.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-impl.cpp) |
| 0.2s | [src/llama-impl.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-impl.cpp) |
| 0.1s | [src/llama-io.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-io.cpp) |
| 0.1s | [src/llama-hparams.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-hparams.cpp) |
| 0.1s | [src/llama-cparams.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/src/llama-cparams.cpp) |

### common/

| Time | File |
|------|------|
| 3.7s | [common/arg.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/arg.cpp) |
| 3.0s | [common/jinja/value.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/value.cpp) |
| 2.2s | [common/chat-diff-analyzer.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat-diff-analyzer.cpp) |
| 1.9s | [common/chat.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat.cpp) |
| 1.9s | [common/speculative.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/speculative.cpp) |
| 1.8s | [common/download.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/download.cpp) |
| 1.6s | [common/peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/peg-parser.cpp) |
| 1.5s | [common/preset.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/preset.cpp) |
| 1.5s | [common/json.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/json.cpp) |
| 1.4s | [common/json-schema-to-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/json-schema-to-grammar.cpp) |
| 1.4s | [common/common.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/common.cpp) |
| 1.3s | [common/chat-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat-peg-parser.cpp) |
| 1.1s | [common/jinja/caps.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/caps.cpp) |
| 1.1s | [common/jinja/runtime.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/runtime.cpp) |
| 1.1s | [common/parsers/gemma4.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/gemma4.cpp) |
| 1.0s | [common/hf-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/hf-cache.cpp) |
| 1.0s | [common/parsers/deepseek.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/deepseek.cpp) |
| 0.9s | [common/chat-auto-parser-generator.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat-auto-parser-generator.cpp) |
| 0.9s | [common/parsers/minimax-m3.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/minimax-m3.cpp) |
| 0.9s | [common/parsers/k2-horizon.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/k2-horizon.cpp) |
| 0.9s | [common/parsers/harmony-xml.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/harmony-xml.cpp) |
| 0.9s | [common/chat-tts-norm.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat-tts-norm.cpp) |
| 0.8s | [common/parsers/ling3.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/ling3.cpp) |
| 0.8s | [common/parsers/qwen3-coder.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/qwen3-coder.cpp) |
| 0.8s | [common/parsers/muse-glimmer.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/muse-glimmer.cpp) |
| 0.8s | [common/jinja/parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/parser.cpp) |
| 0.8s | [common/parsers/muse-spark.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/muse-spark.cpp) |
| 0.8s | [common/parsers/inkling.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/inkling.cpp) |
| 0.8s | [common/parsers/minicpm5.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/minicpm5.cpp) |
| 0.8s | [common/parsers/kimi-k3.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/kimi-k3.cpp) |
| 0.8s | [common/sampling.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/sampling.cpp) |
| 0.8s | [common/parsers/gpt-oss.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/gpt-oss.cpp) |
| 0.8s | [common/parsers/llm-jp-harmony.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/llm-jp-harmony.cpp) |
| 0.7s | [common/parsers/cohere2moe.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/cohere2moe.cpp) |
| 0.7s | [common/parsers/kimi-k2.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/kimi-k2.cpp) |
| 0.7s | [common/parsers/ministral3.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/ministral3.cpp) |
| 0.7s | [common/parsers/gigachat-v3.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/gigachat-v3.cpp) |
| 0.7s | [common/parsers/functionary-v3-2.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/functionary-v3-2.cpp) |
| 0.7s | [common/parsers/lfm2.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/lfm2.cpp) |
| 0.7s | [common/debug.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/debug.cpp) |
| 0.7s | [common/fit.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/fit.cpp) |
| 0.6s | [common/parsers/translate-gemma.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/translate-gemma.cpp) |
| 0.6s | [common/chat-auto-parser-helpers.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/chat-auto-parser-helpers.cpp) |
| 0.5s | [common/json-schema.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/json-schema.cpp) |
| 0.5s | [common/jinja/lexer.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/lexer.cpp) |
| 0.5s | [common/console.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/console.cpp) |
| 0.5s | [common/parsers/parsers.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/parsers/parsers.cpp) |
| 0.4s | [common/ngram-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/ngram-cache.cpp) |
| 0.4s | [common/jinja/string.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/jinja/string.cpp) |
| 0.4s | [common/trie.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/trie.cpp) |
| 0.4s | [common/reasoning-budget.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/reasoning-budget.cpp) |
| 0.3s | [common/ngram-map.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/ngram-map.cpp) |
| 0.3s | [common/imatrix-loader.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/imatrix-loader.cpp) |
| 0.3s | [common/log.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/log.cpp) |
| 0.3s | [common/llguidance.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/llguidance.cpp) |
| 0.2s | [common/file-lock.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/file-lock.cpp) |
| 0.2s | [common/subproc.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/subproc.cpp) |
| 0.2s | [common/unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/unicode.cpp) |
| 0.1s | [common/ngram-mod.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/common/ngram-mod.cpp) |

### tools/

| Time | File |
|------|------|
| 3.4s | [tools/server/server-context.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-context.cpp) |
| 3.2s | [tools/server/server-models.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-models.cpp) |
| 2.9s | [tools/mtmd/mtmd-helper.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-helper.cpp) |
| 2.4s | [tools/mtmd/mtmd-model.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-model.cpp) |
| 2.1s | [tools/server/server-tools.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-tools.cpp) |
| 2.0s | [tools/llama-bench/llama-bench.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/llama-bench/llama-bench.cpp) |
| 1.9s | [tools/mtmd/mtmd.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd.cpp) |
| 1.7s | [tools/server/server-common.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-common.cpp) |
| 1.6s | [tools/server/server-realtime.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-realtime.cpp) |
| 1.6s | [tools/server/server-task.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-task.cpp) |
| 1.6s | [tools/server/server-decision.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-decision.cpp) |
| 1.6s | [tools/server/server.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server.cpp) |
| 1.6s | [tools/mtmd/mtmd-helper-gen.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-helper-gen.cpp) |
| 1.3s | [tools/imatrix/imatrix.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/imatrix/imatrix.cpp) |
| 1.3s | [tools/cli/cli-context.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/cli/cli-context.cpp) |
| 1.2s | [tools/server/server-schema.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-schema.cpp) |
| 1.2s | [tools/mtmd/mtmd-subcontext.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-subcontext.cpp) |
| 1.2s | [tools/server/server-queue.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-queue.cpp) |
| 1.0s | [tools/server/server-models-sched.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-models-sched.cpp) |
| 1.0s | [tools/perplexity/perplexity.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/perplexity/perplexity.cpp) |
| 1.0s | [tools/server/server-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-chat.cpp) |
| 1.0s | [tools/server/server-mcp.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-mcp.cpp) |
| 0.9s | [tools/mtmd/mtmd-audio.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-audio.cpp) |
| 0.9s | [tools/server/server-stream.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-stream.cpp) |
| 0.9s | [tools/mtmd/mtmd-image.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-image.cpp) |
| 0.8s | [tools/completion/completion.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/completion/completion.cpp) |
| 0.8s | [tools/mtmd/mtmd-cli.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-cli.cpp) |
| 0.7s | [tools/server/server-slot-sched.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-slot-sched.cpp) |
| 0.6s | [tools/cli/cli.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/cli/cli.cpp) |
| 0.6s | [tools/cli/cli-client.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/cli/cli-client.cpp) |
| 0.6s | [tools/cvector-generator/cvector-generator.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/cvector-generator/cvector-generator.cpp) |
| 0.6s | [tools/server/server-connect.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-connect.cpp) |
| 0.6s | [tools/tts/tts.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/tts/tts.cpp) |
| 0.6s | [tools/mtmd/mtmd-graph.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-graph.cpp) |
| 0.5s | [tools/quantize/quantize.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/quantize/quantize.cpp) |
| 0.5s | [tools/server/server-http.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/server-http.cpp) |
| 0.5s | [tools/export-lora/export-lora.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/export-lora/export-lora.cpp) |
| 0.4s | [tools/mtmd/debug/mtmd-debug.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/debug/mtmd-debug.cpp) |
| 0.4s | [tools/results/results.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/results/results.cpp) |
| 0.4s | [tools/batched-bench/batched-bench.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/batched-bench/batched-bench.cpp) |
| 0.3s | [tools/tokenize/tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/tokenize/tokenize.cpp) |
| 0.3s | [tools/fit-params/fit-params.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/fit-params/fit-params.cpp) |
| 0.3s | [tools/gguf-split/gguf-split.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/gguf-split/gguf-split.cpp) |
| 0.3s | [tools/mtmd/mtmd-helper-video-ffmpeg.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/mtmd-helper-video-ffmpeg.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/deprecation-warning.cpp) |
| 0.1s | [tools/mtmd/deprecation-warning.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/mtmd/deprecation-warning.cpp) |
| 0.0s | [tools/quantize/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/quantize/main.cpp) |
| 0.0s | [tools/llama-bench/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/llama-bench/main.cpp) |
| 0.0s | [tools/fit-params/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/fit-params/main.cpp) |
| 0.0s | [tools/completion/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/completion/main.cpp) |
| 0.0s | [tools/cli/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/cli/main.cpp) |
| 0.0s | [tools/batched-bench/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/batched-bench/main.cpp) |
| 0.0s | [tools/server/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/server/main.cpp) |
| 0.0s | [tools/perplexity/main.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tools/perplexity/main.cpp) |

### tests/

| Time | File |
|------|------|
| 14.0s | [tests/test-chat.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-chat.cpp) |
| 6.3s | [tests/test-backend-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-backend-ops.cpp) |
| 4.5s | [tests/test-jinja.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-jinja.cpp) |
| 2.9s | [tests/test-chat-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-chat-peg-parser.cpp) |
| 2.9s | [tests/test-chat-auto-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-chat-auto-parser.cpp) |
| 2.6s | [tests/test-server-component.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-server-component.cpp) |
| 2.5s | [tests/test-batch-alloc.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-batch-alloc.cpp) |
| 2.1s | [tests/peg-parser/test-basic.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/test-basic.cpp) |
| 2.1s | [tests/peg-parser/test-gbnf-generation.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/test-gbnf-generation.cpp) |
| 1.9s | [tests/test-model-resolution.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-model-resolution.cpp) |
| 1.9s | [tests/test-mtmd-impl.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-mtmd-impl.cpp) |
| 1.8s | [tests/peg-parser/test-unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/test-unicode.cpp) |
| 1.6s | [tests/test-llama-archs.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-llama-archs.cpp) |
| 1.5s | [tests/peg-parser/test-python-dict-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/test-python-dict-parser.cpp) |
| 1.4s | [tests/test-json-schema.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-json-schema.cpp) |
| 1.4s | [tests/gguf-model-data.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/gguf-model-data.cpp) |
| 1.1s | [tests/peg-parser/test-json-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/test-json-parser.cpp) |
| 1.1s | [tests/test-backend-sampler.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-backend-sampler.cpp) |
| 1.0s | [tests/test-chat-template.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-chat-template.cpp) |
| 1.0s | [tests/test-fp8.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-fp8.cpp) |
| 0.9s | [tests/llama-context/test-runner.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/test-runner.cpp) |
| 0.9s | [tests/test-peg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-peg-parser.cpp) |
| 0.9s | [tests/test-quantize-stats.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-quantize-stats.cpp) |
| 0.8s | [tests/test-chat-analysis.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-chat-analysis.cpp) |
| 0.8s | [tests/test-llama-context.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-llama-context.cpp) |
| 0.8s | [tests/test-json-schema-to-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-json-schema-to-grammar.cpp) |
| 0.8s | [tests/test-fusion.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-fusion.cpp) |
| 0.8s | [tests/test-grammar-integration.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-grammar-integration.cpp) |
| 0.7s | [tests/test-arg-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-arg-parser.cpp) |
| 0.6s | [tests/llama-context/cases-kv.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/cases-kv.cpp) |
| 0.6s | [tests/test-llama-mmap.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-llama-mmap.cpp) |
| 0.6s | [tests/test-speculative-rejection-sampling.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-speculative-rejection-sampling.cpp) |
| 0.5s | [tests/llama-context/cases-rs.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/cases-rs.cpp) |
| 0.5s | [tests/test-export-graph-ops.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-export-graph-ops.cpp) |
| 0.5s | [tests/test-kv-cache.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-kv-cache.cpp) |
| 0.5s | [tests/test-quant-type-selection.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-quant-type-selection.cpp) |
| 0.5s | [tests/test-gguf.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-gguf.cpp) |
| 0.4s | [tests/llama-context/test-util.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/test-util.cpp) |
| 0.4s | [tests/test-thread-safety.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-thread-safety.cpp) |
| 0.4s | [tests/test-llama-grammar.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-llama-grammar.cpp) |
| 0.4s | [tests/test-alloc.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-alloc.cpp) |
| 0.4s | [tests/test-reasoning-budget.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-reasoning-budget.cpp) |
| 0.4s | [tests/test-opt.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-opt.cpp) |
| 0.4s | [tests/llama-context/test-case.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/test-case.cpp) |
| 0.4s | [tests/test-tokenizer-0.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-tokenizer-0.cpp) |
| 0.3s | [tests/llama-context/test-log.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/llama-context/test-log.cpp) |
| 0.3s | [tests/test-tokenizer-1-bpe.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-tokenizer-1-bpe.cpp) |
| 0.3s | [tests/test-sampling.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-sampling.cpp) |
| 0.3s | [tests/test-grammar-parser.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-grammar-parser.cpp) |
| 0.3s | [tests/test-tokenizer-1-spm.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-tokenizer-1-spm.cpp) |
| 0.3s | [tests/test-gbnf-validator.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-gbnf-validator.cpp) |
| 0.3s | [tests/test-quantize-perf.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-quantize-perf.cpp) |
| 0.3s | [tests/test-unicode.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-unicode.cpp) |
| 0.2s | [tests/test-backend-tensor.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-backend-tensor.cpp) |
| 0.2s | [tests/test-rset-release.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-rset-release.cpp) |
| 0.2s | [tests/test-autorelease.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-autorelease.cpp) |
| 0.2s | [tests/test-quantize-fns.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-quantize-fns.cpp) |
| 0.2s | [tests/test-model-load-cancel.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-model-load-cancel.cpp) |
| 0.2s | [tests/test-barrier.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-barrier.cpp) |
| 0.2s | [tests/peg-parser/simple-tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/simple-tokenize.cpp) |
| 0.2s | [tests/test-rope.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-rope.cpp) |
| 0.2s | [tests/test-log.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-log.cpp) |
| 0.2s | [tests/test-gguf-model-data.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-gguf-model-data.cpp) |
| 0.1s | [tests/peg-parser/simple-tokenize.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/peg-parser/simple-tokenize.cpp) |
| 0.1s | [tests/test-gelu-quick.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-gelu-quick.cpp) |
| 0.1s | [tests/test-col2im-1d.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-col2im-1d.cpp) |
| 0.1s | [tests/test-conv-1d.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-conv-1d.cpp) |
| 0.0s | [tests/test-tiled-mulmat.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-tiled-mulmat.cpp) |
| 0.0s | [tests/test-host-buffer-release.cpp](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-host-buffer-release.cpp) |
| 0.0s | [tests/test-mtmd-c-api.c](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-mtmd-c-api.c) |
| 0.0s | [tests/test-c.c](https://github.com/ggml-org/llama.cpp/blob/401563f/tests/test-c.c) |

