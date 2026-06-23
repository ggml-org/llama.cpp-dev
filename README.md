# llama.cpp - feature development info

Auto-generated on 2026-06-23 05:54:34 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [f8cc15f](https://github.com/ggml-org/llama.cpp/commit/f8cc15f163e784c58fe13aee58ebc03055bb0c40)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/pull/24838'>#24838</a><br/><span style='font-size:smaller;color:gray'>[SYCL] support bf16 on bin_bcast OP and unary OPs (#24838)</span>"]
    COMMON -->|master| C_099b579
    C_099b579["<a href='https://github.com/ggml-org/llama.cpp/pull/24878'>#24878</a><br/><span style='font-size:smaller;color:gray'>ui: model status and load progress via /models/sse feed (#24878)</span>"]
    C_099b579 --> C_6ee0f65
    C_6ee0f65["<a href='https://github.com/ggml-org/llama.cpp/pull/24299'>#24299</a><br/><span style='font-size:smaller;color:gray'>server: refactor/generalize input file schema (#24299)</span>"]
    C_6ee0f65 --> C_721354f
    C_721354f["<a href='https://github.com/ggml-org/llama.cpp/pull/24834'>#24834</a><br/><span style='font-size:smaller;color:gray'>server: (router) move model downloading to dedicated process (#24834)</span>"]
    C_721354f --> C_9c0ac88
    C_9c0ac88["<a href='https://github.com/ggml-org/llama.cpp/pull/24766'>#24766</a><br/><span style='font-size:smaller;color:gray'>ui: Prioritize favorite models in model selection (#24766)</span>"]
    C_9c0ac88 --> C_dec5ca5
    C_dec5ca5["<a href='https://github.com/ggml-org/llama.cpp/pull/24882'>#24882</a><br/><span style='font-size:smaller;color:gray'>server : Add id to tool call responses api (#24882)</span>"]
    C_dec5ca5 --> C_23ee879
    C_23ee879["<a href='https://github.com/ggml-org/llama.cpp/pull/24923'>#24923</a><br/><span style='font-size:smaller;color:gray'>opencl: q8_0 gemv precision improvement (#24923)</span>"]
    C_23ee879 --> C_73618f2
    C_73618f2["<a href='https://github.com/ggml-org/llama.cpp/pull/24176'>#24176</a><br/><span style='font-size:smaller;color:gray'>server: improve user message detection and create checkpoints at every user message (#24176)</span>"]
    COMMON -->|dev-metal| C_bec3083
    C_bec3083["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
