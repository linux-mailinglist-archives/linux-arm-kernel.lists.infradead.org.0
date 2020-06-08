Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949981F25E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:34:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3H5Hxn4CvAZOXRLdkfwefz753ujVPWf4liio8Bh8zs=; b=ipFD8tgY+SY4jJ
	E5xgz4otJ0LfsikqAqPEq1MOl8CNb1La2nPcBK63TcghJIM/foSzy5p/mGqj/vxdSbwJpBi602TjL
	UMabkYw03Kp9+GrGKv//kYiHT2TjG7LpFXneSuLvQhJAFsioPk4ToCXpiW0BUqLNN9EusPoHIeUy4
	27rWAId98HFkTOHx/z+XQSfV1ea5wRNg6lleQchHZLG1a2Mvvffq8Mv8F417IKRo6CQlPOAxtJE3s
	Bwj66jmqGgV91XdFOSqQeHzeAvGR4HGkidIMaK0kt05g9G8x0pMMBRsULCbtH5UJ1Kc9JyVFEVsAW
	NFEalpmtQ72MnbdOzjtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRHl-0000oN-UK; Mon, 08 Jun 2020 23:34:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR1z-0004jF-DE
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C62020814;
 Mon,  8 Jun 2020 23:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658295;
 bh=8YG6uJRXinW5ioAzi4kbKMYdOmSpe9DCn4FxOPufuvc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lvG0ZhH4KsEeLYw1tc/sVQxsNxbQ8qsuupmXPhW3gPANIOt/NhnuzJULBZmZAGJhR
 wl7CDu/VY1DVFCg43FDM2Rnv1DW1WfzC//FLQbDLPnKDVcTSLTeZATs+v4+NvO/SG6
 1ygLGDWThVzvPYrzbfPJd+WXGs23kKXTM/n6wdRw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 298/606] ARM: uaccess: consolidate uaccess asm to
 asm/uaccess-asm.h
Date: Mon,  8 Jun 2020 19:07:03 -0400
Message-Id: <20200608231211.3363633-298-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161815_499003_CDFAE81F 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

[ Upstream commit 747ffc2fcf969eff9309d7f2d1d61cb8b9e1bb40 ]

Consolidate the user access assembly code to asm/uaccess-asm.h.  This
moves the csdb, check_uaccess, uaccess_mask_range_ptr, uaccess_enable,
uaccess_disable, uaccess_save, uaccess_restore macros, and creates two
new ones for exception entry and exit - uaccess_entry and uaccess_exit.

This makes the uaccess_save and uaccess_restore macros private to
asm/uaccess-asm.h.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/include/asm/assembler.h   |  75 +-------------------
 arch/arm/include/asm/uaccess-asm.h | 106 +++++++++++++++++++++++++++++
 arch/arm/kernel/entry-armv.S       |  11 +--
 arch/arm/kernel/entry-header.S     |   9 +--
 4 files changed, 112 insertions(+), 89 deletions(-)
 create mode 100644 arch/arm/include/asm/uaccess-asm.h

diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
index 99929122dad7..3546d294d55f 100644
--- a/arch/arm/include/asm/assembler.h
+++ b/arch/arm/include/asm/assembler.h
@@ -18,11 +18,11 @@
 #endif
 
 #include <asm/ptrace.h>
-#include <asm/domain.h>
 #include <asm/opcodes-virt.h>
 #include <asm/asm-offsets.h>
 #include <asm/page.h>
 #include <asm/thread_info.h>
+#include <asm/uaccess-asm.h>
 
 #define IOMEM(x)	(x)
 
@@ -446,79 +446,6 @@ THUMB(	orr	\reg , \reg , #PSR_T_BIT	)
 	.size \name , . - \name
 	.endm
 
-	.macro	csdb
-#ifdef CONFIG_THUMB2_KERNEL
-	.inst.w	0xf3af8014
-#else
-	.inst	0xe320f014
-#endif
-	.endm
-
-	.macro check_uaccess, addr:req, size:req, limit:req, tmp:req, bad:req
-#ifndef CONFIG_CPU_USE_DOMAINS
-	adds	\tmp, \addr, #\size - 1
-	sbcscc	\tmp, \tmp, \limit
-	bcs	\bad
-#ifdef CONFIG_CPU_SPECTRE
-	movcs	\addr, #0
-	csdb
-#endif
-#endif
-	.endm
-
-	.macro uaccess_mask_range_ptr, addr:req, size:req, limit:req, tmp:req
-#ifdef CONFIG_CPU_SPECTRE
-	sub	\tmp, \limit, #1
-	subs	\tmp, \tmp, \addr	@ tmp = limit - 1 - addr
-	addhs	\tmp, \tmp, #1		@ if (tmp >= 0) {
-	subshs	\tmp, \tmp, \size	@ tmp = limit - (addr + size) }
-	movlo	\addr, #0		@ if (tmp < 0) addr = NULL
-	csdb
-#endif
-	.endm
-
-	.macro	uaccess_disable, tmp, isb=1
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	/*
-	 * Whenever we re-enter userspace, the domains should always be
-	 * set appropriately.
-	 */
-	mov	\tmp, #DACR_UACCESS_DISABLE
-	mcr	p15, 0, \tmp, c3, c0, 0		@ Set domain register
-	.if	\isb
-	instr_sync
-	.endif
-#endif
-	.endm
-
-	.macro	uaccess_enable, tmp, isb=1
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	/*
-	 * Whenever we re-enter userspace, the domains should always be
-	 * set appropriately.
-	 */
-	mov	\tmp, #DACR_UACCESS_ENABLE
-	mcr	p15, 0, \tmp, c3, c0, 0
-	.if	\isb
-	instr_sync
-	.endif
-#endif
-	.endm
-
-	.macro	uaccess_save, tmp
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	mrc	p15, 0, \tmp, c3, c0, 0
-	str	\tmp, [sp, #SVC_DACR]
-#endif
-	.endm
-
-	.macro	uaccess_restore
-#ifdef CONFIG_CPU_SW_DOMAIN_PAN
-	ldr	r0, [sp, #SVC_DACR]
-	mcr	p15, 0, r0, c3, c0, 0
-#endif
-	.endm
-
 	.irp	c,,eq,ne,cs,cc,mi,pl,vs,vc,hi,ls,ge,lt,gt,le,hs,lo
 	.macro	ret\c, reg
 #if __LINUX_ARM_ARCH__ < 6
diff --git a/arch/arm/include/asm/uaccess-asm.h b/arch/arm/include/asm/uaccess-asm.h
new file mode 100644
index 000000000000..d475e3e8145d
--- /dev/null
+++ b/arch/arm/include/asm/uaccess-asm.h
@@ -0,0 +1,106 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_UACCESS_ASM_H__
+#define __ASM_UACCESS_ASM_H__
+
+#include <asm/asm-offsets.h>
+#include <asm/domain.h>
+#include <asm/memory.h>
+#include <asm/thread_info.h>
+
+	.macro	csdb
+#ifdef CONFIG_THUMB2_KERNEL
+	.inst.w	0xf3af8014
+#else
+	.inst	0xe320f014
+#endif
+	.endm
+
+	.macro check_uaccess, addr:req, size:req, limit:req, tmp:req, bad:req
+#ifndef CONFIG_CPU_USE_DOMAINS
+	adds	\tmp, \addr, #\size - 1
+	sbcscc	\tmp, \tmp, \limit
+	bcs	\bad
+#ifdef CONFIG_CPU_SPECTRE
+	movcs	\addr, #0
+	csdb
+#endif
+#endif
+	.endm
+
+	.macro uaccess_mask_range_ptr, addr:req, size:req, limit:req, tmp:req
+#ifdef CONFIG_CPU_SPECTRE
+	sub	\tmp, \limit, #1
+	subs	\tmp, \tmp, \addr	@ tmp = limit - 1 - addr
+	addhs	\tmp, \tmp, #1		@ if (tmp >= 0) {
+	subshs	\tmp, \tmp, \size	@ tmp = limit - (addr + size) }
+	movlo	\addr, #0		@ if (tmp < 0) addr = NULL
+	csdb
+#endif
+	.endm
+
+	.macro	uaccess_disable, tmp, isb=1
+#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+	/*
+	 * Whenever we re-enter userspace, the domains should always be
+	 * set appropriately.
+	 */
+	mov	\tmp, #DACR_UACCESS_DISABLE
+	mcr	p15, 0, \tmp, c3, c0, 0		@ Set domain register
+	.if	\isb
+	instr_sync
+	.endif
+#endif
+	.endm
+
+	.macro	uaccess_enable, tmp, isb=1
+#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+	/*
+	 * Whenever we re-enter userspace, the domains should always be
+	 * set appropriately.
+	 */
+	mov	\tmp, #DACR_UACCESS_ENABLE
+	mcr	p15, 0, \tmp, c3, c0, 0
+	.if	\isb
+	instr_sync
+	.endif
+#endif
+	.endm
+
+	.macro	uaccess_save, tmp
+#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+	mrc	p15, 0, \tmp, c3, c0, 0
+	str	\tmp, [sp, #SVC_DACR]
+#endif
+	.endm
+
+	.macro	uaccess_restore
+#ifdef CONFIG_CPU_SW_DOMAIN_PAN
+	ldr	r0, [sp, #SVC_DACR]
+	mcr	p15, 0, r0, c3, c0, 0
+#endif
+	.endm
+
+	/*
+	 * Save the address limit on entry to a privileged exception and
+	 * if using PAN, save and disable usermode access.
+	 */
+	.macro	uaccess_entry, tsk, tmp0, tmp1, tmp2, disable
+	ldr	\tmp0, [\tsk, #TI_ADDR_LIMIT]
+	mov	\tmp1, #TASK_SIZE
+	str	\tmp1, [\tsk, #TI_ADDR_LIMIT]
+	str	\tmp0, [sp, #SVC_ADDR_LIMIT]
+	uaccess_save \tmp0
+	.if \disable
+	uaccess_disable \tmp0
+	.endif
+	.endm
+
+	/* Restore the user access state previously saved by uaccess_entry */
+	.macro	uaccess_exit, tsk, tmp0, tmp1
+	ldr	\tmp1, [sp, #SVC_ADDR_LIMIT]
+	uaccess_restore
+	str	\tmp1, [\tsk, #TI_ADDR_LIMIT]
+	.endm
+
+#endif /* __ASM_UACCESS_ASM_H__ */
diff --git a/arch/arm/kernel/entry-armv.S b/arch/arm/kernel/entry-armv.S
index 77f54830554c..55a47df04773 100644
--- a/arch/arm/kernel/entry-armv.S
+++ b/arch/arm/kernel/entry-armv.S
@@ -27,6 +27,7 @@
 #include <asm/unistd.h>
 #include <asm/tls.h>
 #include <asm/system_info.h>
+#include <asm/uaccess-asm.h>
 
 #include "entry-header.S"
 #include <asm/entry-macro-multi.S>
@@ -179,15 +180,7 @@ ENDPROC(__und_invalid)
 	stmia	r7, {r2 - r6}
 
 	get_thread_info tsk
-	ldr	r0, [tsk, #TI_ADDR_LIMIT]
-	mov	r1, #TASK_SIZE
-	str	r1, [tsk, #TI_ADDR_LIMIT]
-	str	r0, [sp, #SVC_ADDR_LIMIT]
-
-	uaccess_save r0
-	.if \uaccess
-	uaccess_disable r0
-	.endif
+	uaccess_entry tsk, r0, r1, r2, \uaccess
 
 	.if \trace
 #ifdef CONFIG_TRACE_IRQFLAGS
diff --git a/arch/arm/kernel/entry-header.S b/arch/arm/kernel/entry-header.S
index 32051ec5b33f..40db0f9188b6 100644
--- a/arch/arm/kernel/entry-header.S
+++ b/arch/arm/kernel/entry-header.S
@@ -6,6 +6,7 @@
 #include <asm/asm-offsets.h>
 #include <asm/errno.h>
 #include <asm/thread_info.h>
+#include <asm/uaccess-asm.h>
 #include <asm/v7m.h>
 
 @ Bad Abort numbers
@@ -217,9 +218,7 @@
 	blne	trace_hardirqs_off
 #endif
 	.endif
-	ldr	r1, [sp, #SVC_ADDR_LIMIT]
-	uaccess_restore
-	str	r1, [tsk, #TI_ADDR_LIMIT]
+	uaccess_exit tsk, r0, r1
 
 #ifndef CONFIG_THUMB2_KERNEL
 	@ ARM mode SVC restore
@@ -263,9 +262,7 @@
 	@ on the stack remains correct).
 	@
 	.macro  svc_exit_via_fiq
-	ldr	r1, [sp, #SVC_ADDR_LIMIT]
-	uaccess_restore
-	str	r1, [tsk, #TI_ADDR_LIMIT]
+	uaccess_exit tsk, r0, r1
 #ifndef CONFIG_THUMB2_KERNEL
 	@ ARM mode restore
 	mov	r0, sp
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
