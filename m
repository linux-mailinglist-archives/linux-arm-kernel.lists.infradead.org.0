Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B32EBF67
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:40:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qCE5TvkopbDY+A88pAJ+I1uIktbWeyMNEixcYXDjdoE=; b=AzyuS3j48YnWGwADzBJ1zm5J2Q
	pBHIPq7Ul1n8E9Avgc8/Ykvw8lPVv9TwmTmfcETs4gZukI9i9xrH7GZMPKOtYObAPEi4lru2BOOp4
	V1uG4EkiqEWrJII4gTODKMTRBAwgUbGAcKOi9Dod0VC6eTnmz4E2hBsodalMDwdqumv42aobtkkHW
	0BUOPiAdqDsLSB/BYY+XS7EyrtymUpBi+NQGf2cFFO/CSe/N9nNSZeT4ZPs1E6OChPV+rBTLUrUHl
	Z+UasGIIQrmvkpEcJIOtTscNYbAuDviw6uKyTsel5qNa/m14LMaXYhTOkLm2o33uhak3AKv9asZlI
	RiXhFYdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSTw-000858-3N; Fri, 01 Nov 2019 08:40:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSTX-0007AO-FW; Fri, 01 Nov 2019 08:40:09 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0BCB217D9;
 Fri,  1 Nov 2019 08:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572597606;
 bh=OHKl06hi7zAntEhLkb0+P6l88cWYdsAqTkZf31bOMJQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A4XDL/HKYHH75jgDaC6NzLEMR9tl1lfupWO2PdI2roOkP6mH4KG4WZp/G9reFoXcL
 yWUcPmdfUYEbz3vEq0pUMoBHdhx0OlbtzLP7LM2tjLgCMpkip8TEWtNioYYfaXeDoF
 bxIeq+f+a0oLuJF+L33yimk+OT7JWPRn0nyjykok=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v2 01/13] alpha: use pgtable-nop4d instead of 4level-fixup
Date: Fri,  1 Nov 2019 10:39:32 +0200
Message-Id: <1572597584-6390-2-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572597584-6390-1-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014007_693935_133694BF 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

It is not likely alpha will have 5-level page tables.

Replace usage of include/asm-generic/4level-fixup.h and implied
__ARCH_HAS_4LEVEL_HACK with include/asm-generic/pgtable-nop4d.h and adjust
page table manipulation macros and functions accordingly.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/alpha/include/asm/pgalloc.h |  4 ++--
 arch/alpha/include/asm/pgtable.h | 24 ++++++++++++------------
 arch/alpha/mm/init.c             | 12 ++++++++----
 3 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/arch/alpha/include/asm/pgalloc.h b/arch/alpha/include/asm/pgalloc.h
index eb91f1e..a1a29f6 100644
--- a/arch/alpha/include/asm/pgalloc.h
+++ b/arch/alpha/include/asm/pgalloc.h
@@ -27,9 +27,9 @@ pmd_populate_kernel(struct mm_struct *mm, pmd_t *pmd, pte_t *pte)
 }
 
 static inline void
-pgd_populate(struct mm_struct *mm, pgd_t *pgd, pmd_t *pmd)
+pud_populate(struct mm_struct *mm, pud_t *pud, pmd_t *pmd)
 {
-	pgd_set(pgd, pmd);
+	pud_set(pud, pmd);
 }
 
 extern pgd_t *pgd_alloc(struct mm_struct *mm);
diff --git a/arch/alpha/include/asm/pgtable.h b/arch/alpha/include/asm/pgtable.h
index 065b57f..299791c 100644
--- a/arch/alpha/include/asm/pgtable.h
+++ b/arch/alpha/include/asm/pgtable.h
@@ -2,7 +2,7 @@
 #ifndef _ALPHA_PGTABLE_H
 #define _ALPHA_PGTABLE_H
 
-#include <asm-generic/4level-fixup.h>
+#include <asm-generic/pgtable-nopud.h>
 
 /*
  * This file contains the functions and defines necessary to modify and use
@@ -226,8 +226,8 @@ extern inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 extern inline void pmd_set(pmd_t * pmdp, pte_t * ptep)
 { pmd_val(*pmdp) = _PAGE_TABLE | ((((unsigned long) ptep) - PAGE_OFFSET) << (32-PAGE_SHIFT)); }
 
-extern inline void pgd_set(pgd_t * pgdp, pmd_t * pmdp)
-{ pgd_val(*pgdp) = _PAGE_TABLE | ((((unsigned long) pmdp) - PAGE_OFFSET) << (32-PAGE_SHIFT)); }
+extern inline void pud_set(pud_t * pudp, pmd_t * pmdp)
+{ pud_val(*pudp) = _PAGE_TABLE | ((((unsigned long) pmdp) - PAGE_OFFSET) << (32-PAGE_SHIFT)); }
 
 
 extern inline unsigned long
@@ -238,11 +238,11 @@ pmd_page_vaddr(pmd_t pmd)
 
 #ifndef CONFIG_DISCONTIGMEM
 #define pmd_page(pmd)	(mem_map + ((pmd_val(pmd) & _PFN_MASK) >> 32))
-#define pgd_page(pgd)	(mem_map + ((pgd_val(pgd) & _PFN_MASK) >> 32))
+#define pud_page(pud)	(mem_map + ((pud_val(pud) & _PFN_MASK) >> 32))
 #endif
 
-extern inline unsigned long pgd_page_vaddr(pgd_t pgd)
-{ return PAGE_OFFSET + ((pgd_val(pgd) & _PFN_MASK) >> (32-PAGE_SHIFT)); }
+extern inline unsigned long pud_page_vaddr(pud_t pgd)
+{ return PAGE_OFFSET + ((pud_val(pgd) & _PFN_MASK) >> (32-PAGE_SHIFT)); }
 
 extern inline int pte_none(pte_t pte)		{ return !pte_val(pte); }
 extern inline int pte_present(pte_t pte)	{ return pte_val(pte) & _PAGE_VALID; }
@@ -256,10 +256,10 @@ extern inline int pmd_bad(pmd_t pmd)		{ return (pmd_val(pmd) & ~_PFN_MASK) != _P
 extern inline int pmd_present(pmd_t pmd)	{ return pmd_val(pmd) & _PAGE_VALID; }
 extern inline void pmd_clear(pmd_t * pmdp)	{ pmd_val(*pmdp) = 0; }
 
-extern inline int pgd_none(pgd_t pgd)		{ return !pgd_val(pgd); }
-extern inline int pgd_bad(pgd_t pgd)		{ return (pgd_val(pgd) & ~_PFN_MASK) != _PAGE_TABLE; }
-extern inline int pgd_present(pgd_t pgd)	{ return pgd_val(pgd) & _PAGE_VALID; }
-extern inline void pgd_clear(pgd_t * pgdp)	{ pgd_val(*pgdp) = 0; }
+extern inline int pud_none(pud_t pud)		{ return !pud_val(pud); }
+extern inline int pud_bad(pud_t pud)		{ return (pud_val(pud) & ~_PFN_MASK) != _PAGE_TABLE; }
+extern inline int pud_present(pud_t pud)	{ return pud_val(pud) & _PAGE_VALID; }
+extern inline void pud_clear(pud_t * pudp)	{ pud_val(*pudp) = 0; }
 
 /*
  * The following only work if pte_present() is true.
@@ -301,9 +301,9 @@ extern inline pte_t pte_mkspecial(pte_t pte)	{ return pte; }
  */
 
 /* Find an entry in the second-level page table.. */
-extern inline pmd_t * pmd_offset(pgd_t * dir, unsigned long address)
+extern inline pmd_t * pmd_offset(pud_t * dir, unsigned long address)
 {
-	pmd_t *ret = (pmd_t *) pgd_page_vaddr(*dir) + ((address >> PMD_SHIFT) & (PTRS_PER_PAGE - 1));
+	pmd_t *ret = (pmd_t *) pud_page_vaddr(*dir) + ((address >> PMD_SHIFT) & (PTRS_PER_PAGE - 1));
 	smp_read_barrier_depends(); /* see above */
 	return ret;
 }
diff --git a/arch/alpha/mm/init.c b/arch/alpha/mm/init.c
index e2cbec3..12e218d 100644
--- a/arch/alpha/mm/init.c
+++ b/arch/alpha/mm/init.c
@@ -146,6 +146,8 @@ callback_init(void * kernel_end)
 {
 	struct crb_struct * crb;
 	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
 	pmd_t *pmd;
 	void *two_pages;
 
@@ -184,8 +186,10 @@ callback_init(void * kernel_end)
 	memset(two_pages, 0, 2*PAGE_SIZE);
 
 	pgd = pgd_offset_k(VMALLOC_START);
-	pgd_set(pgd, (pmd_t *)two_pages);
-	pmd = pmd_offset(pgd, VMALLOC_START);
+	p4d = p4d_offset(pgd, VMALLOC_START);
+	pud = pud_offset(p4d, VMALLOC_START);
+	pud_set(pud, (pmd_t *)two_pages);
+	pmd = pmd_offset(pud, VMALLOC_START);
 	pmd_set(pmd, (pte_t *)(two_pages + PAGE_SIZE));
 
 	if (alpha_using_srm) {
@@ -214,9 +218,9 @@ callback_init(void * kernel_end)
 				/* Newer consoles (especially on larger
 				   systems) may require more pages of
 				   PTEs. Grab additional pages as needed. */
-				if (pmd != pmd_offset(pgd, vaddr)) {
+				if (pmd != pmd_offset(pud, vaddr)) {
 					memset(kernel_end, 0, PAGE_SIZE);
-					pmd = pmd_offset(pgd, vaddr);
+					pmd = pmd_offset(pud, vaddr);
 					pmd_set(pmd, (pte_t *)kernel_end);
 					kernel_end += PAGE_SIZE;
 				}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
