# llama.cpp - feature development info

Auto-generated on 2026-07-08 16:18:15 UTC

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
    COMMON -->|dev-metal| C_5dca9f3
    C_5dca9f3["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_5dca9f3 --> C_400d4bf
    C_400d4bf["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_400d4bf --> C_8cb1ad5
    C_8cb1ad5["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
```
