# llama.cpp - feature development info

Auto-generated on 2026-07-07 10:41:02 UTC

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
    C_6f8895f --> C_a8cfdbb
    C_a8cfdbb["<a href='https://github.com/ggml-org/llama.cpp/pull/25351'>#25351</a><br/><span style='font-size:smaller;color:gray'>vulkan : check src0 type in GGML_OP_SET_ROWS to avoid failures due to unimplemented f16 support (#25351)</span>"]
    C_a8cfdbb --> C_defa95c
    C_defa95c["<a href='https://github.com/ggml-org/llama.cpp/pull/23936'>#23936</a><br/><span style='font-size:smaller;color:gray'>speculative : fix out-of-bounds read in ngram-map on prompt shrink (#23936)</span>"]
    C_defa95c --> C_1a7c25b
    C_1a7c25b["<a href='https://github.com/ggml-org/llama.cpp/pull/24422'>#24422</a><br/><span style='font-size:smaller;color:gray'>ggml : make ggml_time_init idempotent (#24422)</span>"]
    C_1a7c25b --> C_26145b3
    C_26145b3["<a href='https://github.com/ggml-org/llama.cpp/pull/25042'>#25042</a><br/><span style='font-size:smaller;color:gray'>sycl : rename the env vars from 'disable' to 'enable' (#25042)</span>"]
    C_26145b3 --> C_3d4cbdf
    C_3d4cbdf["<a href='https://github.com/ggml-org/llama.cpp/pull/25081'>#25081</a><br/><span style='font-size:smaller;color:gray'>sycl : use sycl func to fix AOT double type issue (#25081)</span>"]
    C_3d4cbdf --> C_9e5ef0d
    C_9e5ef0d["<a href='https://github.com/ggml-org/llama.cpp/pull/25125'>#25125</a><br/><span style='font-size:smaller;color:gray'>sycl : enhance argsort to support all UT cases (#25125)</span>"]
    C_9e5ef0d --> C_95e5254
    C_95e5254["<a href='https://github.com/ggml-org/llama.cpp/pull/25124'>#25124</a><br/><span style='font-size:smaller;color:gray'>[SYCL] fix unsupport ACC UT cases for noncontiguous (#25124)</span>"]
    C_95e5254 --> C_d209086
    C_d209086["<a href='https://github.com/ggml-org/llama.cpp/pull/25063'>#25063</a><br/><span style='font-size:smaller;color:gray'>sycl : set K_QUANTS_PER_ITERATION to 1 on DMMV path (#25063)</span>"]
    C_d209086 --> C_55edb2d
    C_55edb2d["<a href='https://github.com/ggml-org/llama.cpp/pull/25236'>#25236</a><br/><span style='font-size:smaller;color:gray'>[SYCL] support OP cross_entropy_loss, cross_entropy_loss_back (#25236)</span>"]
    C_55edb2d --> C_47e1de7
    C_47e1de7["<a href='https://github.com/ggml-org/llama.cpp/pull/25264'>#25264</a><br/><span style='font-size:smaller;color:gray'>[SYCL] support op col2im_1d (#25264)</span>"]
    C_47e1de7 --> C_108f186
    C_108f186["<a href='https://github.com/ggml-org/llama.cpp/pull/25231'>#25231</a><br/><span style='font-size:smaller;color:gray'>[SYCL] fix unsupported UT cases of CONT & CPY (#25231)</span>"]
    C_108f186 --> C_024c46a
    C_024c46a["<a href='https://github.com/ggml-org/llama.cpp/pull/25202'>#25202</a><br/><span style='font-size:smaller;color:gray'>llama: fix quantized kv-cache for dsv4 (#25202)</span>"]
    COMMON -->|dev-metal| C_437f21a
    C_437f21a["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
