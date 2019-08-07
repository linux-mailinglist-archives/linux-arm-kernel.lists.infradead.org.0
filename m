Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8488D85074
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAr5va1Za9h2c2Eg//tVfTE+LKCg6YY+2zNIVrTOs3s=; b=btGEPXVUwrHwqh
	uNWng+BBFj2UjTlZSTFaskZIw87D9joX4JcqDnTObiiubgHT2YKJPgAUqubg8Hwy2CrPsEisUIWUD
	4iqusB2XRKIMqlQtYWMJoI988SDkaPYXGiLZW5WzO5Z4/N84ix81TrqROuA+PCYbAEa25MtYvu6CS
	RgHwt4/5vJjPemqtwjEJpUtr/r9hs5/g/XfgNp+k3h2NGv+xPjmjxJQz0PxZbNBXvzHwk9VxLd8Z8
	HKD01gzYTT0++Y6Fq2IeEvmAJRObIMGv9l0ryWE7577cubvSMnjyAc+Y5V2mkZQXHv+rlpn9ut2Qi
	PqbmY2SrFKnClMMhS3qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOLA-0000bX-Nz; Wed, 07 Aug 2019 15:59:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOID-0006Ph-CY
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:56:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 417C4344;
 Wed,  7 Aug 2019 08:56:01 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 079633F706;
 Wed,  7 Aug 2019 08:55:59 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 11/12] arm64: mm: Remove vabits_user
Date: Wed,  7 Aug 2019 16:55:23 +0100
Message-Id: <20190807155524.5112-12-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085601_758408_7B3AE092 
X-CRM114-Status: GOOD (  10.49  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Previous patches have enabled 52-bit kernel + user VAs and there is no
longer any scenario where user VA != kernel VA size.

This patch removes the, now redundant, vabits_user variable and replaces
usage with vabits_actual where appropriate.

Signed-off-by: Steve Capper <steve.capper@arm.com>

---

New in V5
---
 arch/arm64/include/asm/memory.h       | 3 ---
 arch/arm64/include/asm/pointer_auth.h | 2 +-
 arch/arm64/include/asm/processor.h    | 2 +-
 arch/arm64/kernel/head.S              | 7 +------
 arch/arm64/mm/fault.c                 | 3 +--
 arch/arm64/mm/mmu.c                   | 2 --
 arch/arm64/mm/proc.S                  | 2 +-
 7 files changed, 5 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 3b5d1327035e..56e79da139c2 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -194,9 +194,6 @@ static inline unsigned long kaslr_offset(void)
 	return kimage_vaddr - KIMAGE_VADDR;
 }
 
-/* the actual size of a user virtual address */
-extern u64			vabits_user;
-
 /*
  * Allow all memory at the discovery stage. We will clip it later.
  */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index d328540cb85e..7a24bad1a58b 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -69,7 +69,7 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
  * The EL0 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
  */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_user)
+#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
 
 /* Only valid for EL0 TTBR0 instruction pointers */
 static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 0e1f2770192a..e4c93945e477 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -43,7 +43,7 @@
  */
 
 #define DEFAULT_MAP_WINDOW_64	(UL(1) << VA_BITS_MIN)
-#define TASK_SIZE_64		(UL(1) << vabits_user)
+#define TASK_SIZE_64		(UL(1) << vabits_actual)
 
 #ifdef CONFIG_COMPAT
 #if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index c8446f8c81f5..949b001a73bb 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -316,11 +316,6 @@ __create_page_tables:
 #endif
 	mov	x5, #VA_BITS_MIN
 1:
-	adr_l	x6, vabits_user
-	str	x5, [x6]
-	dmb	sy
-	dc	ivac, x6		// Invalidate potentially stale cache line
-
 	adr_l	x6, vabits_actual
 	str	x5, [x6]
 	dmb	sy
@@ -795,7 +790,7 @@ ENDPROC(__enable_mmu)
 
 ENTRY(__cpu_secondary_check52bitva)
 #ifdef CONFIG_ARM64_VA_BITS_52
-	ldr_l	x0, vabits_user
+	ldr_l	x0, vabits_actual
 	cmp	x0, #52
 	b.ne	2f
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 86fc1aff3462..3ef0a9f64240 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -140,8 +140,7 @@ static void show_pte(unsigned long addr)
 
 	pr_alert("%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\n",
 		 mm == &init_mm ? "swapper" : "user", PAGE_SIZE / SZ_1K,
-		 mm == &init_mm ? vabits_actual : (int)vabits_user,
-		 (unsigned long)virt_to_phys(mm->pgd));
+		 vabits_actual, (unsigned long)virt_to_phys(mm->pgd));
 	pgdp = pgd_offset(mm, addr);
 	pgd = READ_ONCE(*pgdp);
 	pr_alert("[%016lx] pgd=%016llx", addr, pgd_val(pgd));
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 07b30e6d17f8..0c8f7e55f859 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -40,8 +40,6 @@
 
 u64 idmap_t0sz = TCR_T0SZ(VA_BITS);
 u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
-u64 vabits_user __ro_after_init;
-EXPORT_SYMBOL(vabits_user);
 
 u64 __section(".mmuoff.data.write") vabits_actual;
 EXPORT_SYMBOL(vabits_actual);
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 8b021c5c0884..391f9cabfe60 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -439,7 +439,7 @@ ENTRY(__cpu_setup)
 	tcr_clear_errata_bits x10, x9, x5
 
 #ifdef CONFIG_ARM64_VA_BITS_52
-	ldr_l		x9, vabits_user
+	ldr_l		x9, vabits_actual
 	sub		x9, xzr, x9
 	add		x9, x9, #64
 	tcr_set_t1sz	x10, x9
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
