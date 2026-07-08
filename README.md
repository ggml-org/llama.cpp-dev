# llama.cpp - feature development info

Auto-generated on 2026-07-08 23:42:37 UTC

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
    COMMON -->|dev-metal| C_5dca9f3
    C_5dca9f3["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_5dca9f3 --> C_400d4bf
    C_400d4bf["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_400d4bf --> C_8cb1ad5
    C_8cb1ad5["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
```
