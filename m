Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F49610247C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xxm1+wZNdXxSyLXfVQL153+qZ0fpmwQvI70tdTQg/is=; b=ljixEP9/szXZ0EEJKtF8X8NTeh
	YsK3OXvMOlDqjVICjIf+0BRx+ZWiMCsijLxEQtsYM+nZeYtAojdNFvFSx+rDgzL48hCd2tr+X/yGe
	ETCBGQniOEs9B5QjNpI3LVNsxIvyARo/U4Y/cMY/BUqxiW5ArHCaFH4ACKCWHYpxfg0mI9vCEoyT1
	Ykl0Ntl5TgxBpJG3jJxVyttL1CbcJU7LiYScVlxKuic2lhTrgrutOAiqABseeJvTLOp+Yzpk936/L
	MkHsN9HDAt7TuqZlIu+DnKwHHgSc95+NqRv4iiJUfiP43UERWCncrPvEmLyQnRlqUtWWsE7zPhMhM
	zotFSzQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2iN-0007zT-Ex; Tue, 19 Nov 2019 12:34:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2h1-0006yd-Ro
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B46811FB;
 Tue, 19 Nov 2019 04:33:14 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4558B3F703;
 Tue, 19 Nov 2019 04:33:11 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 04/14] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
Date: Tue, 19 Nov 2019 18:02:16 +0530
Message-Id: <1574166746-27197-5-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043316_077456_07604F31 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch allows __cpu_setup to be invoked with one of these flags,
ARM64_CPU_BOOT_PRIMARY, ARM64_CPU_BOOT_LATE or ARM64_CPU_RUNTIME.
This is required as some cpufeatures need different handling during
different scenarios.

The input parameter in x0 is preserved till the end to be used inside
this function.

There should be no functional change with this patch and is useful
for the subsequent ptrauth patch which utilizes it. Some upcoming
arm cpufeatures can also utilize these flags.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* This is a new patch and is added as suggested by James[1].

[1]: https://www.spinics.net/lists/arm-kernel/msg763622.html

 arch/arm64/include/asm/smp.h |  5 +++++
 arch/arm64/kernel/head.S     |  2 ++
 arch/arm64/kernel/sleep.S    |  2 ++
 arch/arm64/mm/proc.S         | 26 +++++++++++++++-----------
 4 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index a0c8a0b..008d004 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -23,6 +23,11 @@
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
 
+/* Options for __cpu_setup */
+#define ARM64_CPU_BOOT_PRIMARY		(1)
+#define ARM64_CPU_BOOT_LATE		(2)
+#define ARM64_CPU_RUNTIME		(3)
+
 #ifndef __ASSEMBLY__
 
 #include <asm/percpu.h>
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 3d18163..5aaf1bb 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -118,6 +118,7 @@ ENTRY(stext)
 	 * On return, the CPU will be ready for the MMU to be turned on and
 	 * the TCR will have been set.
 	 */
+	mov	x0, #ARM64_CPU_BOOT_PRIMARY
 	bl	__cpu_setup			// initialise processor
 	b	__primary_switch
 ENDPROC(stext)
@@ -712,6 +713,7 @@ secondary_startup:
 	 * Common entry point for secondary CPUs.
 	 */
 	bl	__cpu_secondary_check52bitva
+	mov	x0, #ARM64_CPU_BOOT_LATE
 	bl	__cpu_setup			// initialise processor
 	adrp	x1, swapper_pg_dir
 	bl	__enable_mmu
diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index f5b04dd..7b2f2e6 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -3,6 +3,7 @@
 #include <linux/linkage.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
+#include <asm/smp.h>
 
 	.text
 /*
@@ -99,6 +100,7 @@ ENDPROC(__cpu_suspend_enter)
 	.pushsection ".idmap.text", "awx"
 ENTRY(cpu_resume)
 	bl	el2_setup		// if in EL2 drop to EL1 cleanly
+	mov	x0, #ARM64_CPU_RUNTIME
 	bl	__cpu_setup
 	/* enable the MMU early - so we can access sleep_save_stash by va */
 	adrp	x1, swapper_pg_dir
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index a1e0592..88cf7e4 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -400,21 +400,25 @@ ENDPROC(idmap_kpti_install_ng_mappings)
 /*
  *	__cpu_setup
  *
- *	Initialise the processor for turning the MMU on.  Return in x0 the
- *	value of the SCTLR_EL1 register.
+ *	Initialise the processor for turning the MMU on.
+ *
+ * Input:
+ *	x0 with a flag ARM64_CPU_BOOT_PRIMARY/ARM64_CPU_BOOT_LATE/ARM64_CPU_RUNTIME.
+ * Output:
+ *	Return in x0 the value of the SCTLR_EL1 register.
  */
 	.pushsection ".idmap.text", "awx"
 ENTRY(__cpu_setup)
 	tlbi	vmalle1				// Invalidate local TLB
 	dsb	nsh
 
-	mov	x0, #3 << 20
-	msr	cpacr_el1, x0			// Enable FP/ASIMD
-	mov	x0, #1 << 12			// Reset mdscr_el1 and disable
-	msr	mdscr_el1, x0			// access to the DCC from EL0
+	mov	x1, #3 << 20
+	msr	cpacr_el1, x1			// Enable FP/ASIMD
+	mov	x1, #1 << 12			// Reset mdscr_el1 and disable
+	msr	mdscr_el1, x1			// access to the DCC from EL0
 	isb					// Unmask debug exceptions now,
 	enable_dbg				// since this is per-cpu
-	reset_pmuserenr_el0 x0			// Disable PMU access from EL0
+	reset_pmuserenr_el0 x1			// Disable PMU access from EL0
 	/*
 	 * Memory region attributes for LPAE:
 	 *
@@ -435,10 +439,6 @@ ENTRY(__cpu_setup)
 		     MAIR(0xbb, MT_NORMAL_WT)
 	msr	mair_el1, x5
 	/*
-	 * Prepare SCTLR
-	 */
-	mov_q	x0, SCTLR_EL1_SET
-	/*
 	 * Set/prepare TCR and TTBR. We use 512GB (39-bit) address range for
 	 * both user and kernel.
 	 */
@@ -474,5 +474,9 @@ ENTRY(__cpu_setup)
 1:
 #endif	/* CONFIG_ARM64_HW_AFDBM */
 	msr	tcr_el1, x10
+	/*
+	 * Prepare SCTLR
+	 */
+	mov_q	x0, SCTLR_EL1_SET
 	ret					// return to head.S
 ENDPROC(__cpu_setup)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
