# llama.cpp - feature development info

Auto-generated on 2026-08-09 02:04:15 UTC

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
    C_7be2c65 --> C_60bccc3
    C_60bccc3["<a href='https://github.com/ggml-org/llama.cpp/pull/26199'>#26199</a><br/><span style='font-size:smaller;color:gray'>add rdna3.5, and 3 to mmq configs so they can be tuned independently. (#26199)</span>"]
    C_60bccc3 --> C_f5b9bd3
    C_f5b9bd3["<a href='https://github.com/ggml-org/llama.cpp/pull/25912'>#25912</a><br/><span style='font-size:smaller;color:gray'>RPC: add tensor_memset (#25912)</span>"]
    C_f5b9bd3 --> C_e1af89a
    C_e1af89a["<a href='https://github.com/ggml-org/llama.cpp/pull/26262'>#26262</a><br/><span style='font-size:smaller;color:gray'>conversion: fix Qwen2.5-Omni mmproj conversion regression (#26262)</span>"]
    C_e1af89a --> C_992c325
    C_992c325["<a href='https://github.com/ggml-org/llama.cpp/pull/26271'>#26271</a><br/><span style='font-size:smaller;color:gray'>server : add trace logging for slot similarity checking (#26271)</span>"]
    C_992c325 --> C_e2f59ed
    C_e2f59ed["<a href='https://github.com/ggml-org/llama.cpp/pull/26241'>#26241</a><br/><span style='font-size:smaller;color:gray'>vendor: update BoringSSL to 0.20260728.0 (#26241)</span>"]
    C_e2f59ed --> C_11b068d
    C_11b068d["<a href='https://github.com/ggml-org/llama.cpp/pull/25946'>#25946</a><br/><span style='font-size:smaller;color:gray'>sycl: contiguous fast path + 32-bit index math for unary elementwise ops (#25946)</span>"]
    C_11b068d --> C_caa596a
    C_caa596a["<a href='https://github.com/ggml-org/llama.cpp/pull/26141'>#26141</a><br/><span style='font-size:smaller;color:gray'>ggml-cuda : disable MMQ on devices with less than 48 KiB shared memory (#26141)</span>"]
    C_caa596a --> C_afeebe1
    C_afeebe1["<a href='https://github.com/ggml-org/llama.cpp/pull/26276'>#26276</a><br/><span style='font-size:smaller;color:gray'>llama: move suppress_tokens handling to common/sampling (#26276)</span>"]
    C_afeebe1 --> C_3018a11
    C_3018a11["<a href='https://github.com/ggml-org/llama.cpp/pull/26287'>#26287</a><br/><span style='font-size:smaller;color:gray'>fix: increase greeting spacing on md screens (#26287)</span>"]
    C_3018a11 --> C_64d528b
    C_64d528b["<a href='https://github.com/ggml-org/llama.cpp/pull/26228'>#26228</a><br/><span style='font-size:smaller;color:gray'>mimo2: address MTP review feedback (#26228)</span>"]
    C_64d528b --> C_a6a77bc
    C_a6a77bc["<a href='https://github.com/ggml-org/llama.cpp/pull/25234'>#25234</a><br/><span style='font-size:smaller;color:gray'>[UT] enhance UT to show all real unsupported backends (#25234)</span>"]
    C_a6a77bc --> C_32703b4
    C_32703b4["<a href='https://github.com/ggml-org/llama.cpp/pull/26277'>#26277</a><br/><span style='font-size:smaller;color:gray'>ggml : Fix issue with kleidiai ci and stringop overflow warning (#26277)</span>"]
    C_32703b4 --> C_21a5f5b
    C_21a5f5b["<a href='https://github.com/ggml-org/llama.cpp/pull/26278'>#26278</a><br/><span style='font-size:smaller;color:gray'>ui: IndexedDB and Conversations data fixes (#26278)</span>"]
    C_21a5f5b --> C_d0bfb19
    C_d0bfb19["<a href='https://github.com/ggml-org/llama.cpp/pull/26082'>#26082</a><br/><span style='font-size:smaller;color:gray'>metal: fix memory unwire if model is freed without any GPU operations (#26082)</span>"]
    C_d0bfb19 --> C_b2f2216
    C_b2f2216["<a href='https://github.com/ggml-org/llama.cpp/pull/26297'>#26297</a><br/><span style='font-size:smaller;color:gray'>Remove custom cpu op from the M3 graph, express with stock ops (#26297)</span>"]
    C_b2f2216 --> C_9b2a088
    C_9b2a088["<a href='https://github.com/ggml-org/llama.cpp/pull/25707'>#25707</a><br/><span style='font-size:smaller;color:gray'>CUDA: add Q2_0 support (#25707)</span>"]
    C_9b2a088 --> C_6a4c335
    C_6a4c335["<a href='https://github.com/ggml-org/llama.cpp/commit/6a4c335'>6a4c335</a><br/><span style='font-size:smaller;color:gray'>ggml : bump version to 0.18.0 (ggml/1576)</span>"]
    C_6a4c335 --> C_9ebfc3a
    C_9ebfc3a["<a href='https://github.com/ggml-org/llama.cpp/commit/9ebfc3a'>9ebfc3a</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    C_9ebfc3a --> C_6b36c23
    C_6b36c23["<a href='https://github.com/ggml-org/llama.cpp/pull/26280'>#26280</a><br/><span style='font-size:smaller;color:gray'>readme : refresh (#26280)</span>"]
    C_6b36c23 --> C_e1a1abb
    C_e1a1abb["<a href='https://github.com/ggml-org/llama.cpp/pull/26171'>#26171</a><br/><span style='font-size:smaller;color:gray'>ggml-cuda: Allow transpose-free gemmv computation (#26171)</span>"]
    C_e1a1abb --> C_47f686f
    C_47f686f["<a href='https://github.com/ggml-org/llama.cpp/pull/26317'>#26317</a><br/><span style='font-size:smaller;color:gray'>tests : avoid building get-model.cpp many times (#26317)</span>"]
    C_47f686f --> C_432d7ff
    C_432d7ff["<a href='https://github.com/ggml-org/llama.cpp/pull/25676'>#25676</a><br/><span style='font-size:smaller;color:gray'>llama-context : sync pending async copies before clearing embd_seq (#25676)</span>"]
    C_432d7ff --> C_958d9c0
    C_958d9c0["<a href='https://github.com/ggml-org/llama.cpp/pull/25617'>#25617</a><br/><span style='font-size:smaller;color:gray'>Test support for alternative conv layout (#25617)</span>"]
    C_958d9c0 --> C_ea63b4d
    C_ea63b4d["<a href='https://github.com/ggml-org/llama.cpp/pull/25684'>#25684</a><br/><span style='font-size:smaller;color:gray'>vulkan: Support quantized concat (#25684)</span>"]
    C_ea63b4d --> C_b4ca032
    C_b4ca032["<a href='https://github.com/ggml-org/llama.cpp/pull/26313'>#26313</a><br/><span style='font-size:smaller;color:gray'>server: support inp embd to generate next token (#26313)</span>"]
    C_b4ca032 --> C_5f55650
    C_5f55650["<a href='https://github.com/ggml-org/llama.cpp/pull/26341'>#26341</a><br/><span style='font-size:smaller;color:gray'>mtmd: add lanczos resize method [no release] (#26341)</span>"]
    C_5f55650 --> C_8f4646a
    C_8f4646a["<a href='https://github.com/ggml-org/llama.cpp/pull/25956'>#25956</a><br/><span style='font-size:smaller;color:gray'>ggml-webgpu: improve flash_attn_vec for quantized KV at long contexts (#25956)</span>"]
    C_8f4646a --> C_1553725
    C_1553725["<a href='https://github.com/ggml-org/llama.cpp/pull/26015'>#26015</a><br/><span style='font-size:smaller;color:gray'>sycl: fuse RMS_NORM + MUL (#26015)</span>"]
    C_1553725 --> C_a2be61d
    C_a2be61d["<a href='https://github.com/ggml-org/llama.cpp/pull/26231'>#26231</a><br/><span style='font-size:smaller;color:gray'>[SYCL] Support q2 mul_mat (#26231)</span>"]
    C_a2be61d --> C_1c5b89f
    C_1c5b89f["<a href='https://github.com/ggml-org/llama.cpp/pull/26234'>#26234</a><br/><span style='font-size:smaller;color:gray'>sycl : support dev2dev memcpy by DEV2DEV_MEMCPY_FORWARD (#26234)</span>"]
    C_1c5b89f --> C_1e22599
    C_1e22599["<a href='https://github.com/ggml-org/llama.cpp/pull/25918'>#25918</a><br/><span style='font-size:smaller;color:gray'>ggml-zendnn : group matmul direct API for mul_mat_id (#25918)</span>"]
    C_1e22599 --> C_69e62fc
    C_69e62fc["<a href='https://github.com/ggml-org/llama.cpp/pull/25871'>#25871</a><br/><span style='font-size:smaller;color:gray'>llama : enforce the same K and V cache types for DeepSeek V4; enable FA if V cache is quantized (#25871)</span>"]
    C_69e62fc --> C_d5d3e05
    C_d5d3e05["<a href='https://github.com/ggml-org/llama.cpp/pull/26005'>#26005</a><br/><span style='font-size:smaller;color:gray'>[SYCL] support the missed types in cpy (#26005)</span>"]
    C_d5d3e05 --> C_9d9a6d2
    C_9d9a6d2["<a href='https://github.com/ggml-org/llama.cpp/pull/25025'>#25025</a><br/><span style='font-size:smaller;color:gray'>SYCL: add oneMKL GEMM flash attention for XMX-accelerated prompt proc… (#25025)</span>"]
    C_9d9a6d2 --> C_15e755f
    C_15e755f["<a href='https://github.com/ggml-org/llama.cpp/pull/25603'>#25603</a><br/><span style='font-size:smaller;color:gray'>cuda: extract Q2_0 elements via __byte_perm (#25603)</span>"]
    C_15e755f --> C_0005475
    C_0005475["<a href='https://github.com/ggml-org/llama.cpp/pull/26320'>#26320</a><br/><span style='font-size:smaller;color:gray'>server: correct accepted tokens when need draft token replay (#26320)</span>"]
    C_0005475 --> C_6f3c0a7
    C_6f3c0a7["<a href='https://github.com/ggml-org/llama.cpp/pull/26303'>#26303</a><br/><span style='font-size:smaller;color:gray'>vulkan: update vulkan sdk to 1.4.357.0 (#26303)</span>"]
    C_6f3c0a7 --> C_82dbc4f
    C_82dbc4f["<a href='https://github.com/ggml-org/llama.cpp/pull/26296'>#26296</a><br/><span style='font-size:smaller;color:gray'>llama : load MTP tensors only if they are really used (#26296)</span>"]
    C_82dbc4f --> C_a09d8ab
    C_a09d8ab["<a href='https://github.com/ggml-org/llama.cpp/pull/26180'>#26180</a><br/><span style='font-size:smaller;color:gray'>Support rotated kv cache quant (#26180)</span>"]
    C_a09d8ab --> C_db7d8b2
    C_db7d8b2["<a href='https://github.com/ggml-org/llama.cpp/pull/26342'>#26342</a><br/><span style='font-size:smaller;color:gray'>mtmd: add n_embd_head (#26342)</span>"]
    C_db7d8b2 --> C_eb41d50
    C_eb41d50["<a href='https://github.com/ggml-org/llama.cpp/pull/25192'>#25192</a><br/><span style='font-size:smaller;color:gray'>vulkan: Introduce driver version check for Windows Intel GPU to mitigate crashing (#25192)</span>"]
    C_eb41d50 --> C_876a432
    C_876a432["<a href='https://github.com/ggml-org/llama.cpp/pull/25431'>#25431</a><br/><span style='font-size:smaller;color:gray'>vulkan: add POOL_1D op (#25431)</span>"]
    C_876a432 --> C_ddd4ec1
    C_ddd4ec1["<a href='https://github.com/ggml-org/llama.cpp/pull/26269'>#26269</a><br/><span style='font-size:smaller;color:gray'>chat : enable tool call in thinking for DS4 (#26269)</span>"]
    C_ddd4ec1 --> C_de69995
    C_de69995["<a href='https://github.com/ggml-org/llama.cpp/pull/25993'>#25993</a><br/><span style='font-size:smaller;color:gray'>mtmd: add minicpmv46 downsample (#25993)</span>"]
    C_de69995 --> C_c629da5
    C_c629da5["<a href='https://github.com/ggml-org/llama.cpp/pull/26362'>#26362</a><br/><span style='font-size:smaller;color:gray'>cli : persist reasoning_content in chat history (#26362)</span>"]
    C_c629da5 --> C_89482bd
    C_89482bd["<a href='https://github.com/ggml-org/llama.cpp/pull/26405'>#26405</a><br/><span style='font-size:smaller;color:gray'>agents: clarify comment style and jinja knowledge (#26405)</span>"]
    C_89482bd --> C_815a2a5
    C_815a2a5["<a href='https://github.com/ggml-org/llama.cpp/pull/26353'>#26353</a><br/><span style='font-size:smaller;color:gray'>vendor : update BoringSSL to 0.20260730.0 (#26353)</span>"]
    C_815a2a5 --> C_a7a6d0d
    C_a7a6d0d["<a href='https://github.com/ggml-org/llama.cpp/pull/26124'>#26124</a><br/><span style='font-size:smaller;color:gray'>vulkan: extend topk_moe fusion to support sqrt(softplus) (#26124)</span>"]
    C_a7a6d0d --> C_11924d4
    C_11924d4["<a href='https://github.com/ggml-org/llama.cpp/pull/26415'>#26415</a><br/><span style='font-size:smaller;color:gray'>test: fix some CI errors (#26415)</span>"]
    C_11924d4 --> C_7a2db1a
    C_7a2db1a["<a href='https://github.com/ggml-org/llama.cpp/pull/26307'>#26307</a><br/><span style='font-size:smaller;color:gray'>ggml-webgpu: add support for f16 repeat (#26307)</span>"]
    C_7a2db1a --> C_75587a0
    C_75587a0["<a href='https://github.com/ggml-org/llama.cpp/pull/26412'>#26412</a><br/><span style='font-size:smaller;color:gray'>model : load MiMo V2 MTP tensors only if used (#26412)</span>"]
    C_75587a0 --> C_272700b
    C_272700b["<a href='https://github.com/ggml-org/llama.cpp/pull/26105'>#26105</a><br/><span style='font-size:smaller;color:gray'>sycl: fix classification of iGPUs (#26105)</span>"]
    C_272700b --> C_f5919bf
    C_f5919bf["<a href='https://github.com/ggml-org/llama.cpp/pull/26252'>#26252</a><br/><span style='font-size:smaller;color:gray'>chat : add qwen3 specialized parser (#26252)</span>"]
    C_f5919bf --> C_596a579
    C_596a579["<a href='https://github.com/ggml-org/llama.cpp/pull/25784'>#25784</a><br/><span style='font-size:smaller;color:gray'>DeepseekV4 MTP + DSpark (#25784)</span>"]
    C_596a579 --> C_c745be2
    C_c745be2["<a href='https://github.com/ggml-org/llama.cpp/pull/26162'>#26162</a><br/><span style='font-size:smaller;color:gray'>opencl: bugfix increment ref_count in  ggml_backend_opencl_init() (#26162)</span>"]
    C_c745be2 --> C_3581ba0
    C_3581ba0["<a href='https://github.com/ggml-org/llama.cpp/pull/26452'>#26452</a><br/><span style='font-size:smaller;color:gray'>convert: add option to create separate dspark GGUF (#26452)</span>"]
    C_3581ba0 --> C_bb4e0e1
    C_bb4e0e1["<a href='https://github.com/ggml-org/llama.cpp/pull/26458'>#26458</a><br/><span style='font-size:smaller;color:gray'>common: support the DSpark sidecar resolution (#26458)</span>"]
    C_bb4e0e1 --> C_fffbcbd
    C_fffbcbd["<a href='https://github.com/ggml-org/llama.cpp/pull/26459'>#26459</a><br/><span style='font-size:smaller;color:gray'>metal: implement DeepSeek V4 hyper-connections (#26459)</span>"]
    C_fffbcbd --> C_0ab9d6f
    C_0ab9d6f["<a href='https://github.com/ggml-org/llama.cpp/pull/26383'>#26383</a><br/><span style='font-size:smaller;color:gray'>opencl: limit local workgroup size for GLU operation (#26383)</span>"]
    C_0ab9d6f --> C_9d21b57
    C_9d21b57["<a href='https://github.com/ggml-org/llama.cpp/pull/26465'>#26465</a><br/><span style='font-size:smaller;color:gray'>metal : add F16 support for bin ops (#26465)</span>"]
    C_9d21b57 --> C_221f0f6
    C_221f0f6["<a href='https://github.com/ggml-org/llama.cpp/pull/25982'>#25982</a><br/><span style='font-size:smaller;color:gray'>metal : add SILU_BACK (#25982)</span>"]
    C_221f0f6 --> C_1464c62
    C_1464c62["<a href='https://github.com/ggml-org/llama.cpp/pull/25893'>#25893</a><br/><span style='font-size:smaller;color:gray'>metal: implement DSv4 Lightning Indexer (#25893)</span>"]
    C_1464c62 --> C_2b63e06
    C_2b63e06["<a href='https://github.com/ggml-org/llama.cpp/pull/26457'>#26457</a><br/><span style='font-size:smaller;color:gray'>llama : MTP support for DeepSeek V3.2 (#26457)</span>"]
    C_2b63e06 --> C_4ed2b13
    C_4ed2b13["<a href='https://github.com/ggml-org/llama.cpp/pull/25589'>#25589</a><br/><span style='font-size:smaller;color:gray'>model: MTP support for Qwen3-Next (#25589)</span>"]
    C_4ed2b13 --> C_f2b52a8
    C_f2b52a8["<a href='https://github.com/ggml-org/llama.cpp/pull/26420'>#26420</a><br/><span style='font-size:smaller;color:gray'>server: (tools) add x-tool-cwd header (#26420)</span>"]
    C_f2b52a8 --> C_0b14b87
    C_0b14b87["<a href='https://github.com/ggml-org/llama.cpp/pull/26508'>#26508</a><br/><span style='font-size:smaller;color:gray'>server: add notice for upcoming default port change 8080 --> 9931 (#26508)</span>"]
    C_0b14b87 --> C_9bd4c09
    C_9bd4c09["<a href='https://github.com/ggml-org/llama.cpp/pull/26385'>#26385</a><br/><span style='font-size:smaller;color:gray'>CUDA: Fix data-races when reusing SMEM in block_reduce (#26385)</span>"]
    C_9bd4c09 --> C_96278e3
    C_96278e3["<a href='https://github.com/ggml-org/llama.cpp/pull/25262'>#25262</a><br/><span style='font-size:smaller;color:gray'>CUDA: Add backend sampler for penalties sampler (#25262)</span>"]
    C_96278e3 --> C_563dec8
    C_563dec8["<a href='https://github.com/ggml-org/llama.cpp/pull/26474'>#26474</a><br/><span style='font-size:smaller;color:gray'>llama : allocate indexer cache only in 'full' indexer layers (#26474)</span>"]
    C_563dec8 --> C_67d5978
    C_67d5978["<a href='https://github.com/ggml-org/llama.cpp/pull/26338'>#26338</a><br/><span style='font-size:smaller;color:gray'>model: M3: Move MSA into a new memory implementation (#26338)</span>"]
    C_67d5978 --> C_c50b34a
    C_c50b34a["<a href='https://github.com/ggml-org/llama.cpp/pull/26519'>#26519</a><br/><span style='font-size:smaller;color:gray'>graph : fix unused input tensors in minimax m3 graph (#26519)</span>"]
    C_c50b34a --> C_39eab74
    C_39eab74["<a href='https://github.com/ggml-org/llama.cpp/pull/26427'>#26427</a><br/><span style='font-size:smaller;color:gray'>opencl: route large q6_K lm_head to the flat GEMV (#26427)</span>"]
    C_39eab74 --> C_dbadb68
    C_dbadb68["<a href='https://github.com/ggml-org/llama.cpp/pull/22789'>#22789</a><br/><span style='font-size:smaller;color:gray'>ggml: use dynamic allocation for split graph inputs (#22789)</span>"]
    C_dbadb68 --> C_e8e06f7
    C_e8e06f7["<a href='https://github.com/ggml-org/llama.cpp/pull/26506'>#26506</a><br/><span style='font-size:smaller;color:gray'>vocab : validate default special token ids (#26506)</span>"]
    C_e8e06f7 --> C_99111b1
    C_99111b1["<a href='https://github.com/ggml-org/llama.cpp/pull/26522'>#26522</a><br/><span style='font-size:smaller;color:gray'>server: add get_info tool (#26522)</span>"]
    C_99111b1 --> C_ee0445c
    C_ee0445c["<a href='https://github.com/ggml-org/llama.cpp/pull/26172'>#26172</a><br/><span style='font-size:smaller;color:gray'>tests: add model resolution test on synthetic repo listings (#26172)</span>"]
    C_ee0445c --> C_57c0921
    C_57c0921["<a href='https://github.com/ggml-org/llama.cpp/pull/24868'>#24868</a><br/><span style='font-size:smaller;color:gray'>model : support MTP in GLM-4.7-Flash (#24868)</span>"]
    C_57c0921 --> C_fe2adf0
    C_fe2adf0["<a href='https://github.com/ggml-org/llama.cpp/pull/26523'>#26523</a><br/><span style='font-size:smaller;color:gray'>vendor : update BoringSSL to 0.20260803.0 (#26523)</span>"]
    C_fe2adf0 --> C_94bc47f
    C_94bc47f["<a href='https://github.com/ggml-org/llama.cpp/pull/26485'>#26485</a><br/><span style='font-size:smaller;color:gray'>vendor : update cpp-httplib to 0.52.0 (#26485)</span>"]
    C_94bc47f --> C_0ef6e55
    C_0ef6e55["<a href='https://github.com/ggml-org/llama.cpp/pull/26398'>#26398</a><br/><span style='font-size:smaller;color:gray'>chat : add new template for DeepSeek V4 Flash 0731 (#26398)</span>"]
    C_0ef6e55 --> C_66fa168
    C_66fa168["<a href='https://github.com/ggml-org/llama.cpp/pull/25874'>#25874</a><br/><span style='font-size:smaller;color:gray'>Extended SYCL oneDNN SDPA to non-FP16 KV caches (Q4_0–Q8_0 and FP32) (#25874)</span>"]
    C_66fa168 --> C_6c8dcaa
    C_6c8dcaa["<a href='https://github.com/ggml-org/llama.cpp/pull/25852'>#25852</a><br/><span style='font-size:smaller;color:gray'>sycl: parallelize the non-contiguous concat kernel (#25852)</span>"]
    C_6c8dcaa --> C_22dc605
    C_22dc605["<a href='https://github.com/ggml-org/llama.cpp/pull/26533'>#26533</a><br/><span style='font-size:smaller;color:gray'>ci: fix vulkan llvmpipe runs (#26533)</span>"]
    C_22dc605 --> C_935cad6
    C_935cad6["<a href='https://github.com/ggml-org/llama.cpp/pull/26520'>#26520</a><br/><span style='font-size:smaller;color:gray'>llama : move n_vocab from llama_sampler_data to penalty_sampler (#26520)</span>"]
    C_935cad6 --> C_1269cb1
    C_1269cb1["<a href='https://github.com/ggml-org/llama.cpp/pull/26531'>#26531</a><br/><span style='font-size:smaller;color:gray'>model : allow reshape of tensors during load (#26531)</span>"]
    C_1269cb1 --> C_b06fbc9
    C_b06fbc9["<a href='https://github.com/ggml-org/llama.cpp/pull/26217'>#26217</a><br/><span style='font-size:smaller;color:gray'>convert : import bytes_to_unicode from convert_slow_tokenizer (#26217)</span>"]
    C_b06fbc9 --> C_cf06ad7
    C_cf06ad7["<a href='https://github.com/ggml-org/llama.cpp/pull/26511'>#26511</a><br/><span style='font-size:smaller;color:gray'>vocab : validate plamo2 byte tokens (#26511)</span>"]
    C_cf06ad7 --> C_f26efa0
    C_f26efa0["<a href='https://github.com/ggml-org/llama.cpp/pull/25601'>#25601</a><br/><span style='font-size:smaller;color:gray'>vulkan backend ops: implemented GATED_LINEAR_ATTN (#25601)</span>"]
    C_f26efa0 --> C_b5746d2
    C_b5746d2["<a href='https://github.com/ggml-org/llama.cpp/pull/25947'>#25947</a><br/><span style='font-size:smaller;color:gray'>convert : add missing return after setting tekken vocab (#25947)</span>"]
    C_b5746d2 --> C_15831f5
    C_15831f5["<a href='https://github.com/ggml-org/llama.cpp/commit/15831f5'>15831f5</a><br/><span style='font-size:smaller;color:gray'>ggml : bump version to 0.18.1 (ggml/1578)</span>"]
    C_15831f5 --> C_2e17f69
    C_2e17f69["<a href='https://github.com/ggml-org/llama.cpp/commit/2e17f69'>2e17f69</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    C_2e17f69 --> C_5788b51
    C_5788b51["<a href='https://github.com/ggml-org/llama.cpp/pull/25401'>#25401</a><br/><span style='font-size:smaller;color:gray'>gguf-py: validate n_dims and guard against uint64 overflow in reader (#25401)</span>"]
    C_5788b51 --> C_7bd8282
    C_7bd8282["<a href='https://github.com/ggml-org/llama.cpp/pull/26510'>#26510</a><br/><span style='font-size:smaller;color:gray'>speculative : refactor enabled configs common_speculative_init (#26510)</span>"]
    C_7bd8282 --> C_6b5224c
    C_6b5224c["<a href='https://github.com/ggml-org/llama.cpp/pull/26375'>#26375</a><br/><span style='font-size:smaller;color:gray'>ci: fix pre-built binaries no longer working on macOS 15 and below (#26375)</span>"]
    C_6b5224c --> C_1c3c967
    C_1c3c967["<a href='https://github.com/ggml-org/llama.cpp/pull/26577'>#26577</a><br/><span style='font-size:smaller;color:gray'>models : fix dflash wo_a reshape on load (#26577)</span>"]
    C_1c3c967 --> C_0713275
    C_0713275["<a href='https://github.com/ggml-org/llama.cpp/pull/26254'>#26254</a><br/><span style='font-size:smaller;color:gray'>mtmd: support Qwen3-TTS (note: breaking change to llama-tts binary) (#26254)</span>"]
    C_0713275 --> C_2f56fc3
    C_2f56fc3["<a href='https://github.com/ggml-org/llama.cpp/pull/26518'>#26518</a><br/><span style='font-size:smaller;color:gray'>ui: CWD for agent (#26518)</span>"]
    C_2f56fc3 --> C_76c956c
    C_76c956c["<a href='https://github.com/ggml-org/llama.cpp/pull/26538'>#26538</a><br/><span style='font-size:smaller;color:gray'>gguf-split: Add option to delete split parts during merge (#26538)</span>"]
    C_76c956c --> C_a6aa6f5
    C_a6aa6f5["<a href='https://github.com/ggml-org/llama.cpp/pull/26524'>#26524</a><br/><span style='font-size:smaller;color:gray'>sampler : remove 'full-context windows' from history-based samplers (#26524)</span>"]
    C_a6aa6f5 --> C_474c92e
    C_474c92e["<a href='https://github.com/ggml-org/llama.cpp/pull/26536'>#26536</a><br/><span style='font-size:smaller;color:gray'>mtmd: correcting duplicate empty audio chunks for short inputs (#26536)</span>"]
    C_474c92e --> C_4308a4f
    C_4308a4f["<a href='https://github.com/ggml-org/llama.cpp/pull/26597'>#26597</a><br/><span style='font-size:smaller;color:gray'>server: decode Windows OEM output to UTF-8 in built-in tools (#26597)</span>"]
    C_4308a4f --> C_6ea215d
    C_6ea215d["<a href='https://github.com/ggml-org/llama.cpp/pull/26601'>#26601</a><br/><span style='font-size:smaller;color:gray'>Prefer npm ci over install for security (#26601)</span>"]
    C_6ea215d --> C_e031d95
    C_e031d95["<a href='https://github.com/ggml-org/llama.cpp/pull/26607'>#26607</a><br/><span style='font-size:smaller;color:gray'>ui: Update vulnerable packages + cleanup Storybook config (#26607)</span>"]
    C_e031d95 --> C_d52ec04
    C_d52ec04["<a href='https://github.com/ggml-org/llama.cpp/pull/26604'>#26604</a><br/><span style='font-size:smaller;color:gray'>build : remove GGML_METAL_USE_BF16 from all build scripts (#26604)</span>"]
    C_d52ec04 --> C_3e3a7a4
    C_3e3a7a4["<a href='https://github.com/ggml-org/llama.cpp/pull/26624'>#26624</a><br/><span style='font-size:smaller;color:gray'>ui: show generation statistics by default in chat settings (#26624)</span>"]
    C_3e3a7a4 --> C_61881b1
    C_61881b1["<a href='https://github.com/ggml-org/llama.cpp/pull/26606'>#26606</a><br/><span style='font-size:smaller;color:gray'>vendor : apply patches for subprocess.h (#26606)</span>"]
    C_61881b1 --> C_020760a
    C_020760a["<a href='https://github.com/ggml-org/llama.cpp/pull/26618'>#26618</a><br/><span style='font-size:smaller;color:gray'>convert: Add endianness conversion for Q1 and TQ2 quantizations (#26618)</span>"]
    C_020760a --> C_a035a88
    C_a035a88["<a href='https://github.com/ggml-org/llama.cpp/pull/26389'>#26389</a><br/><span style='font-size:smaller;color:gray'>server: Adding spec-decode counters to /metrics endpoint (#26389)</span>"]
    C_a035a88 --> C_9303cdd
    C_9303cdd["<a href='https://github.com/ggml-org/llama.cpp/pull/26579'>#26579</a><br/><span style='font-size:smaller;color:gray'>security : clarify about AI-generated reports (#26579)</span>"]
    C_9303cdd --> C_9a688e5
    C_9a688e5["<a href='https://github.com/ggml-org/llama.cpp/pull/26605'>#26605</a><br/><span style='font-size:smaller;color:gray'>fit: Fix memory allocation for MTP layers (#26605)</span>"]
    C_9a688e5 --> C_717dad5
    C_717dad5["<a href='https://github.com/ggml-org/llama.cpp/pull/26154'>#26154</a><br/><span style='font-size:smaller;color:gray'>mtmd: support multi-row batching for deepseek-ocr (#26154)</span>"]
    C_717dad5 --> C_cd0fa60
    C_cd0fa60["<a href='https://github.com/ggml-org/llama.cpp/pull/26613'>#26613</a><br/><span style='font-size:smaller;color:gray'>grammar : degrade max repetition >= 2000 to unbounded (#26613)</span>"]
    C_cd0fa60 --> C_b06aa77
    C_b06aa77["<a href='https://github.com/ggml-org/llama.cpp/pull/25614'>#25614</a><br/><span style='font-size:smaller;color:gray'>mtmd: Unlimited-OCR fix max_tiles, setting in converter (#25614)</span>"]
    C_b06aa77 --> C_360e134
    C_360e134["<a href='https://github.com/ggml-org/llama.cpp/pull/26633'>#26633</a><br/><span style='font-size:smaller;color:gray'>tests: re-enable MiniMax M3 in `test-llama-archs` (#26633)</span>"]
    C_360e134 --> C_f9e832c
    C_f9e832c["<a href='https://github.com/ggml-org/llama.cpp/pull/26626'>#26626</a><br/><span style='font-size:smaller;color:gray'>server: harden the file_glob_search directory walk (#26626)</span>"]
    C_f9e832c --> C_c8e03ce
    C_c8e03ce["<a href='https://github.com/ggml-org/llama.cpp/pull/26649'>#26649</a><br/><span style='font-size:smaller;color:gray'>mtmd/ggml: add ggml_build_forward_order (#26649)</span>"]
    C_c8e03ce --> C_803b7fc
    C_803b7fc["<a href='https://github.com/ggml-org/llama.cpp/pull/26371'>#26371</a><br/><span style='font-size:smaller;color:gray'>vulkan: fix submission batching size, add debug tools for diagnosing causes of DeviceLost drivers errors (#26371)</span>"]
    C_803b7fc --> C_9de0fcf
    C_9de0fcf["<a href='https://github.com/ggml-org/llama.cpp/pull/26665'>#26665</a><br/><span style='font-size:smaller;color:gray'>model-conversion : add --model-name to conversion scripts (#26665)</span>"]
    C_9de0fcf --> C_a1f96d4
    C_a1f96d4["<a href='https://github.com/ggml-org/llama.cpp/pull/26544'>#26544</a><br/><span style='font-size:smaller;color:gray'>ci : onboard AMD ROCm CI with gfx1151 fixes (#26544)</span>"]
    C_a1f96d4 --> C_e700bfb
    C_e700bfb["<a href='https://github.com/ggml-org/llama.cpp/pull/26660'>#26660</a><br/><span style='font-size:smaller;color:gray'>convert : accept 'ExaoneMoeForCausalLM' arch spelling (#26660)</span>"]
    C_e700bfb --> C_3db4ff8
    C_3db4ff8["<a href='https://github.com/ggml-org/llama.cpp/pull/26672'>#26672</a><br/><span style='font-size:smaller;color:gray'>model-loader : fix quantized reshaped tensor strides (#26672)</span>"]
    C_3db4ff8 --> C_eb5667a
    C_eb5667a["<a href='https://github.com/ggml-org/llama.cpp/pull/26673'>#26673</a><br/><span style='font-size:smaller;color:gray'>convert : fix DeepseekV4 rope parameters with transformers 5.x (#26673)</span>"]
    C_eb5667a --> C_6a32c29
    C_6a32c29["<a href='https://github.com/ggml-org/llama.cpp/pull/26656'>#26656</a><br/><span style='font-size:smaller;color:gray'>server: fix empty response for /cors-proxy (#26656)</span>"]
    C_6a32c29 --> C_15586e2
    C_15586e2["<a href='https://github.com/ggml-org/llama.cpp/pull/26645'>#26645</a><br/><span style='font-size:smaller;color:gray'>mtmd: add chunk save/load function (#26645)</span>"]
    C_15586e2 --> C_e40bf88
    C_e40bf88["<a href='https://github.com/ggml-org/llama.cpp/pull/26646'>#26646</a><br/><span style='font-size:smaller;color:gray'>metal : avoid `threadgroup` matrix array instantiation in kernel_lightning_indexer (#26646)</span>"]
    C_e40bf88 --> C_d8d9887
    C_d8d9887["<a href='https://github.com/ggml-org/llama.cpp/pull/26368'>#26368</a><br/><span style='font-size:smaller;color:gray'>ci: abort if build requirements are missing (#26368)</span>"]
    C_d8d9887 --> C_5b87ed3
    C_5b87ed3["<a href='https://github.com/ggml-org/llama.cpp/pull/26688'>#26688</a><br/><span style='font-size:smaller;color:gray'>cuda: fix warnings for unused variable/function (#26688)</span>"]
    C_5b87ed3 --> C_c074cb3
    C_c074cb3["<a href='https://github.com/ggml-org/llama.cpp/pull/26515'>#26515</a><br/><span style='font-size:smaller;color:gray'>sycl : enhance OP set_rows to support all missed data types (#26515)</span>"]
    C_c074cb3 --> C_eef5f3e
    C_eef5f3e["<a href='https://github.com/ggml-org/llama.cpp/pull/26441'>#26441</a><br/><span style='font-size:smaller;color:gray'>sycl : fix error Error OP FLASH_ATTN_EXT on arc770 (#26441)</span>"]
    C_eef5f3e --> C_c1f4109
    C_c1f4109["<a href='https://github.com/ggml-org/llama.cpp/pull/26442'>#26442</a><br/><span style='font-size:smaller;color:gray'>sycl : update guide Q&A and script for device setting (#26442)</span>"]
    C_c1f4109 --> C_31558db
    C_31558db["<a href='https://github.com/ggml-org/llama.cpp/pull/26568'>#26568</a><br/><span style='font-size:smaller;color:gray'>sycl : Support DSv4 OPs: LIGHTNING_INDEXER,DSV4_HC_COMB,DSV4_HC_POST,DSV4_HC_PRE (#26568)</span>"]
    C_31558db --> C_6b5c2ef
    C_6b5c2ef["<a href='https://github.com/ggml-org/llama.cpp/pull/26354'>#26354</a><br/><span style='font-size:smaller;color:gray'>sycl: *glu flat path (#26354)</span>"]
    C_6b5c2ef --> C_fc3f10b
    C_fc3f10b["<a href='https://github.com/ggml-org/llama.cpp/pull/25608'>#25608</a><br/><span style='font-size:smaller;color:gray'>sycl: fix UE4M3 parsing (#25608)</span>"]
    C_fc3f10b --> C_42e9881
    C_42e9881["<a href='https://github.com/ggml-org/llama.cpp/pull/26555'>#26555</a><br/><span style='font-size:smaller;color:gray'>Mitigate crashing issue on Windows MSYS2 UCRT64 environment (GCC 16.1.0) (#26555)</span>"]
    C_42e9881 --> C_82bb485
    C_82bb485["<a href='https://github.com/ggml-org/llama.cpp/pull/26709'>#26709</a><br/><span style='font-size:smaller;color:gray'>ui: read model modalities from the router model list (#26709)</span>"]
    C_82bb485 --> C_cb26014
    C_cb26014["<a href='https://github.com/ggml-org/llama.cpp/pull/25554'>#25554</a><br/><span style='font-size:smaller;color:gray'>ggml : add aarch64 HWCAP fallbacks and fix fp16 variant detection (#25554)</span>"]
    C_cb26014 --> C_217df17
    C_217df17["<a href='https://github.com/ggml-org/llama.cpp/pull/26706'>#26706</a><br/><span style='font-size:smaller;color:gray'>mtmd: stop feeding the text stream again during Qwen3-TTS generation (#26706)</span>"]
    C_217df17 --> C_e1470ee
    C_e1470ee["<a href='https://github.com/ggml-org/llama.cpp/pull/26567'>#26567</a><br/><span style='font-size:smaller;color:gray'>server: (router) do not evict busy models (#26567)</span>"]
    C_e1470ee --> C_dff15d4
    C_dff15d4["<a href='https://github.com/ggml-org/llama.cpp/pull/26572'>#26572</a><br/><span style='font-size:smaller;color:gray'>server: (router) add LRU scheduler (#26572)</span>"]
    C_dff15d4 --> C_34e9ee5
    C_34e9ee5["<a href='https://github.com/ggml-org/llama.cpp/pull/26711'>#26711</a><br/><span style='font-size:smaller;color:gray'>ui: set npm `min-release-age` to protect against supply-chain attacks (#26711)</span>"]
    C_34e9ee5 --> C_f4f7758
    C_f4f7758["<a href='https://github.com/ggml-org/llama.cpp/pull/26707'>#26707</a><br/><span style='font-size:smaller;color:gray'>webui: load the model selected via ?model= when ?load=true (#26707)</span>"]
    C_f4f7758 --> C_9ba73fd
    C_9ba73fd["<a href='https://github.com/ggml-org/llama.cpp/pull/26720'>#26720</a><br/><span style='font-size:smaller;color:gray'>server : clarify comment in eval_llama_cmpl_schema [no ci] [no release] (#26720)</span>"]
    C_9ba73fd --> C_933f46f
    C_933f46f["<a href='https://github.com/ggml-org/llama.cpp/commit/933f46f'>933f46f</a><br/><span style='font-size:smaller;color:gray'>ggml : bump version to 0.19.0 (ggml/1581)</span>"]
    C_933f46f --> C_4cf5cab
    C_4cf5cab["<a href='https://github.com/ggml-org/llama.cpp/commit/4cf5cab'>4cf5cab</a><br/><span style='font-size:smaller;color:gray'>sync : ggml</span>"]
    C_4cf5cab --> C_4cb22cd
    C_4cb22cd["<a href='https://github.com/ggml-org/llama.cpp/pull/26638'>#26638</a><br/><span style='font-size:smaller;color:gray'>mtmd: fix longest_edge ignoring min/max pixels (#26638)</span>"]
    C_4cb22cd --> C_2363478
    C_2363478["<a href='https://github.com/ggml-org/llama.cpp/pull/26715'>#26715</a><br/><span style='font-size:smaller;color:gray'>ui: Filesystem `@mentions` for Chat Form (#26715)</span>"]
    C_2363478 --> C_a194a75
    C_a194a75["<a href='https://github.com/ggml-org/llama.cpp/pull/26708'>#26708</a><br/><span style='font-size:smaller;color:gray'>metal : fix NORM/RMS_NORM for row lengths that leave a partial simdgroup (#26708)</span>"]
    C_a194a75 --> C_f8e3026
    C_f8e3026["<a href='https://github.com/ggml-org/llama.cpp/pull/26612'>#26612</a><br/><span style='font-size:smaller;color:gray'>sycl: coalesce the ssm_conv window loads (#26612)</span>"]
    C_f8e3026 --> C_6de1b63
    C_6de1b63["<a href='https://github.com/ggml-org/llama.cpp/pull/26716'>#26716</a><br/><span style='font-size:smaller;color:gray'>allozaur/feat/chat slash commands (#26716)</span>"]
    C_6de1b63 --> C_1621a3d
    C_1621a3d["<a href='https://github.com/ggml-org/llama.cpp/pull/26734'>#26734</a><br/><span style='font-size:smaller;color:gray'>tests : speed-up server test suite 3x (#26734)</span>"]
    C_1621a3d --> C_fc6545d
    C_fc6545d["<a href='https://github.com/ggml-org/llama.cpp/pull/26717'>#26717</a><br/><span style='font-size:smaller;color:gray'>allozaur/feat/chat form contenteditable (#26717)</span>"]
    C_fc6545d --> C_3653e6d
    C_3653e6d["<a href='https://github.com/ggml-org/llama.cpp/pull/26733'>#26733</a><br/><span style='font-size:smaller;color:gray'>tts: account for the vocoder pass in the timings line (#26733)</span>"]
    C_3653e6d --> C_69bf643
    C_69bf643["<a href='https://github.com/ggml-org/llama.cpp/pull/26731'>#26731</a><br/><span style='font-size:smaller;color:gray'>CUDA: fix thread/block count in quantized cpy kernel launches (#26731)</span>"]
    C_69bf643 --> C_dd2c7c4
    C_dd2c7c4["<a href='https://github.com/ggml-org/llama.cpp/pull/26507'>#26507</a><br/><span style='font-size:smaller;color:gray'>server: add initial tool isolation support (via docker) (#26507)</span>"]
    C_dd2c7c4 --> C_18f7ad7
    C_18f7ad7["<a href='https://github.com/ggml-org/llama.cpp/pull/26762'>#26762</a><br/><span style='font-size:smaller;color:gray'>server, ui: only offer a working directory when a tool reads it (#26762)</span>"]
    C_18f7ad7 --> C_687e778
    C_687e778["<a href='https://github.com/ggml-org/llama.cpp/pull/26767'>#26767</a><br/><span style='font-size:smaller;color:gray'>CUDA: fuse rms_norm + mul + rope (+ view + set_rows) (#26767)</span>"]
    C_687e778 --> C_7ba604f
    C_7ba604f["<a href='https://github.com/ggml-org/llama.cpp/pull/26773'>#26773</a><br/><span style='font-size:smaller;color:gray'>server: report the isolate working directory from get_info (#26773)</span>"]
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
    C_7185fef --> C_96ece71
    C_96ece71["<a href='https://github.com/ggml-org/llama.cpp/pull/25750'>#25750</a><br/><span style='font-size:smaller;color:gray'>metal : per-device tuned (Q, NE) for flash-attn vec (#25750)</span>"]
```
