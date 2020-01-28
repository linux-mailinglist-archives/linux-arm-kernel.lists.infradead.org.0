Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9BC14AE0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:From:
	MIME-Version:Message-Id:Date:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3tiqilvoLBWSPWs5zw2IjYCo9NrUfQvFrEBpkcGQ7c=; b=fk01YcC5lmwgfR
	Gak3usg+zth3ukmw9bUnkXpxLFgd9FvDvpClU49OoRSdF+aJnnsG9ecCvRhoRcWo197pmT7gJAFGl
	6mXui+j/c5wUO0FSysR08Ev6XxYLOTKeXfzzTc/IgCRb2Z+Gu+DJ761s5ojUHFfVWA2/jLLAihDwO
	2AsAOY/jRzHHsVw5+SDgW7gH9Hr6VpTqiPPwCrWQca4BOztdXp0vebE+RQF20HwoGGTmxCeEFlnIx
	sRb8oucFBFDQv5t6zkSfhyYDJrR+xpsgb47aOXyiI68BGy+dgxNaCFs4S6Dm/pLrf+Uu04UsZVHcA
	zcTV7muOCoBq9MRGAqcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGQ8-0001m0-W1; Tue, 28 Jan 2020 02:16:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGP7-0008Lk-6E
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:15:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id 2so5809406pfg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:15:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to:in-reply-to:references;
 bh=jKrDfwDIxQNTXTrn+zwyb0TImugf3AGUmYGjhKrNRfc=;
 b=u2lemWY+5dfIGEONMq7ElLsRYfcjPfM+zVFSnbwB2QUxDirC5Ap3qf9dj8uY7gGPbZ
 yQVfbIClno3WHSVLbboD/umGxT1Ondur2zKycypuNc+lrqUPBsPQMWIpTjgeysbFRtlQ
 aSeIMQCFc40GVw3J0rKBtHGMzTlyettIs1Wemi/9I5zpqjaMvhYMIhRycrye8tndglh5
 O/b8yN9w4dCj+vHx7TY9dGzq5qZAcOvKsILaVWe9KhRk6UHTzxR1XzcWZrLl888sYPgc
 qcbNy9Ynlefqre+vOJfZ44swu4fU2PSPraRNDMXkxJpUjS4Bqg12fMB7xKL38m9bNTut
 WqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to:in-reply-to:references;
 bh=jKrDfwDIxQNTXTrn+zwyb0TImugf3AGUmYGjhKrNRfc=;
 b=fGPvEkv8yuD0AbkoAQO7S/C4e6c3dsmt0ZqTpXYFjrV4gRKuBuX4U6uqzKtdYPmXZ8
 Smu9tODZjrSuc4n01wj1hixt+/c343g7MfWCNw+CuZqi5vq9TfcunhQQTNyMhbLxujao
 ri0xW3z5Rf9zqkZI8Fgohj0AKRJ63vBmcJSNx/I7bYZNfe+zyPGTci+GhgGCOOtQUyOY
 h4lKsa6zhR71P6xYpNZGtUVysEedk4y2sZ9KbioWZ44PlfxsihmfBCjHPnLpNT3/MNQa
 JeLdjtf3SSdbJqdjK2KeSFGmu9lYQXfJ+2FibbgMh2x0WjG/XxSrsBwRtfdNVrT2ow4F
 4NvA==
X-Gm-Message-State: APjAAAV6AXdMaiLTw+GteWDw6zsw8O4wpW3ksk4bcupPMUvcByV2sUCs
 pSpVlLfd9NKoxFtrUn2okVxZJQ==
X-Google-Smtp-Source: APXvYqyi/cnBTa1Klz/nM2JzLVC6bUlEiBW6MlgldDlvQ56qM/OW7gQzYxWPZZDg1UQWEFYCSCX5rw==
X-Received: by 2002:a63:6d8d:: with SMTP id i135mr22565833pgc.90.1580177699348; 
 Mon, 27 Jan 2020 18:14:59 -0800 (PST)
Received: from localhost ([216.9.110.7])
 by smtp.gmail.com with ESMTPSA id k1sm10222394pfg.66.2020.01.27.18.14.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:14:58 -0800 (PST)
Subject: [PATCH 3/4] arm64: bpf: Split the read and write halves of dst
Date: Mon, 27 Jan 2020 18:11:44 -0800
Message-Id: <20200128021145.36774-4-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181501_459432_D6EB7D56 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

This patch is intended to change no functionality, it just allows me to do
register renaming later.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 107 +++++++++++++++++-----------------
 1 file changed, 54 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index 8eee68705056..fba5b1b00cd7 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -348,7 +348,8 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dst = bpf2a64(ctx, insn->dst_reg);
+	const u8 dstw = bpf2a64(ctx, insn->dst_reg);
+	const u8 dstr = bpf2a64(ctx, insn->dst_reg);
 	const u8 src = bpf2a64(ctx, insn->src_reg);
 	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
 	const u8 tmp2 = bpf2a64(ctx, TMP_REG_2);
@@ -377,32 +378,32 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = src */
 	case BPF_ALU | BPF_MOV | BPF_X:
 	case BPF_ALU64 | BPF_MOV | BPF_X:
-		emit(A64_MOV(is64, dst, src), ctx);
+		emit(A64_MOV(is64, dstw, src), ctx);
 		break;
 	/* dst = dst OP src */
 	case BPF_ALU | BPF_ADD | BPF_X:
 	case BPF_ALU64 | BPF_ADD | BPF_X:
-		emit(A64_ADD(is64, dst, dst, src), ctx);
+		emit(A64_ADD(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_X:
 	case BPF_ALU64 | BPF_SUB | BPF_X:
-		emit(A64_SUB(is64, dst, dst, src), ctx);
+		emit(A64_SUB(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_X:
 	case BPF_ALU64 | BPF_AND | BPF_X:
-		emit(A64_AND(is64, dst, dst, src), ctx);
+		emit(A64_AND(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_X:
 	case BPF_ALU64 | BPF_OR | BPF_X:
-		emit(A64_ORR(is64, dst, dst, src), ctx);
+		emit(A64_ORR(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_X:
 	case BPF_ALU64 | BPF_XOR | BPF_X:
-		emit(A64_EOR(is64, dst, dst, src), ctx);
+		emit(A64_EOR(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_X:
 	case BPF_ALU64 | BPF_MUL | BPF_X:
-		emit(A64_MUL(is64, dst, dst, src), ctx);
+		emit(A64_MUL(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_DIV | BPF_X:
 	case BPF_ALU64 | BPF_DIV | BPF_X:
@@ -410,30 +411,30 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_ALU64 | BPF_MOD | BPF_X:
 		switch (BPF_OP(code)) {
 		case BPF_DIV:
-			emit(A64_UDIV(is64, dst, dst, src), ctx);
+			emit(A64_UDIV(is64, dstw, dstr, src), ctx);
 			break;
 		case BPF_MOD:
-			emit(A64_UDIV(is64, tmp, dst, src), ctx);
-			emit(A64_MSUB(is64, dst, dst, tmp, src), ctx);
+			emit(A64_UDIV(is64, tmp, dstr, src), ctx);
+			emit(A64_MSUB(is64, dstw, dstr, tmp, src), ctx);
 			break;
 		}
 		break;
 	case BPF_ALU | BPF_LSH | BPF_X:
 	case BPF_ALU64 | BPF_LSH | BPF_X:
-		emit(A64_LSLV(is64, dst, dst, src), ctx);
+		emit(A64_LSLV(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_X:
 	case BPF_ALU64 | BPF_RSH | BPF_X:
-		emit(A64_LSRV(is64, dst, dst, src), ctx);
+		emit(A64_LSRV(is64, dstw, dstr, src), ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_X:
 	case BPF_ALU64 | BPF_ARSH | BPF_X:
-		emit(A64_ASRV(is64, dst, dst, src), ctx);
+		emit(A64_ASRV(is64, dstw, dstr, src), ctx);
 		break;
 	/* dst = -dst */
 	case BPF_ALU | BPF_NEG:
 	case BPF_ALU64 | BPF_NEG:
-		emit(A64_NEG(is64, dst, dst), ctx);
+		emit(A64_NEG(is64, dstw, dstr), ctx);
 		break;
 	/* dst = BSWAP##imm(dst) */
 	case BPF_ALU | BPF_END | BPF_FROM_LE:
@@ -447,16 +448,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 #endif
 		switch (imm) {
 		case 16:
-			emit(A64_REV16(is64, dst, dst), ctx);
+			emit(A64_REV16(is64, dstw, dstr), ctx);
 			/* zero-extend 16 bits into 64 bits */
-			emit(A64_UXTH(is64, dst, dst), ctx);
+			emit(A64_UXTH(is64, dstw, dstr), ctx);
 			break;
 		case 32:
-			emit(A64_REV32(is64, dst, dst), ctx);
+			emit(A64_REV32(is64, dstw, dstr), ctx);
 			/* upper 32 bits already cleared */
 			break;
 		case 64:
-			emit(A64_REV64(dst, dst), ctx);
+			emit(A64_REV64(dstw, dstr), ctx);
 			break;
 		}
 		break;
@@ -464,11 +465,11 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		switch (imm) {
 		case 16:
 			/* zero-extend 16 bits into 64 bits */
-			emit(A64_UXTH(is64, dst, dst), ctx);
+			emit(A64_UXTH(is64, dstw, dstr), ctx);
 			break;
 		case 32:
 			/* zero-extend 32 bits into 64 bits */
-			emit(A64_UXTW(is64, dst, dst), ctx);
+			emit(A64_UXTW(is64, dstw, dstr), ctx);
 			break;
 		case 64:
 			/* nop */
@@ -478,61 +479,61 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* dst = imm */
 	case BPF_ALU | BPF_MOV | BPF_K:
 	case BPF_ALU64 | BPF_MOV | BPF_K:
-		emit_a64_mov_i(is64, dst, imm, ctx);
+		emit_a64_mov_i(is64, dstw, imm, ctx);
 		break;
 	/* dst = dst OP imm */
 	case BPF_ALU | BPF_ADD | BPF_K:
 	case BPF_ALU64 | BPF_ADD | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ADD(is64, dst, dst, tmp), ctx);
+		emit(A64_ADD(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_SUB | BPF_K:
 	case BPF_ALU64 | BPF_SUB | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_SUB(is64, dst, dst, tmp), ctx);
+		emit(A64_SUB(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_AND | BPF_K:
 	case BPF_ALU64 | BPF_AND | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_AND(is64, dst, dst, tmp), ctx);
+		emit(A64_AND(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_OR | BPF_K:
 	case BPF_ALU64 | BPF_OR | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_ORR(is64, dst, dst, tmp), ctx);
+		emit(A64_ORR(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_XOR | BPF_K:
 	case BPF_ALU64 | BPF_XOR | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_EOR(is64, dst, dst, tmp), ctx);
+		emit(A64_EOR(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_MUL | BPF_K:
 	case BPF_ALU64 | BPF_MUL | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_MUL(is64, dst, dst, tmp), ctx);
+		emit(A64_MUL(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_DIV | BPF_K:
 	case BPF_ALU64 | BPF_DIV | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_UDIV(is64, dst, dst, tmp), ctx);
+		emit(A64_UDIV(is64, dstw, dstr, tmp), ctx);
 		break;
 	case BPF_ALU | BPF_MOD | BPF_K:
 	case BPF_ALU64 | BPF_MOD | BPF_K:
 		emit_a64_mov_i(is64, tmp2, imm, ctx);
-		emit(A64_UDIV(is64, tmp, dst, tmp2), ctx);
-		emit(A64_MSUB(is64, dst, dst, tmp, tmp2), ctx);
+		emit(A64_UDIV(is64, tmp, dstr, tmp2), ctx);
+		emit(A64_MSUB(is64, dstw, dstr, tmp, tmp2), ctx);
 		break;
 	case BPF_ALU | BPF_LSH | BPF_K:
 	case BPF_ALU64 | BPF_LSH | BPF_K:
-		emit(A64_LSL(is64, dst, dst, imm), ctx);
+		emit(A64_LSL(is64, dstw, dstr, imm), ctx);
 		break;
 	case BPF_ALU | BPF_RSH | BPF_K:
 	case BPF_ALU64 | BPF_RSH | BPF_K:
-		emit(A64_LSR(is64, dst, dst, imm), ctx);
+		emit(A64_LSR(is64, dstw, dstr, imm), ctx);
 		break;
 	case BPF_ALU | BPF_ARSH | BPF_K:
 	case BPF_ALU64 | BPF_ARSH | BPF_K:
-		emit(A64_ASR(is64, dst, dst, imm), ctx);
+		emit(A64_ASR(is64, dstw, dstr, imm), ctx);
 		break;
 
 	/* JUMP off */
@@ -562,7 +563,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSLT | BPF_X:
 	case BPF_JMP32 | BPF_JSGE | BPF_X:
 	case BPF_JMP32 | BPF_JSLE | BPF_X:
-		emit(A64_CMP(is64, dst, src), ctx);
+		emit(A64_CMP(is64, dstr, src), ctx);
 emit_cond_jmp:
 		jmp_offset = bpf2a64_offset(i + off, i, ctx);
 		check_imm19(jmp_offset);
@@ -605,7 +606,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		break;
 	case BPF_JMP | BPF_JSET | BPF_X:
 	case BPF_JMP32 | BPF_JSET | BPF_X:
-		emit(A64_TST(is64, dst, src), ctx);
+		emit(A64_TST(is64, dstr, src), ctx);
 		goto emit_cond_jmp;
 	/* IF (dst COND imm) JUMP off */
 	case BPF_JMP | BPF_JEQ | BPF_K:
@@ -629,12 +630,12 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	case BPF_JMP32 | BPF_JSGE | BPF_K:
 	case BPF_JMP32 | BPF_JSLE | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_CMP(is64, dst, tmp), ctx);
+		emit(A64_CMP(is64, dstr, tmp), ctx);
 		goto emit_cond_jmp;
 	case BPF_JMP | BPF_JSET | BPF_K:
 	case BPF_JMP32 | BPF_JSET | BPF_K:
 		emit_a64_mov_i(is64, tmp, imm, ctx);
-		emit(A64_TST(is64, dst, tmp), ctx);
+		emit(A64_TST(is64, dstr, tmp), ctx);
 		goto emit_cond_jmp;
 	/* function call */
 	case BPF_JMP | BPF_CALL:
@@ -676,7 +677,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		u64 imm64;
 
 		imm64 = (u64)insn1.imm << 32 | (u32)imm;
-		emit_a64_mov_i64(dst, imm64, ctx);
+		emit_a64_mov_i64(dstw, imm64, ctx);
 
 		return 1;
 	}
@@ -689,16 +690,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, off, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_LDR32(dst, src, tmp), ctx);
+			emit(A64_LDR32(dstw, src, tmp), ctx);
 			break;
 		case BPF_H:
-			emit(A64_LDRH(dst, src, tmp), ctx);
+			emit(A64_LDRH(dstw, src, tmp), ctx);
 			break;
 		case BPF_B:
-			emit(A64_LDRB(dst, src, tmp), ctx);
+			emit(A64_LDRB(dstw, src, tmp), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_LDR64(dst, src, tmp), ctx);
+			emit(A64_LDR64(dstw, src, tmp), ctx);
 			break;
 		}
 		break;
@@ -713,16 +714,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, imm, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_STR32(tmp, dst, tmp2), ctx);
+			emit(A64_STR32(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_H:
-			emit(A64_STRH(tmp, dst, tmp2), ctx);
+			emit(A64_STRH(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_B:
-			emit(A64_STRB(tmp, dst, tmp2), ctx);
+			emit(A64_STRB(tmp, dstr, tmp2), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_STR64(tmp, dst, tmp2), ctx);
+			emit(A64_STR64(tmp, dstr, tmp2), ctx);
 			break;
 		}
 		break;
@@ -735,16 +736,16 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		emit_a64_mov_i(1, tmp, off, ctx);
 		switch (BPF_SIZE(code)) {
 		case BPF_W:
-			emit(A64_STR32(src, dst, tmp), ctx);
+			emit(A64_STR32(src, dstr, tmp), ctx);
 			break;
 		case BPF_H:
-			emit(A64_STRH(src, dst, tmp), ctx);
+			emit(A64_STRH(src, dstr, tmp), ctx);
 			break;
 		case BPF_B:
-			emit(A64_STRB(src, dst, tmp), ctx);
+			emit(A64_STRB(src, dstr, tmp), ctx);
 			break;
 		case BPF_DW:
-			emit(A64_STR64(src, dst, tmp), ctx);
+			emit(A64_STR64(src, dstr, tmp), ctx);
 			break;
 		}
 		break;
@@ -754,10 +755,10 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* STX XADD: lock *(u64 *)(dst + off) += src */
 	case BPF_STX | BPF_XADD | BPF_DW:
 		if (!off) {
-			reg = dst;
+			reg = dstr;
 		} else {
 			emit_a64_mov_i(1, tmp, off, ctx);
-			emit(A64_ADD(1, tmp, tmp, dst), ctx);
+			emit(A64_ADD(1, tmp, tmp, dstr), ctx);
 			reg = tmp;
 		}
 		if (cpus_have_cap(ARM64_HAS_LSE_ATOMICS)) {
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
