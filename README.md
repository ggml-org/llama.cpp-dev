# llama.cpp - feature development info

Auto-generated on 2026-06-27 23:31:18 UTC

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
    COMMON -->|dev-metal| C_f7c1df6
    C_f7c1df6["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
