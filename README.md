# llama.cpp - feature development info

Auto-generated on 2026-07-10 10:37:52 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [c264f65](https://github.com/ggml-org/llama.cpp/commit/c264f65ff9d8f592a590e3221f712a8883b7dd81)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/pull/24948'>#24948</a><br/><span style='font-size:smaller;color:gray'>cli : move to HTTP-based implementation (#24948)</span>"]
    COMMON -->|master| C_81ff7ab
    C_81ff7ab["<a href='https://github.com/ggml-org/llama.cpp/pull/25425'>#25425</a><br/><span style='font-size:smaller;color:gray'>hexagon: new vtcm layouts and improved pipelines for MUL_MAT, MUL_MAT_ID and FLASH_ATTN_EXT (#25425)</span>"]
    C_81ff7ab --> C_0bbc87b
    C_0bbc87b["<a href='https://github.com/ggml-org/llama.cpp/pull/25240'>#25240</a><br/><span style='font-size:smaller;color:gray'>vulkan: for small AMD GPUs, reduce submission threshold based on CU count (#25240)</span>"]
    C_0bbc87b --> C_1ee0939
    C_1ee0939["<a href='https://github.com/ggml-org/llama.cpp/pull/25449'>#25449</a><br/><span style='font-size:smaller;color:gray'>llama-batch: fix allowed decreasing pos in a seq (#25449)</span>"]
    C_1ee0939 --> C_167d057
    C_167d057["<a href='https://github.com/ggml-org/llama.cpp/pull/25433'>#25433</a><br/><span style='font-size:smaller;color:gray'>opencl: ragged-tile MoE prefill FP16 GEMM optimization (skip padded expert tiles) (#25433)</span>"]
    C_167d057 --> C_a646006
    C_a646006["<a href='https://github.com/ggml-org/llama.cpp/pull/24362'>#24362</a><br/><span style='font-size:smaller;color:gray'>vulkan: disable FA mask_opt on GCN to improve performance (#24362)</span>"]
    C_a646006 --> C_92366df
    C_92366df["<a href='https://github.com/ggml-org/llama.cpp/pull/25464'>#25464</a><br/><span style='font-size:smaller;color:gray'>opencl:  Q6_K GEMM/GEMV fix for ne01 of weights that are not multiples of 128.  (#25464)</span>"]
    C_92366df --> C_32e41fa
    C_32e41fa["<a href='https://github.com/ggml-org/llama.cpp/pull/25418'>#25418</a><br/><span style='font-size:smaller;color:gray'>ggml-webgpu: tune subgroup split (d_split) in flash_attn_vec (#25418)</span>"]
    C_32e41fa --> C_f2d1c2f
    C_f2d1c2f["<a href='https://github.com/ggml-org/llama.cpp/pull/25216'>#25216</a><br/><span style='font-size:smaller;color:gray'>hexagon: add VISION RoPE support (#25216)</span>"]
    C_f2d1c2f --> C_64c8b7d
    C_64c8b7d["<a href='https://github.com/ggml-org/llama.cpp/pull/25420'>#25420</a><br/><span style='font-size:smaller;color:gray'>server : respect min-step when splitting prompt batches (#25420)</span>"]
    C_64c8b7d --> C_2021515
    C_2021515["<a href='https://github.com/ggml-org/llama.cpp/pull/25460'>#25460</a><br/><span style='font-size:smaller;color:gray'>cuda: align snake fusion matcher with the other backends (#25460)</span>"]
    C_2021515 --> C_ccb0c34
    C_ccb0c34["<a href='https://github.com/ggml-org/llama.cpp/pull/24668'>#24668</a><br/><span style='font-size:smaller;color:gray'>ggml-hip: enable -funsafe-math-optimizations (#24668)</span>"]
    C_ccb0c34 --> C_92b187c
    C_92b187c["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
    C_92b187c --> C_259f2e2
    C_259f2e2["<a href='https://github.com/ggml-org/llama.cpp/pull/25476'>#25476</a><br/><span style='font-size:smaller;color:gray'>llama-bench : init params.offline (#25476)</span>"]
    C_259f2e2 --> C_683f0c7
    C_683f0c7["<a href='https://github.com/ggml-org/llama.cpp/pull/25445'>#25445</a><br/><span style='font-size:smaller;color:gray'>Only index by compile times + always multiply/add (#25445)</span>"]
    C_683f0c7 --> C_f84a519
    C_f84a519["<a href='https://github.com/ggml-org/llama.cpp/pull/25440'>#25440</a><br/><span style='font-size:smaller;color:gray'>Refactor: Consistently use smart pointers in `test-backend-ops` (#25440)</span>"]
    C_f84a519 --> C_c15c5c7
    C_c15c5c7["<a href='https://github.com/ggml-org/llama.cpp/pull/25480'>#25480</a><br/><span style='font-size:smaller;color:gray'>meta: add hard emphasis on agents not writing descriptions/comments (#25480)</span>"]
    C_c15c5c7 --> C_5c3a586
    C_5c3a586["<a href='https://github.com/ggml-org/llama.cpp/pull/25490'>#25490</a><br/><span style='font-size:smaller;color:gray'>ggml : fix conv 2d dw (#25490)</span>"]
    C_5c3a586 --> C_82fce65
    C_82fce65["<a href='https://github.com/ggml-org/llama.cpp/pull/24093'>#24093</a><br/><span style='font-size:smaller;color:gray'>server : move chat-template thinking probe inside the init try/catch (#24093)</span>"]
    C_82fce65 --> C_fb30ba9
    C_fb30ba9["<a href='https://github.com/ggml-org/llama.cpp/pull/25474'>#25474</a><br/><span style='font-size:smaller;color:gray'>hexagon: tiling, tracing and optimizations for unary ops (#25474)</span>"]
    C_fb30ba9 --> C_3de7dd4
    C_3de7dd4["<a href='https://github.com/ggml-org/llama.cpp/pull/25484'>#25484</a><br/><span style='font-size:smaller;color:gray'>cli: add --output option (#25484)</span>"]
    C_3de7dd4 --> C_0749449
    C_0749449["<a href='https://github.com/ggml-org/llama.cpp/pull/24776'>#24776</a><br/><span style='font-size:smaller;color:gray'>ggml : process data in smaller chunks in CUDA ggml_top_k() and ggml_argsort() to reduce temporary buffers memory usage (#24776)</span>"]
    C_0749449 --> C_049326a
    C_049326a["<a href='https://github.com/ggml-org/llama.cpp/pull/25473'>#25473</a><br/><span style='font-size:smaller;color:gray'>opencl: cluster-parallel decode FA for Adreno (#25473)</span>"]
    C_049326a --> C_961e4b2
    C_961e4b2["<a href='https://github.com/ggml-org/llama.cpp/pull/25471'>#25471</a><br/><span style='font-size:smaller;color:gray'>llama-batch: add unit test (#25471)</span>"]
    C_961e4b2 --> C_082b326
    C_082b326["<a href='https://github.com/ggml-org/llama.cpp/pull/24179'>#24179</a><br/><span style='font-size:smaller;color:gray'>ggml-et: Initial ET backend  (#24179)</span>"]
    C_082b326 --> C_2ed3c1a
    C_2ed3c1a["<a href='https://github.com/ggml-org/llama.cpp/pull/25370'>#25370</a><br/><span style='font-size:smaller;color:gray'>llama : make all KQ masks f16 if FA is used, remove zero attention bias, remove raw_k repeats in DeepSeek V4 (#25370)</span>"]
    C_2ed3c1a --> C_d46786f
    C_d46786f["<a href='https://github.com/ggml-org/llama.cpp/pull/25501'>#25501</a><br/><span style='font-size:smaller;color:gray'>ui: export full message tree instead of active path only (#25501)</span>"]
    C_d46786f --> C_8f114a9
    C_8f114a9["<a href='https://github.com/ggml-org/llama.cpp/pull/25517'>#25517</a><br/><span style='font-size:smaller;color:gray'>sync : ggml (#25517)</span>"]
    C_8f114a9 --> C_c7af942
    C_c7af942["<a href='https://github.com/ggml-org/llama.cpp/pull/25503'>#25503</a><br/><span style='font-size:smaller;color:gray'>ui: prevent tooltip from flickering open and closed on hover (#25503)</span>"]
    C_c7af942 --> C_1b9691b
    C_1b9691b["<a href='https://github.com/ggml-org/llama.cpp/pull/25497'>#25497</a><br/><span style='font-size:smaller;color:gray'>cli: fix crash on wrong server base url (#25497)</span>"]
    C_1b9691b --> C_c4ae9a8
    C_c4ae9a8["<a href='https://github.com/ggml-org/llama.cpp/pull/25498'>#25498</a><br/><span style='font-size:smaller;color:gray'>server: improve tools, remove apply_diff (#25498)</span>"]
    C_c4ae9a8 --> C_ac17f8a
    C_ac17f8a["<a href='https://github.com/ggml-org/llama.cpp/commit/ac17f8a'>ac17f8a</a><br/><span style='font-size:smaller;color:gray'>ggml : use ggml_vqtbl1q_u8 for 32-bit compat (whisper/0)</span>"]
    C_ac17f8a --> C_0badc06
    C_0badc06["<a href='https://github.com/ggml-org/llama.cpp/commit/0badc06'>0badc06</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    COMMON -->|dev-metal| C_5dca9f3
    C_5dca9f3["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_5dca9f3 --> C_400d4bf
    C_400d4bf["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_400d4bf --> C_8cb1ad5
    C_8cb1ad5["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
```
