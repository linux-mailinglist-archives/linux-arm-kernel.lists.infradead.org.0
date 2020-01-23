Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3CF1465A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:23:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9X6YuIyFUuCF1zmp8MoNREckPEy0qJ8DWWxS5WgRSw0=; b=JvfB120Ojp76qkfSz/cJ23t6YN
	+yOdWFeZH6zw9FuOV0l62Gu+LXNyw99wo8iVyrepzIoRlmWl6v0ESXgeFggUOqvDLOecoH5Rv58RX
	pdUCWo9766piE1rV3/eTNFRGBamarWlFLuFTHNdh3VKvoNDYPhSZ4VvKczuTgcabdiYGIdxThiLlt
	MZq3VQVVO6O0/MGb3jRz/e4IkYzfoCzzhMS1ClQx/GEKn8EqEWbfWJ1ykaFW+yMM41Vs6GfAZbUXV
	MLxyFUYTHDPVBGXXqOjHJ0EBDahRVopd/Ypu9sH6iIauddZ+bYw6p96zNx38Zrvbsq51ZRXjEOIST
	E3KheC7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZe6-0007UM-4l; Thu, 23 Jan 2020 10:23:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZc6-0006Cu-6k
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:21:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2545631B;
 Thu, 23 Jan 2020 02:21:25 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 700553F6C4;
 Thu, 23 Jan 2020 02:21:21 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 06/17] arm64: ptrauth: Add bootup/runtime flags for
 __cpu_setup
Date: Thu, 23 Jan 2020 15:50:28 +0530
Message-Id: <1579774839-19562-7-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_022126_428327_0C407FC0 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch allows __cpu_setup to be invoked with one of these flags,
ARM64_CPU_BOOT_PRIMARY, ARM64_CPU_BOOT_SECONDARY or ARM64_CPU_RUNTIME.
This is required as some cpufeatures need different handling during
different scenarios.

The input parameter in x0 is preserved till the end to be used inside
this function.

There should be no functional change with this patch and is useful
for the subsequent ptrauth patch which utilizes it. Some upcoming
arm cpufeatures can also utilize these flags.

Suggested-by: James Morse <james.morse@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v3:
 * Renamed macro ARM64_CPU_BOOT_LATE to ARM64_CPU_BOOT_SECONDARY
 * Added James Suggested-by and Suzuki Reviewed-by tags.

 arch/arm64/include/asm/smp.h |  5 +++++
 arch/arm64/kernel/head.S     |  2 ++
 arch/arm64/kernel/sleep.S    |  2 ++
 arch/arm64/mm/proc.S         | 26 +++++++++++++++-----------
 4 files changed, 24 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index a0c8a0b..8159000 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -23,6 +23,11 @@
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
 
+/* Options for __cpu_setup */
+#define ARM64_CPU_BOOT_PRIMARY		(1)
+#define ARM64_CPU_BOOT_SECONDARY	(2)
+#define ARM64_CPU_RUNTIME		(3)
+
 #ifndef __ASSEMBLY__
 
 #include <asm/percpu.h>
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 3d18163..5a7ce15 100644
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
+	mov	x0, #ARM64_CPU_BOOT_SECONDARY
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
index a1e0592..081b946 100644
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
+ *	x0 with a flag ARM64_CPU_BOOT_PRIMARY/ARM64_CPU_BOOT_SECONDARY/ARM64_CPU_RUNTIME.
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
