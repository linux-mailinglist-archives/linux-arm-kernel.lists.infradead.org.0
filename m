Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442E31F6960
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/jXSE9L5mhH+lbvweGm5g4U4aSdjaFZlMwTBpLzBoM=; b=r+rbrXgdRLAsZE
	twxQa8+GS2jAtT+x8m7L98WmHwvG49epeJFuLMiiC7DpWbUCAhQpOeALAMWuWDhSHgIBiLb61Epo4
	wS5X0ta7dpJ/191Az7+n+jVni5XaYg0a5StAnM7EwqEQF3ImphQ9mfE0QW+oE1yS0hGtEisE49lLn
	DfI82LW4xsJIb/5y9fEr3ega2QuRhSbERR0eGh36gQ8uzOl8tG8hbcy9i6pmxNcrCWD/Hj7oS+Tlx
	Ztqzu9y7zgTZsjeOuKDTqTwfh5bFZyDO8aSua9tQ0fSPe/3JG9dh6iVlPWWyrSjSsxBDbCvevJoC3
	qvBEghfgubglHxyldCXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNbZ-0006mJ-Fq; Thu, 11 Jun 2020 13:50:53 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNaJ-0003UU-53
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:49:37 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7C99F2000C;
 Thu, 11 Jun 2020 13:49:33 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 6/6] ARM: Add 64K page support at MMU level
Date: Thu, 11 Jun 2020 15:49:14 +0200
Message-Id: <20200611134914.765827-7-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200611134914.765827-1-gregory.clement@bootlin.com>
References: <20200611134914.765827-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064935_468861_3B696239 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.200 listed in wl.mailspike.net]
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
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While 8K, 16K or 32K pages are not supported by ARM, it is possible to
use large page with a 64K size.

Compared to the large page support based on software, by using real
64K page the tlb flush can be done on a single page instead of a range
of pages.

This is inspired from fa0ca2726ea9 ("DSMP 64K support") and
4ef803e12baf ("mmu: large-page: Added support for multiple kernel page
sizes") from
https://github.com/MarvellEmbeddedProcessors/linux-marvell.git

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/arm/include/asm/page.h                 |  2 ++
 arch/arm/include/asm/pgtable-2level-hwdef.h |  8 ++++++
 arch/arm/include/asm/tlbflush.h             | 14 +++++------
 arch/arm/mm/Kconfig                         | 23 +++++++++++++++--
 arch/arm/mm/proc-v7-2level.S                | 28 +++++++++++++++++++++
 arch/arm/mm/tlb-v7.S                        |  8 +++---
 6 files changed, 70 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/page.h b/arch/arm/include/asm/page.h
index 42784fed8834..8d6b16e73b06 100644
--- a/arch/arm/include/asm/page.h
+++ b/arch/arm/include/asm/page.h
@@ -16,6 +16,8 @@
 #define PAGE_SHIFT		15
 #elif defined(CONFIG_ARM_64KB_SW_PAGE_SIZE_SUPPORT)
 #define PAGE_SHIFT		16
+#elif defined(CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT)
+#define PAGE_SHIFT		16
 #else
 #define PAGE_SHIFT		12
 #endif
diff --git a/arch/arm/include/asm/pgtable-2level-hwdef.h b/arch/arm/include/asm/pgtable-2level-hwdef.h
index 556937e1790e..37503789c6d6 100644
--- a/arch/arm/include/asm/pgtable-2level-hwdef.h
+++ b/arch/arm/include/asm/pgtable-2level-hwdef.h
@@ -66,7 +66,11 @@
 /*
  *   - extended small page/tiny page
  */
+#ifdef CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+#define PTE_EXT_XN		(_AT(pteval_t, 1) << 15)	/* v6 */
+#else
 #define PTE_EXT_XN		(_AT(pteval_t, 1) << 0)		/* v6 */
+#endif
 #define PTE_EXT_AP_MASK		(_AT(pteval_t, 3) << 4)
 #define PTE_EXT_AP0		(_AT(pteval_t, 1) << 4)
 #define PTE_EXT_AP1		(_AT(pteval_t, 2) << 4)
@@ -74,7 +78,11 @@
 #define PTE_EXT_AP_UNO_SRW	(PTE_EXT_AP0)
 #define PTE_EXT_AP_URO_SRW	(PTE_EXT_AP1)
 #define PTE_EXT_AP_URW_SRW	(PTE_EXT_AP1|PTE_EXT_AP0)
+#ifdef CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+#define PTE_EXT_TEX(x)		(_AT(pteval_t, (x)) << 12)	/* Large Page */
+#else
 #define PTE_EXT_TEX(x)		(_AT(pteval_t, (x)) << 6)	/* v5 */
+#endif
 #define PTE_EXT_APX		(_AT(pteval_t, 1) << 9)		/* v6 */
 #define PTE_EXT_COHERENT	(_AT(pteval_t, 1) << 9)		/* XScale3 */
 #define PTE_EXT_SHARED		(_AT(pteval_t, 1) << 10)	/* v6 */
diff --git a/arch/arm/include/asm/tlbflush.h b/arch/arm/include/asm/tlbflush.h
index d8ad4021a4da..1d2b17a9b6ee 100644
--- a/arch/arm/include/asm/tlbflush.h
+++ b/arch/arm/include/asm/tlbflush.h
@@ -420,7 +420,7 @@ static inline void
 __local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 {
 	const unsigned int __tlb_flag = __cpu_tlb_flags;
-#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	if (tlb_flag(TLB_WB))
 		dsb();
 
@@ -444,7 +444,7 @@ __local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 	tlb_op(TLB_V6_U_PAGE, "c8, c7, 1", uaddr);
 	tlb_op(TLB_V6_D_PAGE, "c8, c6, 1", uaddr);
 	tlb_op(TLB_V6_I_PAGE, "c8, c5, 1", uaddr);
-#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+#endif /* CONFIG_SW_ARM_LARGE_PAGE_SUPPORT */
 }
 
 static inline void
@@ -458,7 +458,7 @@ local_flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 		dsb(nshst);
 
 	__local_flush_tlb_page(vma, uaddr);
-#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if !defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c7, 1", uaddr);
 #endif
 
@@ -489,7 +489,7 @@ __flush_tlb_page(struct vm_area_struct *vma, unsigned long uaddr)
 
 static inline void __local_flush_tlb_kernel_page(unsigned long kaddr)
 {
-#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	__cpu_flush_kern_tlb_range(kaddr, kaddr + PAGE_SIZE);
 #else
 	const int zero = 0;
@@ -504,7 +504,7 @@ static inline void __local_flush_tlb_kernel_page(unsigned long kaddr)
 	tlb_op(TLB_V6_U_PAGE, "c8, c7, 1", kaddr);
 	tlb_op(TLB_V6_D_PAGE, "c8, c6, 1", kaddr);
 	tlb_op(TLB_V6_I_PAGE, "c8, c5, 1", kaddr);
-#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+#endif /* CONFIG_SW_ARM_LARGE_PAGE_SUPPORT */
 }
 
 static inline void local_flush_tlb_kernel_page(unsigned long kaddr)
@@ -517,7 +517,7 @@ static inline void local_flush_tlb_kernel_page(unsigned long kaddr)
 		dsb(nshst);
 
 	__local_flush_tlb_kernel_page(kaddr);
-#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if !defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c7, 1", kaddr);
 #endif
 
@@ -537,7 +537,7 @@ static inline void __flush_tlb_kernel_page(unsigned long kaddr)
 		dsb(ishst);
 
 	__local_flush_tlb_kernel_page(kaddr);
-#if !defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if !defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	tlb_op(TLB_V7_UIS_PAGE, "c8, c3, 1", kaddr);
 #endif
 
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index 6266caa93520..b566708af0bf 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -978,13 +978,16 @@ config MIGHT_HAVE_CACHE_L2X0
 config ARM_LARGE_PAGE_SUPPORT
 	bool
 
+config ARM_SW_LARGE_PAGE_SUPPORT
+	bool
+
 choice
 	prompt "Kernel Large Page Support"
 	depends on CPU_V7 && !ARM_LPAE
 	default ARM_NO_LARGE_PAGE_SUPPORT
 	help
-	  Support kennel large pages (> 4KB) by software emulation of
-	  large pages (using 4KB MMU pages).  Select one of the page
+	  Support kennel large pages (> 4KB), this includes MMU large pages
+	  (64KB) and software emulation of large pages (using 4KB MMU pages).
 	  sizes below.
 
 config ARM_NO_LARGE_PAGE_SUPPORT
@@ -998,6 +1001,7 @@ config ARM_NO_LARGE_PAGE_SUPPORT
 config ARM_8KB_SW_PAGE_SIZE_SUPPORT
 	bool "8KB software page size support"
 	select ARM_LARGE_PAGE_SUPPORT
+	select ARM_SW_LARGE_PAGE_SUPPORT
 	help
 	  The kernel uses 8KB pages, MMU page table will still use 4KB pages.
 	  This feature enables support for large storage volumes up to 32TB
@@ -1006,6 +1010,7 @@ config ARM_8KB_SW_PAGE_SIZE_SUPPORT
 config ARM_16KB_SW_PAGE_SIZE_SUPPORT
 	bool "16KB software page size support"
 	select ARM_LARGE_PAGE_SUPPORT
+	select ARM_SW_LARGE_PAGE_SUPPORT
 	help
 	  The kernel uses 16KB pages, MMU page table will still use 4KB pages.
 	  This feature enables support for large storage volumes up to 64TB.
@@ -1014,6 +1019,7 @@ config ARM_16KB_SW_PAGE_SIZE_SUPPORT
 config ARM_32KB_SW_PAGE_SIZE_SUPPORT
 	bool "32KB software page size support"
 	select ARM_LARGE_PAGE_SUPPORT
+	select ARM_SW_LARGE_PAGE_SUPPORT
 	help
 	  The kernel uses 32KB pages, MMU page table will still use 4KB pages.
 	  This feature enables support for large storage volumes up to 128TB.
@@ -1022,10 +1028,23 @@ config ARM_32KB_SW_PAGE_SIZE_SUPPORT
 config ARM_64KB_SW_PAGE_SIZE_SUPPORT
 	bool "64KB software page size support"
 	select ARM_LARGE_PAGE_SUPPORT
+	select ARM_SW_LARGE_PAGE_SUPPORT
 	help
 	  The kernel uses 64KB pages, MMU page table will still use 4KB pages.
 	  This feature enables support for large storage volumes up to 256TB.
 	  at the expense of higher memory fragmentation.
+	  If you need 64KB pages, consider using the ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+	  option.
+
+config ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+	bool "64KB MMU page size support"
+	select ARM_LARGE_PAGE_SUPPORT
+	help
+	  The kernel uses 64KB pages. The page-table will use large-pages (64KB)
+	  as well.
+	  This feature enables support for large storage volumes up to 256TB.
+	  at the expense of higher memory fragmentation.
+
 endchoice
 
 config CACHE_L2X0
diff --git a/arch/arm/mm/proc-v7-2level.S b/arch/arm/mm/proc-v7-2level.S
index 7e34b421c8b8..67401f859c2d 100644
--- a/arch/arm/mm/proc-v7-2level.S
+++ b/arch/arm/mm/proc-v7-2level.S
@@ -92,9 +92,16 @@ ENTRY(cpu_v7_set_pte_ext)
 #endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
 
 	bic	r3, r1, #0x000003f0
+#ifdef CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+	bic	r3, r3, #0x00000F000
+#endif
 	bic	r3, r3, #PTE_TYPE_MASK
 	orr	r3, r3, r2
+#ifdef CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+	orr	r3, r3, #PTE_EXT_AP0 | 1
+#else
 	orr	r3, r3, #PTE_EXT_AP0 | 2
+#endif
 
 	tst	r1, #1 << 4
 	orrne	r3, r3, #PTE_EXT_TEX(1)
@@ -119,6 +126,26 @@ ENTRY(cpu_v7_set_pte_ext)
  THUMB(	add	r0, r0, #2048 )
  THUMB(	str	r3, [r0] )
 #ifdef CONFIG_ARM_LARGE_PAGE_SUPPORT
+#ifdef CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT
+	@ Need to duplicate the entry 16 times because of overlapping in PTE index bits.
+	str	r3, [r0, #4]
+	str	r3, [r0, #8]
+	str	r3, [r0, #12]
+	str	r3, [r0, #16]
+	str	r3, [r0, #20]
+	str	r3, [r0, #24]
+	str	r3, [r0, #28]
+	flush_pte r0
+	add	r0, r0, #32
+	str	r3, [r0]
+	str	r3, [r0, #4]
+	str	r3, [r0, #8]
+	str	r3, [r0, #12]
+	str	r3, [r0, #16]
+	str	r3, [r0, #20]
+	str	r3, [r0, #24]
+	str	r3, [r0, #28]
+#else
 #define PTE_OFFSET ((1 << (PAGE_SHIFT - 12)) * 4)
 	mov	r1, #PTE_OFFSET
 	mov	r2, #4
@@ -137,6 +164,7 @@ ENTRY(cpu_v7_set_pte_ext)
 #endif /* PAGE_SHIFT > 15 */
 2:	cmp	r2, r1
 	bne	1b
+#endif /* CONFIG_ARM_64KB_MMU_PAGE_SIZE_SUPPORT */
 #endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
 3:	flush_pte r0
 #endif /* CONFIG_MMU */
diff --git a/arch/arm/mm/tlb-v7.S b/arch/arm/mm/tlb-v7.S
index 8e68218e53d3..c90dbbd6aa5e 100644
--- a/arch/arm/mm/tlb-v7.S
+++ b/arch/arm/mm/tlb-v7.S
@@ -50,11 +50,11 @@ ENTRY(v7wbi_flush_user_tlb_range)
 #endif
 	ALT_UP(mcr	p15, 0, r0, c8, c7, 1)	@ TLB invalidate U MVA
 
-#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	add	r0, r0, #0x1000
 #else
         add	r0, r0, #PAGE_SZ
-#endif  /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+#endif  /* CONFIG_SW_ARM_LARGE_PAGE_SUPPORT */
         cmp	r0, r1
 	blo	1b
 	dsb	ish
@@ -82,11 +82,11 @@ ENTRY(v7wbi_flush_kern_tlb_range)
 	ALT_SMP(mcr	p15, 0, r0, c8, c3, 1)	@ TLB invalidate U MVA (shareable)
 #endif
 	ALT_UP(mcr	p15, 0, r0, c8, c7, 1)	@ TLB invalidate U MVA
-#if defined(CONFIG_ARM_LARGE_PAGE_SUPPORT)
+#if defined(CONFIG_SW_ARM_LARGE_PAGE_SUPPORT)
 	add	r0, r0, #0x1000
 #else
         add	r0, r0, #PAGE_SZ
-#endif /* CONFIG_ARM_LARGE_PAGE_SUPPORT */
+#endif /* CONFIG_SW_ARM_LARGE_PAGE_SUPPORT */
 	cmp	r0, r1
 	blo	1b
 	dsb	ish
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
