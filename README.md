# llama.cpp - feature development info

Auto-generated on 2026-07-07 04:07:57 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [20a04b2](https://github.com/ggml-org/llama.cpp/commit/20a04b22063020cd0f29b7781f5352d7a6abf786)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/pull/25331'>#25331</a><br/><span style='font-size:smaller;color:gray'>ggml-cpu: use UE4M3 LUT in ARM NVFP4 dot product (#25331)</span>"]
    COMMON -->|master| C_bfdf581
    C_bfdf581["<a href='https://github.com/ggml-org/llama.cpp/pull/25355'>#25355</a><br/><span style='font-size:smaller;color:gray'>server: temporary skip model downloading API test (#25355)</span>"]
    C_bfdf581 --> C_cb295bf
    C_cb295bf["<a href='https://github.com/ggml-org/llama.cpp/pull/24403'>#24403</a><br/><span style='font-size:smaller;color:gray'>CUDA: extend K-type validation to V-types for flash attention (#24403)</span>"]
    C_cb295bf --> C_9abce74
    C_9abce74["<a href='https://github.com/ggml-org/llama.cpp/pull/25358'>#25358</a><br/><span style='font-size:smaller;color:gray'>server: fix deadlock in load_models() when erasing a finished download (#25358)</span>"]
    C_9abce74 --> C_74976e1
    C_74976e1["<a href='https://github.com/ggml-org/llama.cpp/pull/24216'>#24216</a><br/><span style='font-size:smaller;color:gray'>CUDA: remove -sm row, refactor cuBLAS (#24216)</span>"]
    C_74976e1 --> C_f36e5c3
    C_f36e5c3["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_f36e5c3 --> C_ee445f9
    C_ee445f9["<a href='https://github.com/ggml-org/llama.cpp/pull/25237'>#25237</a><br/><span style='font-size:smaller;color:gray'>common: Set optimal default thread count for ppc ( linux as well as AIX) (#25237)</span>"]
    C_ee445f9 --> C_6f8895f
    C_6f8895f["<a href='https://github.com/ggml-org/llama.cpp/pull/25366'>#25366</a><br/><span style='font-size:smaller;color:gray'>opencl: general flash attention decode performance optimizations (#25366)</span>"]
    COMMON -->|dev-metal| C_437f21a
    C_437f21a["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
