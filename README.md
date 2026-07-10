# llama.cpp - feature development info

Auto-generated on 2026-07-10 11:52:10 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [0badc06](https://github.com/ggml-org/llama.cpp/commit/0badc06ab53a8eb96e01242b92ec1365c4465a2a)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/commit/0badc06ab53a8eb96e01242b92ec1365c4465a2a'>0badc06</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    COMMON -->|master| none
    COMMON -->|dev-metal| C_3835214
    C_3835214["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_3835214 --> C_de75555
    C_de75555["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_de75555 --> C_e3ea5de
    C_e3ea5de["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
    C_e3ea5de --> C_65dd913
    C_65dd913["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
```
