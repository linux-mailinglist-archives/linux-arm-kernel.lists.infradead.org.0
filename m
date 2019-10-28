Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88304E7342
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CpTFX+DeDDj5jrnJcR2/Tf7CJTUbjJtUNb11qNUk3Q=; b=VlaNnOPNbP0Cdm
	Jxk5kSpG7ZljVgBM8fu4jHoVIw2eBIG15YJXgj3tnpPFIISb7ew6FLUzT2Nbt4GirsAY6G11lQKJw
	Im8erB+8BeZ5IVIPA5ba4XVYVuWqtozaDvk2sdtb5DIGPb9BLxCYzk1JGPUYGBBRJze7rX6eYZQfG
	+jV4NCoyHWsh/HBGFlDtwI//xlSSJ+WQArtMGfMRcl3zhXhp0uSaGD4maRmXZ9WdYh5PvC3MW16dZ
	IkY8l723pZ8PG5hkHtqcfPEOy+QdUD3a76TPXSEviPy7x9FHHWiqVmHRjE7HbhCrqg3eNo+C60Lpn
	um4Q+3wmxXKwKSa23qfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5da-0003a3-N0; Mon, 28 Oct 2019 14:04:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5Z6-0007Ad-T8
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:00:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5C2BB4AE;
 Mon, 28 Oct 2019 07:00:12 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (unknown [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C543D3F6C4;
 Mon, 28 Oct 2019 07:00:09 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v14 18/22] x86: mm: Convert ptdump_walk_pgd_level_core() to
 take an mm_struct
Date: Mon, 28 Oct 2019 13:59:06 +0000
Message-Id: <20191028135910.33253-19-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028135910.33253-1-steven.price@arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_070013_050704_6BDDBF0A 
X-CRM114-Status: GOOD (  15.20  )
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
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

An mm_struct is needed to enable x86 to use of the generic
walk_page_range() function.

In the case of walking the user page tables (when
CONFIG_PAGE_TABLE_ISOLATION is enabled), it is necessary to create a
fake_mm structure because there isn't an mm_struct with a pointer
to the pgd of the user page tables. This fake_mm structure is
initialised with the minimum necessary for the generic page walk code.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/x86/mm/dump_pagetables.c | 36 ++++++++++++++++++++---------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/arch/x86/mm/dump_pagetables.c b/arch/x86/mm/dump_pagetables.c
index 2f5f32f21f81..3632be89ec99 100644
--- a/arch/x86/mm/dump_pagetables.c
+++ b/arch/x86/mm/dump_pagetables.c
@@ -107,8 +107,6 @@ static struct addr_marker address_markers[] = {
 	[END_OF_SPACE_NR]	= { -1,			NULL }
 };
 
-#define INIT_PGD	((pgd_t *) &init_top_pgt)
-
 #else /* CONFIG_X86_64 */
 
 enum address_markers_idx {
@@ -143,8 +141,6 @@ static struct addr_marker address_markers[] = {
 	[END_OF_SPACE_NR]	= { -1,			NULL }
 };
 
-#define INIT_PGD	(swapper_pg_dir)
-
 #endif /* !CONFIG_X86_64 */
 
 /* Multipliers for offsets within the PTEs */
@@ -515,10 +511,10 @@ static inline bool is_hypervisor_range(int idx)
 #endif
 }
 
-static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
+static void ptdump_walk_pgd_level_core(struct seq_file *m, struct mm_struct *mm,
 				       bool checkwx, bool dmesg)
 {
-	pgd_t *start = pgd;
+	pgd_t *start = mm->pgd;
 	pgprotval_t prot, eff;
 	int i;
 	struct pg_state st = {};
@@ -565,39 +561,49 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 
 void ptdump_walk_pgd_level(struct seq_file *m, struct mm_struct *mm)
 {
-	ptdump_walk_pgd_level_core(m, mm->pgd, false, true);
+	ptdump_walk_pgd_level_core(m, mm, false, true);
 }
 
+#ifdef CONFIG_PAGE_TABLE_ISOLATION
+static void ptdump_walk_pgd_level_user_core(struct seq_file *m,
+					    struct mm_struct *mm,
+					    bool checkwx, bool dmesg)
+{
+	struct mm_struct fake_mm = {
+		.pgd = kernel_to_user_pgdp(mm->pgd)
+	};
+	init_rwsem(&fake_mm.mmap_sem);
+	ptdump_walk_pgd_level_core(m, &fake_mm, checkwx, dmesg);
+}
+#endif
+
 void ptdump_walk_pgd_level_debugfs(struct seq_file *m, struct mm_struct *mm,
 				   bool user)
 {
-	pgd_t *pgd = mm->pgd;
 #ifdef CONFIG_PAGE_TABLE_ISOLATION
 	if (user && boot_cpu_has(X86_FEATURE_PTI))
-		pgd = kernel_to_user_pgdp(pgd);
+		ptdump_walk_pgd_level_user_core(m, mm, false, false);
+	else
 #endif
-	ptdump_walk_pgd_level_core(m, pgd, false, false);
+		ptdump_walk_pgd_level_core(m, mm, false, false);
 }
 EXPORT_SYMBOL_GPL(ptdump_walk_pgd_level_debugfs);
 
 void ptdump_walk_user_pgd_level_checkwx(void)
 {
 #ifdef CONFIG_PAGE_TABLE_ISOLATION
-	pgd_t *pgd = INIT_PGD;
-
 	if (!(__supported_pte_mask & _PAGE_NX) ||
 	    !boot_cpu_has(X86_FEATURE_PTI))
 		return;
 
 	pr_info("x86/mm: Checking user space page tables\n");
-	pgd = kernel_to_user_pgdp(pgd);
-	ptdump_walk_pgd_level_core(NULL, pgd, true, false);
+	ptdump_walk_pgd_level_user_core(NULL, &init_mm, true, false);
 #endif
 }
 
 void ptdump_walk_pgd_level_checkwx(void)
 {
-	ptdump_walk_pgd_level_core(NULL, INIT_PGD, true, false);
+	ptdump_walk_pgd_level_core(NULL, &init_mm, true, false);
 }
 
 static int __init pt_dump_init(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
