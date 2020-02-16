Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199F81602DE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 16 Feb 2020 09:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXrKh65037oCjHJlI6HFrDBG6jf/3Kodewjg9ClNml0=; b=hX4xG9Rvfasdw8
	JSRdEnhsLaD1xCIa8kc02cloYhHtuM46bA9XJskMYTlfbFNLbD0vcB+OYtcBTYc5vk8l6eBCJA+2n
	0FGuzb3ZYRrDk6SA+fiZKfEXTcrUBnWwjYpyRQnnL7aWqLagnIHPUGeykbpFTdSJ5VnTvvnrS3h2b
	F7BCsHpq5TFj/EKvmgxE1be7cayR0kD1pcRBGNxqtFkDwBLrmE1oKX7ys1ctqPvxZhqWQzyvLXFOo
	PRiBb/TQ99GvQb5oi+z2QCahZ/LLnTI4mYm+9QHt1dd5a4WGPsljBptO2UgIQiH1DvSl35vH0fzTP
	QOklIYgfdA8pVxN0HvIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3FBx-0006ge-Eu; Sun, 16 Feb 2020 08:22:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3FAD-0005DF-2W
 for linux-arm-kernel@lists.infradead.org; Sun, 16 Feb 2020 08:20:31 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA76D22522;
 Sun, 16 Feb 2020 08:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581841228;
 bh=sP+IWeG/qqt8+HYoNOurocpitqp+If3ZmTKOJ3D8dpw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WzLO1/kTMTNS2/4dI4ItGJl01UEtsIJqQ51S6GYSl8mFqlP09EnjnxHIT6oGSbrr+
 m/GblM2Yj+oXk43tErJPsF4L9IW6zbCLRMh6N0gzslnXCpSGWnuBhfVb0Wv88ZC7jb
 /63buyJzrdkYcODBkArDt8fGbjfGl25lxz5F+Q+k=
From: Mike Rapoport <rppt@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/13] sh: add support for folded p4d page tables
Date: Sun, 16 Feb 2020 10:18:40 +0200
Message-Id: <20200216081843.28670-11-rppt@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200216081843.28670-1-rppt@kernel.org>
References: <20200216081843.28670-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_002029_286681_16F6CC09 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Yoshinori Sato <ysato@users.sourceforge.jp>, James Morse <james.morse@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, nios2-dev@lists.rocketboards.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Implement primitives necessary for the 4th level folding, add walks of p4d
level where appropriate and remove usage of __ARCH_USE_5LEVEL_HACK.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/sh/include/asm/pgtable-2level.h |  1 -
 arch/sh/include/asm/pgtable-3level.h |  1 -
 arch/sh/kernel/io_trapped.c          |  7 ++++++-
 arch/sh/mm/cache-sh4.c               |  4 +++-
 arch/sh/mm/cache-sh5.c               |  7 ++++++-
 arch/sh/mm/fault.c                   | 26 +++++++++++++++++++++++---
 arch/sh/mm/hugetlbpage.c             | 28 ++++++++++++++++++----------
 arch/sh/mm/init.c                    |  9 ++++++++-
 arch/sh/mm/kmap.c                    |  2 +-
 arch/sh/mm/tlbex_32.c                |  6 +++++-
 arch/sh/mm/tlbex_64.c                |  7 ++++++-
 11 files changed, 76 insertions(+), 22 deletions(-)

diff --git a/arch/sh/include/asm/pgtable-2level.h b/arch/sh/include/asm/pgtable-2level.h
index bf1eb51c3ee5..08bff93927ff 100644
--- a/arch/sh/include/asm/pgtable-2level.h
+++ b/arch/sh/include/asm/pgtable-2level.h
@@ -2,7 +2,6 @@
 #ifndef __ASM_SH_PGTABLE_2LEVEL_H
 #define __ASM_SH_PGTABLE_2LEVEL_H
 
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopmd.h>
 
 /*
diff --git a/arch/sh/include/asm/pgtable-3level.h b/arch/sh/include/asm/pgtable-3level.h
index 779260b721ca..0f80097e5c9c 100644
--- a/arch/sh/include/asm/pgtable-3level.h
+++ b/arch/sh/include/asm/pgtable-3level.h
@@ -2,7 +2,6 @@
 #ifndef __ASM_SH_PGTABLE_3LEVEL_H
 #define __ASM_SH_PGTABLE_3LEVEL_H
 
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopud.h>
 
 /*
diff --git a/arch/sh/kernel/io_trapped.c b/arch/sh/kernel/io_trapped.c
index 60c828a2b8a2..037aab2708b7 100644
--- a/arch/sh/kernel/io_trapped.c
+++ b/arch/sh/kernel/io_trapped.c
@@ -136,6 +136,7 @@ EXPORT_SYMBOL_GPL(match_trapped_io_handler);
 static struct trapped_io *lookup_tiop(unsigned long address)
 {
 	pgd_t *pgd_k;
+	p4d_t *p4d_k;
 	pud_t *pud_k;
 	pmd_t *pmd_k;
 	pte_t *pte_k;
@@ -145,7 +146,11 @@ static struct trapped_io *lookup_tiop(unsigned long address)
 	if (!pgd_present(*pgd_k))
 		return NULL;
 
-	pud_k = pud_offset(pgd_k, address);
+	p4d_k = p4d_offset(pgd_k, address);
+	if (!p4d_present(*p4d_k))
+		return NULL;
+
+	pud_k = pud_offset(p4d_k, address);
 	if (!pud_present(*pud_k))
 		return NULL;
 
diff --git a/arch/sh/mm/cache-sh4.c b/arch/sh/mm/cache-sh4.c
index eee911422cf9..45943bcb7042 100644
--- a/arch/sh/mm/cache-sh4.c
+++ b/arch/sh/mm/cache-sh4.c
@@ -209,6 +209,7 @@ static void sh4_flush_cache_page(void *args)
 	unsigned long address, pfn, phys;
 	int map_coherent = 0;
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -224,7 +225,8 @@ static void sh4_flush_cache_page(void *args)
 		return;
 
 	pgd = pgd_offset(vma->vm_mm, address);
-	pud = pud_offset(pgd, address);
+	p4d = p4d_offset(pgd, address);
+	pud = pud_offset(p4d, address);
 	pmd = pmd_offset(pud, address);
 	pte = pte_offset_kernel(pmd, address);
 
diff --git a/arch/sh/mm/cache-sh5.c b/arch/sh/mm/cache-sh5.c
index 445b5e69b73c..442a77cc2957 100644
--- a/arch/sh/mm/cache-sh5.c
+++ b/arch/sh/mm/cache-sh5.c
@@ -383,6 +383,7 @@ static void sh64_dcache_purge_user_pages(struct mm_struct *mm,
 				unsigned long addr, unsigned long end)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -397,7 +398,11 @@ static void sh64_dcache_purge_user_pages(struct mm_struct *mm,
 	if (pgd_bad(*pgd))
 		return;
 
-	pud = pud_offset(pgd, addr);
+	p4d = p4d_offset(pgd, addr);
+	if (p4d_none(*p4d) || p4d_bad(*p4d))
+		return;
+
+	pud = pud_offset(p4d, addr);
 	if (pud_none(*pud) || pud_bad(*pud))
 		return;
 
diff --git a/arch/sh/mm/fault.c b/arch/sh/mm/fault.c
index a2b0275413e8..ebd30003fd06 100644
--- a/arch/sh/mm/fault.c
+++ b/arch/sh/mm/fault.c
@@ -53,6 +53,7 @@ static void show_pte(struct mm_struct *mm, unsigned long addr)
 		 (u64)pgd_val(*pgd));
 
 	do {
+		p4d_t *p4d;
 		pud_t *pud;
 		pmd_t *pmd;
 		pte_t *pte;
@@ -65,7 +66,20 @@ static void show_pte(struct mm_struct *mm, unsigned long addr)
 			break;
 		}
 
-		pud = pud_offset(pgd, addr);
+		p4d = p4d_offset(pgd, addr);
+		if (PTRS_PER_P4D != 1)
+			pr_cont(", *p4d=%0*Lx", (u32)(sizeof(*p4d) * 2),
+			        (u64)p4d_val(*p4d));
+
+		if (p4d_none(*p4d))
+			break;
+
+		if (p4d_bad(*p4d)) {
+			pr_cont("(bad)");
+			break;
+		}
+
+		pud = pud_offset(p4d, addr);
 		if (PTRS_PER_PUD != 1)
 			pr_cont(", *pud=%0*llx", (u32)(sizeof(*pud) * 2),
 				(u64)pud_val(*pud));
@@ -107,6 +121,7 @@ static inline pmd_t *vmalloc_sync_one(pgd_t *pgd, unsigned long address)
 {
 	unsigned index = pgd_index(address);
 	pgd_t *pgd_k;
+	p4d_t *p4d, *p4d_k;
 	pud_t *pud, *pud_k;
 	pmd_t *pmd, *pmd_k;
 
@@ -116,8 +131,13 @@ static inline pmd_t *vmalloc_sync_one(pgd_t *pgd, unsigned long address)
 	if (!pgd_present(*pgd_k))
 		return NULL;
 
-	pud = pud_offset(pgd, address);
-	pud_k = pud_offset(pgd_k, address);
+	p4d = p4d_offset(pgd, address);
+	p4d_k = p4d_offset(pgd_k, address);
+	if (!p4d_present(*p4d_k))
+		return NULL;
+
+	pud = pud_offset(p4d, address);
+	pud_k = pud_offset(p4d_k, address);
 	if (!pud_present(*pud_k))
 		return NULL;
 
diff --git a/arch/sh/mm/hugetlbpage.c b/arch/sh/mm/hugetlbpage.c
index 960deb1f24a1..acd5652a0de3 100644
--- a/arch/sh/mm/hugetlbpage.c
+++ b/arch/sh/mm/hugetlbpage.c
@@ -26,17 +26,21 @@ pte_t *huge_pte_alloc(struct mm_struct *mm,
 			unsigned long addr, unsigned long sz)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
 
 	pgd = pgd_offset(mm, addr);
 	if (pgd) {
-		pud = pud_alloc(mm, pgd, addr);
-		if (pud) {
-			pmd = pmd_alloc(mm, pud, addr);
-			if (pmd)
-				pte = pte_alloc_map(mm, pmd, addr);
+		p4d = p4d_alloc(mm, pgd, addr);
+		if (p4d) {
+			pud = pud_alloc(mm, p4d, addr);
+			if (pud) {
+				pmd = pmd_alloc(mm, pud, addr);
+				if (pmd)
+					pte = pte_alloc_map(mm, pmd, addr);
+			}
 		}
 	}
 
@@ -47,17 +51,21 @@ pte_t *huge_pte_offset(struct mm_struct *mm,
 		       unsigned long addr, unsigned long sz)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
 
 	pgd = pgd_offset(mm, addr);
 	if (pgd) {
-		pud = pud_offset(pgd, addr);
-		if (pud) {
-			pmd = pmd_offset(pud, addr);
-			if (pmd)
-				pte = pte_offset_map(pmd, addr);
+		p4d = p4d_offset(pgd, addr);
+		if (p4d) {
+			pud = pud_offset(p4d, addr);
+			if (pud) {
+				pmd = pmd_offset(pud, addr);
+				if (pmd)
+					pte = pte_offset_map(pmd, addr);
+			}
 		}
 	}
 
diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
index 4bab79baee75..594203530d43 100644
--- a/arch/sh/mm/init.c
+++ b/arch/sh/mm/init.c
@@ -45,6 +45,7 @@ void __init __weak plat_mem_setup(void)
 static pte_t *__get_pte_phys(unsigned long addr)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 
@@ -54,7 +55,13 @@ static pte_t *__get_pte_phys(unsigned long addr)
 		return NULL;
 	}
 
-	pud = pud_alloc(NULL, pgd, addr);
+	p4d = p4d_alloc(NULL, pgd, addr);
+	if (unlikely(!p4d)) {
+		p4d_ERROR(*p4d);
+		return NULL;
+	}
+
+	pud = pud_alloc(NULL, p4d, addr);
 	if (unlikely(!pud)) {
 		pud_ERROR(*pud);
 		return NULL;
diff --git a/arch/sh/mm/kmap.c b/arch/sh/mm/kmap.c
index 9e6b38b03cf7..0e7039137f5a 100644
--- a/arch/sh/mm/kmap.c
+++ b/arch/sh/mm/kmap.c
@@ -15,7 +15,7 @@
 #include <asm/cacheflush.h>
 
 #define kmap_get_fixmap_pte(vaddr)                                     \
-	pte_offset_kernel(pmd_offset(pud_offset(pgd_offset_k(vaddr), (vaddr)), (vaddr)), (vaddr))
+	pte_offset_kernel(pmd_offset(pud_offset(p4d_offset(pgd_offset_k(vaddr), (vaddr)), (vaddr)), (vaddr)), vaddr)
 
 static pte_t *kmap_coherent_pte;
 
diff --git a/arch/sh/mm/tlbex_32.c b/arch/sh/mm/tlbex_32.c
index 382262dc0c4b..1c53868632ee 100644
--- a/arch/sh/mm/tlbex_32.c
+++ b/arch/sh/mm/tlbex_32.c
@@ -23,6 +23,7 @@ handle_tlbmiss(struct pt_regs *regs, unsigned long error_code,
 	       unsigned long address)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -42,7 +43,10 @@ handle_tlbmiss(struct pt_regs *regs, unsigned long error_code,
 		pgd = pgd_offset(current->mm, address);
 	}
 
-	pud = pud_offset(pgd, address);
+	p4d = p4d_offset(pgd, address);
+	if (p4d_none_or_clear_bad(p4d))
+		return 1;
+	pud = pud_offset(p4d, address);
 	if (pud_none_or_clear_bad(pud))
 		return 1;
 	pmd = pmd_offset(pud, address);
diff --git a/arch/sh/mm/tlbex_64.c b/arch/sh/mm/tlbex_64.c
index 8ff966dd0c74..0d015f7556fa 100644
--- a/arch/sh/mm/tlbex_64.c
+++ b/arch/sh/mm/tlbex_64.c
@@ -44,6 +44,7 @@ static int handle_tlbmiss(unsigned long long protection_flags,
 			  unsigned long address)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -58,7 +59,11 @@ static int handle_tlbmiss(unsigned long long protection_flags,
 		pgd = pgd_offset(current->mm, address);
 	}
 
-	pud = pud_offset(pgd, address);
+	p4d = p4d_offset(pgd, address);
+	if (p4d_none(*p4d) || !p4d_present(*p4d))
+		return 1;
+
+	pud = pud_offset(p4d, address);
 	if (pud_none(*pud) || !pud_present(*pud))
 		return 1;
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
