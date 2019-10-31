Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7918EEB147
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:33:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmUqmorr+Gz7IBzLC79n2ZM0TfZrvjxU2Q4Ucc4XxME=; b=Lq0BCWGj2KEip+
	/PZI0i/ycrxu1uz50CWBKnoH+1fWP+QyS+WhXfXt2/EpIJYHbPcnAFqIllGdYK5R0/6BPTWuTlbQo
	hjcRds40KOCqK5yN4W8yLpCQrhdRG0qnrhjMWEFWO7uEZiA3jvZZXZuoG9l76kiTufNMLdS1vP1gm
	Y0kzXhE9ffC52FVtIjuv6XQP/TBalQpjIR6dXKorqeJcThCbIjkOhNzw4k26N2Ev/yPEAhVL/6Y6B
	Ksto6k9Dt0aXoFQTEBt2WhGKp3CT989gPMFq/4wKxCsYLT2H2phyP/bGyKrUSNQDnBnM1SHNUkfXn
	wFeonKRHRU247xUrE+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAa9-0003Cj-8z; Thu, 31 Oct 2019 13:33:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAZu-00034z-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:33:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 055861FB;
 Thu, 31 Oct 2019 06:33:30 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8741C3F71E;
 Thu, 31 Oct 2019 06:33:27 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] mm: ptdump: Reduce level numbers by 1 in note_page()
Date: Thu, 31 Oct 2019 13:33:22 +0000
Message-Id: <20191031133322.3239-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <40956d62-241c-6685-72f1-bfc01183141e@arm.com>
References: <40956d62-241c-6685-72f1-bfc01183141e@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_063330_903972_DB27D36D 
X-CRM114-Status: GOOD (  19.96  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, linux-mm@kvack.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H . Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rather than having to increment the 'depth' number by 1 in
ptdump_hole(), let's change the meaning of 'level' in note_page() since
that makes the code simplier.

Note that for x86, the level numbers were previously increased by 1 in
commit 45dcd2091363 ("x86/mm/dump_pagetables: Fix printout of p4d level")
and the comment "Bit 7 has a different meaning" was not updated, so this
change also makes the code match the comment again.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/mm/dump.c          |  6 +++---
 arch/x86/mm/dump_pagetables.c | 19 ++++++++++---------
 include/linux/ptdump.h        |  1 +
 mm/ptdump.c                   | 16 ++++++++--------
 4 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 3203dd8e6d0a..4997ce244172 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -175,8 +175,7 @@ struct pg_level {
 };
 
 static struct pg_level pg_level[] = {
-	{
-	}, { /* pgd */
+	{ /* pgd */
 		.name	= "PGD",
 		.bits	= pte_bits,
 		.num	= ARRAY_SIZE(pte_bits),
@@ -256,7 +255,7 @@ static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
 	if (level >= 0)
 		prot = val & pg_level[level].mask;
 
-	if (!st->level) {
+	if (st->level == -1) {
 		st->level = level;
 		st->current_prot = prot;
 		st->start_address = addr;
@@ -350,6 +349,7 @@ void ptdump_check_wx(void)
 			{ 0, NULL},
 			{ -1, NULL},
 		},
+		.level = -1,
 		.check_wx = true,
 		.ptdump = {
 			.note_page = note_page,
diff --git a/arch/x86/mm/dump_pagetables.c b/arch/x86/mm/dump_pagetables.c
index 77a1332c6cd4..d3c28b3765fc 100644
--- a/arch/x86/mm/dump_pagetables.c
+++ b/arch/x86/mm/dump_pagetables.c
@@ -176,7 +176,7 @@ static struct addr_marker address_markers[] = {
 static void printk_prot(struct seq_file *m, pgprotval_t pr, int level, bool dmsg)
 {
 	static const char * const level_name[] =
-		{ "cr3", "pgd", "p4d", "pud", "pmd", "pte" };
+		{ "pgd", "p4d", "pud", "pmd", "pte" };
 
 	if (!(pr & _PAGE_PRESENT)) {
 		/* Not present */
@@ -200,12 +200,12 @@ static void printk_prot(struct seq_file *m, pgprotval_t pr, int level, bool dmsg
 			pt_dump_cont_printf(m, dmsg, "    ");
 
 		/* Bit 7 has a different meaning on level 3 vs 4 */
-		if (level <= 4 && pr & _PAGE_PSE)
+		if (level <= 3 && pr & _PAGE_PSE)
 			pt_dump_cont_printf(m, dmsg, "PSE ");
 		else
 			pt_dump_cont_printf(m, dmsg, "    ");
-		if ((level == 5 && pr & _PAGE_PAT) ||
-		    ((level == 4 || level == 3) && pr & _PAGE_PAT_LARGE))
+		if ((level == 4 && pr & _PAGE_PAT) ||
+		    ((level == 3 || level == 2) && pr & _PAGE_PAT_LARGE))
 			pt_dump_cont_printf(m, dmsg, "PAT ");
 		else
 			pt_dump_cont_printf(m, dmsg, "    ");
@@ -267,15 +267,15 @@ static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
 
 	new_prot = val & PTE_FLAGS_MASK;
 
-	if (level > 1) {
-		new_eff = effective_prot(st->prot_levels[level - 2],
+	if (level > 0) {
+		new_eff = effective_prot(st->prot_levels[level - 1],
 					 new_prot);
 	} else {
 		new_eff = new_prot;
 	}
 
-	if (level > 0)
-		st->prot_levels[level - 1] = new_eff;
+	if (level >= 0)
+		st->prot_levels[level] = new_eff;
 
 	/*
 	 * If we have a "break" in the series, we need to flush the state that
@@ -285,7 +285,7 @@ static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
 	cur = st->current_prot;
 	eff = st->effective_prot;
 
-	if (!st->level) {
+	if (st->level == -1) {
 		/* First entry */
 		st->current_prot = new_prot;
 		st->effective_prot = new_eff;
@@ -376,6 +376,7 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, struct mm_struct *mm,
 			.note_page	= note_page,
 			.range		= ptdump_ranges
 		},
+		.level = -1,
 		.to_dmesg	= dmesg,
 		.check_wx	= checkwx,
 		.seq		= m
diff --git a/include/linux/ptdump.h b/include/linux/ptdump.h
index a0fb8dd2be97..b28f3f2acf90 100644
--- a/include/linux/ptdump.h
+++ b/include/linux/ptdump.h
@@ -11,6 +11,7 @@ struct ptdump_range {
 };
 
 struct ptdump_state {
+	/* level is 0:PGD to 4:PTE, or -1 if unknown */
 	void (*note_page)(struct ptdump_state *st, unsigned long addr,
 			  int level, unsigned long val);
 	const struct ptdump_range *range;
diff --git a/mm/ptdump.c b/mm/ptdump.c
index 5d349311e77e..856feba4cdf9 100644
--- a/mm/ptdump.c
+++ b/mm/ptdump.c
@@ -11,7 +11,7 @@ static int ptdump_pgd_entry(pgd_t *pgd, unsigned long addr,
 	pgd_t val = READ_ONCE(*pgd);
 
 	if (pgd_leaf(val))
-		st->note_page(st, addr, 1, pgd_val(val));
+		st->note_page(st, addr, 0, pgd_val(val));
 
 	return 0;
 }
@@ -23,7 +23,7 @@ static int ptdump_p4d_entry(p4d_t *p4d, unsigned long addr,
 	p4d_t val = READ_ONCE(*p4d);
 
 	if (p4d_leaf(val))
-		st->note_page(st, addr, 2, p4d_val(val));
+		st->note_page(st, addr, 1, p4d_val(val));
 
 	return 0;
 }
@@ -35,7 +35,7 @@ static int ptdump_pud_entry(pud_t *pud, unsigned long addr,
 	pud_t val = READ_ONCE(*pud);
 
 	if (pud_leaf(val))
-		st->note_page(st, addr, 3, pud_val(val));
+		st->note_page(st, addr, 2, pud_val(val));
 
 	return 0;
 }
@@ -47,7 +47,7 @@ static int ptdump_pmd_entry(pmd_t *pmd, unsigned long addr,
 	pmd_t val = READ_ONCE(*pmd);
 
 	if (pmd_leaf(val))
-		st->note_page(st, addr, 4, pmd_val(val));
+		st->note_page(st, addr, 3, pmd_val(val));
 
 	return 0;
 }
@@ -57,7 +57,7 @@ static int ptdump_pte_entry(pte_t *pte, unsigned long addr,
 {
 	struct ptdump_state *st = walk->private;
 
-	st->note_page(st, addr, 5, pte_val(READ_ONCE(*pte)));
+	st->note_page(st, addr, 4, pte_val(READ_ONCE(*pte)));
 
 	return 0;
 }
@@ -75,7 +75,7 @@ static inline int note_kasan_page_table(struct mm_walk *walk,
 {
 	struct ptdump_state *st = walk->private;
 
-	st->note_page(st, addr, 5, pte_val(kasan_early_shadow_pte[0]));
+	st->note_page(st, addr, 4, pte_val(kasan_early_shadow_pte[0]));
 	return 1;
 }
 
@@ -115,7 +115,7 @@ static int ptdump_hole(unsigned long addr, unsigned long next,
 {
 	struct ptdump_state *st = walk->private;
 
-	st->note_page(st, addr, depth + 1, 0);
+	st->note_page(st, addr, depth, 0);
 
 	return 0;
 }
@@ -146,5 +146,5 @@ void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm)
 	up_read(&mm->mmap_sem);
 
 	/* Flush out the last page */
-	st->note_page(st, 0, 0, 0);
+	st->note_page(st, 0, -1, 0);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
