Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E6C1DBC16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 19:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fw5qVV272vxBJE0L31osW31EuQ16SJ0oMeCClP5LWT4=; b=V3+oYevAR7Q9M1
	c8Vq5iig9jloT39RvdqwwbYR1frEee6PKHZFDK9N4roqHBojaiDDOQvhFZNkTzBc2us9xomqbc9CF
	FdIidh1siQSRMFUpyjcwDs7nkEWr1ZWXVwDqWxC25WOLPX/lztENYA+rFJd9Fwj9YX46zWV6eRd7n
	bIoPf2lmRiMReu8xphFuEsWVYcIyo/sBIV+K+i6MNjHYl/zscXQUE8A2Kt5EVRX4hBZuzSF6wT+Zv
	LRT5d/D6s6gE1psLfk1VYileuG/Fu8sSJUh8dl/sORBYT/zPg2CHHgRyEtH7kLPi25Lk2HwYIB1ZJ
	jMH1enpeF9jtXB7Onefw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbSxJ-0003cc-Cr; Wed, 20 May 2020 17:56:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbSwV-0003Bv-ND
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 17:55:49 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB203207D3;
 Wed, 20 May 2020 17:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589997347;
 bh=pE3MkVZY471XRFLCctHScbvRxFLwzWHgK4om4WNmEL4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AHe4SmCvguYRi366RAl6CyvVITaWmcBbOWbCL+gpABg99unQaQgA4g0nwFot5npTG
 Xyhxl2YzFVBqYSGHPncd91NrmfN0SZ3NttKF42wVKOk9tKs4yud3x9+OWqRmwVnRbI
 Qs3Nv8T23s9htbdD0sq6kbb8Sscec3DNxlV07fNo=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] arm64: vdso: Don't prefix sigreturn trampoline with a
 BTI C instruction
Date: Wed, 20 May 2020 18:55:38 +0100
Message-Id: <20200520175539.28464-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200520175539.28464-1-will@kernel.org>
References: <20200520175539.28464-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_105547_800821_F285FB32 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will@kernel.org>, Tamas Zsoldos <tamas.zsoldos@arm.com>,
 Mark Brown <broonie@kernel.org>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For better or worse, GDB relies on the exact instruction sequence in the
VDSO sigreturn trampoline in order to unwind from signals correctly.
Commit c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
unfortunately added a BTI C instruction to the start of __kernel_rt_sigreturn,
which breaks this check. Thankfully, it's also not required, since the
trampoline is called from a RET instruction when returning from the signal
handler

Remove the unnecessary BTI C instruction from __kernel_rt_sigreturn,
and do the same for the 32-bit VDSO as well for good measure.

Cc: Daniel Kiss <daniel.kiss@arm.com>
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
Reviewed-by: Dave Martin <dave.martin@arm.com>
Reviewed-by: Mark Brown <broonie@kernel.org>
Fixes: c91db232da48 ("arm64: vdso: Convert to modern assembler annotations")
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/linkage.h     |  6 +++---
 arch/arm64/kernel/vdso/sigreturn.S   | 11 +++++++++--
 arch/arm64/kernel/vdso32/sigreturn.S | 16 ++++++++--------
 3 files changed, 20 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/linkage.h b/arch/arm64/include/asm/linkage.h
index b5a7998a6b2a..81fefd2a1d02 100644
--- a/arch/arm64/include/asm/linkage.h
+++ b/arch/arm64/include/asm/linkage.h
@@ -15,9 +15,9 @@
 #define BTI_J hint 36 ;
 
 /*
- * When using in-kernel BTI we need to ensure that assembly functions
- * have suitable annotations.  Override SYM_FUNC_START to insert a BTI
- * landing pad at the start of everything.
+ * When using in-kernel BTI we need to ensure that PCS-conformant assembly
+ * functions have suitable annotations.  Override SYM_FUNC_START to insert
+ * a BTI landing pad at the start of everything.
  */
 #define SYM_FUNC_START(name)				\
 	SYM_START(name, SYM_L_GLOBAL, SYM_A_ALIGN)	\
diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
index 3fb13b81f780..0c921130002a 100644
--- a/arch/arm64/kernel/vdso/sigreturn.S
+++ b/arch/arm64/kernel/vdso/sigreturn.S
@@ -15,7 +15,14 @@
 	.text
 
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn)
+/*
+ * GDB relies on being able to identify the sigreturn instruction sequence to
+ * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
+ * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
+ * this function is only ever called from a RET and so omitting the landing pad
+ * is perfectly fine.
+ */
+SYM_CODE_START(__kernel_rt_sigreturn)
 	.cfi_startproc
 	.cfi_signal_frame
 	.cfi_def_cfa	x29, 0
@@ -24,6 +31,6 @@ SYM_FUNC_START(__kernel_rt_sigreturn)
 	mov	x8, #__NR_rt_sigreturn
 	svc	#0
 	.cfi_endproc
-SYM_FUNC_END(__kernel_rt_sigreturn)
+SYM_CODE_END(__kernel_rt_sigreturn)
 
 emit_aarch64_feature_1_and
diff --git a/arch/arm64/kernel/vdso32/sigreturn.S b/arch/arm64/kernel/vdso32/sigreturn.S
index 620524969696..b36d4e2267a3 100644
--- a/arch/arm64/kernel/vdso32/sigreturn.S
+++ b/arch/arm64/kernel/vdso32/sigreturn.S
@@ -17,39 +17,39 @@
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_sigreturn_arm)
+SYM_CODE_START(__kernel_sigreturn_arm)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_sigreturn_arm)
+SYM_CODE_END(__kernel_sigreturn_arm)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn_arm)
+SYM_CODE_START(__kernel_rt_sigreturn_arm)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_rt_sigreturn_arm)
+SYM_CODE_END(__kernel_rt_sigreturn_arm)
 
 	.thumb
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_sigreturn_thumb)
+SYM_CODE_START(__kernel_sigreturn_thumb)
 	mov r7, #__NR_compat_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_sigreturn_thumb)
+SYM_CODE_END(__kernel_sigreturn_thumb)
 
 	.fnstart
 	.save {r0-r15}
 	.pad #COMPAT_RT_SIGFRAME_REGS_OFFSET
 	nop
-SYM_FUNC_START(__kernel_rt_sigreturn_thumb)
+SYM_CODE_START(__kernel_rt_sigreturn_thumb)
 	mov r7, #__NR_compat_rt_sigreturn
 	svc #0
 	.fnend
-SYM_FUNC_END(__kernel_rt_sigreturn_thumb)
+SYM_CODE_END(__kernel_rt_sigreturn_thumb)
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
