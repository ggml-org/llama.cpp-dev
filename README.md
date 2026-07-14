# llama.cpp - feature development info

Auto-generated on 2026-07-14 14:18:01 UTC

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
    C_22b69b6 --> C_67776ea
    C_67776ea["<a href='https://github.com/ggml-org/llama.cpp/pull/25512'>#25512</a><br/><span style='font-size:smaller;color:gray'>hexagon: improve ARGSORT performance for small tensors (#25512)</span>"]
    C_67776ea --> C_c749cb0
    C_c749cb0["<a href='https://github.com/ggml-org/llama.cpp/pull/24710'>#24710</a><br/><span style='font-size:smaller;color:gray'>llama : make tensor-split regex patterns static (#24710)</span>"]
    C_c749cb0 --> C_4f37f51
    C_4f37f51["<a href='https://github.com/ggml-org/llama.cpp/pull/25538'>#25538</a><br/><span style='font-size:smaller;color:gray'>server: accept null sampling params (#25538)</span>"]
    C_4f37f51 --> C_1d1d9a9
    C_1d1d9a9["<a href='https://github.com/ggml-org/llama.cpp/pull/25537'>#25537</a><br/><span style='font-size:smaller;color:gray'>opencl: add int8 dp4 dense and MoE prefill optimization for Adreno GPUs (#25537)</span>"]
    C_1d1d9a9 --> C_76f2798
    C_76f2798["<a href='https://github.com/ggml-org/llama.cpp/pull/24877'>#24877</a><br/><span style='font-size:smaller;color:gray'>Vulkan: route large matmuls to medium tile on Adreno (#24877)</span>"]
    C_76f2798 --> C_00f5442
    C_00f5442["<a href='https://github.com/ggml-org/llama.cpp/pull/24231'>#24231</a><br/><span style='font-size:smaller;color:gray'>ggml : add GGML_OP_LIGHTNING_INDEXER that implements DeepSeek V3.2/V4 lightning indexer (#24231)</span>"]
    C_00f5442 --> C_ea1f7bb
    C_ea1f7bb["<a href='https://github.com/ggml-org/llama.cpp/pull/25541'>#25541</a><br/><span style='font-size:smaller;color:gray'>server: refactor server_stream (#25541)</span>"]
    C_ea1f7bb --> C_c92e806
    C_c92e806["<a href='https://github.com/ggml-org/llama.cpp/pull/25526'>#25526</a><br/><span style='font-size:smaller;color:gray'>server: allow stream for exec_shell_command (#25526)</span>"]
    C_c92e806 --> C_13f2b28
    C_13f2b28["<a href='https://github.com/ggml-org/llama.cpp/pull/25521'>#25521</a><br/><span style='font-size:smaller;color:gray'>DeepseekV4: clear cache only for seq rather than full (#25521)</span>"]
    C_13f2b28 --> C_3cec3bc
    C_3cec3bc["<a href='https://github.com/ggml-org/llama.cpp/pull/25157'>#25157</a><br/><span style='font-size:smaller;color:gray'>cuda: Don't crash when querying memory on device with no free memory. (#25157)</span>"]
    C_3cec3bc --> C_d72bfa3
    C_d72bfa3["<a href='https://github.com/ggml-org/llama.cpp/pull/24917'>#24917</a><br/><span style='font-size:smaller;color:gray'>gguf : reject empty metadata keys (#24917)</span>"]
    C_d72bfa3 --> C_e3546c7
    C_e3546c7["<a href='https://github.com/ggml-org/llama.cpp/pull/24926'>#24926</a><br/><span style='font-size:smaller;color:gray'>Fix conditional to display 'LLAMA_SPLIT_MODE_TENSOR not implemented for architecture' message (#24926)</span>"]
    C_e3546c7 --> C_6b4dc21
    C_6b4dc21["<a href='https://github.com/ggml-org/llama.cpp/pull/22536'>#22536</a><br/><span style='font-size:smaller;color:gray'>server : fix image blocks in tool_result being dropped during Anthropic OpenAI conversion (#22536)</span>"]
    C_6b4dc21 --> C_0c4fa7a
    C_0c4fa7a["<a href='https://github.com/ggml-org/llama.cpp/pull/25472'>#25472</a><br/><span style='font-size:smaller;color:gray'>server : evict checkpoints within min-step of each other (#25472)</span>"]
    C_0c4fa7a --> C_4114ba1
    C_4114ba1["<a href='https://github.com/ggml-org/llama.cpp/pull/25548'>#25548</a><br/><span style='font-size:smaller;color:gray'>mtmd: fix silent prompt truncation on embedded NUL (#25548)</span>"]
    C_4114ba1 --> C_8014d2c
    C_8014d2c["<a href='https://github.com/ggml-org/llama.cpp/pull/25590'>#25590</a><br/><span style='font-size:smaller;color:gray'>server: Don't consider models with --no-mmproj-auto as multimodal (#25590)</span>"]
    C_8014d2c --> C_3455882
    C_3455882["<a href='https://github.com/ggml-org/llama.cpp/pull/25576'>#25576</a><br/><span style='font-size:smaller;color:gray'>vendor : update cpp-httplib to 0.50.1 (#25576)</span>"]
    C_3455882 --> C_99f3dc3
    C_99f3dc3["<a href='https://github.com/ggml-org/llama.cpp/pull/23116'>#23116</a><br/><span style='font-size:smaller;color:gray'>server: honour per-request reasoning_budget_tokens in chat completions (#23116)</span>"]
    C_99f3dc3 --> C_38fd5c9
    C_38fd5c9["<a href='https://github.com/ggml-org/llama.cpp/pull/25535'>#25535</a><br/><span style='font-size:smaller;color:gray'>ui: Remove recommended MCP Servers + improve MCP Servers Settings UI/UX (#25535)</span>"]
    C_38fd5c9 --> C_e474bba
    C_e474bba["<a href='https://github.com/ggml-org/llama.cpp/pull/25064'>#25064</a><br/><span style='font-size:smaller;color:gray'>sycl: add Q2_K to DMMV reorder path (#25064)</span>"]
    C_e474bba --> C_efb3036
    C_efb3036["<a href='https://github.com/ggml-org/llama.cpp/pull/25217'>#25217</a><br/><span style='font-size:smaller;color:gray'>sycl: add fused top-k MoE (#25217)</span>"]
    C_efb3036 --> C_91c631b
    C_91c631b["<a href='https://github.com/ggml-org/llama.cpp/pull/24674'>#24674</a><br/><span style='font-size:smaller;color:gray'>chat : fix reasoning leak with force-opened bare <think> templates (#24674)</span>"]
    C_91c631b --> C_ad8d821
    C_ad8d821["<a href='https://github.com/ggml-org/llama.cpp/pull/24405'>#24405</a><br/><span style='font-size:smaller;color:gray'>gguf : add tensor shape accessor (#24405)</span>"]
    C_ad8d821 --> C_f4253ef
    C_f4253ef["<a href='https://github.com/ggml-org/llama.cpp/pull/25616'>#25616</a><br/><span style='font-size:smaller;color:gray'>tests: Harmonize header use (#25616)</span>"]
    C_f4253ef --> C_4193ea6
    C_4193ea6["<a href='https://github.com/ggml-org/llama.cpp/pull/25621'>#25621</a><br/><span style='font-size:smaller;color:gray'>readme : add link to maintainer PRs (#25621)</span>"]
    C_4193ea6 --> C_259ae1d
    C_259ae1d["<a href='https://github.com/ggml-org/llama.cpp/commit/259ae1d'>259ae1d</a><br/><span style='font-size:smaller;color:gray'>spec: add Minimax2 eagle3 support</span>"]
    C_259ae1d --> C_e920c52
    C_e920c52["<a href='https://github.com/ggml-org/llama.cpp/pull/25338'>#25338</a><br/><span style='font-size:smaller;color:gray'>vulkan: Use native e2m1 and e4m3 conversions for mxfp4/nvfp4 (#25338)</span>"]
    C_e920c52 --> C_6eddde0
    C_6eddde0["<a href='https://github.com/ggml-org/llama.cpp/pull/24127'>#24127</a><br/><span style='font-size:smaller;color:gray'>CUDA: refactor MMQ kernel configuration (#24127)</span>"]
    C_6eddde0 --> C_2969d6d
    C_2969d6d["<a href='https://github.com/ggml-org/llama.cpp/pull/25395'>#25395</a><br/><span style='font-size:smaller;color:gray'>model: add Hy3 (hy_v3) support with MTP speculative decoding (#25395)</span>"]
    C_2969d6d --> C_14d3ba4
    C_14d3ba4["<a href='https://github.com/ggml-org/llama.cpp/pull/25419'>#25419</a><br/><span style='font-size:smaller;color:gray'>metal : add Q2_0 support (#25419)</span>"]
    C_14d3ba4 --> C_c1063ac
    C_c1063ac["<a href='https://github.com/ggml-org/llama.cpp/pull/25205'>#25205</a><br/><span style='font-size:smaller;color:gray'>sycl: set fattn_vec_nthreads to 256 for Battlemage (#25205)</span>"]
    C_c1063ac --> C_ec0dbef
    C_ec0dbef["<a href='https://github.com/ggml-org/llama.cpp/pull/25504'>#25504</a><br/><span style='font-size:smaller;color:gray'>arg: Flush log before exiting after usage() (#25504)</span>"]
    C_ec0dbef --> C_cb489bc
    C_cb489bc["<a href='https://github.com/ggml-org/llama.cpp/pull/25641'>#25641</a><br/><span style='font-size:smaller;color:gray'>convert_hf_to_gguf: support split MTP export for HY V3 (#25641)</span>"]
    C_cb489bc --> C_c9330ed
    C_c9330ed["<a href='https://github.com/ggml-org/llama.cpp/pull/25539'>#25539</a><br/><span style='font-size:smaller;color:gray'>ui: add reasoning effort control to mobile add sheet (#25539)</span>"]
    C_c9330ed --> C_47c7869
    C_47c7869["<a href='https://github.com/ggml-org/llama.cpp/pull/24414'>#24414</a><br/><span style='font-size:smaller;color:gray'>kleidiai : add SME2 f32 kernel (#24414)</span>"]
    C_47c7869 --> C_47a3966
    C_47a3966["<a href='https://github.com/ggml-org/llama.cpp/pull/23660'>#23660</a><br/><span style='font-size:smaller;color:gray'>ggml: uniformize im2col dst_type for all conv ops (#23660)</span>"]
    C_47a3966 --> C_657e011
    C_657e011["<a href='https://github.com/ggml-org/llama.cpp/pull/25619'>#25619</a><br/><span style='font-size:smaller;color:gray'>tests: export-graph-ops: exit gracefully when called w/o arguments (#25619)</span>"]
    C_657e011 --> C_a7312ae
    C_a7312ae["<a href='https://github.com/ggml-org/llama.cpp/pull/25650'>#25650</a><br/><span style='font-size:smaller;color:gray'>ggml : add a set of functions for checking contiguity of inner tensor dimensions (#25650)</span>"]
    C_a7312ae --> C_8ff8c42
    C_8ff8c42["<a href='https://github.com/ggml-org/llama.cpp/pull/25516'>#25516</a><br/><span style='font-size:smaller;color:gray'>tokenize : align usage by using common args (#25516)</span>"]
    C_8ff8c42 --> C_7cbd610
    C_7cbd610["<a href='https://github.com/ggml-org/llama.cpp/pull/25432'>#25432</a><br/><span style='font-size:smaller;color:gray'>vulkan/cpu: Support f16 as SET_ROWS src. (#25432)</span>"]
    C_7cbd610 --> C_7f575c3
    C_7f575c3["<a href='https://github.com/ggml-org/llama.cpp/pull/25588'>#25588</a><br/><span style='font-size:smaller;color:gray'>DeepseekV4: fix seq_rm (#25588)</span>"]
    COMMON -->|dev-metal| C_3835214
    C_3835214["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_3835214 --> C_de75555
    C_de75555["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_de75555 --> C_e3ea5de
    C_e3ea5de["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
    C_e3ea5de --> C_65dd913
    C_65dd913["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
```
