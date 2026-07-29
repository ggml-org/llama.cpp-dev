# llama.cpp - feature development info

Auto-generated on 2026-07-29 06:16:37 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [7e1e28c](https://github.com/ggml-org/llama.cpp/commit/7e1e28cae36d41fe7bbe9dae7c9625de6565c063)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/pull/22520'>#22520</a><br/><span style='font-size:smaller;color:gray'>mtmd : add Nemotron 3 Nano Omni support (parakeet) (#22520)</span>"]
    COMMON -->|master| C_8190848
    C_8190848["<a href='https://github.com/ggml-org/llama.cpp/pull/26189'>#26189</a><br/><span style='font-size:smaller;color:gray'>opencl: skip the Adreno KQ/KQV image kernels for multi-stream batches (#26189)</span>"]
    C_8190848 --> C_bc71c24
    C_bc71c24["<a href='https://github.com/ggml-org/llama.cpp/pull/25931'>#25931</a><br/><span style='font-size:smaller;color:gray'>ggml-webgpu: Fix some binding alias issues to support all archs, fix recurrent-state-rollback test (#25931)</span>"]
    C_bc71c24 --> C_e9fa078
    C_e9fa078["<a href='https://github.com/ggml-org/llama.cpp/pull/26233'>#26233</a><br/><span style='font-size:smaller;color:gray'>model: Add Laguna-S-2.1 LLM_TYPE (#26233)</span>"]
    C_e9fa078 --> C_7be2c65
    C_7be2c65["<a href='https://github.com/ggml-org/llama.cpp/pull/25980'>#25980</a><br/><span style='font-size:smaller;color:gray'>model: add NextN/MTP speculative decoding support for GLM_DSA (GLM-5.2) (#25980)</span>"]
    COMMON -->|dev-metal| C_8ed30a7
    C_8ed30a7["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_8ed30a7 --> C_2894406
    C_2894406["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_2894406 --> C_6d75564
    C_6d75564["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
    C_6d75564 --> C_ccb8445
    C_ccb8445["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
    C_ccb8445 --> C_70f70ed
    C_70f70ed["<a href='https://github.com/ggml-org/llama.cpp/pull/25419'>#25419</a><br/><span style='font-size:smaller;color:gray'>metal : add Q2_0 support (#25419)</span>"]
    C_70f70ed --> C_a9a5d1d
    C_a9a5d1d["<a href='https://github.com/ggml-org/llama.cpp/pull/25459'>#25459</a><br/><span style='font-size:smaller;color:gray'>metal: fuse snake activation (mul, sin, sqr, mul, add) (#25459)</span>"]
    C_a9a5d1d --> C_7185fef
    C_7185fef["<a href='https://github.com/ggml-org/llama.cpp/pull/25924'>#25924</a><br/><span style='font-size:smaller;color:gray'>ggml-metal: FWHT kernel for metal backend (#25924)</span>"]
```
