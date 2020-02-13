Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE1C15BE4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:15:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AqAbp1E6JCpU+hFgD62U/eOXQoLaf+tGMYezLwR671A=; b=PK/
	dLhjXU7NPzvZDi++YFWKl5dlT1EmSv0lvepagaCYXhT0Y1G9hHBgnKgCRKETGQ8Mzn4SebCTxXkzt
	fTTffohZQnMMWRwiXGWz2GKu6iEzpYlPCKJizuFC624vbAPq7fLriT2IuE5aVeLBpIlKB2TB6yb7l
	YqbEtYtoxxazQwX93DdsxUKIpHHrdgVourVXi9hG1Y5qM7c5OZK2NPdf/FxJ+ugiuxisCdXj24zjU
	qhAmOwZ+b+uquVqH4fVvNhs+JAVYEdaf6Lk49BVuTT7FgAYqWloJoDn3GwjLwXX0llMMiiLe6HaLZ
	VFJWAN+V7Eo4rMPK7gskQnqe0oeqCFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DOh-0008Hi-8P; Thu, 13 Feb 2020 12:15:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DOW-0008G5-QZ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:15:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 631671FB;
 Thu, 13 Feb 2020 04:14:57 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B31523F6CF;
 Thu, 13 Feb 2020 04:14:56 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Date: Thu, 13 Feb 2020 12:14:52 +0000
Message-Id: <20200213121452.23205-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_041500_950335_91F753C1 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There's no reason that cpu_do_switch_mm() needs to be written as an
assembly function, and having it as a C function would make it easier to
maintain.

This patch converts cpu_do_switch_mm() to C, removing code that this
change makes redundant (e.g. the mmid macro). Since the header comment
was stale and the prototype now implies all the necessary information,
this comment is removed. The 'pgd_phys' argument is made a phys_addr_t
to match the return type of virt_to_phys().

At the same time, post_ttbr_update_workaround() is updated to use
IS_ENABLED(), which allows the compiler to figure out it can elide calls
for !CONFIG_CAVIUM_ERRATUM_27456 builds.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/assembler.h   |  6 ------
 arch/arm64/include/asm/mmu_context.h |  2 ++
 arch/arm64/include/asm/proc-fns.h    |  2 --
 arch/arm64/mm/context.c              | 32 ++++++++++++++++++++++++++++++--
 arch/arm64/mm/proc.S                 | 28 ----------------------------
 5 files changed, 32 insertions(+), 38 deletions(-)

I've been sitting on a version of this for a while; it's orthogonal to the
entry rework I'm working on, so I'm sending it separately. I've given this some
light testing in a VM, spawning a large number of tasks in parallel to force MM
switches.

Mark.

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index aca337d79d12..af03001293c6 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -257,12 +257,6 @@ alternative_endif
 	.endm
 
 /*
- * mmid - get context id from mm pointer (mm->context.id)
- */
-	.macro	mmid, rd, rn
-	ldr	\rd, [\rn, #MM_CONTEXT_ID]
-	.endm
-/*
  * read_ctr - read CTR_EL0. If the system has mismatched register fields,
  * provide the system wide safe value from arm64_ftr_reg_ctrel0.sys_val
  */
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 3827ff4040a3..ab46187c6300 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -46,6 +46,8 @@ static inline void cpu_set_reserved_ttbr0(void)
 	isb();
 }
 
+void cpu_do_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm);
+
 static inline void cpu_switch_mm(pgd_t *pgd, struct mm_struct *mm)
 {
 	BUG_ON(pgd == swapper_pg_dir);
diff --git a/arch/arm64/include/asm/proc-fns.h b/arch/arm64/include/asm/proc-fns.h
index a2ce65a0c1fa..0d5d1f0525eb 100644
--- a/arch/arm64/include/asm/proc-fns.h
+++ b/arch/arm64/include/asm/proc-fns.h
@@ -13,11 +13,9 @@
 
 #include <asm/page.h>
 
-struct mm_struct;
 struct cpu_suspend_ctx;
 
 extern void cpu_do_idle(void);
-extern void cpu_do_switch_mm(unsigned long pgd_phys, struct mm_struct *mm);
 extern void cpu_do_suspend(struct cpu_suspend_ctx *ptr);
 extern u64 cpu_do_resume(phys_addr_t ptr, u64 idmap_ttbr);
 
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index 8ef73e89d514..5edefc8656c5 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2012 ARM Ltd.
  */
 
+#include <linux/bitfield.h>
 #include <linux/bitops.h>
 #include <linux/sched.h>
 #include <linux/slab.h>
@@ -254,10 +255,37 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
 /* Errata workaround post TTBRx_EL1 update. */
 asmlinkage void post_ttbr_update_workaround(void)
 {
+	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456))
+		return;
+
 	asm(ALTERNATIVE("nop; nop; nop",
 			"ic iallu; dsb nsh; isb",
-			ARM64_WORKAROUND_CAVIUM_27456,
-			CONFIG_CAVIUM_ERRATUM_27456));
+			ARM64_WORKAROUND_CAVIUM_27456));
+}
+
+void cpu_do_switch_mm(phys_addr_t pgd_phys, struct mm_struct *mm)
+{
+	unsigned long ttbr1 = read_sysreg(ttbr1_el1);
+	unsigned long asid = ASID(mm);
+	unsigned long ttbr0 = phys_to_ttbr(pgd_phys);
+
+	// Skip CNP for the reserved ASID
+	if (system_supports_cnp() && asid)
+		ttbr0 |= TTBR_CNP_BIT;
+
+	// SW PAN needs a copy of the ASID in TTBR0 for entry
+	if (IS_ENABLED(CONFIG_ARM64_SW_TTBR0_PAN))
+		ttbr0 |= FIELD_PREP(TTBR_ASID_MASK, asid);
+
+	// Set ASID in TTBR1 since TCR.A1 is set
+	ttbr1 &= ~TTBR_ASID_MASK;
+	ttbr1 |= FIELD_PREP(TTBR_ASID_MASK, asid);
+
+	write_sysreg(ttbr1, ttbr1_el1);
+	isb();
+	write_sysreg(ttbr0, ttbr0_el1);
+	isb();
+	post_ttbr_update_workaround();
 }
 
 static int asids_init(void)
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index aafed6902411..76899c6eee2b 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -142,34 +142,6 @@ SYM_FUNC_END(cpu_do_resume)
 	.popsection
 #endif
 
-/*
- *	cpu_do_switch_mm(pgd_phys, tsk)
- *
- *	Set the translation table base pointer to be pgd_phys.
- *
- *	- pgd_phys - physical address of new TTB
- */
-SYM_FUNC_START(cpu_do_switch_mm)
-	mrs	x2, ttbr1_el1
-	mmid	x1, x1				// get mm->context.id
-	phys_to_ttbr x3, x0
-
-alternative_if ARM64_HAS_CNP
-	cbz     x1, 1f                          // skip CNP for reserved ASID
-	orr     x3, x3, #TTBR_CNP_BIT
-1:
-alternative_else_nop_endif
-#ifdef CONFIG_ARM64_SW_TTBR0_PAN
-	bfi	x3, x1, #48, #16		// set the ASID field in TTBR0
-#endif
-	bfi	x2, x1, #48, #16		// set the ASID
-	msr	ttbr1_el1, x2			// in TTBR1 (since TCR.A1 is set)
-	isb
-	msr	ttbr0_el1, x3			// now update TTBR0
-	isb
-	b	post_ttbr_update_workaround	// Back to C code...
-SYM_FUNC_END(cpu_do_switch_mm)
-
 	.pushsection ".idmap.text", "awx"
 
 .macro	__idmap_cpu_set_reserved_ttbr1, tmp1, tmp2
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
