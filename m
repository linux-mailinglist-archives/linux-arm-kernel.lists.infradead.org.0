Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBD7F07BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:08:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zx3fCln+LAQAR3OIiq/DPnuXouLuq9p991jCXokwaVU=; b=KpcpZENuYwsuGllWhH+iQCfuD5
	itIrIY2vBo6axJaAWC07Bc9I0h674BUAIhOwtngDSC4PtQRiaNE78MPNXU3HJx0aLp+LrV2ZfaVag
	DMFJvEoMzDtmB/rJrEH2u8sgz3YXcAvAq3+QiX6tAezecK7JxOXLHw1hQt8H+Lb98z+LHCYoQeEND
	u/VJmeOl7ahK+29vYxFu0ScnFwvW+pCZgMx5yJF97QrEDbBEDoMi711rBwdhD4WSoxCX+or3mIa1V
	gli7FzyZXhYWKEsQjvskdYVismfRt1m79cOtxrO+QN/ALz6YEkAn9OUXcb32d2AbnWnh+hH+g63iL
	QB4HLpnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS63v-0007ix-Nm; Tue, 05 Nov 2019 21:08:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5wE-0007iK-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:32 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9007721D7F;
 Tue,  5 Nov 2019 21:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987629;
 bh=E5wA/b/k9CXJgLSYstOgxYFcyWTtNQfqF+P8GVa9EO0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f3Xnyac+aNxxtPQ/6uCLCyd3y6q6Pp9vqNk7ESxmQA3N+HKfqRWQ3jkbsGcVblAMz
 V5XFlHiifxKxXD2Hl+kboDVZi6hMkzT0kEn5gGBE3L4/3YshqCaUZXyBQ2R+JJoAl1
 5YMDkZK0K9k3M9+nDb0qUN/D2WeEUwuO/9rn2LOc=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 32/53] ARM: spectre-v1: fix syscall entry
Date: Tue,  5 Nov 2019 21:58:25 +0100
Message-Id: <20191105205846.1394-33-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130030_749555_002117AC 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 10573ae547c85b2c61417ff1a106cffbfceada35 upstream.

Prevent speculation at the syscall table decoding by clamping the index
used to zero on invalid system call numbers, and using the csdb
speculative barrier.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Acked-by: Mark Rutland <mark.rutland@arm.com>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/kernel/entry-common.S | 18 ++++++--------
 arch/arm/kernel/entry-header.S | 25 ++++++++++++++++++++
 2 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index 30a7228eaceb..e969b18d9ff9 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -223,9 +223,7 @@ local_restart:
 	tst	r10, #_TIF_SYSCALL_WORK		@ are we tracing syscalls?
 	bne	__sys_trace
 
-	cmp	scno, #NR_syscalls		@ check upper syscall limit
-	badr	lr, ret_fast_syscall		@ return address
-	ldrcc	pc, [tbl, scno, lsl #2]		@ call sys_* routine
+	invoke_syscall tbl, scno, r10, ret_fast_syscall
 
 	add	r1, sp, #S_OFF
 2:	cmp	scno, #(__ARM_NR_BASE - __NR_SYSCALL_BASE)
@@ -258,14 +256,8 @@ __sys_trace:
 	mov	r1, scno
 	add	r0, sp, #S_OFF
 	bl	syscall_trace_enter
-
-	badr	lr, __sys_trace_return		@ return address
-	mov	scno, r0			@ syscall number (possibly new)
-	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
-	cmp	scno, #NR_syscalls		@ check upper syscall limit
-	ldmccia	r1, {r0 - r6}			@ have to reload r0 - r6
-	stmccia	sp, {r4, r5}			@ and update the stack args
-	ldrcc	pc, [tbl, scno, lsl #2]		@ call sys_* routine
+	mov	scno, r0
+	invoke_syscall tbl, scno, r10, __sys_trace_return, reload=1
 	cmp	scno, #-1			@ skip the syscall?
 	bne	2b
 	add	sp, sp, #S_OFF			@ restore stack
@@ -317,6 +309,10 @@ sys_syscall:
 		bic	scno, r0, #__NR_OABI_SYSCALL_BASE
 		cmp	scno, #__NR_syscall - __NR_SYSCALL_BASE
 		cmpne	scno, #NR_syscalls	@ check range
+#ifdef CONFIG_CPU_SPECTRE
+		movhs	scno, #0
+		csdb
+#endif
 		stmloia	sp, {r5, r6}		@ shuffle args
 		movlo	r0, r1
 		movlo	r1, r2
diff --git a/arch/arm/kernel/entry-header.S b/arch/arm/kernel/entry-header.S
index 6d243e830516..86dfee487e24 100644
--- a/arch/arm/kernel/entry-header.S
+++ b/arch/arm/kernel/entry-header.S
@@ -373,6 +373,31 @@
 #endif
 	.endm
 
+	.macro	invoke_syscall, table, nr, tmp, ret, reload=0
+#ifdef CONFIG_CPU_SPECTRE
+	mov	\tmp, \nr
+	cmp	\tmp, #NR_syscalls		@ check upper syscall limit
+	movcs	\tmp, #0
+	csdb
+	badr	lr, \ret			@ return address
+	.if	\reload
+	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
+	ldmccia	r1, {r0 - r6}			@ reload r0-r6
+	stmccia	sp, {r4, r5}			@ update stack arguments
+	.endif
+	ldrcc	pc, [\table, \tmp, lsl #2]	@ call sys_* routine
+#else
+	cmp	\nr, #NR_syscalls		@ check upper syscall limit
+	badr	lr, \ret			@ return address
+	.if	\reload
+	add	r1, sp, #S_R0 + S_OFF		@ pointer to regs
+	ldmccia	r1, {r0 - r6}			@ reload r0-r6
+	stmccia	sp, {r4, r5}			@ update stack arguments
+	.endif
+	ldrcc	pc, [\table, \nr, lsl #2]	@ call sys_* routine
+#endif
+	.endm
+
 /*
  * These are the registers used in the syscall handler, and allow us to
  * have in theory up to 7 arguments to a function - r0 to r6.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
