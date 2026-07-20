# llama.cpp - feature development info

Auto-generated on 2026-07-20 22:13:35 UTC

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
    C_7f575c3 --> C_17a05e4
    C_17a05e4["<a href='https://github.com/ggml-org/llama.cpp/pull/25631'>#25631</a><br/><span style='font-size:smaller;color:gray'>ui: fix mcp panel for toggle + timeout + proxy + ON/OFF state (#25631)</span>"]
    C_17a05e4 --> C_00e79f6
    C_00e79f6["<a href='https://github.com/ggml-org/llama.cpp/pull/25639'>#25639</a><br/><span style='font-size:smaller;color:gray'>opencl: fix a dp4a bug for devices where cl_khr_integer_dot_product is unavailable (#25639)</span>"]
    C_00e79f6 --> C_dfba90d
    C_dfba90d["<a href='https://github.com/ggml-org/llama.cpp/pull/25529'>#25529</a><br/><span style='font-size:smaller;color:gray'>webui: parse effective-parameter sizes (E2B, E4B) as params (#25529)</span>"]
    C_dfba90d --> C_236ab57
    C_236ab57["<a href='https://github.com/ggml-org/llama.cpp/pull/25634'>#25634</a><br/><span style='font-size:smaller;color:gray'>ui: Fix spacing in tool-call request (#25634)</span>"]
    C_236ab57 --> C_6e52db5
    C_6e52db5["<a href='https://github.com/ggml-org/llama.cpp/pull/25655'>#25655</a><br/><span style='font-size:smaller;color:gray'>server: add --cors-* options (#25655)</span>"]
    C_6e52db5 --> C_bf2c86d
    C_bf2c86d["<a href='https://github.com/ggml-org/llama.cpp/pull/25649'>#25649</a><br/><span style='font-size:smaller;color:gray'>server : refactor prompt cache state ownership (#25649)</span>"]
    C_bf2c86d --> C_c718542
    C_c718542["<a href='https://github.com/ggml-org/llama.cpp/pull/25677'>#25677</a><br/><span style='font-size:smaller;color:gray'>hexagon: fix hmx-queue signal enum-narrowing problem (#25677)</span>"]
    C_c718542 --> C_a4ce259
    C_a4ce259["<a href='https://github.com/ggml-org/llama.cpp/pull/25671'>#25671</a><br/><span style='font-size:smaller;color:gray'>opencl: avoid the vec path in GEMV for unaligned row stride (#25671)</span>"]
    C_a4ce259 --> C_00fa7cb
    C_00fa7cb["<a href='https://github.com/ggml-org/llama.cpp/pull/25640'>#25640</a><br/><span style='font-size:smaller;color:gray'>opencl: handle OOB write in noshuffle GEMV kernels (odd ne01) (#25640)</span>"]
    C_00fa7cb --> C_12127de
    C_12127de["<a href='https://github.com/ggml-org/llama.cpp/pull/25673'>#25673</a><br/><span style='font-size:smaller;color:gray'>opencl: do not use `clCreateBufferWithProperties` when targeting CL 2.x (#25673)</span>"]
    C_12127de --> C_32b741c
    C_32b741c["<a href='https://github.com/ggml-org/llama.cpp/pull/25222'>#25222</a><br/><span style='font-size:smaller;color:gray'>[SYCL] Flash Attention with XMX engine via oneDNN (#25222)</span>"]
    C_32b741c --> C_0e148a5
    C_0e148a5["<a href='https://github.com/ggml-org/llama.cpp/pull/25525'>#25525</a><br/><span style='font-size:smaller;color:gray'>sycl: Increase minimum buffer size for USM system allocations (#25525)</span>"]
    C_0e148a5 --> C_22b208b
    C_22b208b["<a href='https://github.com/ggml-org/llama.cpp/pull/25550'>#25550</a><br/><span style='font-size:smaller;color:gray'>sycl : implement xielu op (#25550)</span>"]
    C_22b208b --> C_ae9291e
    C_ae9291e["<a href='https://github.com/ggml-org/llama.cpp/pull/25653'>#25653</a><br/><span style='font-size:smaller;color:gray'>sycl : support kernel type fp16 for conv2d_dw (#25653)</span>"]
    C_ae9291e --> C_d3fba0c
    C_d3fba0c["<a href='https://github.com/ggml-org/llama.cpp/pull/25656'>#25656</a><br/><span style='font-size:smaller;color:gray'>sycl : fix get_rows Q2_K, Q4_K, Q5_K (#25656)</span>"]
    C_d3fba0c --> C_33a75f4
    C_33a75f4["<a href='https://github.com/ggml-org/llama.cpp/pull/25702'>#25702</a><br/><span style='font-size:smaller;color:gray'>DeepseekV4: reduce graph splits (#25702)</span>"]
    C_33a75f4 --> C_f955e39
    C_f955e39["<a href='https://github.com/ggml-org/llama.cpp/pull/23997'>#23997</a><br/><span style='font-size:smaller;color:gray'>ggml: add f16 out_prod support for CPU and out_prod op for Vulkan (#23997)</span>"]
    C_f955e39 --> C_b3c9d1b
    C_b3c9d1b["<a href='https://github.com/ggml-org/llama.cpp/pull/25459'>#25459</a><br/><span style='font-size:smaller;color:gray'>metal: fuse snake activation (mul, sin, sqr, mul, add) (#25459)</span>"]
    C_b3c9d1b --> C_c810293
    C_c810293["<a href='https://github.com/ggml-org/llama.cpp/pull/25706'>#25706</a><br/><span style='font-size:smaller;color:gray'>ci : add HF_TOKEN to self-hosted workflows (#25706)</span>"]
    C_c810293 --> C_a3e5b96
    C_a3e5b96["<a href='https://github.com/ggml-org/llama.cpp/pull/25678'>#25678</a><br/><span style='font-size:smaller;color:gray'>cuda : relax tensor contiguity requirements for quantized concat (#25678)</span>"]
    C_a3e5b96 --> C_a05df0a
    C_a05df0a["<a href='https://github.com/ggml-org/llama.cpp/pull/25637'>#25637</a><br/><span style='font-size:smaller;color:gray'>ui: fix thinking menu never appearing in single-model mode (#25637)</span>"]
    C_a05df0a --> C_a582222
    C_a582222["<a href='https://github.com/ggml-org/llama.cpp/pull/25705'>#25705</a><br/><span style='font-size:smaller;color:gray'>server: fix read_file append_loc space breaking edit_file match (#25705)</span>"]
    C_a582222 --> C_956973c
    C_956973c["<a href='https://github.com/ggml-org/llama.cpp/pull/25720'>#25720</a><br/><span style='font-size:smaller;color:gray'>Fix crash with draft-simple (#25720)</span>"]
    C_956973c --> C_f6f12e4
    C_f6f12e4["<a href='https://github.com/ggml-org/llama.cpp/pull/25613'>#25613</a><br/><span style='font-size:smaller;color:gray'>CUDA: tighter MMQ src1 buffer size for native fp4 (#25613)</span>"]
    C_f6f12e4 --> C_c3d47e6
    C_c3d47e6["<a href='https://github.com/ggml-org/llama.cpp/pull/25697'>#25697</a><br/><span style='font-size:smaller;color:gray'>opencl: fix two issues on flash attention for Adreno a7x (#25697)</span>"]
    C_c3d47e6 --> C_aff6eb6
    C_aff6eb6["<a href='https://github.com/ggml-org/llama.cpp/pull/25672'>#25672</a><br/><span style='font-size:smaller;color:gray'>tokenize : drop --stdin mutual-exclusion check (#25672)</span>"]
    C_aff6eb6 --> C_3b53219
    C_3b53219["<a href='https://github.com/ggml-org/llama.cpp/pull/25545'>#25545</a><br/><span style='font-size:smaller;color:gray'>cuda : CUDA GGML_OP_LIGHTNING_INDEXER implementation (generic vector kernel + wmma kernel) (#25545)</span>"]
    C_3b53219 --> C_32beb24
    C_32beb24["<a href='https://github.com/ggml-org/llama.cpp/pull/25450'>#25450</a><br/><span style='font-size:smaller;color:gray'>ui: Agentic Content UX improvements (#25450)</span>"]
    C_32beb24 --> C_505b1ed
    C_505b1ed["<a href='https://github.com/ggml-org/llama.cpp/pull/25698'>#25698</a><br/><span style='font-size:smaller;color:gray'>opencl: exclude some moe kernels on Adreno a7x (#25698)</span>"]
    C_505b1ed --> C_602f828
    C_602f828["<a href='https://github.com/ggml-org/llama.cpp/pull/25628'>#25628</a><br/><span style='font-size:smaller;color:gray'>cuda: extract Q1_0 elements via __byte_perm (#25628)</span>"]
    C_602f828 --> C_3dafb58
    C_3dafb58["<a href='https://github.com/ggml-org/llama.cpp/pull/25745'>#25745</a><br/><span style='font-size:smaller;color:gray'>opencl: disable FA and MoE weights repack to work around compiler issues for Adreno 850 GPU (#25745)</span>"]
    C_3dafb58 --> C_56d6e9d
    C_56d6e9d["<a href='https://github.com/ggml-org/llama.cpp/pull/25716'>#25716</a><br/><span style='font-size:smaller;color:gray'>quant : allow using manual tensor types with --pure (#25716)</span>"]
    C_56d6e9d --> C_a320cbf
    C_a320cbf["<a href='https://github.com/ggml-org/llama.cpp/pull/25728'>#25728</a><br/><span style='font-size:smaller;color:gray'>ci : add official website link to release notes (#25728)</span>"]
    C_a320cbf --> C_5839ba3
    C_5839ba3["<a href='https://github.com/ggml-org/llama.cpp/pull/25441'>#25441</a><br/><span style='font-size:smaller;color:gray'>CUDA: dedup MoE gate/up activation quantization (#25441)</span>"]
    C_5839ba3 --> C_c7d8722
    C_c7d8722["<a href='https://github.com/ggml-org/llama.cpp/pull/24233'>#24233</a><br/><span style='font-size:smaller;color:gray'>ggml-cuda : restore prop.integrated on HIP builds (#24233)</span>"]
    C_c7d8722 --> C_8ee54c8
    C_8ee54c8["<a href='https://github.com/ggml-org/llama.cpp/pull/25756'>#25756</a><br/><span style='font-size:smaller;color:gray'>server: Ignore empty / non-existing `Origin` headers (#25756)</span>"]
    C_8ee54c8 --> C_3f08ef2
    C_3f08ef2["<a href='https://github.com/ggml-org/llama.cpp/pull/25749'>#25749</a><br/><span style='font-size:smaller;color:gray'>Enable CUDA graphs on volta+turing (#25749)</span>"]
    C_3f08ef2 --> C_79bba02
    C_79bba02["<a href='https://github.com/ggml-org/llama.cpp/pull/25228'>#25228</a><br/><span style='font-size:smaller;color:gray'>CUDA: Support CUDA Virtual Devices (#25228)</span>"]
    C_79bba02 --> C_a55a8c5
    C_a55a8c5["<a href='https://github.com/ggml-org/llama.cpp/pull/25733'>#25733</a><br/><span style='font-size:smaller;color:gray'>convert : fix dflash target tokenizer mismatch during conversion (#25733)</span>"]
    C_a55a8c5 --> C_a8dc0e3
    C_a8dc0e3["<a href='https://github.com/ggml-org/llama.cpp/pull/25076'>#25076</a><br/><span style='font-size:smaller;color:gray'>server : allow text-only slot save/restore with mtmd (#25076)</span>"]
    C_a8dc0e3 --> C_32e789f
    C_32e789f["<a href='https://github.com/ggml-org/llama.cpp/pull/25758'>#25758</a><br/><span style='font-size:smaller;color:gray'>tests: actually exercise `test-recurrent-state-rollback` (#25758)</span>"]
    C_32e789f --> C_86b719b
    C_86b719b["<a href='https://github.com/ggml-org/llama.cpp/pull/25624'>#25624</a><br/><span style='font-size:smaller;color:gray'>vendor: update BoringSSL to 0.20260713.0 (#25624)</span>"]
    C_86b719b --> C_2e1fd76
    C_2e1fd76["<a href='https://github.com/ggml-org/llama.cpp/pull/25536'>#25536</a><br/><span style='font-size:smaller;color:gray'>TP: fix Phi3, Bert, Plamo2/3, ChatGLM (#25536)</span>"]
    C_2e1fd76 --> C_3278e92
    C_3278e92["<a href='https://github.com/ggml-org/llama.cpp/pull/25769'>#25769</a><br/><span style='font-size:smaller;color:gray'>conversion: accept BitNetForCausalLM architecture name (#25769)</span>"]
    C_3278e92 --> C_b15ca93
    C_b15ca93["<a href='https://github.com/ggml-org/llama.cpp/pull/25229'>#25229</a><br/><span style='font-size:smaller;color:gray'>vulkan: when using transfer queue for async copies, sync on event_wait to avoid race (#25229)</span>"]
    C_b15ca93 --> C_f15bd60
    C_f15bd60["<a href='https://github.com/ggml-org/llama.cpp/pull/25478'>#25478</a><br/><span style='font-size:smaller;color:gray'>kleidiai: Add SME vs SME2 distinction in kernel dispatch (#25478)</span>"]
    C_f15bd60 --> C_b2dd28a
    C_b2dd28a["<a href='https://github.com/ggml-org/llama.cpp/pull/25762'>#25762</a><br/><span style='font-size:smaller;color:gray'>hexagon: L2 cache handling rework (dirty bit tracking with lazy flushing) and more MUL_MAT updates (#25762)</span>"]
    C_b2dd28a --> C_0dc74e3
    C_0dc74e3["<a href='https://github.com/ggml-org/llama.cpp/pull/25585'>#25585</a><br/><span style='font-size:smaller;color:gray'>DeepseekV4: Add fused hyper-connection ops (#25585)</span>"]
    C_0dc74e3 --> C_ac2557c
    C_ac2557c["<a href='https://github.com/ggml-org/llama.cpp/pull/25786'>#25786</a><br/><span style='font-size:smaller;color:gray'>docs: added a note about using OpenCl with Adreno 810 (#25786)</span>"]
    C_ac2557c --> C_e8f19cc
    C_e8f19cc["<a href='https://github.com/ggml-org/llama.cpp/pull/25780'>#25780</a><br/><span style='font-size:smaller;color:gray'>opencl: loads quants as uint for q4_K and q5_K flat mv (optimization for Adreno A7x GPUs) (#25780)</span>"]
    C_e8f19cc --> C_b85833e
    C_b85833e["<a href='https://github.com/ggml-org/llama.cpp/pull/25115'>#25115</a><br/><span style='font-size:smaller;color:gray'>opencl: add ABS op (#25115)</span>"]
    C_b85833e --> C_0bd0ec6
    C_0bd0ec6["<a href='https://github.com/ggml-org/llama.cpp/pull/25690'>#25690</a><br/><span style='font-size:smaller;color:gray'>sycl: fix row calculation when K_QUANTS_PER_ITERATION is 1 (#25690)</span>"]
    C_0bd0ec6 --> C_788e07d
    C_788e07d["<a href='https://github.com/ggml-org/llama.cpp/pull/25430'>#25430</a><br/><span style='font-size:smaller;color:gray'>vulkan: Support Q2_0 (#25430)</span>"]
    C_788e07d --> C_11fd0a6
    C_11fd0a6["<a href='https://github.com/ggml-org/llama.cpp/pull/25710'>#25710</a><br/><span style='font-size:smaller;color:gray'>ggml-blas: default hadamard mul_mat to cpu routine (#25710)</span>"]
    C_11fd0a6 --> C_635cdd5
    C_635cdd5["<a href='https://github.com/ggml-org/llama.cpp/pull/25811'>#25811</a><br/><span style='font-size:smaller;color:gray'>common : auto-download dflash- and eagle3- HF sidecars (#25811)</span>"]
    C_635cdd5 --> C_5d5306b
    C_5d5306b["<a href='https://github.com/ggml-org/llama.cpp/pull/25822'>#25822</a><br/><span style='font-size:smaller;color:gray'>tests : initialize all tensors in test_dsv4_hc to avoid NaNs in sentinel tensors (#25822)</span>"]
    C_5d5306b --> C_3727404
    C_3727404["<a href='https://github.com/ggml-org/llama.cpp/commit/3727404'>3727404</a><br/><span style='font-size:smaller;color:gray'>ggml : bump version to 0.17.0 (ggml/1568)</span>"]
    C_3727404 --> C_7d56da7
    C_7d56da7["<a href='https://github.com/ggml-org/llama.cpp/commit/7d56da7'>7d56da7</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    C_7d56da7 --> C_86d86ed
    C_86d86ed["<a href='https://github.com/ggml-org/llama.cpp/pull/25805'>#25805</a><br/><span style='font-size:smaller;color:gray'>opencl: transpose q4_K noshuffle scales for coalesced reads (#25805)</span>"]
    C_86d86ed --> C_6bdd77f
    C_6bdd77f["<a href='https://github.com/ggml-org/llama.cpp/pull/25810'>#25810</a><br/><span style='font-size:smaller;color:gray'>opencl:  read/write MoE dp4a activation tiles to local memory as 128-bit (vectorized LD/ST perf opt) for Adreno GPUs (#25810)</span>"]
    C_6bdd77f --> C_86a9c79
    C_86a9c79["<a href='https://github.com/ggml-org/llama.cpp/pull/25797'>#25797</a><br/><span style='font-size:smaller;color:gray'>opencl: load and use `kernel_gemm_moe_q6_k_f32_ns` from bin kernel lib (#25797)</span>"]
    C_86a9c79 --> C_4937ca8
    C_4937ca8["<a href='https://github.com/ggml-org/llama.cpp/pull/25787'>#25787</a><br/><span style='font-size:smaller;color:gray'>llama-quant : exclude i32 ffn_gate_tid2eid routing table from quantization (#25787)</span>"]
    C_4937ca8 --> C_571d0d5
    C_571d0d5["<a href='https://github.com/ggml-org/llama.cpp/pull/25823'>#25823</a><br/><span style='font-size:smaller;color:gray'>model: rotate injected K/V cache for DFlash (#25823)</span>"]
    C_571d0d5 --> C_178a6c4
    C_178a6c4["<a href='https://github.com/ggml-org/llama.cpp/pull/25910'>#25910</a><br/><span style='font-size:smaller;color:gray'>opencl: Support broadcast for Adreno MUL_MAT and honor `view_offs` for Adreno Q8_0 MUL_MAT for llama-server multi-stream (#25910)</span>"]
    C_178a6c4 --> C_1521a9a
    C_1521a9a["<a href='https://github.com/ggml-org/llama.cpp/pull/25865'>#25865</a><br/><span style='font-size:smaller;color:gray'>ui: enable the agentic flow when only the JS sandbox is active (#25865)</span>"]
    C_1521a9a --> C_43b5e63
    C_43b5e63["<a href='https://github.com/ggml-org/llama.cpp/pull/25783'>#25783</a><br/><span style='font-size:smaller;color:gray'>UI: fix Settings/Display tool call content toggle (#25783)</span>"]
    C_43b5e63 --> C_4ee6a9a
    C_4ee6a9a["<a href='https://github.com/ggml-org/llama.cpp/pull/25869'>#25869</a><br/><span style='font-size:smaller;color:gray'>ui: fix collapsed user bubble with markdown rendering (#25869)</span>"]
    C_4ee6a9a --> C_91d2fc3
    C_91d2fc3["<a href='https://github.com/ggml-org/llama.cpp/pull/25325'>#25325</a><br/><span style='font-size:smaller;color:gray'>llama_dsv4: write only used rows in state (#25325)</span>"]
    C_91d2fc3 --> C_2beefef
    C_2beefef["<a href='https://github.com/ggml-org/llama.cpp/pull/25815'>#25815</a><br/><span style='font-size:smaller;color:gray'>ui: Sidebar Conversations Bulk Action + Improved Settings logic/UI (#25815)</span>"]
    COMMON -->|dev-metal| C_3835214
    C_3835214["<a href='https://github.com/ggml-org/llama.cpp/pull/24021'>#24021</a><br/><span style='font-size:smaller;color:gray'>metal : per-op source split + parallel compile (#24021)</span>"]
    C_3835214 --> C_de75555
    C_de75555["<a href='https://github.com/ggml-org/llama.cpp/pull/25176'>#25176</a><br/><span style='font-size:smaller;color:gray'>metal: add col2im_1d op (f32/f16/bf16) (#25176)</span>"]
    C_de75555 --> C_e3ea5de
    C_e3ea5de["<a href='https://github.com/ggml-org/llama.cpp/pull/25434'>#25434</a><br/><span style='font-size:smaller;color:gray'>metal : add set_rows with src0 f16 (#25434)</span>"]
    C_e3ea5de --> C_65dd913
    C_65dd913["<a href='https://github.com/ggml-org/llama.cpp/pull/21565'>#21565</a><br/><span style='font-size:smaller;color:gray'>metal : add CONV_2D_DW (depthwise convolution) support (#21565)</span>"]
```
