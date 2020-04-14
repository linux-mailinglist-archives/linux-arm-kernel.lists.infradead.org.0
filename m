Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052C81A8359
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oMKHMcHUybEOOAxNUAmNFbpw5Ng0IxqZZWPl6OmzPg=; b=OzgfDFIbu7aLgJ
	UV9UFCQXP/RbaZsFBHeQ4p4V79rwDzaAzGk2WBfeOrTEtEpGMn65xfmYxj8ieTM18rt+XEkDv0UWz
	B+s9h/51x7+A9PZ0YMkSYk3nYc29X0IFY9FhnlTGFE8uTtzrsqJjFcePc0BWgTU/zw838/4+9tWS0
	fO+TbR4qbICf4eF81kFeQW7ZATDGnOfY3KR1DNlTpq9m6MUga1Ejr1yhcynb98LMRC5ozsTtV2fBG
	ywcHPOwbh3RrvBR1y3DX+fINz6wmU/P3akIY7OBBP2nsy38prhS8lH4+41KelBRvlziL2OndmihA2
	UcC2Ys6ito9ZNHwX208A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONf5-000547-Vu; Tue, 14 Apr 2020 15:39:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONcs-000332-Sf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:37:31 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0989206D5;
 Tue, 14 Apr 2020 15:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586878645;
 bh=CqaKK6+aVg5D1Nr505BsEp2b4ZBD+GLgCm9Y6FhaO5k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TIU3Y4/BP8R5HFjWKB4Rmbnxn+YL/C+cyvm9VFW4zfGVaOrEFBPnfTQvvacGktioX
 gSlAJkOtV7YH1cGIDUV9ajgtcnBzYrWnAUYHC9A961Ty8BmpAPQOn2t383YSjR0zKg
 9FVQAlTRoUWPWY9rs58gJHD/LVWxwGErlNZP2VZc=
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 14/14] mm: remove __ARCH_HAS_5LEVEL_HACK and
 include/asm-generic/5level-fixup.h
Date: Tue, 14 Apr 2020 18:34:55 +0300
Message-Id: <20200414153455.21744-15-rppt@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414153455.21744-1-rppt@kernel.org>
References: <20200414153455.21744-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083727_103797_238E22C4 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

There are no architectures that use include/asm-generic/5level-fixup.h
therefore it can be removed along with __ARCH_HAS_5LEVEL_HACK define and
the code it surrounds

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 include/asm-generic/5level-fixup.h | 58 ------------------------------
 include/linux/mm.h                 |  6 ----
 mm/kasan/init.c                    | 11 ------
 mm/memory.c                        |  8 -----
 4 files changed, 83 deletions(-)
 delete mode 100644 include/asm-generic/5level-fixup.h

diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
deleted file mode 100644
index 4c74b1c1d13b..000000000000
--- a/include/asm-generic/5level-fixup.h
+++ /dev/null
@@ -1,58 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _5LEVEL_FIXUP_H
-#define _5LEVEL_FIXUP_H
-
-#define __ARCH_HAS_5LEVEL_HACK
-#define __PAGETABLE_P4D_FOLDED 1
-
-#define P4D_SHIFT			PGDIR_SHIFT
-#define P4D_SIZE			PGDIR_SIZE
-#define P4D_MASK			PGDIR_MASK
-#define MAX_PTRS_PER_P4D		1
-#define PTRS_PER_P4D			1
-
-#define p4d_t				pgd_t
-
-#define pud_alloc(mm, p4d, address) \
-	((unlikely(pgd_none(*(p4d))) && __pud_alloc(mm, p4d, address)) ? \
-		NULL : pud_offset(p4d, address))
-
-#define p4d_alloc(mm, pgd, address)	(pgd)
-#define p4d_offset(pgd, start)		(pgd)
-
-#ifndef __ASSEMBLY__
-static inline int p4d_none(p4d_t p4d)
-{
-	return 0;
-}
-
-static inline int p4d_bad(p4d_t p4d)
-{
-	return 0;
-}
-
-static inline int p4d_present(p4d_t p4d)
-{
-	return 1;
-}
-#endif
-
-#define p4d_ERROR(p4d)			do { } while (0)
-#define p4d_clear(p4d)			pgd_clear(p4d)
-#define p4d_val(p4d)			pgd_val(p4d)
-#define p4d_populate(mm, p4d, pud)	pgd_populate(mm, p4d, pud)
-#define p4d_populate_safe(mm, p4d, pud)	pgd_populate(mm, p4d, pud)
-#define p4d_page(p4d)			pgd_page(p4d)
-#define p4d_page_vaddr(p4d)		pgd_page_vaddr(p4d)
-
-#define __p4d(x)			__pgd(x)
-#define set_p4d(p4dp, p4d)		set_pgd(p4dp, p4d)
-
-#undef p4d_free_tlb
-#define p4d_free_tlb(tlb, x, addr)	do { } while (0)
-#define p4d_free(mm, x)			do { } while (0)
-
-#undef  p4d_addr_end
-#define p4d_addr_end(addr, end)		(end)
-
-#endif
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 5a323422d783..f794b77df1ca 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2060,11 +2060,6 @@ int __pte_alloc_kernel(pmd_t *pmd);
 
 #if defined(CONFIG_MMU)
 
-/*
- * The following ifdef needed to get the 5level-fixup.h header to work.
- * Remove it when 5level-fixup.h has been removed.
- */
-#ifndef __ARCH_HAS_5LEVEL_HACK
 static inline p4d_t *p4d_alloc(struct mm_struct *mm, pgd_t *pgd,
 		unsigned long address)
 {
@@ -2078,7 +2073,6 @@ static inline pud_t *pud_alloc(struct mm_struct *mm, p4d_t *p4d,
 	return (unlikely(p4d_none(*p4d)) && __pud_alloc(mm, p4d, address)) ?
 		NULL : pud_offset(p4d, address);
 }
-#endif /* !__ARCH_HAS_5LEVEL_HACK */
 
 static inline pmd_t *pmd_alloc(struct mm_struct *mm, pud_t *pud, unsigned long address)
 {
diff --git a/mm/kasan/init.c b/mm/kasan/init.c
index ce45c491ebcd..fe6be0be1f76 100644
--- a/mm/kasan/init.c
+++ b/mm/kasan/init.c
@@ -250,20 +250,9 @@ int __ref kasan_populate_early_shadow(const void *shadow_start,
 			 * 3,2 - level page tables where we don't have
 			 * puds,pmds, so pgd_populate(), pud_populate()
 			 * is noops.
-			 *
-			 * The ifndef is required to avoid build breakage.
-			 *
-			 * With 5level-fixup.h, pgd_populate() is not nop and
-			 * we reference kasan_early_shadow_p4d. It's not defined
-			 * unless 5-level paging enabled.
-			 *
-			 * The ifndef can be dropped once all KASAN-enabled
-			 * architectures will switch to pgtable-nop4d.h.
 			 */
-#ifndef __ARCH_HAS_5LEVEL_HACK
 			pgd_populate(&init_mm, pgd,
 					lm_alias(kasan_early_shadow_p4d));
-#endif
 			p4d = p4d_offset(pgd, addr);
 			p4d_populate(&init_mm, p4d,
 					lm_alias(kasan_early_shadow_pud));
diff --git a/mm/memory.c b/mm/memory.c
index f703fe8c8346..379277c631b4 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -4434,19 +4434,11 @@ int __pud_alloc(struct mm_struct *mm, p4d_t *p4d, unsigned long address)
 	smp_wmb(); /* See comment in __pte_alloc */
 
 	spin_lock(&mm->page_table_lock);
-#ifndef __ARCH_HAS_5LEVEL_HACK
 	if (!p4d_present(*p4d)) {
 		mm_inc_nr_puds(mm);
 		p4d_populate(mm, p4d, new);
 	} else	/* Another has populated it */
 		pud_free(mm, new);
-#else
-	if (!pgd_present(*p4d)) {
-		mm_inc_nr_puds(mm);
-		pgd_populate(mm, p4d, new);
-	} else	/* Another has populated it */
-		pud_free(mm, new);
-#endif /* __ARCH_HAS_5LEVEL_HACK */
 	spin_unlock(&mm->page_table_lock);
 	return 0;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
