Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13184E733A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uo04vtZmzRaOdZ3t4zfJBPXICGBO2Nk/6DelwY/JbBI=; b=FYWMpky3YQiWHQ
	EEOLCi0bkBXtqukZfaJ1sduykQHpUIlD1opUyB7CdqczHzpET4xRym02t5nRxSUxUPWSyCnN5Wmgy
	CNbMxknr1VFLPWLejj9wNPRjlZJh2WGN9GUnTuJngFvGEMHMmGL+IuGt/J/EhKTbZzadhut2vavNd
	3yfW9L8CbGG7fBr6SbwptYY71geHiSNGqnO9QKsAzZYeVZ2pXwEPeOik/6pGsqqhbimpdPtB3Vje0
	aQpL93rgIL9OkHOvUmc0MpjuOEvmLwm+GS/5JHb71pEjdTGJK+fX99tamWSrUtFQxHkdLwO07AUhb
	nWIPhNSVYFP7d76K8fRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5d7-00035b-LV; Mon, 28 Oct 2019 14:04:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5Z1-0006cG-OL
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:00:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B952C1F1;
 Mon, 28 Oct 2019 07:00:06 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (unknown [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A46C3F6C4;
 Mon, 28 Oct 2019 07:00:04 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v14 16/22] x86: mm+efi: Convert ptdump_walk_pgd_level() to
 take a mm_struct
Date: Mon, 28 Oct 2019 13:59:04 +0000
Message-Id: <20191028135910.33253-17-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028135910.33253-1-steven.price@arm.com>
References: <20191028135910.33253-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_070008_308378_A8DD89BC 
X-CRM114-Status: GOOD (  12.43  )
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

To enable x86 to use the generic walk_page_range() function, the
callers of ptdump_walk_pgd_level() need to pass an mm_struct rather
than the raw pgd_t pointer. Luckily since commit 7e904a91bf60
("efi: Use efi_mm in x86 as well as ARM") we now have an mm_struct
for EFI on x86.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/x86/include/asm/pgtable.h | 2 +-
 arch/x86/mm/dump_pagetables.c  | 4 ++--
 arch/x86/platform/efi/efi_32.c | 2 +-
 arch/x86/platform/efi/efi_64.c | 4 ++--
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index 6986a451619e..1a2b469f6e75 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -29,7 +29,7 @@
 extern pgd_t early_top_pgt[PTRS_PER_PGD];
 int __init __early_make_pgtable(unsigned long address, pmdval_t pmd);
 
-void ptdump_walk_pgd_level(struct seq_file *m, pgd_t *pgd);
+void ptdump_walk_pgd_level(struct seq_file *m, struct mm_struct *mm);
 void ptdump_walk_pgd_level_debugfs(struct seq_file *m, pgd_t *pgd, bool user);
 void ptdump_walk_pgd_level_checkwx(void);
 void ptdump_walk_user_pgd_level_checkwx(void);
diff --git a/arch/x86/mm/dump_pagetables.c b/arch/x86/mm/dump_pagetables.c
index 4dc6f4df40af..24fe76325b31 100644
--- a/arch/x86/mm/dump_pagetables.c
+++ b/arch/x86/mm/dump_pagetables.c
@@ -567,9 +567,9 @@ static void ptdump_walk_pgd_level_core(struct seq_file *m, pgd_t *pgd,
 		pr_info("x86/mm: Checked W+X mappings: passed, no W+X pages found.\n");
 }
 
-void ptdump_walk_pgd_level(struct seq_file *m, pgd_t *pgd)
+void ptdump_walk_pgd_level(struct seq_file *m, struct mm_struct *mm)
 {
-	ptdump_walk_pgd_level_core(m, pgd, false, true);
+	ptdump_walk_pgd_level_core(m, mm->pgd, false, true);
 }
 
 void ptdump_walk_pgd_level_debugfs(struct seq_file *m, pgd_t *pgd, bool user)
diff --git a/arch/x86/platform/efi/efi_32.c b/arch/x86/platform/efi/efi_32.c
index 9959657127f4..1616074075c3 100644
--- a/arch/x86/platform/efi/efi_32.c
+++ b/arch/x86/platform/efi/efi_32.c
@@ -49,7 +49,7 @@ void efi_sync_low_kernel_mappings(void) {}
 void __init efi_dump_pagetable(void)
 {
 #ifdef CONFIG_EFI_PGT_DUMP
-	ptdump_walk_pgd_level(NULL, swapper_pg_dir);
+	ptdump_walk_pgd_level(NULL, &init_mm);
 #endif
 }
 
diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index 08ce8177c3af..3cb63cd369d6 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -614,9 +614,9 @@ void __init efi_dump_pagetable(void)
 {
 #ifdef CONFIG_EFI_PGT_DUMP
 	if (efi_enabled(EFI_OLD_MEMMAP))
-		ptdump_walk_pgd_level(NULL, swapper_pg_dir);
+		ptdump_walk_pgd_level(NULL, &init_mm);
 	else
-		ptdump_walk_pgd_level(NULL, efi_mm.pgd);
+		ptdump_walk_pgd_level(NULL, &efi_mm);
 #endif
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
