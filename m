Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1817C7C708
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDuJN93KZIQN+QRly6lT60GibSD1X5Z4zfXXaEuvEsY=; b=gnGOjRylx0WycL
	ompGY1QNWQ1Sl93x0tR5IuW5uH7alNmmJMN7rNdWFFqCKiHZaWIFzgHKUW3n3dzil/wC8QDpeYxda
	6G0uUsP2HqIScrX0EZuz7ti3qqafUuxKcce4quR7ppNsBiR9UwttN1qdGr147SL92N4+HTpmitNz+
	t/PnuEfCoSPllaAAUogQP7h7KSQ3MU6eeqpVsYbZTgGAN88zg8rRwvLC75ossbHBD6VSuZ4lgprE8
	7b2lWxMf6c+ErtsKHyyS+zcNjnmLVJcdWCsDLh2lQzK7Ifd/rDObHPkKxMxe5azcgcRTps3SSvGZY
	HhSsRfyZgccjmfRwhmzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqhf-0008Mt-Qz; Wed, 31 Jul 2019 15:39:47 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgx-0007iN-6L
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:39:05 +0000
Received: by mail-qt1-x842.google.com with SMTP id h21so66968235qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 08:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=mSPaXkOF4y4c7qEpVZR0NQfcUuKxNUUmh4BAqy8Ck5c=;
 b=D2Tu5yPz6ThRiLKACYJE0UxapK38kpyJlO332z7cxCc1YZn2NoRKoz21V31F6uDgZ/
 SWZxsCEX0j5++knXwsUdKPVXCG5Ne5ONR+GSZxIWsOV2jUozTSWOAwyvMRlunWgbv3fR
 +P4okaxNEsy+aIW4IGGne9xBVBFiP1Th/SylTO2SLnKASLc7Er+n5/g1hEw0mZaGTQtH
 HgsCCXq2vgm4k2bgNxO76FnHs3GFnR7uQLbQXylkg9YM4rlIR50pJf12hVDIjkW/aXGj
 ru9eSaEGXoqKnW9Xcn3D1hx2TggdwnP124NT8IKtKyzC1qTJx9qFkpCzZP1TNmVwLUec
 baHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mSPaXkOF4y4c7qEpVZR0NQfcUuKxNUUmh4BAqy8Ck5c=;
 b=lKswkGcaSIg8/6HNlnSn3+zBhavxGJ+vwAtavRfBYkNfXd3mvhKGIWxKtKStEBxu6f
 7pYx34/Qndar5w3eg6rWrZlkgqrvaRA9AhpyX8K9TQBHtpPFmBZ8T+J+pLlzzkfkBdo5
 0DoIsV+ZsISWhI3YjpmwLnelMo9fM4CUQvFkpAX8nBUVnr6lmYyF6tUl2kLrv61prnq1
 74lpep16qt8nK88aoGVHl/k/s7ZstWH7v3UrZ6HTeexYoAV8KhOU2WxrrwqrOuJeFmkw
 kugWtJ1D9TjTQGFfxG89V6cC9QFL+uPX23VyKJHi3SI6NvzqnizK9tkOcAL3hqB1WWTs
 bT4Q==
X-Gm-Message-State: APjAAAU7pb2IUFHx/ajZRM1tpkO/+vXKzeGsDVo3cdZgkzKbyNQ3wlkV
 lLzdydlz/01yXA3sBigW1f0=
X-Google-Smtp-Source: APXvYqwnV5hzOxvHii3LH6ElNCKpudgjmJbmwaAb14VIS52ac266RM0J/Dc7QhnTq28gMec0v5rn6w==
X-Received: by 2002:a0c:d7cc:: with SMTP id g12mr54325194qvj.220.1564587542099; 
 Wed, 31 Jul 2019 08:39:02 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.39.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:01 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 2/8] arm64, mm: transitional tables
Date: Wed, 31 Jul 2019 11:38:51 -0400
Message-Id: <20190731153857.4045-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083903_258165_6F9B1173 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are cases where normal kernel pages tables, i.e. idmap_pg_dir
and swapper_pg_dir are not sufficient because they may be overwritten.

This happens when we transition from one world to another: for example
during kexec kernel relocation transition, and also during hibernate
kernel restore transition.

In these cases, if MMU is needed, the page table memory must be allocated
from a safe place. Transitional tables is intended to allow just that.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_table.h   |  66 ++++++
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_table.c            | 272 +++++++++++++++++++++++++
 5 files changed, 344 insertions(+)
 create mode 100644 arch/arm64/include/asm/trans_table.h
 create mode 100644 arch/arm64/mm/trans_table.c

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..91a7416ffe4e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -999,6 +999,10 @@ config CRASH_DUMP
 
 	  For more details see Documentation/admin-guide/kdump/kdump.rst
 
+config TRANS_TABLE
+	def_bool y
+	depends on HIBERNATION || KEXEC_CORE
+
 config XEN_DOM0
 	def_bool y
 	depends on XEN
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index db92950bb1a0..dcb4f13c7888 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -110,6 +110,7 @@
 #define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
 #define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
 #define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
+#define PUD_SECT_RDONLY		(_AT(pudval_t, 1) << 7)		/* AP[2] */
 
 /*
  * Level 2 descriptor (PMD).
diff --git a/arch/arm64/include/asm/trans_table.h b/arch/arm64/include/asm/trans_table.h
new file mode 100644
index 000000000000..4d7bd0bf36c0
--- /dev/null
+++ b/arch/arm64/include/asm/trans_table.h
@@ -0,0 +1,66 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ */
+
+#ifndef _ASM_TRANS_TABLE_H
+#define _ASM_TRANS_TABLE_H
+
+#include <asm/pgtable-types.h>
+
+/*
+ * trans_alloc_page
+ *	- Allocator that should return exactly one uninitilaized page, if this
+ *	 allocator fails, trans_table returns -ENOMEM error.
+ *
+ * trans_alloc_arg
+ *	- Passed to trans_alloc_page as an argument
+ *
+ * trans_flags
+ *	- bitmap with flags that control how page table is filled.
+ *	  TRANS_MKWRITE: during page table copy make PTE, PME, and PUD page
+ *			 writeable by removing RDONLY flag from PTE.
+ *	  TRANS_MKVALID: during page table copy, if PTE present, but not valid,
+ *			 make it valid.
+ *	  TRANS_CHECKPFN: During page table copy, for every PTE entry check that
+ *			  PFN that this PTE points to is valid. Otherwise return
+ *			  -ENXIO
+ *	  TRANS_FORCEMAP: During page map, if translation exists, force
+ *			  overwrite it. Otherwise -ENXIO may be returned by
+ *			  trans_table_map_* functions if conflict is detected.
+ */
+
+#define	TRANS_MKWRITE	(1 << 0)
+#define	TRANS_MKVALID	(1 << 1)
+#define	TRANS_CHECKPFN	(1 << 2)
+#define	TRANS_FORCEMAP	(1 << 3)
+
+struct trans_table_info {
+	void * (*trans_alloc_page)(void *);
+	void *trans_alloc_arg;
+	unsigned long trans_flags;
+};
+
+/* Create and empty trans table. */
+int trans_table_create_empty(struct trans_table_info *info,
+			     pgd_t **trans_table);
+
+/*
+ * Create trans table and copy entries from from_table to trans_table in range
+ * [start, end)
+ */
+int trans_table_create_copy(struct trans_table_info *info, pgd_t **trans_table,
+			    pgd_t *from_table, unsigned long start,
+			    unsigned long end);
+
+/*
+ * Add map entry to trans_table for a base-size page at PTE level.
+ * page:	page to be mapped.
+ * dst_addr:	new VA address for the pages
+ * pgprot:	protection for the page.
+ */
+int trans_table_map_page(struct trans_table_info *info, pgd_t *trans_table,
+			 void *page, unsigned long dst_addr, pgprot_t pgprot);
+
+#endif /* _ASM_TRANS_TABLE_H */
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index 849c1df3d214..3794fff18659 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -6,6 +6,7 @@ obj-y				:= dma-mapping.o extable.o fault.o init.o \
 obj-$(CONFIG_HUGETLB_PAGE)	+= hugetlbpage.o
 obj-$(CONFIG_ARM64_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_ARM64_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
+obj-$(CONFIG_TRANS_TABLE)	+= trans_table.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
 KASAN_SANITIZE_physaddr.o	+= n
diff --git a/arch/arm64/mm/trans_table.c b/arch/arm64/mm/trans_table.c
new file mode 100644
index 000000000000..d5729eb318b7
--- /dev/null
+++ b/arch/arm64/mm/trans_table.c
@@ -0,0 +1,272 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ */
+
+/*
+ * Transitional tables are used during system transferring from one world to
+ * another: such as during hibernate restore, and kexec reboots. During these
+ * phases one cannot rely on page table not being overwritten.
+ *
+ */
+
+#include <asm/trans_table.h>
+#include <asm/pgalloc.h>
+#include <asm/pgtable.h>
+
+static void *trans_alloc(struct trans_table_info *info)
+{
+	void *page = info->trans_alloc_page(info->trans_alloc_arg);
+
+	if (page)
+		clear_page(page);
+
+	return page;
+}
+
+static int trans_table_copy_pte(struct trans_table_info *info, pte_t *dst_ptep,
+				pte_t *src_ptep, unsigned long start,
+				unsigned long end)
+{
+	unsigned long addr = start;
+	int i = pgd_index(addr);
+
+	do {
+		pte_t src_pte = READ_ONCE(src_ptep[i]);
+
+		if (pte_none(src_pte))
+			continue;
+		if (info->trans_flags & TRANS_MKWRITE)
+			src_pte = pte_mkwrite(src_pte);
+		if (info->trans_flags & TRANS_MKVALID)
+			src_pte = pte_mkpresent(src_pte);
+		if (info->trans_flags & TRANS_CHECKPFN) {
+			if (!pfn_valid(pte_pfn(src_pte)))
+				return -ENXIO;
+		}
+		set_pte(&dst_ptep[i], src_pte);
+	} while (addr += PAGE_SIZE, i++, addr != end && i < PTRS_PER_PTE);
+
+	return 0;
+}
+
+static int trans_table_copy_pmd(struct trans_table_info *info, pmd_t *dst_pmdp,
+				pmd_t *src_pmdp, unsigned long start,
+				unsigned long end)
+{
+	unsigned long next;
+	unsigned long addr = start;
+	int i = pgd_index(addr);
+	int rc;
+
+	do {
+		pmd_t src_pmd = READ_ONCE(src_pmdp[i]);
+		pmd_t dst_pmd = READ_ONCE(dst_pmdp[i]);
+		pte_t *dst_ptep, *src_ptep;
+
+		next = pmd_addr_end(addr, end);
+		if (pmd_none(src_pmd))
+			continue;
+
+		if (!pmd_table(src_pmd)) {
+			if (info->trans_flags & TRANS_MKWRITE)
+				pmd_val(src_pmd) &= ~PMD_SECT_RDONLY;
+			set_pmd(&dst_pmdp[i], src_pmd);
+			continue;
+		}
+
+		if (pmd_none(dst_pmd)) {
+			pte_t *t = trans_alloc(info);
+
+			if (!t)
+				return -ENOMEM;
+
+			__pmd_populate(&dst_pmdp[i], __pa(t), PTE_TYPE_PAGE);
+			dst_pmd = READ_ONCE(dst_pmdp[i]);
+		}
+
+		src_ptep = __va(pmd_page_paddr(src_pmd));
+		dst_ptep = __va(pmd_page_paddr(dst_pmd));
+
+		rc = trans_table_copy_pte(info, dst_ptep, src_ptep, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PMD);
+
+	return 0;
+}
+
+static int trans_table_copy_pud(struct trans_table_info *info, pud_t *dst_pudp,
+				pud_t *src_pudp, unsigned long start,
+				unsigned long end)
+{
+	unsigned long next;
+	unsigned long addr = start;
+	int i = pgd_index(addr);
+	int rc;
+
+	do {
+		pud_t src_pud = READ_ONCE(src_pudp[i]);
+		pud_t dst_pud = READ_ONCE(dst_pudp[i]);
+		pmd_t *dst_pmdp, *src_pmdp;
+
+		next = pud_addr_end(addr, end);
+		if (pud_none(src_pud))
+			continue;
+
+		if (!pud_table(src_pud)) {
+			if (info->trans_flags & TRANS_MKWRITE)
+				pud_val(src_pud) &= ~PUD_SECT_RDONLY;
+			set_pud(&dst_pudp[i], src_pud);
+			continue;
+		}
+
+		if (pud_none(dst_pud)) {
+			pmd_t *t = trans_alloc(info);
+
+			if (!t)
+				return -ENOMEM;
+
+			__pud_populate(&dst_pudp[i], __pa(t), PMD_TYPE_TABLE);
+			dst_pud = READ_ONCE(dst_pudp[i]);
+		}
+
+		src_pmdp = __va(pud_page_paddr(src_pud));
+		dst_pmdp = __va(pud_page_paddr(dst_pud));
+
+		rc = trans_table_copy_pmd(info, dst_pmdp, src_pmdp, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PUD);
+
+	return 0;
+}
+
+static int trans_table_copy_pgd(struct trans_table_info *info, pgd_t *dst_pgdp,
+				pgd_t *src_pgdp, unsigned long start,
+				unsigned long end)
+{
+	unsigned long next;
+	unsigned long addr = start;
+	int i = pgd_index(addr);
+	int rc;
+
+	do {
+		pgd_t src_pgd;
+		pgd_t dst_pgd;
+		pud_t *dst_pudp, *src_pudp;
+
+		src_pgd = READ_ONCE(src_pgdp[i]);
+		dst_pgd = READ_ONCE(dst_pgdp[i]);
+		next = pgd_addr_end(addr, end);
+		if (pgd_none(src_pgd))
+			continue;
+
+		if (pgd_none(dst_pgd)) {
+			pud_t *t = trans_alloc(info);
+
+			if (!t)
+				return -ENOMEM;
+
+			__pgd_populate(&dst_pgdp[i], __pa(t), PUD_TYPE_TABLE);
+			dst_pgd = READ_ONCE(dst_pgdp[i]);
+		}
+
+		src_pudp = __va(pgd_page_paddr(src_pgd));
+		dst_pudp = __va(pgd_page_paddr(dst_pgd));
+
+		rc = trans_table_copy_pud(info, dst_pudp, src_pudp, addr, next);
+		if (rc)
+			return rc;
+	} while (addr = next, i++, addr != end && i < PTRS_PER_PGD);
+
+	return 0;
+}
+
+int trans_table_create_empty(struct trans_table_info *info, pgd_t **trans_table)
+{
+	pgd_t *dst_pgdp = trans_alloc(info);
+
+	if (!dst_pgdp)
+		return -ENOMEM;
+
+	*trans_table = dst_pgdp;
+
+	return 0;
+}
+
+int trans_table_create_copy(struct trans_table_info *info, pgd_t **trans_table,
+			    pgd_t *from_table, unsigned long start,
+			    unsigned long end)
+{
+	int rc;
+
+	rc = trans_table_create_empty(info, trans_table);
+	if (rc)
+		return rc;
+
+	return trans_table_copy_pgd(info, *trans_table, from_table, start, end);
+}
+
+int trans_table_map_page(struct trans_table_info *info, pgd_t *trans_table,
+			 void *page, unsigned long dst_addr, pgprot_t pgprot)
+{
+	int pgd_idx = pgd_index(dst_addr);
+	int pud_idx = pud_index(dst_addr);
+	int pmd_idx = pmd_index(dst_addr);
+	int pte_idx = pte_index(dst_addr);
+	pgd_t *pgdp = trans_table;
+	pgd_t pgd = READ_ONCE(pgdp[pgd_idx]);
+	pud_t *pudp, pud;
+	pmd_t *pmdp, pmd;
+	pte_t *ptep, pte;
+
+	if (pgd_none(pgd)) {
+		pud_t *t = trans_alloc(info);
+
+		if (!t)
+			return -ENOMEM;
+
+		__pgd_populate(&pgdp[pgd_idx], __pa(t), PUD_TYPE_TABLE);
+		pgd = READ_ONCE(pgdp[pgd_idx]);
+	}
+
+	pudp = __va(pgd_page_paddr(pgd));
+	pud = READ_ONCE(pudp[pud_idx]);
+	if (pud_sect(pud) && !(info->trans_flags & TRANS_FORCEMAP)) {
+		return -ENXIO;
+	} else if (pud_none(pud) || pud_sect(pud)) {
+		pmd_t *t = trans_alloc(info);
+
+		if (!t)
+			return -ENOMEM;
+
+		__pud_populate(&pudp[pud_idx], __pa(t), PMD_TYPE_TABLE);
+		pud = READ_ONCE(pudp[pud_idx]);
+	}
+
+	pmdp = __va(pud_page_paddr(pud));
+	pmd = READ_ONCE(pmdp[pmd_idx]);
+	if (pmd_sect(pmd) && !(info->trans_flags & TRANS_FORCEMAP)) {
+		return -ENXIO;
+	} else if (pmd_none(pmd) || pmd_sect(pmd)) {
+		pte_t *t = trans_alloc(info);
+
+		if (!t)
+			return -ENOMEM;
+
+		__pmd_populate(&pmdp[pmd_idx], __pa(t), PTE_TYPE_PAGE);
+		pmd = READ_ONCE(pmdp[pmd_idx]);
+	}
+
+	ptep = __va(pmd_page_paddr(pmd));
+	pte = READ_ONCE(ptep[pte_idx]);
+
+	if (!pte_none(pte) && !(info->trans_flags & TRANS_FORCEMAP))
+		return -ENXIO;
+
+	set_pte(&ptep[pte_idx], pfn_pte(virt_to_pfn(page), pgprot));
+
+	return 0;
+}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
