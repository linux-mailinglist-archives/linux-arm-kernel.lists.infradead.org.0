Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963E314AE08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:15:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:From:
	MIME-Version:Message-Id:Date:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZ4lliQVmO2mSkwXwTWfHot9kshSh52EjxEFcsXF3CE=; b=SFnj/x9Jb7+TqE
	3QGXu8dwilJQ+yb/CXrr0+Zp9KacW+5mVkiXaIMB7p/dfzmPznLHXkCjnfYIRYjlr96+gGZirQzyk
	KfPOJPBDyCN8bseM5hALAlhVdhQ+x99DMxneobgT1eFhJQUYMRQYD8tSwP2A3Hk98Q/d1Kz+o/Iyc
	U05foinwMbh/mlswFoMJ7/xXERkvmaAxMghMNC/1g5c/Y8NRz4SBQzSbzZT2ZTILcMKstN31XUh8y
	jBKp2gUfKL2fBKrkOJZT5UN9IjPsazBxx099U4mhEKQpOJCOKnnelii0E5dvjiC0EHSOxetWrrbp6
	osl3wp5tSvt1mp0uV8Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGPn-0001Sh-6U; Tue, 28 Jan 2020 02:15:43 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGP0-0008Fz-Vc
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:14:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id s64so6135801pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to:in-reply-to:references;
 bh=vlorJcvaP10UZfjLamGOOlyDMylrB7iiHsA2qcGcn2c=;
 b=wIVx5InN6/DzJVEigJkJbaohW40EGIe8KYnsmlI6ruUV1jfOEXmaV23mBGuxsbBdZZ
 7N5HJz6fhvoeGjRPqyHw4cQLMNsZap4dno9K9rOg88GKKO0wPpVtVk369vKFayuZU5Z3
 5Flw1wwHLh9O9DQZQTciGdHwm1qbkIb8HtClNU6B1kMPffvLLLeTYvsIc7IFOTJGrRP3
 SyzkIZz34nOkSB9/5HyV2JYgvxR9XE7nVDO+BkBUI5F0ICsuFrJAuKdJFfEYUNMGpkZ9
 eQDk7IhpuBKghrnxUYESqFen0lnva69a+zckjFBNE2KlKqDRnZmXl4U5GhQiIVPVOm2I
 L8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to:in-reply-to:references;
 bh=vlorJcvaP10UZfjLamGOOlyDMylrB7iiHsA2qcGcn2c=;
 b=efhEOJSKksUXdQrCdGjaQxWZlobkg+PA9Fa34tQpwxQazNIc+ZlBThClwl1PjGRIpC
 bHyINvkNBM4CqNK/19rGVaAkHNqiIv1jFHL/LphH+de6hsgHzRFMPUbsWR8QNP0r5KiS
 TC9API+K1yWf64nSt6kvTUjD3vO6/eBiGtUU+u7tmoCfPxzfCTg1Dya0vtCVyZbAqvuU
 kgoOeTQpXwuVBT9lcgJZGWnQcnNuotNfQSVEqg4UanjJ1te+r27MnG8ix4qkwT2YwsDh
 HxSPuU21zfCPppkCiANhfpTtsLUugI0TOLk8YFICbJt7Xx8+kBW17mrpCS4G3EeWmrbU
 FtHA==
X-Gm-Message-State: APjAAAUAte0EWk2Vusf1T/0EHzsxHzs5TINVstIMH3YVUZXd/uUhR/ZV
 q+fMIhhvh44t0UZhbwcHaTvmxA==
X-Google-Smtp-Source: APXvYqwztG3P3KPhEdDXDM7eU2re4Pli6ZoCVOT/l3ew9l8F5p7fV2G51hn2C7+OmMraT7KvzDqk4w==
X-Received: by 2002:a62:52d0:: with SMTP id g199mr1553020pfb.241.1580177693903; 
 Mon, 27 Jan 2020 18:14:53 -0800 (PST)
Received: from localhost ([216.9.110.6])
 by smtp.gmail.com with ESMTPSA id b12sm17391719pfi.157.2020.01.27.18.14.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:14:53 -0800 (PST)
Subject: [PATCH 2/4] arm64: bpf: Convert bpf2a64 to a function
Date: Mon, 27 Jan 2020 18:11:43 -0800
Message-Id: <20200128021145.36774-3-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181455_056800_D3D7D1DF 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: songliubraving@fb.com, andriin@fb.com, daniel@iogearbox.net,
 kernel-team@android.com, zlim.lnx@gmail.com, shuah@kernel.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, ast@kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 catalin.marinas@arm.com, yhs@fb.com, bpf@vger.kernel.org, will@kernel.org,
 kafai@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is intended to change no functionality, it just allows me to more
cleanly add dynamic register mapping later.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 53 +++++++++++++++++++----------------
 1 file changed, 29 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index cdc79de0c794..8eee68705056 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -25,7 +25,7 @@
 #define TMP_REG_3 (MAX_BPF_JIT_REG + 3)
 
 /* Map BPF registers to A64 registers */
-static const int bpf2a64[] = {
+static const int bpf2a64_default[] = {
 	/* return value from in-kernel function, and exit value from eBPF */
 	[BPF_REG_0] = A64_R(7),
 	/* arguments from eBPF program to in-kernel function */
@@ -60,6 +60,11 @@ struct jit_ctx {
 	u32 stack_size;
 };
 
+static inline int bpf2a64(struct jit_ctx *ctx, int bpf_reg)
+{
+	return bpf2a64_default[bpf_reg];
+}
+
 static inline void emit(const u32 insn, struct jit_ctx *ctx)
 {
 	if (ctx->image != NULL)
@@ -176,12 +181,12 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
 static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
 {
 	const struct bpf_prog *prog = ctx->prog;
-	const u8 r6 = bpf2a64[BPF_REG_6];
-	const u8 r7 = bpf2a64[BPF_REG_7];
-	const u8 r8 = bpf2a64[BPF_REG_8];
-	const u8 r9 = bpf2a64[BPF_REG_9];
-	const u8 fp = bpf2a64[BPF_REG_FP];
-	const u8 tcc = bpf2a64[TCALL_CNT];
+	const u8 r6 = bpf2a64(ctx, BPF_REG_6);
+	const u8 r7 = bpf2a64(ctx, BPF_REG_7);
+	const u8 r8 = bpf2a64(ctx, BPF_REG_8);
+	const u8 r9 = bpf2a64(ctx, BPF_REG_9);
+	const u8 fp = bpf2a64(ctx, BPF_REG_FP);
+	const u8 tcc = bpf2a64(ctx, TCALL_CNT);
 	const int idx0 = ctx->idx;
 	int cur_offset;
 
@@ -243,12 +248,12 @@ static int out_offset = -1; /* initialized on the first pass of build_body() */
 static int emit_bpf_tail_call(struct jit_ctx *ctx)
 {
 	/* bpf_tail_call(void *prog_ctx, struct bpf_array *array, u64 index) */
-	const u8 r2 = bpf2a64[BPF_REG_2];
-	const u8 r3 = bpf2a64[BPF_REG_3];
+	const u8 r2 = bpf2a64(ctx, BPF_REG_2);
+	const u8 r3 = bpf2a64(ctx, BPF_REG_3);
 
-	const u8 tmp = bpf2a64[TMP_REG_1];
-	const u8 prg = bpf2a64[TMP_REG_2];
-	const u8 tcc = bpf2a64[TCALL_CNT];
+	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
+	const u8 prg = bpf2a64(ctx, TMP_REG_2);
+	const u8 tcc = bpf2a64(ctx, TCALL_CNT);
 	const int idx0 = ctx->idx;
 #define cur_offset (ctx->idx - idx0)
 #define jmp_offset (out_offset - (cur_offset))
@@ -307,12 +312,12 @@ static int emit_bpf_tail_call(struct jit_ctx *ctx)
 
 static void build_epilogue(struct jit_ctx *ctx)
 {
-	const u8 r0 = bpf2a64[BPF_REG_0];
-	const u8 r6 = bpf2a64[BPF_REG_6];
-	const u8 r7 = bpf2a64[BPF_REG_7];
-	const u8 r8 = bpf2a64[BPF_REG_8];
-	const u8 r9 = bpf2a64[BPF_REG_9];
-	const u8 fp = bpf2a64[BPF_REG_FP];
+	const u8 r0 = bpf2a64(ctx, BPF_REG_0);
+	const u8 r6 = bpf2a64(ctx, BPF_REG_6);
+	const u8 r7 = bpf2a64(ctx, BPF_REG_7);
+	const u8 r8 = bpf2a64(ctx, BPF_REG_8);
+	const u8 r9 = bpf2a64(ctx, BPF_REG_9);
+	const u8 fp = bpf2a64(ctx, BPF_REG_FP);
 
 	/* We're done with BPF stack */
 	emit(A64_ADD_I(1, A64_SP, A64_SP, ctx->stack_size), ctx);
@@ -343,11 +348,11 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dst = bpf2a64[insn->dst_reg];
-	const u8 src = bpf2a64[insn->src_reg];
-	const u8 tmp = bpf2a64[TMP_REG_1];
-	const u8 tmp2 = bpf2a64[TMP_REG_2];
-	const u8 tmp3 = bpf2a64[TMP_REG_3];
+	const u8 dst = bpf2a64(ctx, insn->dst_reg);
+	const u8 src = bpf2a64(ctx, insn->src_reg);
+	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
+	const u8 tmp2 = bpf2a64(ctx, TMP_REG_2);
+	const u8 tmp3 = bpf2a64(ctx, TMP_REG_3);
 	const s16 off = insn->off;
 	const s32 imm = insn->imm;
 	const int i = insn - ctx->prog->insnsi;
@@ -634,7 +639,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* function call */
 	case BPF_JMP | BPF_CALL:
 	{
-		const u8 r0 = bpf2a64[BPF_REG_0];
+		const u8 r0 = bpf2a64(ctx, BPF_REG_0);
 		bool func_addr_fixed;
 		u64 func_addr;
 		int ret;
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
