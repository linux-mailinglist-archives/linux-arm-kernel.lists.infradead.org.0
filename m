Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAFA1F6962
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e59ofkhALl3B63FmHRh3qAUYq8xeuW+L/PFCVDdJePo=; b=a7M/tHI67mw54K
	9juWhdR0RVNsz7dvgXR2eUS/f8Q5BBteY6KWwjeOs5mA7XlcZ6DhvnfhOTRskwQJrvldIe6Q3/Zud
	TF251waBeF+2CbbuKEWc/2iRE343r2wnIy0WUXssurPqp7JhMbcQRziFolvKpq+XXCoR+SbEZXsAl
	ITmk2QrWxih8JD0R8q79MuomdrvcAK+OSfqEt1mJfKsVTW3uvDCkwQ0GjXH9sj4S9bskF9u5zmugS
	8wJnRnbRJPQuNDU9OCiEeHH0Ww6AxRAPBT8rdVgtbhlI/rVVvMRdlnwQmdDDCq9Iibz/OeBIv8F/S
	zHNUqzmbQAFzqWekfwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNc6-0007GM-Gf; Thu, 11 Jun 2020 13:51:26 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaI-0003UP-Jm
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:38 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D2EC940008;
 Thu, 11 Jun 2020 13:49:32 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 5/6] ARM: Add large kernel page support
Date: Thu, 11 Jun 2020 15:49:13 +0200
Message-Id: <20200611134914.765827-6-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064934_918188_E9A34335 
X-CRM114-Status: GOOD (  27.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 32 bits system with 4K page it is not possible to support volume
larger than 16TB even with ext4 support. To achieve this, the size of
the page must be larger.

This patch allows to support until 64K kernel page but at the MMU
level it is still the 4K page that is used.

Indeed for ARM there is already a difference between the kernel page
and the hardware page in the way they are managed. In the same 4K
space the Linux kernel deals with 2 PTE tables at the beginning, while
the hardware deals with 2 other hardware PTE tables.

This patch takes advantage of it and push further the difference
between hardware and Linux version by using larger page at Linux
kernel level.

At the lower level when the Linux kernel deals with a single large
page, then it was several 4K pages that are managed.

This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/include/asm/page.h     | 10 +++++++
 arch/arm/include/asm/pgtable.h  |  4 +++
 arch/arm/include/asm/shmparam.h |  4 +++
 arch/arm/include/asm/tlbflush.h | 21 ++++++++++++-
 arch/arm/kernel/entry-common.S  | 13 ++++++++
 arch/arm/kernel/traps.c         | 10 +++++++
 arch/arm/mm/Kconfig             | 53 +++++++++++++++++++++++++++++++++
 arch/arm/mm/fault.c             | 19 ++++++++++++
 arch/arm/mm/mmu.c               | 18 +++++++++++
 arch/arm/mm/pgd.c               |  2 ++
 arch/arm/mm/proc-v7-2level.S    | 44 +++++++++++++++++++++++++--
 arch/arm/mm/tlb-v7.S            | 14 +++++++--
 12 files changed, 205 insertions(+), 7 deletions(-)

diff --git a/arch/arm/include/asm/page.h b/arch/arm/include/asm/page.h
index 11b058a72a5b..42784fed8834 100644
--- a/arch/arm/include/asm/page.h
+++ b/arch/arm/include/asm/page.h
@@ -8,7 +8,17 @@
 #define _ASMARM_PAGE_H
 
 /* PAGE_SHIFT determines the page size */
+#ifdef CONFIG_ARM_8KB_SW_PAGE_SIZE_SUPPORT
+#define PAGE_SHIFT		13
+#elif defined(CONFIG_ARM_16KB_SW_PAGE_SIZE_SUPPORT)
+#define PAGE_SHIFT		14
+#elif defined(CONFIG_ARM_32KB_SW_PAGE_SIZE_SUPPORT)
+#define PAGE_SHIFT		15
+#elif defined(CONFIG_ARM_64KB_SW_PAGE_SIZE_SUPPORT)
+#define PAGE_SHIFT		16
+#else
 #define PAGE_SHIFT		12
+#endif
 #define PAGE_SIZE		(_AC(1,UL) << PAGE_SHIFT)
 #define PAGE_MASK		(~((1 << PAGE_SHIFT) - 1))
 
diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
index befc8fcec98f..8b0a85ec8614 100644
--- a/arch/arm/include/asm/pgtable.h
+++ b/arch/arm/include/asm/pgtable.h
@@ -59,7 +59,11 @@ extern void __pgd_error(const char *file, int line, pgd_t);
  * mapping to be mapped at.  This is particularly important for
  * non-high vector CPUs.
  */
+#ifndef CONFIG_ARM_LARGE_PAGE_SUPPORT
 #define FIRST_USER_ADDRESS	(PAGE_SIZE * 2)
+#else
+#define FIRST_USER_ADDRESS	PAGE_SIZE
+#endif
 
 /*
  * Use TASK_SIZE as the ceiling argument for free_pgtables() and
diff --git a/arch/arm/include/asm/shmparam.h b/arch/arm/include/asm/shmparam.h
index 367a9dac6150..01de64a57a5e 100644
--- a/arch/arm/include/asm/shmparam.h
+++ b/arch/arm/include/asm/shmparam.h
@@ -7,7 +7,11 @@
  * or page size, whichever is greater since the cache aliases
  * every size/ways bytes.
  */
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+#define	SHMLBA	(16 << 10)		 /* attach addr a multiple of (4 * 4096) */
+#else
 #define	SHMLBA	(4 * PAGE_SIZE)		 /* attach addr a multiple of this */
+#endif
 
 /*
  * Enforce SHMLBA in shmat
diff --git a/arch/arm/include/asm/tlbflush.h b/arch/arm/include/asm/tlbflush.h
index 24cbfc112dfa..d8ad4021a4da 100644
--- a/arch/arm/include/asm/tlbflush.h
+++ b/arch/arm/include/asm/tlbflush.h
@@ -419,8 +419,16 @@ static inline void __flush_tlb_mm(struct mm_struct *mm)
 static inline void
 __local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 {
-	const int zero = 0;
 	const unsigned int __tlb_flag = __cpu_tlb_flags;
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	if (tlb_flag(TLB_WB))
+		dsb();
+
+	uaddr = (uaddr & PAGE_MASK);
+	__cpu_flush_user_tlb_range(uaddr, uaddr + PAGE_SIZE, vma);
+
+#else
+	const int zero = 0;
 
 	uaddr = (uaddr & PAGE_MASK) | ASID(vma->vm_mm);
 
@@ -436,6 +444,7 @@ __local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 	tlb_op(TLB_V6_U_PAGE, "c8, c7, 1", uaddr);
 	tlb_op(TLB_V6_D_PAGE, "c8, c6, 1", uaddr);
 	tlb_op(TLB_V6_I_PAGE, "c8, c5, 1", uaddr);
+#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
 }
 
 static inline void
@@ -449,7 +458,9 @@ local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 		dsb(nshst);
 
 	__local_flush_tlb_page(vma, uaddr);
+#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c7, 1", uaddr);
+#endif
 
 	if (tlb_flag(TLB_BARRIER))
 		dsb(nsh);
@@ -478,6 +489,9 @@ __flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 
 static inline void __local_flush_tlb_kernel_page(unsigned long kaddr)
 {
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	__cpu_flush_kern_tlb_range(kaddr, kaddr + PAGE_SIZE);
+#else
 	const int zero = 0;
 	const unsigned int __tlb_flag = __cpu_tlb_flags;
 
@@ -490,6 +504,7 @@ static inline void __local_flush_tlb_kernel_page(unsigned long kaddr)
 	tlb_op(TLB_V6_U_PAGE, "c8, c7, 1", kaddr);
 	tlb_op(TLB_V6_D_PAGE, "c8, c6, 1", kaddr);
 	tlb_op(TLB_V6_I_PAGE, "c8, c5, 1", kaddr);
+#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
 }
 
 static inline void local_flush_tlb_kernel_page(unsigned long kaddr)
@@ -502,7 +517,9 @@ static inline void local_flush_tlb_kernel_page(unsigned long kaddr)
 		dsb(nshst);
 
 	__local_flush_tlb_kernel_page(kaddr);
+#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c7, 1", kaddr);
+#endif
 
 	if (tlb_flag(TLB_BARRIER)) {
 		dsb(nsh);
@@ -520,7 +537,9 @@ static inline void __flush_tlb_kernel_page(unsigned long kaddr)
 		dsb(ishst);
 
 	__local_flush_tlb_kernel_page(kaddr);
+#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c3, 1", kaddr);
+#endif
 
 	if (tlb_flag(TLB_BARRIER)) {
 		dsb(ish);
diff --git a/arch/arm/kernel/entry-common.S b/arch/arm/kernel/entry-common.S
index 271cb8a1eba1..3a6ff31b8554 100644
--- a/arch/arm/kernel/entry-common.S
+++ b/arch/arm/kernel/entry-common.S
@@ -407,9 +407,22 @@ ENDPROC(sys_fstatfs64_wrapper)
  * Note: off_4k (r5) is always units of 4K.  If we can't do the requested
  * offset, we return EINVAL.
  */
+
+#define PGOFF_SHIFT (PAGE_SHIFT - 12)
+#define PGOFF_MASK  ((1 << PGOFF_SHIFT) - 1)
+
 sys_mmap2:
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+		tst	r5, #PGOFF_MASK
+		moveq	r5, r5, lsr #PGOFF_SHIFT
+		streq	r5, [sp, #4]
+		beq	sys_mmap_pgoff
+		mov	r0, #-EINVAL
+		ret	lr
+#else
 		str	r5, [sp, #4]
 		b	sys_mmap_pgoff
+#endif
 ENDPROC(sys_mmap2)
 
 #ifdef CONFIG_OABI_COMPAT
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 1e70e7227f0f..19cf3e66df31 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -830,7 +830,17 @@ void __init early_trap_init(void *vectors_base)
 
 	kuser_init(vectors_base);
 
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	/*
+	 * With large page support, the page are at least 8K, so there
+	 * enough space in one page for the stubs are copied at
+	 * 4K offset.
+	 */
+	flush_icache_range(vectors, vectors + PAGE_SIZE);
+#else
 	flush_icache_range(vectors, vectors + PAGE_SIZE * 2);
+#endif
+
 #else /* ifndef CONFIG_CPU_V7M */
 	/*
 	 * on V7-M there is no need to copy the vector table to a dedicated
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 65e4482e3849..6266caa93520 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -975,6 +975,59 @@ config MIGHT_HAVE_CACHE_L2X0
 	  instead of this option, thus preventing the user from
 	  inadvertently configuring a broken kernel.
 
+config ARM_LARGE_PAGE_SUPPORT
+	bool
+
+choice
+	prompt "Kernel Large Page Support"
+	depends on CPU_V7 && !ARM_LPAE
+	default ARM_NO_LARGE_PAGE_SUPPORT
+	help
+	  Support kennel large pages (> 4KB) by software emulation of
+	  large pages (using 4KB MMU pages).  Select one of the page
+	  sizes below.
+
+config ARM_NO_LARGE_PAGE_SUPPORT
+	bool "Disabled - Use default"
+	help
+	  Use kernel default page size (4KB).
+	  If you are not sure, select this option.
+	  This option does not make any changes to default kernel page size
+	  MMU management.
+
+config ARM_8KB_SW_PAGE_SIZE_SUPPORT
+	bool "8KB software page size support"
+	select ARM_LARGE_PAGE_SUPPORT
+	help
+	  The kernel uses 8KB pages, MMU page table will still use 4KB pages.
+	  This feature enables support for large storage volumes up to 32TB
+	  at the expense of higher memory fragmentation.
+
+config ARM_16KB_SW_PAGE_SIZE_SUPPORT
+	bool "16KB software page size support"
+	select ARM_LARGE_PAGE_SUPPORT
+	help
+	  The kernel uses 16KB pages, MMU page table will still use 4KB pages.
+	  This feature enables support for large storage volumes up to 64TB.
+	  at the expense of higher memory fragmentation.
+
+config ARM_32KB_SW_PAGE_SIZE_SUPPORT
+	bool "32KB software page size support"
+	select ARM_LARGE_PAGE_SUPPORT
+	help
+	  The kernel uses 32KB pages, MMU page table will still use 4KB pages.
+	  This feature enables support for large storage volumes up to 128TB.
+	  at the expense of higher memory fragmentation.
+
+config ARM_64KB_SW_PAGE_SIZE_SUPPORT
+	bool "64KB software page size support"
+	select ARM_LARGE_PAGE_SUPPORT
+	help
+	  The kernel uses 64KB pages, MMU page table will still use 4KB pages.
+	  This feature enables support for large storage volumes up to 256TB.
+	  at the expense of higher memory fragmentation.
+endchoice
+
 config CACHE_L2X0
 	bool "Enable the L2x0 outer cache controller" if MIGHT_HAVE_CACHE_L2X0
 	default MIGHT_HAVE_CACHE_L2X0
diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index 2dd5c41cbb8d..ee4241b3cb2b 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -27,6 +27,20 @@
 
 #ifdef CONFIG_MMU
 
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+static long long get_large_pte_hw_val(pte_t *pte)
+{
+	unsigned long pte_ptr = (unsigned long)pte;
+	unsigned long tmp = pte_ptr;
+
+	pte_ptr += (PTE_HWTABLE_PTRS * sizeof(void *));
+	pte_ptr &= ~0x7FC;
+	tmp &= 0x7FC & (~(((PAGE_SHIFT - 12) - 1) << 7));
+	pte_ptr += (tmp << (PAGE_SHIFT - 12));
+	return (long long)pte_val(*(pte_t *)pte_ptr);
+}
+#endif
+
 /*
  * This is useful to dump out the page tables associated with
  * 'addr' in mm 'mm'.
@@ -86,9 +100,14 @@ void show_pte(const char *lvl, struct mm_struct *mm, unsigned long addr)
 		pte = pte_offset_map(pmd, addr);
 		pr_cont(", *pte=%08llx", (long long)pte_val(*pte));
 #ifndef CONFIG_ARM_LPAE
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+		pr_cont(", *ppte=%08llx", get_large_pte_hw_val(pte));
+
+#else
 		pr_cont(", *ppte=%08llx",
 		       (long long)pte_val(pte[PTE_HWTABLE_PTRS]));
 #endif
+#endif /* CONFIG_ARM_LPAE */
 		pte_unmap(pte);
 	} while(0);
 
diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index b7fdea7e0cbe..06549714973a 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -1318,8 +1318,17 @@ static void __init devicemaps_init(const struct machine_desc *mdesc)
 	/*
 	 * Allocate the vector page early.
 	 */
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	/*
+	 * With large page support, the pages are at least 8K, so
+	 * there is enough space in one page for the stubs that are
+	 * copied at 4K offset.
+	 */
+	vectors = early_alloc(PAGE_SIZE);
+#else
 	vectors = early_alloc(PAGE_SIZE * 2);
 
+#endif
 	early_trap_init(vectors);
 
 	/*
@@ -1380,12 +1389,21 @@ static void __init devicemaps_init(const struct machine_desc *mdesc)
 		create_mapping(&map);
 	}
 
+	/*
+	 * With large page support, the page are at least 8K, so this
+	 * hardware page was already mapped. Actually the hardcoded
+	 * 4KB offset causes trouble with the virtual address passed
+	 * to create_mapping: the address is no more aligned to a
+	 * page.
+	 */
+#ifndef CONFIG_ARM_LARGE_PAGE_SUPPORT
 	/* Now create a kernel read-only mapping */
 	map.pfn += 1;
 	map.virtual = 0xffff0000 + PAGE_SIZE;
 	map.length = PAGE_SIZE;
 	map.type = MT_LOW_VECTORS;
 	create_mapping(&map);
+#endif
 
 	/*
 	 * Ask the machine support to map in the statically mapped devices.
diff --git a/arch/arm/mm/pgd.c b/arch/arm/mm/pgd.c
index 478bd2c6aa50..ade3f3885b4c 100644
--- a/arch/arm/mm/pgd.c
+++ b/arch/arm/mm/pgd.c
@@ -95,7 +95,9 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
 		init_pmd = pmd_offset(init_pud, 0);
 		init_pte = pte_offset_map(init_pmd, 0);
 		set_pte_ext(new_pte + 0, init_pte[0], 0);
+#ifndef CONFIG_ARM_LARGE_PAGE_SUPPORT
 		set_pte_ext(new_pte + 1, init_pte[1], 0);
+#endif
 		pte_unmap(init_pte);
 		pte_unmap(new_pte);
 	}
diff --git a/arch/arm/mm/proc-v7-2level.S b/arch/arm/mm/proc-v7-2level.S
index 5db029c8f987..7e34b421c8b8 100644
--- a/arch/arm/mm/proc-v7-2level.S
+++ b/arch/arm/mm/proc-v7-2level.S
@@ -59,6 +59,11 @@ ENTRY(cpu_v7_switch_mm)
 	bx	lr
 ENDPROC(cpu_v7_switch_mm)
 
+    .macro flush_pte adr
+	ALT_SMP(W(nop))
+	ALT_UP (mcr	p15, 0, \adr, c7, c10, 1)	@ flush_pte
+.endm
+
 /*
  *	cpu_v7_set_pte_ext(ptep, pte)
  *
@@ -73,6 +78,19 @@ ENTRY(cpu_v7_set_pte_ext)
 #ifdef CONFIG_MMU
 	str	r1, [r0]			@ linux version
 
+    /* Calc HW PTE Entry Offset */
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+#define PTE_SHIFT	(PAGE_SHIFT - 12)
+#define PTE_MASK	(0x3FC >> (PTE_SHIFT - 1))
+	mov	r3, #PTE_MASK
+	and	r3, r3, r0
+	mov	r3, r3, lsl#PTE_SHIFT
+
+	bic	r0, r0, #0x3FC
+	bic	r0, r0, #0x400
+	orr	r0, r0, r3
+#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+
 	bic	r3, r1, #0x000003f0
 	bic	r3, r3, #PTE_TYPE_MASK
 	orr	r3, r3, r2
@@ -100,9 +118,29 @@ ENTRY(cpu_v7_set_pte_ext)
  ARM(	str	r3, [r0, #2048]! )
  THUMB(	add	r0, r0, #2048 )
  THUMB(	str	r3, [r0] )
-	ALT_SMP(W(nop))
-	ALT_UP (mcr	p15, 0, r0, c7, c10, 1)		@ flush_pte
-#endif
+#ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+#define PTE_OFFSET ((1 << (PAGE_SHIFT - 12)) * 4)
+	mov	r1, #PTE_OFFSET
+	mov	r2, #4
+1:	add	r3, r3, #0x1000
+	str	r3, [r0, r2]
+	add	r2, r2, #4
+#if PAGE_SHIFT > 15 /* 64KB in this case 2 cache lines need to be flushed */
+	cmp	r2, #32  @ cache line size
+	bne	2f
+	cmp	r2, r1
+	beq	3f
+	flush_pte r0
+	mov	r1, #32
+	add	r0, r0, #32
+	mov	r2, #0
+#endif /* PAGE_SHIFT > 15 */
+2:	cmp	r2, r1
+	bne	1b
+#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+3:	flush_pte r0
+#endif /* CONFIG_MMU */
+
 	bx	lr
 ENDPROC(cpu_v7_set_pte_ext)
 
diff --git a/arch/arm/mm/tlb-v7.S b/arch/arm/mm/tlb-v7.S
index 1bb28d7db567..8e68218e53d3 100644
--- a/arch/arm/mm/tlb-v7.S
+++ b/arch/arm/mm/tlb-v7.S
@@ -50,8 +50,12 @@ ENTRY(v7wbi_flush_user_tlb_range)
 #endif
 	ALT_UP(mcr	p15, 0, r0, c8, c7, 1)	@ TLB invalidate U MVA
 
-	add	r0, r0, #PAGE_SZ
-	cmp	r0, r1
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	add	r0, r0, #0x1000
+#else
+        add	r0, r0, #PAGE_SZ
+#endif  /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+        cmp	r0, r1
 	blo	1b
 	dsb	ish
 	ret	lr
@@ -78,7 +82,11 @@ ENTRY(v7wbi_flush_kern_tlb_range)
 	ALT_SMP(mcr	p15, 0, r0, c8, c3, 1)	@ TLB invalidate U MVA (shareable)
 #endif
 	ALT_UP(mcr	p15, 0, r0, c8, c7, 1)	@ TLB invalidate U MVA
-	add	r0, r0, #PAGE_SZ
+#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+	add	r0, r0, #0x1000
+#else
+        add	r0, r0, #PAGE_SZ
+#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
 	cmp	r0, r1
 	blo	1b
 	dsb	ish
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
