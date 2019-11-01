Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D7AEC470
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZp77xwGPlSmmwV6E+ZhqXmaSKsSs2RU7jcwvT0bqQY=; b=YAS+OenDCSRVQ6
	1puQ68OVvix7sgAGUwFgt3KH2daqYH0CETmpIjv/yB2PXs9xsKheWOEOD9dt+GV/RI4RjfuZ9redG
	6xMDWm/GPn536DAFIUX+2pZFhbaSkAm+IIy4cUzpP17TUrWuik9fWO/3rs5xCfLjXg4LNo9sK4M8l
	LM8lF8ele2jh/HR8FezuyX6YGX4LnubbGQF21c/0ss92ZO2exMjPSf7bXyKFj7QYVHWSRGtoeBi9l
	fenTDnvPhFdwKyu3R1lc4m6YGBCItyCFogjNFpD/dSEs6mVdnl084SkmURo+EMlnPoQnTzy1avVPf
	upx7KmdFDFp+c3PiPhHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXgt-0003wO-V9; Fri, 01 Nov 2019 14:14:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXdO-0000jd-SB
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:10:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 198298E6;
 Fri,  1 Nov 2019 07:10:38 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 831773F718;
 Fri,  1 Nov 2019 07:10:35 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v15 15/23] x86: mm: Point to struct seq_file from struct
 pg_state
Date: Fri,  1 Nov 2019 14:09:34 +0000
Message-Id: <20191101140942.51554-16-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101140942.51554-1-steven.price@arm.com>
References: <20191101140942.51554-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_071039_062074_BF6C0D49 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

mm/dump_pagetables.c passes both struct seq_file and struct pg_state
down the chain of walk_*_level() functions to be passed to note_page().
Instead place the struct seq_file in struct pg_state and access it from
struct pg_state (which is private to this file) in note_page().

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/x86/mm/dump_pagetables.c | 69 ++++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 34 deletions(-)

diff --git a/arch/x86/mm/dump_pagetables.c b/arch/x86/mm/dump_pagetables.c
index ab67822fd2f4..4dc6f4df40af 100644
--- a/arch/x86/mm/dump_pagetables.c
+++ b/arch/x86/mm/dump_pagetables.c
@@ -36,6 +36,7 @@ struct pg_state {
 	bool to_dmesg;
 	bool check_wx;
 	unsigned long wx_pages;
+	struct seq_file *seq;
 };
 
 struct addr_marker {
@@ -265,11 +266,12 @@ static void note_wx(struct pg_state *st)
  * of PTE entries; the next one is different so we need to
  * print what we collected so far.
  */
-static void note_page(struct seq_file *m, struct pg_state *st,
-		      pgprot_t new_prot, pgprotval_t new_eff, int level)
+static void note_page(struct pg_state *st, pgprot_t new_prot,
+		      pgprotval_t new_eff, int level)
 {
 	pgprotval_t prot, cur, eff;
 	static const char units[] = "BKMGTPE";
+	struct seq_file *m = st->seq;
 
 	/*
 	 * If we have a "break" in the series, we need to flush the state that
@@ -354,8 +356,8 @@ static inline pgprotval_t effective_prot(pgprotval_t prot1, pgprotval_t prot2)
 	       ((prot1 | prot2) & _PAGE_NX);
 }
 
-static void walk_pte_level(struct seq_file *m, struct pg_state *st, pmd_t addr,
-			   pgprotval_t eff_in, unsigned long P)
+static void walk_pte_level(struct pg_state *st, pmd_t addr, pgprotval_t eff_in,
+			   unsigned long P)
 {
 	int i;
 	pte_t *pte;
@@ -366,7 +368,7 @@ static void walk_pte_level(struct seq_file *m, struct pg_state *st, pmd_t addr,
 		pte = pte_offset_map(&addr, st->current_address);
 		prot = pte_flags(*pte);
 		eff = effective_prot(eff_in, prot);
-		note_page(m, st, __pgprot(prot), eff, 5);
+		note_page(st, __pgprot(prot), eff, 5);
 		pte_unmap(pte);
 	}
 }
@@ -379,22 +381,20 @@ static void walk_pte_level(struct seq_file *m, struct pg_state *st, pmd_t addr,
  * us dozens of seconds (minutes for 5-level config) while checking for
  * W+X mapping or reading kernel_page_tables debugfs file.
  */
-static inline bool kasan_page_table(struct seq_file *m, struct pg_state *st,
-				void *pt)
+static inline bool kasan_page_table(struct pg_state *st, void *pt)
 {
 	if (__pa(pt) == __pa(kasan_early_shadow_pmd) ||
 	    (pgtable_l5_enabled() &&
 			__pa(pt) == __pa(kasan_early_shadow_p4d)) ||
 	    __pa(pt) == __pa(kasan_early_shadow_pud)) {
 		pgprotval_t prot = pte_flags(kasan_early_shadow_pte[0]);
-		note_page(m, st, __pgprot(prot), 0, 5);
+		note_page(st, __pgprot(prot), 0, 5);
 		return true;
 	}
 	return false;
 }
 #else
-static inline bool kasan_page_table(struct seq_file *m, struct pg_state *st,
-				void *pt)
+static inline bool kasan_page_table(struct pg_state *st, void *pt)
 {
 	return false;
 }
@@ -402,7 +402,7 @@ static inline bool kasan_page_table(struct seq_file *m, struct pg_state *st,
 
 #if PTRS_PER_PMD > 1
 
-static void walk_pmd_level(struct seq_file *m, struct pg_state *st, pud_t addr,
+static void walk_pmd_level(struct pg_state *st, pud_t addr,
 			   pgprotval_t eff_in, unsigned long P)
 {
 	int i;
@@ -416,27 +416,27 @@ static void walk_pmd_level(struct seq_file *m, struct pg_state *st, pud_t addr,
 			prot = pmd_flags(*start);
 			eff = effective_prot(eff_in, prot);
 			if (pmd_large(*start) || !pmd_present(*start)) {
-				note_page(m, st, __pgprot(prot), eff, 4);
-			} else if (!kasan_page_table(m, st, pmd_start)) {
-				walk_pte_level(m, st, *start, eff,
+				note_page(st, __pgprot(prot), eff, 4);
+			} else if (!kasan_page_table(st, pmd_start)) {
+				walk_pte_level(st, *start, eff,
 					       P + i * PMD_LEVEL_MULT);
 			}
 		} else
-			note_page(m, st, __pgprot(0), 0, 4);
+			note_page(st, __pgprot(0), 0, 4);
 		start++;
 	}
 }
 
 #else
-#define walk_pmd_level(m,s,a,e,p) walk_pte_level(m,s,__pmd(pud_val(a)),e,p)
+#define walk_pmd_level(s,a,e,p) walk_pte_level(s,__pmd(pud_val(a)),e,p)
 #define pud_large(a) pmd_large(__pmd(pud_val(a)))
 #define pud_none(a)  pmd_none(__pmd(pud_val(a)))
 #endif
 
 #if PTRS_PER_PUD > 1
 
-static void walk_pud_level(struct seq_file *m, struct pg_state *st, p4d_t addr,
-			   pgprotval_t eff_in, unsigned long P)
+static void walk_pud_level(struct pg_state *st, p4d_t addr, pgprotval_t eff_in,
+			   unsigned long P)
 {
 	int i;
 	pud_t *start, *pud_start;
@@ -450,33 +450,33 @@ static void walk_pud_level(struct seq_file *m, struct pg_state *st, p4d_t addr,
 			prot = pud_flags(*start);
 			eff = effective_prot(eff_in, prot);
 			if (pud_large(*start) || !pud_present(*start)) {
-				note_page(m, st, __pgprot(prot), eff, 3);
-			} else if (!kasan_page_table(m, st, pud_start)) {
-				walk_pmd_level(m, st, *start, eff,
+				note_page(st, __pgprot(prot), eff, 3);
+			} else if (!kasan_page_table(st, pud_start)) {
+				walk_pmd_level(st, *start, eff,
 					       P + i * PUD_LEVEL_MULT);
 			}
 		} else
-			note_page(m, st, __pgprot(0), 0, 3);
+			note_page(st, __pgprot(0), 0, 3);
 
 		start++;
 	}
 }
 
 #else
-#define walk_pud_level(m,s,a,e,p) walk_pmd_level(m,s,__pud(p4d_val(a)),e,p)
+#define walk_pud_level(s,a,e,p) walk_pmd_level(s,__pud(p4d_val(a)),e,p)
 #define p4d_large(a) pud_large(__pud(p4d_val(a)))
 #define p4d_none(a)  pud_none(__pud(p4d_val(a)))
 #endif
 
-static void walk_p4d_level(struct seq_file *m, struct pg_state *st, pgd_t addr,
-			   pgprotval_t eff_in, unsigned long P)
+static void walk_p4d_level(struct pg_state *st, pgd_t addr, pgprotval_t eff_in,
+			   unsigned long P)
 {
 	int i;
 	p4d_t *start, *p4d_start;
 	pgprotval_t prot, eff;
 
 	if (PTRS_PER_P4D == 1)
-		return walk_pud_level(m, st, __p4d(pgd_val(addr)), eff_in, P);
+		return walk_pud_level(st, __p4d(pgd_val(addr)), eff_in, P);
 
 	p4d_start = start = (p4d_t *)pgd_page_vaddr(addr);
 
@@ -486,13 +486,13 @@ static void walk_p4d_level(struct seq_file *m, struct pg_state *st, pgd_t addr,
 			prot = p4d_flags(*start);
 			eff = effective_prot(eff_in, prot);
 			if (p4d_large(*start) || !p4d_present(*start)) {
-				note_page(m, st, __pgprot(prot), eff, 2);
-			} else if (!kasan_page_table(m, st, p4d_start)) {
-				walk_pud_level(m, st, *start, eff,
+				note_page(st, __pgprot(prot), eff, 2);
+			} else if (!kasan_page_table(st, p4d_start)) {
+				walk_pud_level(st, *start, eff,
 					       P + i * P4D_LEVEL_MULT);
 			}
 		} else
-			note_page(m, st, __pgprot(0), 0, 2);
+			note_page(st, __pgprot(0), 0, 2);
 
 		start++;
 	}
@@ -529,6 +529,7 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 	}
 
 	st.check_wx = checkwx;
+	st.seq = m;
 	if (checkwx)
 		st.wx_pages = 0;
 
@@ -542,13 +543,13 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 			eff = prot;
 #endif
 			if (pgd_large(*start) || !pgd_present(*start)) {
-				note_page(m, &st, __pgprot(prot), eff, 1);
+				note_page(&st, __pgprot(prot), eff, 1);
 			} else {
-				walk_p4d_level(m, &st, *start, eff,
+				walk_p4d_level(&st, *start, eff,
 					       i * PGD_LEVEL_MULT);
 			}
 		} else
-			note_page(m, &st, __pgprot(0), 0, 1);
+			note_page(&st, __pgprot(0), 0, 1);
 
 		cond_resched();
 		start++;
@@ -556,7 +557,7 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 
 	/* Flush out the last page */
 	st.current_address = normalize_addr(PTRS_PER_PGD*PGD_LEVEL_MULT);
-	note_page(m, &st, __pgprot(0), 0, 0);
+	note_page(&st, __pgprot(0), 0, 0);
 	if (!checkwx)
 		return;
 	if (st.wx_pages)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
