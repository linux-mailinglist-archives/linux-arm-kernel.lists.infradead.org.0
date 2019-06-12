Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD49742D7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlkSfMYXjRSc2b3j3NhNSBAS5ozm+YmWZ3x42/U509Y=; b=DIUHg5B6+RTUEf
	TaHCouCTp12cRNnHtiOc8TIvqQOWcAESHY1DBOZvg6yHiQuHZ9fvnwFIvVj+kHOKiHj3vlSnQyKK2
	Y0muGOYu809fOebP9NtaFkl0G/eZlpf+B9wtqZ6cZ84IaQMONj/clhcbsIsrLf3Hl5Tw5ZOPAqBDS
	WW8co6xenOV/v7+fVCrSFTwQlL7ovBZcSdGNfaPTpAs0fuCoNhvB47HCnLBiFWoKMHeEfGLHXY7ZA
	aVDw8SEowwVajOM7Wa3X1uN2uLK/ORR+rNs0TXtpF52p131LA9zr9yF43TBuf4E8A5cOIEj0ZL4yL
	s+MgccnDqyJrvlK9UKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb740-0007dj-1Z; Wed, 12 Jun 2019 17:29:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb71w-00068e-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BBB7C28;
 Wed, 12 Jun 2019 10:27:24 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7778A3F246;
 Wed, 12 Jun 2019 10:27:22 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 06/10] arm64: mm: Logic to make offset_ttbr1 conditional
Date: Wed, 12 Jun 2019 18:26:54 +0100
Message-Id: <20190612172658.28522-7-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102724_769636_70022CE5 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running with a 52-bit userspace VA and a 48-bit kernel VA we offset
ttbr1_el1 to allow the kernel pagetables with a 52-bit PTRS_PER_PGD to
be used for both userspace and kernel.

Moving on to a 52-bit kernel VA we no longer require this offset to
ttbr1_el1 should we be running on a system with HW support for 52-bit
VAs.

This patch introduces conditional logic to offset_ttbr1 to query
SYS_ID_AA64MMFR2_EL1 whenever 52-bit VAs are selected. If there is HW
support for 52-bit VAs then the ttbr1 offset is skipped.

We choose to read a system register rather than vabits_actual because
offset_ttbr1 can be called in places where the kernel data is not
actually mapped.

Calls to offset_ttbr1 appear to be made from rarely called code paths so
this extra logic is not expected to adversely affect performance.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---

Changed in V3, move away from alternative framework as offset_ttbr1 can
be called in places before the alternative framework has been
initialised.
---
 arch/arm64/include/asm/assembler.h | 12 ++++++++++--
 arch/arm64/kernel/head.S           |  2 +-
 arch/arm64/kernel/hibernate-asm.S  |  8 ++++----
 arch/arm64/mm/proc.S               |  6 +++---
 4 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 92b6b7cf67dd..5b6e82eb2588 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -545,9 +545,17 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * In future this may be nop'ed out when dealing with 52-bit kernel VAs.
  * 	ttbr: Value of ttbr to set, modified.
  */
-	.macro	offset_ttbr1, ttbr
+	.macro	offset_ttbr1, ttbr, tmp
 #ifdef CONFIG_ARM64_USER_VA_BITS_52
 	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
+#endif
+
+#ifdef CONFIG_ARM64_VA_BITS_52
+	mrs_s	\tmp, SYS_ID_AA64MMFR2_EL1
+	and	\tmp, \tmp, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
+	cbnz	\tmp, .Lskipoffs_\@
+	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
+.Lskipoffs_\@ :
 #endif
 	.endm
 
@@ -557,7 +565,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * to be nop'ed out when dealing with 52-bit kernel VAs.
  */
 	.macro	restore_ttbr1, ttbr
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#if defined(CONFIG_ARM64_USER_VA_BITS_52) || defined(CONFIG_ARM64_VA_BITS_52)
 	bic	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
 #endif
 	.endm
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index b3335e639b6d..5b8e38503ce1 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -788,7 +788,7 @@ ENTRY(__enable_mmu)
 	phys_to_ttbr x1, x1
 	phys_to_ttbr x2, x2
 	msr	ttbr0_el1, x2			// load TTBR0
-	offset_ttbr1 x1
+	offset_ttbr1 x1, x3
 	msr	ttbr1_el1, x1			// load TTBR1
 	isb
 	msr	sctlr_el1, x0
diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
index fe36d85c60bd..f2dd592761fa 100644
--- a/arch/arm64/kernel/hibernate-asm.S
+++ b/arch/arm64/kernel/hibernate-asm.S
@@ -33,14 +33,14 @@
  * Even switching to our copied tables will cause a changed output address at
  * each stage of the walk.
  */
-.macro break_before_make_ttbr_switch zero_page, page_table, tmp
+.macro break_before_make_ttbr_switch zero_page, page_table, tmp, tmp2
 	phys_to_ttbr \tmp, \zero_page
 	msr	ttbr1_el1, \tmp
 	isb
 	tlbi	vmalle1
 	dsb	nsh
 	phys_to_ttbr \tmp, \page_table
-	offset_ttbr1 \tmp
+	offset_ttbr1 \tmp, \tmp2
 	msr	ttbr1_el1, \tmp
 	isb
 .endm
@@ -81,7 +81,7 @@ ENTRY(swsusp_arch_suspend_exit)
 	 * We execute from ttbr0, change ttbr1 to our copied linear map tables
 	 * with a break-before-make via the zero page
 	 */
-	break_before_make_ttbr_switch	x5, x0, x6
+	break_before_make_ttbr_switch	x5, x0, x6, x8
 
 	mov	x21, x1
 	mov	x30, x2
@@ -112,7 +112,7 @@ ENTRY(swsusp_arch_suspend_exit)
 	dsb	ish		/* wait for PoU cleaning to finish */
 
 	/* switch to the restored kernels page tables */
-	break_before_make_ttbr_switch	x25, x21, x6
+	break_before_make_ttbr_switch	x25, x21, x6, x8
 
 	ic	ialluis
 	dsb	ish
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdd626d34274..9f64283e0f89 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -179,7 +179,7 @@ ENDPROC(cpu_do_switch_mm)
 .macro	__idmap_cpu_set_reserved_ttbr1, tmp1, tmp2
 	adrp	\tmp1, empty_zero_page
 	phys_to_ttbr \tmp2, \tmp1
-	offset_ttbr1 \tmp2
+	offset_ttbr1 \tmp2, \tmp1
 	msr	ttbr1_el1, \tmp2
 	isb
 	tlbi	vmalle1
@@ -198,7 +198,7 @@ ENTRY(idmap_cpu_replace_ttbr1)
 
 	__idmap_cpu_set_reserved_ttbr1 x1, x3
 
-	offset_ttbr1 x0
+	offset_ttbr1 x0, x3
 	msr	ttbr1_el1, x0
 	isb
 
@@ -373,7 +373,7 @@ __idmap_kpti_secondary:
 	cbnz	w18, 1b
 
 	/* All done, act like nothing happened */
-	offset_ttbr1 swapper_ttb
+	offset_ttbr1 swapper_ttb, x18
 	msr	ttbr1_el1, swapper_ttb
 	isb
 	ret
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
