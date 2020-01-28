Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A3314AE0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:From:
	MIME-Version:Message-Id:Date:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5QXX0sCYWdYdF3NLMbXFEwAwfdg/la4uyOyPizPinXg=; b=QaAh+868Q1rZhw
	ue96j9E4P5HTrgSNKbsCAdMRdk+D4EmHLrRsIoytIjdDJBiHKmcuIyxcpIEA3Zycfh3Ob1qICPSPF
	S8GYPAExgXecFt6IE6otzsH6UmZot75J9vz00seAaJCDGB+cSMirNbmzgtSQKcwoOQfqR2A7NHomu
	SS012fYK4MqFBpEvabrC5R2pxrBaxJFD3hthrq3I5vKlR7SUV2pUkIr7P6eee8aG7ATjnzJkuSsrf
	eGr/l6bkCW+ngmtgcbqoHy5/JKlkwK38Al+flZjWZnNDdmQhnsbB/t6HTPMML/FkVX9ajFWLVVc38
	nt9Id+Y8mrNmnTRkls9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGQN-00021S-5E; Tue, 28 Jan 2020 02:16:19 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGPE-0000DJ-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:15:10 +0000
Received: by mail-pj1-x1044.google.com with SMTP id m13so315830pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to:in-reply-to:references;
 bh=LUiKWI3Cf+9+n0Mf0T0uSDtpI14DkFl6R/zPz6oE4kA=;
 b=t6Fkbs2B6XQQ1FJjHeJszTkGjc450EaIRq1KZfmbn8O4NYMZcq6AXMS7pmHbUboObC
 +++s+jeLdsA6RQB08P9Q5Ack/z09JhMpcwAH9ll/D/MNh2PF/l8bN+H59x2KdWIZQaGJ
 V6rLY45e1nmA4dzti6zKLzfbfSQH01wh1Pq+jqMqsvZxpHPcSUIN8yopf38iePTDe4Fn
 PnNN2/5p6w6AcizSaS4T/xDwCmkQr+gZ6sexRbfAK34zFGsth0Z8GT9lZrcVKfKxscsF
 FNGp79tHt13MmqPXpQkiJlgMycGe4X09ATmdUeh59o7i1ed82t9JibgA5r1Fh0RysWRj
 6HTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to:in-reply-to:references;
 bh=LUiKWI3Cf+9+n0Mf0T0uSDtpI14DkFl6R/zPz6oE4kA=;
 b=gtryZgIs8fnYzlaygoloxXlbWjK/h6JCWqQSSTLP4H7fKPxpHG4l384RUeLH29hHJC
 ny+5bg7xSCC1D2a/NwR5rRz7M0NxpoU0gBz4NW5EyIh9B8ahnbVsD5l7C6FqLjUHjf+g
 N2EoKa7o5/fDVqIAz2eY2BToPo0aMrk8vcvL/8USI42+yUrTq2nkamjncj2wqMBfhclV
 DSqbhUxHS+yP07fBK6/4ckIKTsG2hobQPQi0XUa1qXsU/sukYpQHUnL+2xLXneMfgWoM
 nkzThKRONfTM7UgWUnquqynOZ5hHIKD+E/HLZqgGA2sWhCyeX/jpo1CKab8Fqh1s32Wh
 EJKA==
X-Gm-Message-State: APjAAAX/MPTEw14e5S/63i7qCLHgeX4OUi+95lfM8+BFM9LDgJa+rS1r
 LxnHUS4/E9Vuc9BN0eabPku7Ag==
X-Google-Smtp-Source: APXvYqxlXoEawlGrjKe7Dg0dTNaImpBzNfwMgpu5Qd3tYpex5PzlG+tN2FelRoSSzPaUPamCbr5Lgw==
X-Received: by 2002:a17:902:9a09:: with SMTP id
 v9mr19976280plp.341.1580177704696; 
 Mon, 27 Jan 2020 18:15:04 -0800 (PST)
Received: from localhost ([216.9.110.11])
 by smtp.gmail.com with ESMTPSA id o17sm393828pjq.1.2020.01.27.18.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:15:04 -0800 (PST)
Subject: [PATCH 4/4] arm64: bpf: Elide some moves to a0 after calls
Date: Mon, 27 Jan 2020 18:11:45 -0800
Message-Id: <20200128021145.36774-5-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181508_746339_085B5BF3 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On arm64, the BPF function ABI doesn't match the C function ABI.  Specifically,
arm64 encodes calls as `a0 = f(a0, a1, ...)` while BPF encodes calls as
`BPF_REG_0 = f(BPF_REG_1, BPF_REG_2, ...)`.  This discrepancy results in
function calls being encoded as a two operations sequence that first does a C
ABI calls and then moves the return register into the right place.  This
results in one extra instruction for every function call.

This patch adds an optimization to the arm64 BPF JIT backend that aims to avoid
some of these moves.

I've done no benchmarking to determine if this is correct.  I ran the BPF
selftests before and after the change on arm64 in QEMU and found that I had a
single failure both before and after.  I'm not at all confident this code
actually works as it's my first time doing anything with both ARM64 and BPF and
I didn't even open the documentation for either of these.  I was particularly
surprised that the code didn't fail any tests -- I was kind of assuming this
would fail the tests, get put on the backburner, sit long enough for me to stop
caring, and then get deleted.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/arm64/net/bpf_jit_comp.c | 71 +++++++++++++++++++++++++++++++++--
 1 file changed, 68 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index fba5b1b00cd7..48d900cc7258 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -58,10 +58,14 @@ struct jit_ctx {
 	int *offset;
 	__le32 *image;
 	u32 stack_size;
+	int reg0_in_reg1;
 };
 
 static inline int bpf2a64(struct jit_ctx *ctx, int bpf_reg)
 {
+	if (ctx->reg0_in_reg1 && bpf_reg == BPF_REG_0)
+		bpf_reg = BPF_REG_1;
+
 	return bpf2a64_default[bpf_reg];
 }
 
@@ -338,6 +342,47 @@ static void build_epilogue(struct jit_ctx *ctx)
 	emit(A64_RET(A64_LR), ctx);
 }
 
+static int dead_register(const struct jit_ctx *ctx, int offset, int bpf_reg)
+{
+	const struct bpf_prog *prog = ctx->prog;
+	int i;
+
+	for (i = offset; i < prog->len; ++i) {
+		const struct bpf_insn *insn = &prog->insnsi[i];
+		const u8 code = insn->code;
+		const u8 bpf_dst = insn->dst_reg;
+		const u8 bpf_src = insn->src_reg;
+		const int writes_dst = !((code & BPF_ST) || (code & BPF_STX)
+					 || (code & BPF_JMP32) || (code & BPF_JMP));
+		const int reads_dst  = !((code & BPF_LD));
+		const int reads_src  = true;
+
+		/* Calls are a bit special in that they clobber a bunch of regisers. */
+		if ((code & (BPF_JMP | BPF_CALL)) || (code & (BPF_JMP | BPF_TAIL_CALL)))
+			if ((bpf_reg >= BPF_REG_0) && (bpf_reg <= BPF_REG_5))
+				return false;
+
+		/* Registers that are read before they're written are alive.
+		 * Most opcodes are of the form DST = DEST op SRC, but there
+		 * are some exceptions.*/
+		if (bpf_src == bpf_reg && reads_src)
+			return false;
+
+		if (bpf_dst == bpf_reg && reads_dst)
+			return false;
+		
+		if (bpf_dst == bpf_reg && writes_dst)
+			return true;
+
+		/* Most BPF instructions are 8 bits long, but some ar 16 bits
+		 * long. */
+		if (code & (BPF_LD | BPF_IMM | BPF_DW))
+			++i;
+	}
+
+	return true;
+}
+
 /* JITs an eBPF instruction.
  * Returns:
  * 0  - successfully JITed an 8-byte eBPF instruction.
@@ -348,7 +393,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 		      bool extra_pass)
 {
 	const u8 code = insn->code;
-	const u8 dstw = bpf2a64(ctx, insn->dst_reg);
+	u8 dstw;
 	const u8 dstr = bpf2a64(ctx, insn->dst_reg);
 	const u8 src = bpf2a64(ctx, insn->src_reg);
 	const u8 tmp = bpf2a64(ctx, TMP_REG_1);
@@ -374,6 +419,27 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 #define check_imm19(imm) check_imm(19, imm)
 #define check_imm26(imm) check_imm(26, imm)
 
+	/* Handle BPF_REG_0, which may be in the wrong place because the ARM64
+	 * ABI doesn't match the BPF ABI for function calls. */
+	if (ctx->reg0_in_reg1) {
+		/* If we're writing BPF_REG_0 then we don't need to do any
+		 * extra work to get the registers back in their correct
+		 * locations. */
+		if (insn->dst_reg == BPF_REG_0)
+			ctx->reg0_in_reg1 = false;
+
+		/* If we're writing to BPF_REG_1 then we need to save BPF_REG_0
+		 * into the correct location if it's still alive, as otherwise
+		 * it will be clobbered. */
+		if (insn->dst_reg == BPF_REG_1) {
+			if (!dead_register(ctx, off + 1, BPF_REG_0))
+				emit(A64_MOV(1, A64_R(7), A64_R(0)), ctx);
+			ctx->reg0_in_reg1 = false;
+		}
+	}
+
+	dstw = bpf2a64(ctx, insn->dst_reg);
+
 	switch (code) {
 	/* dst = src */
 	case BPF_ALU | BPF_MOV | BPF_X:
@@ -640,7 +706,6 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 	/* function call */
 	case BPF_JMP | BPF_CALL:
 	{
-		const u8 r0 = bpf2a64(ctx, BPF_REG_0);
 		bool func_addr_fixed;
 		u64 func_addr;
 		int ret;
@@ -651,7 +716,7 @@ static int build_insn(const struct bpf_insn *insn, struct jit_ctx *ctx,
 			return ret;
 		emit_addr_mov_i64(tmp, func_addr, ctx);
 		emit(A64_BLR(tmp), ctx);
-		emit(A64_MOV(1, r0, A64_R(0)), ctx);
+		ctx->reg0_in_reg1 = true;
 		break;
 	}
 	/* tail call */
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
