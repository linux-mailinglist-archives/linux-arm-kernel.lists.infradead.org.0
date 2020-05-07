Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062D81C7FA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 03:06:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=79alCKKeQ8jzZsoM/jsjGu5AGGUpQRw4Vt3EwsxGWCs=; b=k6POVQYP1zJSISH1vbe3ChlFKx
	IphTWrQGlUKp1a65Fn1w+WLLbGfLmEi0151SDoQ4zFzAUJumh7RVGN+8M459WtIY0lNFwc+8qdfs3
	HkeGG3vaeejxf8pNVTY9hI8ezu74roKHx0wgnDakIadJZOELylJhsXiXxSeVNdcW8+i2nDz4N7PJD
	crzB+eZ3Bi9caE9tm31FwIpd8kwbmqF898z7oEGGbEYHm9S6jURlPvY7DBVlJ7L9As4JldCOlqDSC
	vJ+G+U1pWnDJ5z0r+bEyQ8RV9KGzteI1KXIZaBM4n3S//3hrjrgjJs9k56Q6ing+TivJ1P7avmata
	8gLdw3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUyz-0001Z7-GM; Thu, 07 May 2020 01:05:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUyS-00017O-14
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 01:05:17 +0000
Received: by mail-pl1-x641.google.com with SMTP id b6so1354664plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 18:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tkBqx/wfZEl+tIcjb11yTPyE7+YEVimiwOlUfbRN11I=;
 b=MzUALuxSHI8uGN17akBqWhBWPav29bHPkcPrh9x/umRUluVK6xacxj/WYMuj4bFTeU
 oJ1fRh/BHW0t2Jeon/fnKRHc/cQW2ER4sIw3Y4MGWVZ7ek3t93U/nViHmcIX0u7owbrf
 3jCE0UDtYtJ1nGos034cmOKd/G9S9ntSCYXYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tkBqx/wfZEl+tIcjb11yTPyE7+YEVimiwOlUfbRN11I=;
 b=f/gC0Y4wj5S1hUqFx2F02noy6hNVHBtCcIiGIizPyMcbkvLpxGmeroQeAnuGwW9lzh
 hXapNrJBq//KB1aO2ElQ5D5QDIAXKGo/s5pcxjDe2yl6lPLJY4Nyq2Fu06I1gV4e4UA6
 JCm3z1z22nLjtyJNcPe0ohAvGzgPR1zi+2rcQe0xWg7CL+YDXgJhXgGhOmtFPoPkMvAO
 bmCC4IS2Ao/iB9YHwaWwJClG4H7jaIMSitnC9rbtWHOrwDlbaJv+QBYtn0iMVGcI+ekG
 Top9hLg+T12DUxzQjMxiw9wv34oWQBcFxgHGoO1hNnogdsTGZdk6gMtJ3eBD5p9gneOy
 4Ctg==
X-Gm-Message-State: AGi0PuaHx0/id3Gj3bVx/9Tp8Vez+Fq4At5iRAXUN8t4TkZINld/snbl
 Kc6Nd3uGFP0v3v6/E6kj1H61Ug==
X-Google-Smtp-Source: APiQypIW2OFc7mkJ2PHrB5uAFjiSFWcgygWE+H6N56zj0yYwwbVdI6tvI0GuaDtoalZ3e5F3kIqqzA==
X-Received: by 2002:a17:90a:77c6:: with SMTP id
 e6mr13041525pjs.84.1588813515058; 
 Wed, 06 May 2020 18:05:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-53-94-119.hsd1.wa.comcast.net.
 [73.53.94.119])
 by smtp.gmail.com with ESMTPSA id ev5sm6165250pjb.1.2020.05.06.18.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 18:05:14 -0700 (PDT)
From: Luke Nelson <lukenels@cs.washington.edu>
X-Google-Original-From: Luke Nelson <luke.r.nels@gmail.com>
To: bpf@vger.kernel.org
Subject: [RFC PATCH bpf-next 2/3] bpf, arm64: Optimize AND, OR, XOR,
 JSET BPF_K using arm64 logical immediates
Date: Wed,  6 May 2020 18:05:02 -0700
Message-Id: <20200507010504.26352-3-luke.r.nels@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507010504.26352-1-luke.r.nels@gmail.com>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_180516_123469_DA3A8DFF 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Will Deacon <will@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Marc Zyngier <maz@kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 clang-built-linux@googlegroups.com, Zi Shen Lim <zlim.lnx@gmail.com>,
 Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Luke Nelson <luke.r.nels@gmail.com>,
 Alexios Zavras <alexios.zavras@intel.com>, KP Singh <kpsingh@chromium.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, Martin KaFai Lau <kafai@fb.com>,
 Christoffer Dall <christoffer.dall@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current code for BPF_{AND,OR,XOR,JSET} BPF_K loads the immediate to
a temporary register before use.

This patch changes the code to avoid using a temporary register
when the BPF immediate is encodable using an arm64 logical immediate
instruction. If the encoding fails (due to the immediate not being
encodable), it falls back to using a temporary register.

Example of generated code for BPF_ALU32_IMM(BPF_AND, R0, 0x80000001):

without optimization:

  24: mov  w10, #0x8000ffff
  28: movk w10, #0x1
  2c: and  w7, w7, w10

with optimization:

  24: and  w7, w7, #0x80000001

Since the encoding process is quite complex, the JIT reuses existing
functionality in arch/arm64/kernel/insn.c for encoding logical immediates
rather than duplicate it in the JIT.

Co-developed-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Xi Wang <xi.wang@gmail.com>
Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
---
 arch/arm64/net/bpf_jit.h      | 14 +++++++++++++
 arch/arm64/net/bpf_jit_comp.c | 37 +++++++++++++++++++++++++++--------
 2 files changed, 43 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
index eb73f9f72c46..f36a779949e6 100644
--- a/arch/arm64/net/bpf_jit.h
+++ b/arch/arm64/net/bpf_jit.h
@@ -189,4 +189,18 @@
 /* Rn & Rm; set condition flags */
 #define A64_TST(sf, Rn, Rm) A64_ANDS(sf, A64_ZR, Rn, Rm)
 
+/* Logical (immediate) */
+#define A64_LOGIC_IMM(sf, Rd, Rn, imm, type) ({ \
+	u64 imm64 = (sf) ? (u64)imm : (u64)(u32)imm; \
+	aarch64_insn_gen_logical_immediate(AARCH64_INSN_LOGIC_##type, \
+		A64_VARIANT(sf), Rn, Rd, imm64); \
+})
+/* Rd = Rn OP imm */
+#define A64_AND_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, AND)
+#define A64_ORR_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, ORR)
+#define A64_EOR_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, EOR)
+#define A64_ANDS_I(sf, Rd, Rn, imm) A64_LOGIC_IMM(sf, Rd, Rn, imm, AND_SETFLAGS)
+/* Rn & imm; set condition flags */
+#define A64_TST_I(sf, Rn, imm) A64_ANDS_I(sf, A64_ZR, Rn, imm)
+
 #endif /* _BPF_JIT_H */
diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index cdc79de0c794..083e5d8a5e2c 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -356,6 +356,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	const bool isdw = BPF_SIZE(code) == BPF_DW;
 	u8 jmp_cond, reg;
 	s32 jmp_offset;
+	u32 a64_insn;
 
 #define check_imm(bits, imm) do {				\
 	if ((((imm) > 0) && ((imm) >> (bits))) ||		\
@@ -488,18 +489,33 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_AND(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_AND_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_AND(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_OR | BPF_K:
 	case BPF_ALU64 | BPF_OR | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_ORR_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_XOR | BPF_K:
 	case BPF_ALU64 | BPF_XOR | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		a64_insn = A64_EOR_I(is64, dst, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		}
 		break;
 	case BPF_ALU | BPF_MUL | BPF_K:
 	case BPF_ALU64 | BPF_MUL | BPF_K:
@@ -628,8 +644,13 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
-		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_TST(is64, dst, tmp), ctx);
+		a64_insn = A64_TST_I(is64, dst, imm);
+		if (a64_insn != AARCH64_BREAK_FAULT) {
+			emit(a64_insn, ctx);
+		} else {
+			emit_a64_mov_i(is64, tmp, imm, ctx);
+			emit(A64_TST(is64, dst, tmp), ctx);
+		}
 		goto emit_cond_jmp;
 	/* function call */
 	case BPF_JMP | BPF_CALL:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
