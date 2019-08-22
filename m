Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90CD98BDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:58:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zUwx84ToTTVNsUOtBdcIs3vdJp/kv/oXtAmoinOWxXE=; b=BqX
	qRpFGewcQbPloGD6hmyzlhNd/V1+SbYPU7LFjmgNlwUg0Wb6p3Gu7HeriT/O251By0GG6nXSxmQiV
	qngSARVFZtGMVv91EQDA8qLZA06D8PCChN5CZb1ZVHqG4aXtiBLvbe8Jp39PjX8pRVuQQS4GW4/Xw
	c4lFBPR7m6w2rujTli2NF7Ynq0b37RjoYcUCWOlyo59sUTP2ob8Wd0j7ztAQcgila5PLYG1AS5FfG
	K/w7ekSToOYCYRFZif0EQcijVxMg2I0AwszRUTWi6zTngB8xW2SRIOQqXXV3dXE7nKxhn4Ud2dFkX
	y3Zqzzj0/UlEBdTHllYcz0aki5P2hYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h2v-0000Uc-2t; Thu, 22 Aug 2019 06:58:09 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h2R-0000SR-N0
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:57:42 +0000
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7M6qneH180652
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 02:57:38 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2uhnq913bh-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 22 Aug 2019 02:57:38 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-arm-kernel@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 22 Aug 2019 07:57:36 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 22 Aug 2019 07:57:32 +0100
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x7M6vVFU28901708
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 22 Aug 2019 06:57:31 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7033B4203F;
 Thu, 22 Aug 2019 06:57:31 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9173B4204C;
 Thu, 22 Aug 2019 06:57:29 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 22 Aug 2019 06:57:29 +0000 (GMT)
Received: by rapoport-lnx (sSMTP sendmail emulation);
 Thu, 22 Aug 2019 09:57:28 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2] mm: consolidate pgtable_cache_init() and pgd_cache_init()
Date: Thu, 22 Aug 2019 09:57:26 +0300
X-Mailer: git-send-email 2.7.4
X-TM-AS-GCONF: 00
x-cbid: 19082206-4275-0000-0000-0000035BC2E9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082206-4276-0000-0000-0000386DE7E8
Message-Id: <1566457046-22637-1-git-send-email-rppt@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-22_05:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908220074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_235740_068771_BD569A6B 
X-CRM114-Status: GOOD (  29.86  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
 Mike Rapoport <rppt@linux.ibm.com>, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both pgtable_cache_init() and pgd_cache_init() are used to initialize kmem
cache for page table allocations on several architectures that do not use
PAGE_SIZE tables for one or more levels of the page table hierarchy.

Most architectures do not implement these functions and use __weak default
NOP implementation of pgd_cache_init(). Since there is no such default for
pgtable_cache_init(), its empty stub is duplicated among most
architectures.

Rename the definitions of pgd_cache_init() to pgtable_cache_init() and drop
empty stubs of pgtable_cache_init().

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: Will Deacon <will@kernel.org>		# arm64
Acked-by: Thomas Gleixner <tglx@linutronix.de>	# x86
---
v2 changes:
* remove stale comments and extra whitespace, per Matthew
* add acks

 arch/alpha/include/asm/pgtable.h      |  5 -----
 arch/arc/include/asm/pgtable.h        |  5 -----
 arch/arm/include/asm/pgtable-nommu.h  |  5 -----
 arch/arm/include/asm/pgtable.h        |  2 --
 arch/arm64/include/asm/pgtable.h      |  2 --
 arch/arm64/mm/pgd.c                   |  2 +-
 arch/c6x/include/asm/pgtable.h        |  5 -----
 arch/csky/include/asm/pgtable.h       |  5 -----
 arch/h8300/include/asm/pgtable.h      |  6 ------
 arch/hexagon/include/asm/pgtable.h    |  3 ---
 arch/hexagon/mm/Makefile              |  2 +-
 arch/hexagon/mm/pgalloc.c             | 10 ----------
 arch/ia64/include/asm/pgtable.h       |  5 -----
 arch/m68k/include/asm/pgtable_mm.h    |  5 -----
 arch/m68k/include/asm/pgtable_no.h    |  5 -----
 arch/microblaze/include/asm/pgtable.h |  7 -------
 arch/mips/include/asm/pgtable.h       |  5 -----
 arch/nds32/include/asm/pgtable.h      |  2 --
 arch/nios2/include/asm/pgtable.h      |  2 --
 arch/openrisc/include/asm/pgtable.h   |  5 -----
 arch/parisc/include/asm/pgtable.h     |  2 --
 arch/powerpc/include/asm/pgtable.h    |  1 -
 arch/riscv/include/asm/pgtable.h      |  5 -----
 arch/s390/include/asm/pgtable.h       |  5 -----
 arch/sh/include/asm/pgtable.h         |  5 -----
 arch/sh/mm/nommu.c                    |  4 ----
 arch/sparc/include/asm/pgtable_32.h   |  5 -----
 arch/sparc/include/asm/pgtable_64.h   |  1 -
 arch/um/include/asm/pgtable.h         |  2 --
 arch/unicore32/include/asm/pgtable.h  |  2 --
 arch/x86/include/asm/pgtable_32.h     |  1 -
 arch/x86/include/asm/pgtable_64.h     |  2 --
 arch/x86/mm/pgtable.c                 |  6 +-----
 arch/xtensa/include/asm/pgtable.h     |  1 -
 include/asm-generic/pgtable.h         |  2 +-
 init/main.c                           |  3 +--
 36 files changed, 5 insertions(+), 130 deletions(-)
 delete mode 100644 arch/hexagon/mm/pgalloc.c

diff --git a/arch/alpha/include/asm/pgtable.h b/arch/alpha/include/asm/pgtable.h
index 89c2032..065b57f 100644
--- a/arch/alpha/include/asm/pgtable.h
+++ b/arch/alpha/include/asm/pgtable.h
@@ -359,11 +359,6 @@ extern void paging_init(void);
 
 #include <asm-generic/pgtable.h>
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 /* We have our own get_unmapped_area to cope with ADDR_LIMIT_32BIT.  */
 #define HAVE_ARCH_UNMAPPED_AREA
 
diff --git a/arch/arc/include/asm/pgtable.h b/arch/arc/include/asm/pgtable.h
index 1d87c18..7addd03 100644
--- a/arch/arc/include/asm/pgtable.h
+++ b/arch/arc/include/asm/pgtable.h
@@ -395,11 +395,6 @@ void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
 /* to cope with aliasing VIPT cache */
 #define HAVE_ARCH_UNMAPPED_AREA
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()   do { } while (0)
-
 #endif /* __ASSEMBLY__ */
 
 #endif
diff --git a/arch/arm/include/asm/pgtable-nommu.h b/arch/arm/include/asm/pgtable-nommu.h
index 0b1f679..f277822 100644
--- a/arch/arm/include/asm/pgtable-nommu.h
+++ b/arch/arm/include/asm/pgtable-nommu.h
@@ -72,11 +72,6 @@ typedef pte_t *pte_addr_t;
 extern unsigned int kobjsize(const void *objp);
 
 /*
- * No page table caches to initialise.
- */
-#define pgtable_cache_init()	do { } while (0)
-
-/*
  * All 32bit addresses are effectively valid for vmalloc...
  * Sort of meaningless for non-VM targets.
  */
diff --git a/arch/arm/include/asm/pgtable.h b/arch/arm/include/asm/pgtable.h
index f2e990d..3ae120c 100644
--- a/arch/arm/include/asm/pgtable.h
+++ b/arch/arm/include/asm/pgtable.h
@@ -368,8 +368,6 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 #define HAVE_ARCH_UNMAPPED_AREA
 #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
 
-#define pgtable_cache_init() do { } while (0)
-
 #endif /* !__ASSEMBLY__ */
 
 #endif /* CONFIG_MMU */
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 1535589d..8646f47 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -842,8 +842,6 @@ extern int kern_addr_valid(unsigned long addr);
 
 #include <asm-generic/pgtable.h>
 
-static inline void pgtable_cache_init(void) { }
-
 /*
  * On AArch64, the cache coherency is handled via the set_pte_at() function.
  */
diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
index 7548f9c..4a64089 100644
--- a/arch/arm64/mm/pgd.c
+++ b/arch/arm64/mm/pgd.c
@@ -35,7 +35,7 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 		kmem_cache_free(pgd_cache, pgd);
 }
 
-void __init pgd_cache_init(void)
+void __init pgtable_cache_init(void)
 {
 	if (PGD_SIZE == PAGE_SIZE)
 		return;
diff --git a/arch/c6x/include/asm/pgtable.h b/arch/c6x/include/asm/pgtable.h
index 0bd8059..0b6919c 100644
--- a/arch/c6x/include/asm/pgtable.h
+++ b/arch/c6x/include/asm/pgtable.h
@@ -60,11 +60,6 @@ extern unsigned long empty_zero_page;
 #define swapper_pg_dir ((pgd_t *) 0)
 
 /*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()   do { } while (0)
-
-/*
  * c6x is !MMU, so define the simpliest implementation
  */
 #define pgprot_writecombine pgprot_noncached
diff --git a/arch/csky/include/asm/pgtable.h b/arch/csky/include/asm/pgtable.h
index fc19ba4..7c21985 100644
--- a/arch/csky/include/asm/pgtable.h
+++ b/arch/csky/include/asm/pgtable.h
@@ -306,11 +306,6 @@ void update_mmu_cache(struct vm_area_struct *vma, unsigned long address,
 /* Needs to be defined here and not in linux/mm.h, as it is arch dependent */
 #define kern_addr_valid(addr)	(1)
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do {} while (0)
-
 #define io_remap_pfn_range(vma, vaddr, pfn, size, prot) \
 	remap_pfn_range(vma, vaddr, pfn, size, prot)
 
diff --git a/arch/h8300/include/asm/pgtable.h b/arch/h8300/include/asm/pgtable.h
index a99caa4..4d00152 100644
--- a/arch/h8300/include/asm/pgtable.h
+++ b/arch/h8300/include/asm/pgtable.h
@@ -4,7 +4,6 @@
 #define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopud.h>
 #include <asm-generic/pgtable.h>
-#define pgtable_cache_init()   do { } while (0)
 extern void paging_init(void);
 #define PAGE_NONE		__pgprot(0)    /* these mean nothing to NO_MM */
 #define PAGE_SHARED		__pgprot(0)    /* these mean nothing to NO_MM */
@@ -35,11 +34,6 @@ extern unsigned int kobjsize(const void *objp);
 extern int is_in_rom(unsigned long);
 
 /*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()   do { } while (0)
-
-/*
  * All 32bit addresses are effectively valid for vmalloc...
  * Sort of meaningless for non-VM targets.
  */
diff --git a/arch/hexagon/include/asm/pgtable.h b/arch/hexagon/include/asm/pgtable.h
index a3ff6d2..2fec20a 100644
--- a/arch/hexagon/include/asm/pgtable.h
+++ b/arch/hexagon/include/asm/pgtable.h
@@ -431,9 +431,6 @@ static inline int pte_exec(pte_t pte)
 
 #define __pte_offset(address) (((address) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
 
-/*  I think this is in case we have page table caches; needed by init/main.c  */
-#define pgtable_cache_init()    do { } while (0)
-
 /*
  * Swap/file PTE definitions.  If _PAGE_PRESENT is zero, the rest of the PTE is
  * interpreted as swap information.  The remaining free bits are interpreted as
diff --git a/arch/hexagon/mm/Makefile b/arch/hexagon/mm/Makefile
index 1894263..8938384 100644
--- a/arch/hexagon/mm/Makefile
+++ b/arch/hexagon/mm/Makefile
@@ -3,5 +3,5 @@
 # Makefile for Hexagon memory management subsystem
 #
 
-obj-y := init.o pgalloc.o ioremap.o uaccess.o vm_fault.o cache.o
+obj-y := init.o ioremap.o uaccess.o vm_fault.o cache.o
 obj-y += copy_to_user.o copy_from_user.o strnlen_user.o vm_tlb.o
diff --git a/arch/hexagon/mm/pgalloc.c b/arch/hexagon/mm/pgalloc.c
deleted file mode 100644
index 4d43161..0000000
--- a/arch/hexagon/mm/pgalloc.c
+++ /dev/null
@@ -1,10 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (c) 2010-2011, The Linux Foundation. All rights reserved.
- */
-
-#include <linux/init.h>
-
-void __init pgtable_cache_init(void)
-{
-}
diff --git a/arch/ia64/include/asm/pgtable.h b/arch/ia64/include/asm/pgtable.h
index b1e7468e..d602e7c 100644
--- a/arch/ia64/include/asm/pgtable.h
+++ b/arch/ia64/include/asm/pgtable.h
@@ -566,11 +566,6 @@ extern struct page *zero_page_memmap_ptr;
 #define KERNEL_TR_PAGE_SHIFT	_PAGE_SIZE_64M
 #define KERNEL_TR_PAGE_SIZE	(1 << KERNEL_TR_PAGE_SHIFT)
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 /* These tell get_user_pages() that the first gate page is accessible from user-level.  */
 #define FIXADDR_USER_START	GATE_ADDR
 #ifdef HAVE_BUGGY_SEGREL
diff --git a/arch/m68k/include/asm/pgtable_mm.h b/arch/m68k/include/asm/pgtable_mm.h
index b5269f1..9658483 100644
--- a/arch/m68k/include/asm/pgtable_mm.h
+++ b/arch/m68k/include/asm/pgtable_mm.h
@@ -173,9 +173,4 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 #include <asm-generic/pgtable.h>
 #endif /* !__ASSEMBLY__ */
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 #endif /* _M68K_PGTABLE_H */
diff --git a/arch/m68k/include/asm/pgtable_no.h b/arch/m68k/include/asm/pgtable_no.h
index 69e2711..c18165b 100644
--- a/arch/m68k/include/asm/pgtable_no.h
+++ b/arch/m68k/include/asm/pgtable_no.h
@@ -45,11 +45,6 @@ extern void paging_init(void);
 #define ZERO_PAGE(vaddr)	(virt_to_page(0))
 
 /*
- * No page table caches to initialise.
- */
-#define pgtable_cache_init()	do { } while (0)
-
-/*
  * All 32bit addresses are effectively valid for vmalloc...
  * Sort of meaningless for non-VM targets.
  */
diff --git a/arch/microblaze/include/asm/pgtable.h b/arch/microblaze/include/asm/pgtable.h
index 142d3f0..954b69a 100644
--- a/arch/microblaze/include/asm/pgtable.h
+++ b/arch/microblaze/include/asm/pgtable.h
@@ -46,8 +46,6 @@ extern int mem_init_done;
 
 #define swapper_pg_dir ((pgd_t *) NULL)
 
-#define pgtable_cache_init()	do {} while (0)
-
 #define arch_enter_lazy_cpu_mode()	do {} while (0)
 
 #define pgprot_noncached_wc(prot)	prot
@@ -526,11 +524,6 @@ extern unsigned long iopa(unsigned long addr);
 /* Needs to be defined here and not in linux/mm.h, as it is arch dependent */
 #define kern_addr_valid(addr)	(1)
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 void do_page_fault(struct pt_regs *regs, unsigned long address,
 		   unsigned long error_code);
 
diff --git a/arch/mips/include/asm/pgtable.h b/arch/mips/include/asm/pgtable.h
index d60f47a..48446e7 100644
--- a/arch/mips/include/asm/pgtable.h
+++ b/arch/mips/include/asm/pgtable.h
@@ -661,9 +661,4 @@ pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 #define HAVE_ARCH_UNMAPPED_AREA
 #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 #endif /* _ASM_PGTABLE_H */
diff --git a/arch/nds32/include/asm/pgtable.h b/arch/nds32/include/asm/pgtable.h
index c70cc56..0588ec9 100644
--- a/arch/nds32/include/asm/pgtable.h
+++ b/arch/nds32/include/asm/pgtable.h
@@ -403,8 +403,6 @@ extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
  * into virtual address `from'
  */
 
-#define pgtable_cache_init()       do { } while (0)
-
 #endif /* !__ASSEMBLY__ */
 
 #endif /* _ASMNDS32_PGTABLE_H */
diff --git a/arch/nios2/include/asm/pgtable.h b/arch/nios2/include/asm/pgtable.h
index 95237b7..99985d8 100644
--- a/arch/nios2/include/asm/pgtable.h
+++ b/arch/nios2/include/asm/pgtable.h
@@ -291,8 +291,6 @@ static inline void pte_clear(struct mm_struct *mm,
 
 #include <asm-generic/pgtable.h>
 
-#define pgtable_cache_init()		do { } while (0)
-
 extern void __init paging_init(void);
 extern void __init mmu_init(void);
 
diff --git a/arch/openrisc/include/asm/pgtable.h b/arch/openrisc/include/asm/pgtable.h
index 497fd90..8643809d0 100644
--- a/arch/openrisc/include/asm/pgtable.h
+++ b/arch/openrisc/include/asm/pgtable.h
@@ -443,11 +443,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 
 #include <asm-generic/pgtable.h>
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()		do { } while (0)
-
 typedef pte_t *pte_addr_t;
 
 #endif /* __ASSEMBLY__ */
diff --git a/arch/parisc/include/asm/pgtable.h b/arch/parisc/include/asm/pgtable.h
index a39b079..36bb3bc 100644
--- a/arch/parisc/include/asm/pgtable.h
+++ b/arch/parisc/include/asm/pgtable.h
@@ -133,8 +133,6 @@ static inline void purge_tlb_entries(struct mm_struct *mm, unsigned long addr)
 #define PTRS_PER_PTE    (1UL << BITS_PER_PTE)
 
 /* Definitions for 2nd level */
-#define pgtable_cache_init()	do { } while (0)
-
 #define PMD_SHIFT       (PLD_SHIFT + BITS_PER_PTE)
 #define PMD_SIZE	(1UL << PMD_SHIFT)
 #define PMD_MASK	(~(PMD_SIZE-1))
diff --git a/arch/powerpc/include/asm/pgtable.h b/arch/powerpc/include/asm/pgtable.h
index c58ba79..bd7212d 100644
--- a/arch/powerpc/include/asm/pgtable.h
+++ b/arch/powerpc/include/asm/pgtable.h
@@ -97,7 +97,6 @@ extern void update_mmu_cache(struct vm_area_struct *, unsigned long, pte_t *);
 unsigned long vmalloc_to_phys(void *vmalloc_addr);
 
 void pgtable_cache_add(unsigned int shift);
-void pgtable_cache_init(void);
 
 #if defined(CONFIG_STRICT_KERNEL_RWX) || defined(CONFIG_PPC32)
 void mark_initmem_nx(void);
diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/asm/pgtable.h
index a364aba..f45f6fb 100644
--- a/arch/riscv/include/asm/pgtable.h
+++ b/arch/riscv/include/asm/pgtable.h
@@ -411,11 +411,6 @@ extern void *dtb_early_va;
 extern void setup_bootmem(void);
 extern void paging_init(void);
 
-static inline void pgtable_cache_init(void)
-{
-	/* No page table caches to initialize */
-}
-
 #define VMALLOC_SIZE     (KERN_VIRT_SIZE >> 1)
 #define VMALLOC_END      (PAGE_OFFSET - 1)
 #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
diff --git a/arch/s390/include/asm/pgtable.h b/arch/s390/include/asm/pgtable.h
index 8f59454a..36c578c 100644
--- a/arch/s390/include/asm/pgtable.h
+++ b/arch/s390/include/asm/pgtable.h
@@ -1682,11 +1682,6 @@ extern void s390_reset_cmma(struct mm_struct *mm);
 #define HAVE_ARCH_UNMAPPED_AREA
 #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
 
-/*
- * No page table caches to initialise
- */
-static inline void pgtable_cache_init(void) { }
-
 #include <asm-generic/pgtable.h>
 
 #endif /* _S390_PAGE_H */
diff --git a/arch/sh/include/asm/pgtable.h b/arch/sh/include/asm/pgtable.h
index 9085d11..cbd0f3c 100644
--- a/arch/sh/include/asm/pgtable.h
+++ b/arch/sh/include/asm/pgtable.h
@@ -123,11 +123,6 @@ typedef pte_t *pte_addr_t;
 
 #define pte_pfn(x)		((unsigned long)(((x).pte_low >> PAGE_SHIFT)))
 
-/*
- * Initialise the page table caches
- */
-extern void pgtable_cache_init(void);
-
 struct vm_area_struct;
 struct mm_struct;
 
diff --git a/arch/sh/mm/nommu.c b/arch/sh/mm/nommu.c
index cc779a9..dca946f 100644
--- a/arch/sh/mm/nommu.c
+++ b/arch/sh/mm/nommu.c
@@ -97,7 +97,3 @@ void __init page_table_range_init(unsigned long start, unsigned long end,
 void __set_fixmap(enum fixed_addresses idx, unsigned long phys, pgprot_t prot)
 {
 }
-
-void pgtable_cache_init(void)
-{
-}
diff --git a/arch/sparc/include/asm/pgtable_32.h b/arch/sparc/include/asm/pgtable_32.h
index 4eebed6..31da448 100644
--- a/arch/sparc/include/asm/pgtable_32.h
+++ b/arch/sparc/include/asm/pgtable_32.h
@@ -445,9 +445,4 @@ static inline int io_remap_pfn_range(struct vm_area_struct *vma,
 /* We provide our own get_unmapped_area to cope with VA holes for userland */
 #define HAVE_ARCH_UNMAPPED_AREA
 
-/*
- * No page table caches to initialise
- */
-#define pgtable_cache_init()	do { } while (0)
-
 #endif /* !(_SPARC_PGTABLE_H) */
diff --git a/arch/sparc/include/asm/pgtable_64.h b/arch/sparc/include/asm/pgtable_64.h
index 1599de7..b57f9c6 100644
--- a/arch/sparc/include/asm/pgtable_64.h
+++ b/arch/sparc/include/asm/pgtable_64.h
@@ -1135,7 +1135,6 @@ unsigned long get_fb_unmapped_area(struct file *filp, unsigned long,
 				   unsigned long);
 #define HAVE_ARCH_FB_UNMAPPED_AREA
 
-void pgtable_cache_init(void);
 void sun4v_register_fault_status(void);
 void sun4v_ktsb_register(void);
 void __init cheetah_ecache_flush_init(void);
diff --git a/arch/um/include/asm/pgtable.h b/arch/um/include/asm/pgtable.h
index b377df7..eb202e5 100644
--- a/arch/um/include/asm/pgtable.h
+++ b/arch/um/include/asm/pgtable.h
@@ -32,8 +32,6 @@ extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
 /* zero page used for uninitialized stuff */
 extern unsigned long *empty_zero_page;
 
-#define pgtable_cache_init() do ; while (0)
-
 /* Just any arbitrary offset to the start of the vmalloc VM area: the
  * current 8MB value just means that there will be a 8MB "hole" after the
  * physical memory until the kernel virtual memory starts.  That means that
diff --git a/arch/unicore32/include/asm/pgtable.h b/arch/unicore32/include/asm/pgtable.h
index 9492aa3..ffc98ed 100644
--- a/arch/unicore32/include/asm/pgtable.h
+++ b/arch/unicore32/include/asm/pgtable.h
@@ -287,8 +287,6 @@ extern pgd_t swapper_pg_dir[PTRS_PER_PGD];
 
 #include <asm-generic/pgtable.h>
 
-#define pgtable_cache_init() do { } while (0)
-
 #endif /* !__ASSEMBLY__ */
 
 #endif /* __UNICORE_PGTABLE_H__ */
diff --git a/arch/x86/include/asm/pgtable_32.h b/arch/x86/include/asm/pgtable_32.h
index b9b9f8a..0dca7f7 100644
--- a/arch/x86/include/asm/pgtable_32.h
+++ b/arch/x86/include/asm/pgtable_32.h
@@ -29,7 +29,6 @@ extern pgd_t swapper_pg_dir[1024];
 extern pgd_t initial_page_table[1024];
 extern pmd_t initial_pg_pmd[];
 
-static inline void pgtable_cache_init(void) { }
 void paging_init(void);
 void sync_initial_page_table(void);
 
diff --git a/arch/x86/include/asm/pgtable_64.h b/arch/x86/include/asm/pgtable_64.h
index a26d2d5..0b6c4042 100644
--- a/arch/x86/include/asm/pgtable_64.h
+++ b/arch/x86/include/asm/pgtable_64.h
@@ -241,8 +241,6 @@ extern void cleanup_highmap(void);
 #define HAVE_ARCH_UNMAPPED_AREA
 #define HAVE_ARCH_UNMAPPED_AREA_TOPDOWN
 
-#define pgtable_cache_init()   do { } while (0)
-
 #define PAGE_AGP    PAGE_KERNEL_NOCACHE
 #define HAVE_PAGE_AGP 1
 
diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
index 73757bc..3e4b903 100644
--- a/arch/x86/mm/pgtable.c
+++ b/arch/x86/mm/pgtable.c
@@ -357,7 +357,7 @@ static void pgd_prepopulate_user_pmd(struct mm_struct *mm,
 
 static struct kmem_cache *pgd_cache;
 
-void __init pgd_cache_init(void)
+void __init pgtable_cache_init(void)
 {
 	/*
 	 * When PAE kernel is running as a Xen domain, it does not use
@@ -402,10 +402,6 @@ static inline void _pgd_free(pgd_t *pgd)
 }
 #else
 
-void __init pgd_cache_init(void)
-{
-}
-
 static inline pgd_t *_pgd_alloc(void)
 {
 	return (pgd_t *)__get_free_pages(GFP_PGTABLE_USER,
diff --git a/arch/xtensa/include/asm/pgtable.h b/arch/xtensa/include/asm/pgtable.h
index ce3ff5e..3f7fe5a 100644
--- a/arch/xtensa/include/asm/pgtable.h
+++ b/arch/xtensa/include/asm/pgtable.h
@@ -238,7 +238,6 @@ extern void paging_init(void);
 # define swapper_pg_dir NULL
 static inline void paging_init(void) { }
 #endif
-static inline void pgtable_cache_init(void) { }
 
 /*
  * The pmd contains the kernel virtual address of the pte page.
diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 0e25f55..8186918 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1125,7 +1125,7 @@ int phys_mem_access_prot_allowed(struct file *file, unsigned long pfn,
 static inline void init_espfix_bsp(void) { }
 #endif
 
-extern void __init pgd_cache_init(void);
+extern void __init pgtable_cache_init(void);
 
 #ifndef __HAVE_ARCH_PFN_MODIFY_ALLOWED
 static inline bool pfn_modify_allowed(unsigned long pfn, pgprot_t prot)
diff --git a/init/main.c b/init/main.c
index b90cb5f..2fa8038 100644
--- a/init/main.c
+++ b/init/main.c
@@ -507,7 +507,7 @@ void __init __weak mem_encrypt_init(void) { }
 
 void __init __weak poking_init(void) { }
 
-void __init __weak pgd_cache_init(void) { }
+void __init __weak pgtable_cache_init(void) { }
 
 bool initcall_debug;
 core_param(initcall_debug, initcall_debug, bool, 0644);
@@ -565,7 +565,6 @@ static void __init mm_init(void)
 	init_espfix_bsp();
 	/* Should be run after espfix64 is set up. */
 	pti_init();
-	pgd_cache_init();
 }
 
 void __init __weak arch_call_rest_init(void)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
