# llama.cpp - feature development info

Auto-generated on 2026-07-10 15:28:16 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [0badc06](https://github.com/ggml-org/llama.cpp/commit/0badc06ab53a8eb96e01242b92ec1365c4465a2a)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/commit/0badc06ab53a8eb96e01242b92ec1365c4465a2a'>0badc06</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    COMMON -->|master| C_a935fbf
    C_a935fbf["<a href='https://github.com/ggml-org/llama.cpp/pull/25500'>#25500</a><br/><span style='font-size:smaller;color:gray'>server: remove loading.html (#25500)</span>"]
    C_a935fbf --> C_9f623c6
    C_9f623c6["<a href='https://github.com/ggml-org/llama.cpp/pull/24874'>#24874</a><br/><span style='font-size:smaller;color:gray'>ui: use server modalities in non-router mode (#24874)</span>"]
    C_9f623c6 --> C_07d9378
    C_07d9378["<a href='https://github.com/ggml-org/llama.cpp/pull/25492'>#25492</a><br/><span style='font-size:smaller;color:gray'>feat: pre-select models in the webui using alias (#25492)</span>"]
    C_07d9378 --> C_3e706dd
    C_3e706dd["<a href='https://github.com/ggml-org/llama.cpp/pull/24717'>#24717</a><br/><span style='font-size:smaller;color:gray'>mtmd: deepseek-ocr v1 multi-tile (#24717)</span>"]
    C_3e706dd --> C_22b69b6
    C_22b69b6["<a href='https://github.com/ggml-org/llama.cpp/pull/25527'>#25527</a><br/><span style='font-size:smaller;color:gray'>arg: prevent duplicate spec model downloads (#25527)</span>"]
    COMMON -->|dev-metal| C_3835214
    C_3835214["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_3835214 --> C_de75555
    C_de75555["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_de75555 --> C_e3ea5de
    C_e3ea5de["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
    C_e3ea5de --> C_65dd913
    C_65dd913["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
```
