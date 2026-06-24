# llama.cpp - feature development info

Auto-generated on 2026-06-24 19:21:23 UTC

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
    C_73618f2 --> C_035cd8f
    C_035cd8f["<a href='https://github.com/ggml-org/llama.cpp/pull/24930'>#24930</a><br/><span style='font-size:smaller;color:gray'>codeowners: add yomaytk to ggml-webgpu (#24930)</span>"]
    C_035cd8f --> C_7c90850
    C_7c90850["<a href='https://github.com/ggml-org/llama.cpp/pull/24811'>#24811</a><br/><span style='font-size:smaller;color:gray'>ggml-webgpu: improve MTP inference by using mat-vec path for small batches (#24811)</span>"]
    C_7c90850 --> C_a3900a6
    C_a3900a6["<a href='https://github.com/ggml-org/llama.cpp/pull/24818'>#24818</a><br/><span style='font-size:smaller;color:gray'>model: Granite Speech Plus (#24818)</span>"]
    C_a3900a6 --> C_c926ad0
    C_c926ad0["<a href='https://github.com/ggml-org/llama.cpp/pull/24444'>#24444</a><br/><span style='font-size:smaller;color:gray'>vulkan: link ggml-cpu when GGML_VULKAN_CHECK_RESULTS / RUN_TESTS are enabled (#24444)</span>"]
    C_c926ad0 --> C_75ad0b2
    C_75ad0b2["<a href='https://github.com/ggml-org/llama.cpp/pull/24938'>#24938</a><br/><span style='font-size:smaller;color:gray'>server: fix remote preset handling, add test (#24938)</span>"]
    C_75ad0b2 --> C_0eb874d
    C_0eb874d["<a href='https://github.com/ggml-org/llama.cpp/pull/24689'>#24689</a><br/><span style='font-size:smaller;color:gray'>vulkan: make mul_mm ALIGNED a spec constant (#24689)</span>"]
    C_0eb874d --> C_c560636
    C_c560636["<a href='https://github.com/ggml-org/llama.cpp/pull/24612'>#24612</a><br/><span style='font-size:smaller;color:gray'>vulkan: support CONV_3D (#24612)</span>"]
    C_c560636 --> C_92e854a
    C_92e854a["<a href='https://github.com/ggml-org/llama.cpp/pull/24883'>#24883</a><br/><span style='font-size:smaller;color:gray'>vulkan: Support GET_ROWS_BACK (#24883)</span>"]
    C_92e854a --> C_72a9269
    C_72a9269["<a href='https://github.com/ggml-org/llama.cpp/pull/24582'>#24582</a><br/><span style='font-size:smaller;color:gray'>vulkan: support all backend tests for SQR/SQRT/SIN/COS/CLAMP/LEAKY_RELU/NORM (#24582)</span>"]
    C_72a9269 --> C_be4a6a6
    C_be4a6a6["<a href='https://github.com/ggml-org/llama.cpp/pull/24922'>#24922</a><br/><span style='font-size:smaller;color:gray'>server : check draft context creation error (#24922)</span>"]
    C_be4a6a6 --> C_ac4105d
    C_ac4105d["<a href='https://github.com/ggml-org/llama.cpp/pull/24909'>#24909</a><br/><span style='font-size:smaller;color:gray'>vulkan: Apply bias before softmax in FA, to avoid overflow (#24909)</span>"]
    C_ac4105d --> C_88636e1
    C_88636e1["<a href='https://github.com/ggml-org/llama.cpp/pull/24913'>#24913</a><br/><span style='font-size:smaller;color:gray'>model : Add LFM2.5-ColBERT-350M and LFM2.5-Embedding-350M (#24913)</span>"]
    C_88636e1 --> C_ef9c13d
    C_ef9c13d["<a href='https://github.com/ggml-org/llama.cpp/pull/24897'>#24897</a><br/><span style='font-size:smaller;color:gray'>ui: New Logo + Navigation cleanup & Mobile UI/UX improvements (#24897)</span>"]
    C_ef9c13d --> C_00139b6
    C_00139b6["<a href='https://github.com/ggml-org/llama.cpp/pull/24931'>#24931</a><br/><span style='font-size:smaller;color:gray'>ui: loading bar below the model picker (#24931)</span>"]
    C_00139b6 --> C_1191758
    C_1191758["<a href='https://github.com/ggml-org/llama.cpp/pull/24450'>#24450</a><br/><span style='font-size:smaller;color:gray'>vulkan: fail the build when a shader fails to compile (#24450)</span>"]
    C_1191758 --> C_51eae8c
    C_51eae8c["<a href='https://github.com/ggml-org/llama.cpp/pull/24872'>#24872</a><br/><span style='font-size:smaller;color:gray'>vulkan: allow reducing the graph submission batches to avoid timeouts (#24872)</span>"]
    C_51eae8c --> C_fb40104
    C_fb40104["<a href='https://github.com/ggml-org/llama.cpp/pull/24968'>#24968</a><br/><span style='font-size:smaller;color:gray'>common: remove unused json-partial (#24968)</span>"]
    C_fb40104 --> C_894bb27
    C_894bb27["<a href='https://github.com/ggml-org/llama.cpp/pull/24969'>#24969</a><br/><span style='font-size:smaller;color:gray'>mtmd: model: unlimited-ocr: converter + parity test (#24969)</span>"]
    C_894bb27 --> C_8be759e
    C_8be759e["<a href='https://github.com/ggml-org/llama.cpp/pull/24954'>#24954</a><br/><span style='font-size:smaller;color:gray'>hexagon: MUL_MAT and MUL_MAT_ID rework : 32x32 tiled weight repack, kernel-params, cached graphs (#24954)</span>"]
    COMMON -->|dev-metal| C_bec3083
    C_bec3083["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
```
