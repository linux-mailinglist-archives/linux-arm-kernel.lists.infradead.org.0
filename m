Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5A6CE814
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5V88zZvtlo7zuJTTCK3KaAIAmG1Xc6pG7ACoqJU7Mxs=; b=WA85DX5xH7Oekq
	ZdE5g2kPQiebMEQAwYxx8MngFAkoUXcezIxe8qymxAvvU6KILQ6HpKU1KLdcmTuXjEJ13SXYOalr8
	V9QZZZJz8bNQGUj6w5W7VtNMxB481+oWryHMle/Pw2S26XZkih3j7bvKgdIlyAUb8w9k8YnBrh38a
	ZR0wedcQVh4zHGIx+xXLAznUleijQdik//nYjGuyBNen2AJFYjwXlEwVtYHKp11L+N5slpQAwp+Y5
	LaAzYby93DBmtPDwQYFCCoJPEgdFvsoex2Gd1MFkRHj7kBpox5THFA3wRHYhtbAHnaRfVQk6aCN10
	tkIa+Xicd416mmz6OxlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVAm-00011J-RG; Mon, 07 Oct 2019 15:43:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHV6n-00047r-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:39:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F34261576;
 Mon,  7 Oct 2019 08:39:36 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [10.1.197.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6881D3F6C4;
 Mon,  7 Oct 2019 08:39:34 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v11 19/22] mm: Add generic ptdump
Date: Mon,  7 Oct 2019 16:38:19 +0100
Message-Id: <20191007153822.16518-20-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191007153822.16518-1-steven.price@arm.com>
References: <20191007153822.16518-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_083937_520427_02BECD76 
X-CRM114-Status: GOOD (  19.49  )
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

Add a generic version of page table dumping that architectures can
opt-in to

Signed-off-by: Steven Price <steven.price@arm.com>
---
 include/linux/ptdump.h |  21 ++++++
 mm/Kconfig.debug       |  21 ++++++
 mm/Makefile            |   1 +
 mm/ptdump.c            | 150 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 193 insertions(+)
 create mode 100644 include/linux/ptdump.h
 create mode 100644 mm/ptdump.c

diff --git a/include/linux/ptdump.h b/include/linux/ptdump.h
new file mode 100644
index 000000000000..a0fb8dd2be97
--- /dev/null
+++ b/include/linux/ptdump.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_PTDUMP_H
+#define _LINUX_PTDUMP_H
+
+#include <linux/mm_types.h>
+
+struct ptdump_range {
+	unsigned long start;
+	unsigned long end;
+};
+
+struct ptdump_state {
+	void (*note_page)(struct ptdump_state *st, unsigned long addr,
+			  int level, unsigned long val);
+	const struct ptdump_range *range;
+};
+
+void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm);
+
+#endif /* _LINUX_PTDUMP_H */
diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 327b3ebf23bf..0271b22e063f 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -117,3 +117,24 @@ config DEBUG_RODATA_TEST
     depends on STRICT_KERNEL_RWX
     ---help---
       This option enables a testcase for the setting rodata read-only.
+
+config GENERIC_PTDUMP
+	bool
+
+config PTDUMP_CORE
+	bool
+
+config PTDUMP_DEBUGFS
+	bool "Export kernel pagetable layout to userspace via debugfs"
+	depends on DEBUG_KERNEL
+	depends on DEBUG_FS
+	depends on GENERIC_PTDUMP
+	select PTDUMP_CORE
+	help
+	  Say Y here if you want to show the kernel pagetable layout in a
+	  debugfs file. This information is only useful for kernel developers
+	  who are working in architecture specific areas of the kernel.
+	  It is probably not a good idea to enable this feature in a production
+	  kernel.
+
+	  If in doubt, say N.
diff --git a/mm/Makefile b/mm/Makefile
index d996846697ef..6e962007f186 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -107,3 +107,4 @@ obj-$(CONFIG_PERCPU_STATS) += percpu-stats.o
 obj-$(CONFIG_ZONE_DEVICE) += memremap.o
 obj-$(CONFIG_HMM_MIRROR) += hmm.o
 obj-$(CONFIG_MEMFD_CREATE) += memfd.o
+obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
diff --git a/mm/ptdump.c b/mm/ptdump.c
new file mode 100644
index 000000000000..5d349311e77e
--- /dev/null
+++ b/mm/ptdump.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/pagewalk.h>
+#include <linux/ptdump.h>
+#include <linux/kasan.h>
+
+static int ptdump_pgd_entry(pgd_t *pgd, unsigned long addr,
+			    unsigned long next, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+	pgd_t val = READ_ONCE(*pgd);
+
+	if (pgd_leaf(val))
+		st->note_page(st, addr, 1, pgd_val(val));
+
+	return 0;
+}
+
+static int ptdump_p4d_entry(p4d_t *p4d, unsigned long addr,
+			    unsigned long next, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+	p4d_t val = READ_ONCE(*p4d);
+
+	if (p4d_leaf(val))
+		st->note_page(st, addr, 2, p4d_val(val));
+
+	return 0;
+}
+
+static int ptdump_pud_entry(pud_t *pud, unsigned long addr,
+			    unsigned long next, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+	pud_t val = READ_ONCE(*pud);
+
+	if (pud_leaf(val))
+		st->note_page(st, addr, 3, pud_val(val));
+
+	return 0;
+}
+
+static int ptdump_pmd_entry(pmd_t *pmd, unsigned long addr,
+			    unsigned long next, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+	pmd_t val = READ_ONCE(*pmd);
+
+	if (pmd_leaf(val))
+		st->note_page(st, addr, 4, pmd_val(val));
+
+	return 0;
+}
+
+static int ptdump_pte_entry(pte_t *pte, unsigned long addr,
+			    unsigned long next, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+
+	st->note_page(st, addr, 5, pte_val(READ_ONCE(*pte)));
+
+	return 0;
+}
+
+#ifdef CONFIG_KASAN
+/*
+ * This is an optimization for KASAN=y case. Since all kasan page tables
+ * eventually point to the kasan_early_shadow_page we could call note_page()
+ * right away without walking through lower level page tables. This saves
+ * us dozens of seconds (minutes for 5-level config) while checking for
+ * W+X mapping or reading kernel_page_tables debugfs file.
+ */
+static inline int note_kasan_page_table(struct mm_walk *walk,
+					unsigned long addr)
+{
+	struct ptdump_state *st = walk->private;
+
+	st->note_page(st, addr, 5, pte_val(kasan_early_shadow_pte[0]));
+	return 1;
+}
+
+static int ptdump_test_p4d(unsigned long addr, unsigned long next,
+			   p4d_t *p4d, struct mm_walk *walk)
+{
+#if CONFIG_PGTABLE_LEVELS > 4
+	if (p4d == lm_alias(kasan_early_shadow_p4d))
+		return note_kasan_page_table(walk, addr);
+#endif
+	return 0;
+}
+
+static int ptdump_test_pud(unsigned long addr, unsigned long next,
+			   pud_t *pud, struct mm_walk *walk)
+{
+#if CONFIG_PGTABLE_LEVELS > 3
+	if (pud == lm_alias(kasan_early_shadow_pud))
+		return note_kasan_page_table(walk, addr);
+#endif
+	return 0;
+}
+
+static int ptdump_test_pmd(unsigned long addr, unsigned long next,
+			   pmd_t *pmd, struct mm_walk *walk)
+{
+#if CONFIG_PGTABLE_LEVELS > 2
+	if (pmd == lm_alias(kasan_early_shadow_pmd))
+		return note_kasan_page_table(walk, addr);
+#endif
+	return 0;
+}
+#endif /* CONFIG_KASAN */
+
+static int ptdump_hole(unsigned long addr, unsigned long next,
+		       int depth, struct mm_walk *walk)
+{
+	struct ptdump_state *st = walk->private;
+
+	st->note_page(st, addr, depth + 1, 0);
+
+	return 0;
+}
+
+const static struct mm_walk_ops ptdump_ops = {
+	.pgd_entry	= ptdump_pgd_entry,
+	.p4d_entry	= ptdump_p4d_entry,
+	.pud_entry	= ptdump_pud_entry,
+	.pmd_entry	= ptdump_pmd_entry,
+	.pte_entry	= ptdump_pte_entry,
+#ifdef CONFIG_KASAN
+	.test_p4d	= ptdump_test_p4d,
+	.test_pud	= ptdump_test_pud,
+	.test_pmd	= ptdump_test_pmd,
+#endif
+	.pte_hole	= ptdump_hole,
+};
+
+void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm)
+{
+	const struct ptdump_range *range = st->range;
+
+	down_read(&mm->mmap_sem);
+	while (range->start != range->end) {
+		walk_page_range(mm, range->start, range->end, &ptdump_ops, st);
+		range++;
+	}
+	up_read(&mm->mmap_sem);
+
+	/* Flush out the last page */
+	st->note_page(st, 0, 0, 0);
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
