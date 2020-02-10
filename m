Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FAB157D34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3sNhD/tDH8e1Hp9GL6AnDhe2dZBOlRjR6uE6mMljko=; b=UNpIkmcAGc63wD
	UA8j4I58cYzWi3uu8Fe7HchAseknRLwrGvq9JQS10/JhLbJnPfbwb43hztvYINMZ8EWgDTLQIvD8l
	uZkIuPcjT1q+s89d0zvovxDvknJ0ZeOiKC0HiKHGXfP8XZ07cR94i4Td2NED6NmP3v3pvokCpv9Oq
	tzASWL5aHe6BMxd2im/yJkgTrLjfegdbcAU1glNni7VyM6s3kW74peuqVL84zsyCHugWXgnAAmD0W
	PgufkONChyKn2MKiiDFFkOkuHCCRH/hQ5J06YSkz8WKyZ81bq/2qeqBFzDde+lA7c1goL9Q63tQbm
	T0nDslOJtsKlYwu4yEzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19pV-0003wo-Cy; Mon, 10 Feb 2020 14:14:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19ob-00035p-3i
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:13:35 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AAFA620863;
 Mon, 10 Feb 2020 14:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581344012;
 bh=4aLuG9D1C8k2NMf2HhqOGQaSiomVnOH91UNzV0MOcYo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qq0XX1qMr7RR/NhQVI+PrkAWcglt05iuPF2k50qwQCck0Nqu1UX2YPwTcphTeBdZx
 MM5e6SFnHyRZHFRjgmGhyNIb8/g+Quni6HewdRa9/WWp8IWi2gbCD2SqmfxG/iN9qs
 roD6k8yNWQ3zgX26hN46NihQBvCikQFj9JCowoz4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j19oZ-0048kH-1P; Mon, 10 Feb 2020 14:13:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [RFC PATCH 4/5] arm: Remove HYP/Stage-2 page-table support
Date: Mon, 10 Feb 2020 14:13:23 +0000
Message-Id: <20200210141324.21090-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, pbonzini@redhat.com,
 Christoffer.Dall@arm.com, will@kernel.org, qperret@google.com,
 linux@arm.linux.org.uk, vladimir.murzin@arm.com, anders.berg@lsi.com,
 arnd@arndb.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_061333_190043_C4C1BA8F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove all traces of Stage-2 and HYP page table support.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/pgtable-3level.h | 20 --------------------
 arch/arm/include/asm/pgtable.h        |  9 ---------
 arch/arm/include/asm/sections.h       |  6 +-----
 arch/arm/include/asm/virt.h           |  7 -------
 arch/arm/kernel/vmlinux-xip.lds.S     |  8 --------
 arch/arm/kernel/vmlinux.lds.S         |  8 --------
 arch/arm/kernel/vmlinux.lds.h         | 10 ----------
 arch/arm/mm/mmu.c                     | 26 --------------------------
 8 files changed, 1 insertion(+), 93 deletions(-)

diff --git a/arch/arm/include/asm/pgtable-3level.h b/arch/arm/include/asm/pgtable-3level.h
index ad55ab068dbf..36805f94939e 100644
--- a/arch/arm/include/asm/pgtable-3level.h
+++ b/arch/arm/include/asm/pgtable-3level.h
@@ -104,26 +104,6 @@
  */
 #define L_PGD_SWAPPER		(_AT(pgdval_t, 1) << 55)	/* swapper_pg_dir entry */
 
-/*
- * 2nd stage PTE definitions for LPAE.
- */
-#define L_PTE_S2_MT_UNCACHED		(_AT(pteval_t, 0x0) << 2) /* strongly ordered */
-#define L_PTE_S2_MT_WRITETHROUGH	(_AT(pteval_t, 0xa) << 2) /* normal inner write-through */
-#define L_PTE_S2_MT_WRITEBACK		(_AT(pteval_t, 0xf) << 2) /* normal inner write-back */
-#define L_PTE_S2_MT_DEV_SHARED		(_AT(pteval_t, 0x1) << 2) /* device */
-#define L_PTE_S2_MT_MASK		(_AT(pteval_t, 0xf) << 2)
-
-#define L_PTE_S2_RDONLY			(_AT(pteval_t, 1) << 6)   /* HAP[1]   */
-#define L_PTE_S2_RDWR			(_AT(pteval_t, 3) << 6)   /* HAP[2:1] */
-
-#define L_PMD_S2_RDONLY			(_AT(pmdval_t, 1) << 6)   /* HAP[1]   */
-#define L_PMD_S2_RDWR			(_AT(pmdval_t, 3) << 6)   /* HAP[2:1] */
-
-/*
- * Hyp-mode PL2 PTE definitions for LPAE.
- */
-#define L_PTE_HYP		L_PTE_USER
-
 #ifndef __ASSEMBLY__
 
 #define pud_none(pud)		(!pud_val(pud))
diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
index eabcb48a7840..0483cf413315 100644
--- a/arch/arm/include/asm/pgtable.h
+++ b/arch/arm/include/asm/pgtable.h
@@ -80,9 +80,6 @@ extern void __pgd_error(const char *file, int line, pgd_t);
 
 extern pgprot_t		pgprot_user;
 extern pgprot_t		pgprot_kernel;
-extern pgprot_t		pgprot_hyp_device;
-extern pgprot_t		pgprot_s2;
-extern pgprot_t		pgprot_s2_device;
 
 #define _MOD_PROT(p, b)	__pgprot(pgprot_val(p) | (b))
 
@@ -95,12 +92,6 @@ extern pgprot_t		pgprot_s2_device;
 #define PAGE_READONLY_EXEC	_MOD_PROT(pgprot_user, L_PTE_USER | L_PTE_RDONLY)
 #define PAGE_KERNEL		_MOD_PROT(pgprot_kernel, L_PTE_XN)
 #define PAGE_KERNEL_EXEC	pgprot_kernel
-#define PAGE_HYP		_MOD_PROT(pgprot_kernel, L_PTE_HYP | L_PTE_XN)
-#define PAGE_HYP_EXEC		_MOD_PROT(pgprot_kernel, L_PTE_HYP | L_PTE_RDONLY)
-#define PAGE_HYP_RO		_MOD_PROT(pgprot_kernel, L_PTE_HYP | L_PTE_RDONLY | L_PTE_XN)
-#define PAGE_HYP_DEVICE		_MOD_PROT(pgprot_hyp_device, L_PTE_HYP)
-#define PAGE_S2			_MOD_PROT(pgprot_s2, L_PTE_S2_RDONLY | L_PTE_XN)
-#define PAGE_S2_DEVICE		_MOD_PROT(pgprot_s2_device, L_PTE_S2_RDONLY | L_PTE_XN)
 
 #define __PAGE_NONE		__pgprot(_L_PTE_DEFAULT | L_PTE_RDONLY | L_PTE_XN | L_PTE_NONE)
 #define __PAGE_SHARED		__pgprot(_L_PTE_DEFAULT | L_PTE_USER | L_PTE_XN)
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index 4ceb4f757d4d..700b8bcdf9bd 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -10,8 +10,6 @@ extern char __idmap_text_start[];
 extern char __idmap_text_end[];
 extern char __entry_text_start[];
 extern char __entry_text_end[];
-extern char __hyp_idmap_text_start[];
-extern char __hyp_idmap_text_end[];
 
 static inline bool in_entry_text(unsigned long addr)
 {
@@ -22,9 +20,7 @@ static inline bool in_entry_text(unsigned long addr)
 static inline bool in_idmap_text(unsigned long addr)
 {
 	void *a = (void *)addr;
-	return memory_contains(__idmap_text_start, __idmap_text_end, a, 1) ||
-	       memory_contains(__hyp_idmap_text_start, __hyp_idmap_text_end,
-			       a, 1);
+	return memory_contains(__idmap_text_start, __idmap_text_end, a, 1);
 }
 
 #endif	/* _ASM_ARM_SECTIONS_H */
diff --git a/arch/arm/include/asm/virt.h b/arch/arm/include/asm/virt.h
index 6cd4e33418e9..47600a5894b1 100644
--- a/arch/arm/include/asm/virt.h
+++ b/arch/arm/include/asm/virt.h
@@ -67,13 +67,6 @@ static inline bool is_kernel_in_hyp_mode(void)
 	return false;
 }
 
-/* The section containing the hypervisor idmap text */
-extern char __hyp_idmap_text_start[];
-extern char __hyp_idmap_text_end[];
-
-/* The section containing the hypervisor text */
-extern char __hyp_text_start[];
-extern char __hyp_text_end[];
 #endif
 
 #else
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 21b8b271c80d..6d2be994ae58 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -162,14 +162,6 @@ SECTIONS
 ASSERT((__proc_info_end - __proc_info_begin), "missing CPU support")
 ASSERT((__arch_info_end - __arch_info_begin), "no machine record defined")
 
-/*
- * The HYP init code can't be more than a page long,
- * and should not cross a page boundary.
- * The above comment applies as well.
- */
-ASSERT(__hyp_idmap_text_end - (__hyp_idmap_text_start & PAGE_MASK) <= PAGE_SIZE,
-	"HYP init code too big or misaligned")
-
 #ifdef CONFIG_XIP_DEFLATED_DATA
 /*
  * The .bss is used as a stack area for __inflate_kernel_data() whose stack
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 319ccb10846a..88a720da443b 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -170,12 +170,4 @@ __start_rodata_section_aligned = ALIGN(__start_rodata, 1 << SECTION_SHIFT);
 ASSERT((__proc_info_end - __proc_info_begin), "missing CPU support")
 ASSERT((__arch_info_end - __arch_info_begin), "no machine record defined")
 
-/*
- * The HYP init code can't be more than a page long,
- * and should not cross a page boundary.
- * The above comment applies as well.
- */
-ASSERT(__hyp_idmap_text_end - (__hyp_idmap_text_start & PAGE_MASK) <= PAGE_SIZE,
-	"HYP init code too big or misaligned")
-
 #endif /* CONFIG_XIP_KERNEL */
diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/kernel/vmlinux.lds.h
index 8247bc15addc..381a8e105fa5 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/kernel/vmlinux.lds.h
@@ -31,20 +31,11 @@
 		*(.proc.info.init)					\
 		__proc_info_end = .;
 
-#define HYPERVISOR_TEXT							\
-		__hyp_text_start = .;					\
-		*(.hyp.text)						\
-		__hyp_text_end = .;
-
 #define IDMAP_TEXT							\
 		ALIGN_FUNCTION();					\
 		__idmap_text_start = .;					\
 		*(.idmap.text)						\
 		__idmap_text_end = .;					\
-		. = ALIGN(PAGE_SIZE);					\
-		__hyp_idmap_text_start = .;				\
-		*(.hyp.idmap.text)					\
-		__hyp_idmap_text_end = .;
 
 #define ARM_DISCARD							\
 		*(.ARM.exidx.exit.text)					\
@@ -72,7 +63,6 @@
 		SCHED_TEXT						\
 		CPUIDLE_TEXT						\
 		LOCK_TEXT						\
-		HYPERVISOR_TEXT						\
 		KPROBES_TEXT						\
 		*(.gnu.warning)						\
 		*(.glue_7)						\
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index 5d0d0f86e790..69a337df619f 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -63,9 +63,6 @@ static unsigned int cachepolicy __initdata = CPOLICY_WRITEBACK;
 static unsigned int ecc_mask __initdata = 0;
 pgprot_t pgprot_user;
 pgprot_t pgprot_kernel;
-pgprot_t pgprot_hyp_device;
-pgprot_t pgprot_s2;
-pgprot_t pgprot_s2_device;
 
 EXPORT_SYMBOL(pgprot_user);
 EXPORT_SYMBOL(pgprot_kernel);
@@ -75,15 +72,8 @@ struct cachepolicy {
 	unsigned int	cr_mask;
 	pmdval_t	pmd;
 	pteval_t	pte;
-	pteval_t	pte_s2;
 };
 
-#ifdef CONFIG_ARM_LPAE
-#define s2_policy(policy)	policy
-#else
-#define s2_policy(policy)	0
-#endif
-
 unsigned long kimage_voffset __ro_after_init;
 
 static struct cachepolicy cache_policies[] __initdata = {
@@ -92,31 +82,26 @@ static struct cachepolicy cache_policies[] __initdata = {
 		.cr_mask	= CR_W|CR_C,
 		.pmd		= PMD_SECT_UNCACHED,
 		.pte		= L_PTE_MT_UNCACHED,
-		.pte_s2		= s2_policy(L_PTE_S2_MT_UNCACHED),
 	}, {
 		.policy		= "buffered",
 		.cr_mask	= CR_C,
 		.pmd		= PMD_SECT_BUFFERED,
 		.pte		= L_PTE_MT_BUFFERABLE,
-		.pte_s2		= s2_policy(L_PTE_S2_MT_UNCACHED),
 	}, {
 		.policy		= "writethrough",
 		.cr_mask	= 0,
 		.pmd		= PMD_SECT_WT,
 		.pte		= L_PTE_MT_WRITETHROUGH,
-		.pte_s2		= s2_policy(L_PTE_S2_MT_WRITETHROUGH),
 	}, {
 		.policy		= "writeback",
 		.cr_mask	= 0,
 		.pmd		= PMD_SECT_WB,
 		.pte		= L_PTE_MT_WRITEBACK,
-		.pte_s2		= s2_policy(L_PTE_S2_MT_WRITEBACK),
 	}, {
 		.policy		= "writealloc",
 		.cr_mask	= 0,
 		.pmd		= PMD_SECT_WBWA,
 		.pte		= L_PTE_MT_WRITEALLOC,
-		.pte_s2		= s2_policy(L_PTE_S2_MT_WRITEBACK),
 	}
 };
 
@@ -246,9 +231,6 @@ static struct mem_type mem_types[] __ro_after_init = {
 	[MT_DEVICE] = {		  /* Strongly ordered / ARMv6 shared device */
 		.prot_pte	= PROT_PTE_DEVICE | L_PTE_MT_DEV_SHARED |
 				  L_PTE_SHARED,
-		.prot_pte_s2	= s2_policy(PROT_PTE_S2_DEVICE) |
-				  s2_policy(L_PTE_S2_MT_DEV_SHARED) |
-				  L_PTE_SHARED,
 		.prot_l1	= PMD_TYPE_TABLE,
 		.prot_sect	= PROT_SECT_DEVICE | PMD_SECT_S,
 		.domain		= DOMAIN_IO,
@@ -434,7 +416,6 @@ static void __init build_mem_type_table(void)
 	struct cachepolicy *cp;
 	unsigned int cr = get_cr();
 	pteval_t user_pgprot, kern_pgprot, vecs_pgprot;
-	pteval_t hyp_device_pgprot, s2_pgprot, s2_device_pgprot;
 	int cpu_arch = cpu_architecture();
 	int i;
 
@@ -558,9 +539,6 @@ static void __init build_mem_type_table(void)
 	 */
 	cp = &cache_policies[cachepolicy];
 	vecs_pgprot = kern_pgprot = user_pgprot = cp->pte;
-	s2_pgprot = cp->pte_s2;
-	hyp_device_pgprot = mem_types[MT_DEVICE].prot_pte;
-	s2_device_pgprot = mem_types[MT_DEVICE].prot_pte_s2;
 
 #ifndef CONFIG_ARM_LPAE
 	/*
@@ -604,7 +582,6 @@ static void __init build_mem_type_table(void)
 			user_pgprot |= L_PTE_SHARED;
 			kern_pgprot |= L_PTE_SHARED;
 			vecs_pgprot |= L_PTE_SHARED;
-			s2_pgprot |= L_PTE_SHARED;
 			mem_types[MT_DEVICE_WC].prot_sect |= PMD_SECT_S;
 			mem_types[MT_DEVICE_WC].prot_pte |= L_PTE_SHARED;
 			mem_types[MT_DEVICE_CACHED].prot_sect |= PMD_SECT_S;
@@ -666,9 +643,6 @@ static void __init build_mem_type_table(void)
 	pgprot_user   = __pgprot(L_PTE_PRESENT | L_PTE_YOUNG | user_pgprot);
 	pgprot_kernel = __pgprot(L_PTE_PRESENT | L_PTE_YOUNG |
 				 L_PTE_DIRTY | kern_pgprot);
-	pgprot_s2  = __pgprot(L_PTE_PRESENT | L_PTE_YOUNG | s2_pgprot);
-	pgprot_s2_device  = __pgprot(s2_device_pgprot);
-	pgprot_hyp_device  = __pgprot(hyp_device_pgprot);
 
 	mem_types[MT_LOW_VECTORS].prot_l1 |= ecc_mask;
 	mem_types[MT_HIGH_VECTORS].prot_l1 |= ecc_mask;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
