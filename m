Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E369211BC07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6J4e6dQn2Dd1RpV94lwuMB9z/H54mVuoZoVRdQZyT0=; b=eOv160yQMQpZad
	8reEU0aLOtCCZl2P6klMQFJN5o36nGksDv2L44yl/TdfJvyNHFpgdag9ogHgp/JpDUtLR7sI2Lswj
	iXyYpbY+7kc53WCSgoL3jilJ/DCOtA6FkEq1dd5M/IAAdKtHNkU1t6880D/Zml5eQjjh+SMOl/EBy
	TYgdFpitADvZv4TYXOF66pP6pVDyEjec0WIFeM8rhx2JbEXksqn5BqtNUNnOlFJvv7ikAMvrasXgP
	yMarxLZlryiAhtK5vj+e7YFOsuoeHY/vGA1+l03He0MpQwwaP0LdqLmoF3VeIlXXOf4a5Eshi7lR6
	gluyF13oSnwGzVX6CKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6wr-000507-4d; Wed, 11 Dec 2019 18:42:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6un-0003E1-NP
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:40:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C69212FC;
 Wed, 11 Dec 2019 10:40:49 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C80933F6CF;
 Wed, 11 Dec 2019 10:40:47 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/22] arm64: mte: Use Normal Tagged attributes for the linear
 map
Date: Wed, 11 Dec 2019 18:40:12 +0000
Message-Id: <20191211184027.20130-8-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104049_877508_588CFF9F 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Once user space is given access to tagged memory, the kernel must be
able to clear/save/restore tags visible to the user. This is done via
the linear mapping, therefore map it as such. The new MT_NORMAL_TAGGED
index for MAIR_EL1 is initially mapped as Normal memory and later
changed to Normal Tagged via the cpufeature infrastructure. From a
mismatched attribute aliases perspective, the Tagged memory is
considered a permission and it won't lead to undefined behaviour.

The empty_zero_page is cleared to ensure that the tags it contains are
already zeroed. The actual tags-aware clear_page() implementation is
part of a subsequent patch.

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/memory.h       |  1 +
 arch/arm64/include/asm/pgtable-prot.h |  2 ++
 arch/arm64/kernel/cpufeature.c        | 30 +++++++++++++++++++++++++++
 arch/arm64/mm/dump.c                  |  4 ++++
 arch/arm64/mm/mmu.c                   | 22 ++++++++++++++++++--
 arch/arm64/mm/proc.S                  |  8 +++++--
 6 files changed, 63 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a4f9ca5479b0..55994ab362ae 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -145,6 +145,7 @@
 #define MT_NORMAL_NC		3
 #define MT_NORMAL		4
 #define MT_NORMAL_WT		5
+#define MT_NORMAL_TAGGED	6
 
 /*
  * Memory types for Stage-2 translation
diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 8dc6c5cdabe6..ef1e565c3a79 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -37,6 +37,7 @@
 #define PROT_NORMAL_NC		(PROT_DEFAULT | PTE_PXN | PTE_UXN | PTE_WRITE | PTE_ATTRINDX(MT_NORMAL_NC))
 #define PROT_NORMAL_WT		(PROT_DEFAULT | PTE_PXN | PTE_UXN | PTE_WRITE | PTE_ATTRINDX(MT_NORMAL_WT))
 #define PROT_NORMAL		(PROT_DEFAULT | PTE_PXN | PTE_UXN | PTE_WRITE | PTE_ATTRINDX(MT_NORMAL))
+#define PROT_NORMAL_TAGGED	(PROT_DEFAULT | PTE_PXN | PTE_UXN | PTE_WRITE | PTE_ATTRINDX(MT_NORMAL_TAGGED))
 
 #define PROT_SECT_DEVICE_nGnRE	(PROT_SECT_DEFAULT | PMD_SECT_PXN | PMD_SECT_UXN | PMD_ATTRINDX(MT_DEVICE_nGnRE))
 #define PROT_SECT_NORMAL	(PROT_SECT_DEFAULT | PMD_SECT_PXN | PMD_SECT_UXN | PMD_ATTRINDX(MT_NORMAL))
@@ -46,6 +47,7 @@
 #define _HYP_PAGE_DEFAULT	_PAGE_DEFAULT
 
 #define PAGE_KERNEL		__pgprot(PROT_NORMAL)
+#define PAGE_KERNEL_TAGGED	__pgprot(PROT_NORMAL_TAGGED)
 #define PAGE_KERNEL_RO		__pgprot((PROT_NORMAL & ~PTE_WRITE) | PTE_RDONLY)
 #define PAGE_KERNEL_ROX		__pgprot((PROT_NORMAL & ~(PTE_WRITE | PTE_PXN)) | PTE_RDONLY)
 #define PAGE_KERNEL_EXEC	__pgprot(PROT_NORMAL & ~PTE_PXN)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index a3eea2cce6b0..06f3f6677284 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1272,12 +1272,42 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 #ifdef CONFIG_ARM64_MTE
 static void cpu_enable_mte(struct arm64_cpu_capabilities const *cap)
 {
+	u64 mair;
+
 	write_sysreg_s(SYS_GCR_EL1_RRND, SYS_GCR_EL1);
 	write_sysreg_s(0, SYS_TFSR_EL1);
 	write_sysreg_s(0, SYS_TFSRE0_EL1);
 
+	/*
+	 * Update the MT_NORMAL_TAGGED index in MAIR_EL1. Tag checking is
+	 * disabled for the kernel, so there won't be any observable effect
+	 * other than allowing the kernel to read and write tags.
+	 */
+	mair = read_sysreg_s(SYS_MAIR_EL1);
+	mair &= ~MAIR_ATTRIDX(MAIR_ATTR_MASK, MT_NORMAL_TAGGED);
+	mair |= MAIR_ATTRIDX(MAIR_ATTR_NORMAL_TAGGED, MT_NORMAL_TAGGED);
+	write_sysreg_s(mair, SYS_MAIR_EL1);
+
 	isb();
 }
+
+static int __init system_enable_mte(void)
+{
+	if (!system_supports_mte())
+		return 0;
+
+	/* Ensure the TLB does not have stale MAIR attributes */
+	flush_tlb_all();
+
+	/*
+	 * Clear the zero page (again) so that tags are reset. This needs to
+	 * be done via the linear map which has the Tagged attribute.
+	 */
+	clear_page(lm_alias(empty_zero_page));
+
+	return 0;
+}
+core_initcall(system_enable_mte);
 #endif /* CONFIG_ARM64_MTE */
 
 static const struct arm64_cpu_capabilities arm64_features[] = {
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 0a920b538a89..1f75a71e63f2 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -163,6 +163,10 @@ static const struct prot_bits pte_bits[] = {
 		.mask	= PTE_ATTRINDX_MASK,
 		.val	= PTE_ATTRINDX(MT_NORMAL),
 		.set	= "MEM/NORMAL",
+	}, {
+		.mask	= PTE_ATTRINDX_MASK,
+		.val	= PTE_ATTRINDX(MT_NORMAL_TAGGED),
+		.set	= "MEM/NORMAL-TAGGED",
 	}
 };
 
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 5a3b15a14a7f..a039a5540cd1 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -120,7 +120,7 @@ static bool pgattr_change_is_safe(u64 old, u64 new)
 	 * The following mapping attributes may be updated in live
 	 * kernel mappings without the need for break-before-make.
 	 */
-	static const pteval_t mask = PTE_PXN | PTE_RDONLY | PTE_WRITE | PTE_NG;
+	pteval_t mask = PTE_PXN | PTE_RDONLY | PTE_WRITE | PTE_NG;
 
 	/* creating or taking down mappings is always safe */
 	if (old == 0 || new == 0)
@@ -134,6 +134,19 @@ static bool pgattr_change_is_safe(u64 old, u64 new)
 	if (old & ~new & PTE_NG)
 		return false;
 
+	if (system_supports_mte()) {
+		/*
+		 * Changing the memory type between Normal and Normal-Tagged
+		 * is safe since Tagged is considered a permission attribute
+		 * from the mismatched attribute aliases perspective.
+		 */
+		if ((old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
+		    (old & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED) ||
+		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL) ||
+		    (new & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL_TAGGED))
+			mask |= PTE_ATTRINDX_MASK;
+	}
+
 	return ((old ^ new) & ~mask) == 0;
 }
 
@@ -488,7 +501,12 @@ static void __init map_mem(pgd_t *pgdp)
 		if (memblock_is_nomap(reg))
 			continue;
 
-		__map_memblock(pgdp, start, end, PAGE_KERNEL, flags);
+		/*
+		 * The linear map must allow allocation tags reading/writing
+		 * if MTE is present. Otherwise, it has the same attributes as
+		 * PAGE_KERNEL.
+		 */
+		__map_memblock(pgdp, start, end, PAGE_KERNEL_TAGGED, flags);
 	}
 
 	/*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 55f715957b36..a8ba4078aa84 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -42,14 +42,18 @@
 #define TCR_KASAN_FLAGS 0
 #endif
 
-/* Default MAIR_EL1 */
+/*
+ * Default MAIR_EL1. MT_NORMAL_TAGGED is initially mapped as Normal memory and
+ * changed later to Normal Tagged if the system supports MTE.
+ */
 #define MAIR_EL1_SET							\
 	(MAIR_ATTRIDX(MAIR_ATTR_DEVICE_nGnRnE, MT_DEVICE_nGnRnE) |	\
 	 MAIR_ATTRIDX(MAIR_ATTR_DEVICE_nGnRE, MT_DEVICE_nGnRE) |	\
 	 MAIR_ATTRIDX(MAIR_ATTR_DEVICE_GRE, MT_DEVICE_GRE) |		\
 	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL_NC, MT_NORMAL_NC) |		\
 	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL, MT_NORMAL) |			\
-	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL_WT, MT_NORMAL_WT))
+	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL_WT, MT_NORMAL_WT) |		\
+	 MAIR_ATTRIDX(MAIR_ATTR_NORMAL, MT_NORMAL_TAGGED))
 
 #ifdef CONFIG_CPU_PM
 /**

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
