# llama.cpp - feature development info

Auto-generated on 2026-06-28 18:58:20 UTC

**Repo:** https://github.com/ggml-org/llama.cpp

**Common ancestor:** [9bebfcb](https://github.com/ggml-org/llama.cpp/commit/9bebfcb4bc8b12a316e96ae03f33671eac1e72fd)

**Branches:** 2

## Branch Diagram

```mermaid
graph BT
    COMMON["<a href='https://github.com/ggml-org/llama.cpp/pull/25044'>#25044</a><br/><span style='font-size:smaller;color:gray'>sycl : fix failed ut cases of norm (#25044)</span>"]
    COMMON -->|master| C_0ed235e
    C_0ed235e["<a href='https://github.com/ggml-org/llama.cpp/pull/25057'>#25057</a><br/><span style='font-size:smaller;color:gray'>[CUDA] Added a cudaMemcpy2DAsync fast path to ggml_cuda_cpy (#25057)</span>"]
    C_0ed235e --> C_ebd048f
    C_ebd048f["<a href='https://github.com/ggml-org/llama.cpp/pull/25069'>#25069</a><br/><span style='font-size:smaller;color:gray'>opencl: flash attention improvement (#25069)</span>"]
    C_ebd048f --> C_27c8bb4
    C_27c8bb4["<a href='https://github.com/ggml-org/llama.cpp/pull/25078'>#25078</a><br/><span style='font-size:smaller;color:gray'>logs : reduce v2 (#25078)</span>"]
    C_27c8bb4 --> C_c1a1c8e
    C_c1a1c8e["<a href='https://github.com/ggml-org/llama.cpp/pull/25091'>#25091</a><br/><span style='font-size:smaller;color:gray'>common : allow --offline in llama download (#25091)</span>"]
    C_c1a1c8e --> C_d1b3425
    C_d1b3425["<a href='https://github.com/ggml-org/llama.cpp/pull/22105'>#22105</a><br/><span style='font-size:smaller;color:gray'>spec : add DFlash support (#22105)</span>"]
    C_d1b3425 --> C_f68a788
    C_f68a788["<a href='https://github.com/ggml-org/llama.cpp/pull/25086'>#25086</a><br/><span style='font-size:smaller;color:gray'>jinja: add --dump-prog for debugging (#25086)</span>"]
    C_f68a788 --> C_c818263
    C_c818263["<a href='https://github.com/ggml-org/llama.cpp/pull/24889'>#24889</a><br/><span style='font-size:smaller;color:gray'>chat : implement minicpm5 parser (#24889)</span>"]
    C_c818263 --> C_fa72bc6
    C_fa72bc6["<a href='https://github.com/ggml-org/llama.cpp/pull/25110'>#25110</a><br/><span style='font-size:smaller;color:gray'>dflash: refactor draft model conversion (#25110)</span>"]
    COMMON -->|dev-metal| C_f7c1df6
    C_f7c1df6["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
