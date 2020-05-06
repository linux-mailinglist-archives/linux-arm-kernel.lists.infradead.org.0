Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9799D1C7AC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 21:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DtTRirrmvgPrd5xVkVe+KDb5bir0CFhXj0ZfcQVwmY=; b=KyCGLZ9sqWF4rt
	kHQojLbCQmdZt+DLkeLoq3fTO7QrzkLaoXz42hRb2hkIbNaPM8Qn5ySlCXdUaZC3h0DHRJFlcSd1R
	EXbyAU2M+cvPl6l9HiGvIbGRWzTcM6yPOO8Ns8MmVzPKmsJXIdxlrAFyJyQ8Ic1booitWhDLkSgDO
	gDqw+6+5yi+0NkaHkJzsBELzN4XsAW99z+G9rcsGBgFTkXJA6b2ovJjD84ys/qwRk0f0XzbGHPm24
	080tCco/JvKsjW0VZIw2RGxroF6RecqWWEQvy7hOiVAjlRcJq8HH+7f8r3pChkA0SLgth4ZiIZeEu
	c6ZyZPUTEup6pYd9MRSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWQ6f-0005Tr-2Y; Wed, 06 May 2020 19:53:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWQ5P-00045e-Cg
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 19:52:08 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33F88207DD;
 Wed,  6 May 2020 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588794725;
 bh=ZyomlCpuKdUoICLzokR0IbvZQjWsbt/STt1gGfVlAGw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UNVpkMKkMacihStPGlQbeLbLyn1pE02CQUBiyOVbI2aMjRNiTrPTy5YJq+V0Uuh5s
 mxIfxDZK/FbTToxk2fgE6CCragrm5cbTCoNVKhqWBttAIRL1Ho3cs0NV/ynwXVQTIz
 z2e1CvtIK1a9OZBormdzOz+0rOVd82FWFq7YDMjE=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 05/11] arm64: bpf: Annotate JITed code for BTI
Date: Wed,  6 May 2020 20:51:32 +0100
Message-Id: <20200506195138.22086-6-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200506195138.22086-1-broonie@kernel.org>
References: <20200506195138.22086-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_125207_508723_EBA95D78 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Mark Brown <broonie@kernel.org>, Amit Kachhap <amit.kachhap@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to extend the protection offered by BTI to all code executing in
kernel mode we need to annotate JITed BPF code appropriately for BTI. To
do this we need to add a landing pad to the start of each BPF function and
also immediately after the function prologue if we are emitting a function
which can be tail called. Jumps within BPF functions are all to immediate
offsets and therefore do not require landing pads.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/net/bpf_jit.h      |  8 ++++++++
 arch/arm64/net/bpf_jit_comp.c | 12 ++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
index eb73f9f72c46..05b477709b5f 100644
--- a/arch/arm64/net/bpf_jit.h
+++ b/arch/arm64/net/bpf_jit.h
@@ -189,4 +189,12 @@
 /* Rn & Rm; set condition flags */
 #define A64_TST(sf, Rn, Rm) A64_ANDS(sf, A64_ZR, Rn, Rm)
 
+/* HINTs */
+#define A64_HINT(x) aarch64_insn_gen_hint(x)
+
+/* BTI */
+#define A64_BTI_C  A64_HINT(AARCH64_INSN_HINT_BTIC)
+#define A64_BTI_J  A64_HINT(AARCH64_INSN_HINT_BTIJ)
+#define A64_BTI_JC A64_HINT(AARCH64_INSN_HINT_BTIJC)
+
 #endif /* _BPF_JIT_H */
diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
index cdc79de0c794..83fa475c6b42 100644
--- a/arch/arm64/net/bpf_jit_comp.c
+++ b/arch/arm64/net/bpf_jit_comp.c
@@ -171,7 +171,11 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
 #define STACK_ALIGN(sz) (((sz) + 15) & ~15)
 
 /* Tail call offset to jump into */
+#if IS_ENABLED(CONFIG_ARM64_BTI_KERNEL)
+#define PROLOGUE_OFFSET 8
+#else
 #define PROLOGUE_OFFSET 7
+#endif
 
 static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
 {
@@ -208,6 +212,10 @@ static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
 	 *
 	 */
 
+	/* BTI landing pad */
+	if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL))
+		emit(A64_BTI_C, ctx);
+
 	/* Save FP and LR registers to stay align with ARM64 AAPCS */
 	emit(A64_PUSH(A64_FP, A64_LR, A64_SP), ctx);
 	emit(A64_MOV(1, A64_FP, A64_SP), ctx);
@@ -230,6 +238,10 @@ static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
 				    cur_offset, PROLOGUE_OFFSET);
 			return -1;
 		}
+
+		/* BTI landing pad for the tail call, done with a BR */
+		if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL))
+			emit(A64_BTI_J, ctx);
 	}
 
 	ctx->stack_size = STACK_ALIGN(prog->aux->stack_depth);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
