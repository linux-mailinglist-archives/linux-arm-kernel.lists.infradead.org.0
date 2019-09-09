Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B9BADEA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:16:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmIlOv+cqdaGX89DhXjNR+bCLOMaLBpNEACSMCYgr1k=; b=UK8NbccC5cMKVU
	PeeYv6x7k93K2gHiv149hMexONEPzSdm2SNZsECRNHUEA8yatC2MRp4oZ/+6mQs3SEL69gXZ6rjs2
	+PUno8RhK8kVWHKMLv0S4kmNknGzujyXaHw/8/enAgm5L5UcstnDxLU18SuhNhvhG8+IsQi5T9Nkx
	DF0STtj2qTKr8L0kIaLTEQnroScblHEyDZ6HdT0dCsmV8aCeMN2Occan2h4OPdGuERJH+vKNR/Seh
	ZzTT9h2a+9OHKzh3pP7aWLX5F0tb9y1bmchq+xbH2HN8Ihwnc9n3qqqqE1Vn4cy01I0o3B5WIh6Uh
	isBrXAzmlbqDAPjrKx6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OD9-0004xw-5r; Mon, 09 Sep 2019 18:16:23 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9W-0008VD-Nf
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:12:42 +0000
Received: by mail-qk1-x744.google.com with SMTP id h126so6313220qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Rg4d64JpnTaANXvX3uzyA9vcQSLPYA1Q9YCgAGVLAdE=;
 b=fWLhzckvBH61fecR7zB865Jg/3mFMNrYTLWAWSGeq+qWJtOfowYsPpUvq+bwuAW9P6
 Z7LCFr1BVmxOwJUaO6i/9ZSlrZhuUcqGmWFWOeD/uUuJM8ydEkwk3ivrc1lX1b3hNVsI
 6DCj0nb0JRGJZT18h7YflhWJE2k7q9W1HmDDXrGfOZ0SDf8q97x1rnWuJFB2BKLzTCS4
 NImAULxu7GGCCiRFsYtpyVn6ijZglF0Iuhiup0xopLhz0Sg5ThcJxkS8CoKbCNGFuH6S
 ra2JD13gWjlkh3BXg2VAIuzQMCsPc0R75DpBdBNbyUvp01oSAI3Kne5Ef52+Ng+GtYDK
 Jo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rg4d64JpnTaANXvX3uzyA9vcQSLPYA1Q9YCgAGVLAdE=;
 b=gWiGFThHjaULnBCy4Bk3ZSBtBzD5+TtBhZ8DGzW6uLXU4j+PktXmP8Gm/J5ks8Tmew
 s1xEfljmuI5xQLDu2FmJik3TBviKGSYaDOl4NJj/qstv8+5ofqqcDzw034s9yasls4P9
 ntgTXVK2JX4vt1v2Qyple+oPyJJuLQ/JzY7TckoGeJdLOApJaD0xq7kH79QB/2K7Bfm7
 Fq5g2uCs5t4YoRPs36bVV/g+nH50nYikSbI9qHfamSs290S6NcLDH0vJEHOaz08s+KQk
 FdCD8mxKpTjtPpWZDn1r9VLixM5E9R80j78vI1L9NymIu/IHLwDuBRoWJV1Lf9c61lYZ
 TWRg==
X-Gm-Message-State: APjAAAX3tQU3G2orUWQv3NH8gRgirCwGr9QIRvt0xg14UQ2+/XCbANTR
 SbKD1MaGXIIDFH33agchvfnq+Q==
X-Google-Smtp-Source: APXvYqzBKILQWUrwZxLxdaMSqsJPQCxgxErrstUv9wanVZcERloJPtlkE4yx+Jd36p+uvRKFpIPi1w==
X-Received: by 2002:a05:620a:14c:: with SMTP id
 e12mr24483007qkn.47.1568052757183; 
 Mon, 09 Sep 2019 11:12:37 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:36 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 09/17] arm64: hibernate: move page handling function to new
 trans_pgd.c
Date: Mon,  9 Sep 2019 14:12:13 -0400
Message-Id: <20190909181221.309510-10-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111238_869472_88FD1922 
X-CRM114-Status: GOOD (  19.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Now, that we abstracted the required functions move them to a new home.
Later, we will generalize these function in order to be useful outside
of hibernation.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/Kconfig                 |   4 +
 arch/arm64/include/asm/trans_pgd.h |  20 +++
 arch/arm64/kernel/hibernate.c      | 199 +-------------------------
 arch/arm64/mm/Makefile             |   1 +
 arch/arm64/mm/trans_pgd.c          | 219 +++++++++++++++++++++++++++++
 5 files changed, 245 insertions(+), 198 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_pgd.h
 create mode 100644 arch/arm64/mm/trans_pgd.c

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
diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
new file mode 100644
index 000000000000..c7b5402b7d87
--- /dev/null
+++ b/arch/arm64/include/asm/trans_pgd.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+/*
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ */
+
+#ifndef _ASM_TRANS_TABLE_H
+#define _ASM_TRANS_TABLE_H
+
+#include <linux/bits.h>
+#include <asm/pgtable-types.h>
+
+int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+			  unsigned long end);
+
+int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
+		       pgprot_t pgprot);
+
+#endif /* _ASM_TRANS_TABLE_H */
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 178488a902c7..94ede33bd777 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -16,7 +16,6 @@
 #define pr_fmt(x) "hibernate: " x
 #include <linux/cpu.h>
 #include <linux/kvm_host.h>
-#include <linux/mm.h>
 #include <linux/pm.h>
 #include <linux/sched.h>
 #include <linux/suspend.h>
@@ -31,14 +30,12 @@
 #include <asm/kexec.h>
 #include <asm/memory.h>
 #include <asm/mmu_context.h>
-#include <asm/pgalloc.h>
-#include <asm/pgtable.h>
-#include <asm/pgtable-hwdef.h>
 #include <asm/sections.h>
 #include <asm/smp.h>
 #include <asm/smp_plat.h>
 #include <asm/suspend.h>
 #include <asm/sysreg.h>
+#include <asm/trans_pgd.h>
 #include <asm/virt.h>
 
 /*
@@ -182,45 +179,6 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
-int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
-		       unsigned long dst_addr,
-		       pgprot_t pgprot)
-{
-	pgd_t *pgdp;
-	pud_t *pudp;
-	pmd_t *pmdp;
-	pte_t *ptep;
-
-	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
-	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pudp)
-			return -ENOMEM;
-		pgd_populate(&init_mm, pgdp, pudp);
-	}
-
-	pudp = pud_offset(pgdp, dst_addr);
-	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pmdp)
-			return -ENOMEM;
-		pud_populate(&init_mm, pudp, pmdp);
-	}
-
-	pmdp = pmd_offset(pudp, dst_addr);
-	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = (void *)get_safe_page(GFP_ATOMIC);
-		if (!ptep)
-			return -ENOMEM;
-		pmd_populate_kernel(&init_mm, pmdp, ptep);
-	}
-
-	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
-
-	return 0;
-}
-
 /*
  * Copies length bytes, starting at src_start into an new page,
  * perform cache maintenance, then maps it at the specified address low
@@ -339,161 +297,6 @@ int swsusp_arch_suspend(void)
 	return ret;
 }
 
-static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
-{
-	pte_t pte = READ_ONCE(*src_ptep);
-
-	if (pte_valid(pte)) {
-		/*
-		 * Resume will overwrite areas that may be marked
-		 * read only (code, rodata). Clear the RDONLY bit from
-		 * the temporary mappings we use during restore.
-		 */
-		set_pte(dst_ptep, pte_mkwrite(pte));
-	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
-		/*
-		 * debug_pagealloc will removed the PTE_VALID bit if
-		 * the page isn't in use by the resume kernel. It may have
-		 * been in use by the original kernel, in which case we need
-		 * to put it back in our copy to do the restore.
-		 *
-		 * Before marking this entry valid, check the pfn should
-		 * be mapped.
-		 */
-		BUG_ON(!pfn_valid(pte_pfn(pte)));
-
-		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
-	}
-}
-
-static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
-		    unsigned long end)
-{
-	pte_t *src_ptep;
-	pte_t *dst_ptep;
-	unsigned long addr = start;
-
-	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
-	if (!dst_ptep)
-		return -ENOMEM;
-	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
-	dst_ptep = pte_offset_kernel(dst_pmdp, start);
-
-	src_ptep = pte_offset_kernel(src_pmdp, start);
-	do {
-		_copy_pte(dst_ptep, src_ptep, addr);
-	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);
-
-	return 0;
-}
-
-static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
-		    unsigned long end)
-{
-	pmd_t *src_pmdp;
-	pmd_t *dst_pmdp;
-	unsigned long next;
-	unsigned long addr = start;
-
-	if (pud_none(READ_ONCE(*dst_pudp))) {
-		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pmdp)
-			return -ENOMEM;
-		pud_populate(&init_mm, dst_pudp, dst_pmdp);
-	}
-	dst_pmdp = pmd_offset(dst_pudp, start);
-
-	src_pmdp = pmd_offset(src_pudp, start);
-	do {
-		pmd_t pmd = READ_ONCE(*src_pmdp);
-
-		next = pmd_addr_end(addr, end);
-		if (pmd_none(pmd))
-			continue;
-		if (pmd_table(pmd)) {
-			if (copy_pte(dst_pmdp, src_pmdp, addr, next))
-				return -ENOMEM;
-		} else {
-			set_pmd(dst_pmdp,
-				__pmd(pmd_val(pmd) & ~PMD_SECT_RDONLY));
-		}
-	} while (dst_pmdp++, src_pmdp++, addr = next, addr != end);
-
-	return 0;
-}
-
-static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
-		    unsigned long end)
-{
-	pud_t *dst_pudp;
-	pud_t *src_pudp;
-	unsigned long next;
-	unsigned long addr = start;
-
-	if (pgd_none(READ_ONCE(*dst_pgdp))) {
-		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
-		if (!dst_pudp)
-			return -ENOMEM;
-		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
-	}
-	dst_pudp = pud_offset(dst_pgdp, start);
-
-	src_pudp = pud_offset(src_pgdp, start);
-	do {
-		pud_t pud = READ_ONCE(*src_pudp);
-
-		next = pud_addr_end(addr, end);
-		if (pud_none(pud))
-			continue;
-		if (pud_table(pud)) {
-			if (copy_pmd(dst_pudp, src_pudp, addr, next))
-				return -ENOMEM;
-		} else {
-			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
-		}
-	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
-
-	return 0;
-}
-
-static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
-			    unsigned long end)
-{
-	unsigned long next;
-	unsigned long addr = start;
-	pgd_t *src_pgdp = pgd_offset_k(start);
-
-	dst_pgdp = pgd_offset_raw(dst_pgdp, start);
-	do {
-		next = pgd_addr_end(addr, end);
-		if (pgd_none(READ_ONCE(*src_pgdp)))
-			continue;
-		if (copy_pud(dst_pgdp, src_pgdp, addr, next))
-			return -ENOMEM;
-	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);
-
-	return 0;
-}
-
-int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
-			  unsigned long end)
-{
-	int rc;
-	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
-
-	if (!trans_pgd) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		return -ENOMEM;
-	}
-
-	rc = copy_page_tables(trans_pgd, start, end);
-	if (!rc)
-		*dst_pgdp = trans_pgd;
-
-	return rc;
-}
-
 /*
  * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
  *
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index 849c1df3d214..f3002f1d0e61 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -6,6 +6,7 @@ obj-y				:= dma-mapping.o extable.o fault.o init.o \
 obj-$(CONFIG_HUGETLB_PAGE)	+= hugetlbpage.o
 obj-$(CONFIG_ARM64_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_ARM64_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
+obj-$(CONFIG_TRANS_TABLE)	+= trans_pgd.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
 KASAN_SANITIZE_physaddr.o	+= n
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
new file mode 100644
index 000000000000..5ac712b92439
--- /dev/null
+++ b/arch/arm64/mm/trans_pgd.c
@@ -0,0 +1,219 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Transitional page tables for kexec and hibernate
+ *
+ * This file derived from: arch/arm64/kernel/hibernate.c
+ *
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ *
+ */
+
+/*
+ * Transitional tables are used during system transferring from one world to
+ * another: such as during hibernate restore, and kexec reboots. During these
+ * phases one cannot rely on page table not being overwritten. This is because
+ * hibernate and kexec can overwrite the current page tables during transition.
+ */
+
+#include <asm/trans_pgd.h>
+#include <asm/pgalloc.h>
+#include <asm/pgtable.h>
+#include <linux/suspend.h>
+#include <linux/bug.h>
+#include <linux/mm.h>
+#include <linux/mmzone.h>
+
+static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
+{
+	pte_t pte = READ_ONCE(*src_ptep);
+
+	if (pte_valid(pte)) {
+		/*
+		 * Resume will overwrite areas that may be marked
+		 * read only (code, rodata). Clear the RDONLY bit from
+		 * the temporary mappings we use during restore.
+		 */
+		set_pte(dst_ptep, pte_mkwrite(pte));
+	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
+		/*
+		 * debug_pagealloc will removed the PTE_VALID bit if
+		 * the page isn't in use by the resume kernel. It may have
+		 * been in use by the original kernel, in which case we need
+		 * to put it back in our copy to do the restore.
+		 *
+		 * Before marking this entry valid, check the pfn should
+		 * be mapped.
+		 */
+		BUG_ON(!pfn_valid(pte_pfn(pte)));
+
+		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
+	}
+}
+
+static int copy_pte(pmd_t *dst_pmdp, pmd_t *src_pmdp, unsigned long start,
+		    unsigned long end)
+{
+	pte_t *src_ptep;
+	pte_t *dst_ptep;
+	unsigned long addr = start;
+
+	dst_ptep = (pte_t *)get_safe_page(GFP_ATOMIC);
+	if (!dst_ptep)
+		return -ENOMEM;
+	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
+	dst_ptep = pte_offset_kernel(dst_pmdp, start);
+
+	src_ptep = pte_offset_kernel(src_pmdp, start);
+	do {
+		_copy_pte(dst_ptep, src_ptep, addr);
+	} while (dst_ptep++, src_ptep++, addr += PAGE_SIZE, addr != end);
+
+	return 0;
+}
+
+static int copy_pmd(pud_t *dst_pudp, pud_t *src_pudp, unsigned long start,
+		    unsigned long end)
+{
+	pmd_t *src_pmdp;
+	pmd_t *dst_pmdp;
+	unsigned long next;
+	unsigned long addr = start;
+
+	if (pud_none(READ_ONCE(*dst_pudp))) {
+		dst_pmdp = (pmd_t *)get_safe_page(GFP_ATOMIC);
+		if (!dst_pmdp)
+			return -ENOMEM;
+		pud_populate(&init_mm, dst_pudp, dst_pmdp);
+	}
+	dst_pmdp = pmd_offset(dst_pudp, start);
+
+	src_pmdp = pmd_offset(src_pudp, start);
+	do {
+		pmd_t pmd = READ_ONCE(*src_pmdp);
+
+		next = pmd_addr_end(addr, end);
+		if (pmd_none(pmd))
+			continue;
+		if (pmd_table(pmd)) {
+			if (copy_pte(dst_pmdp, src_pmdp, addr, next))
+				return -ENOMEM;
+		} else {
+			set_pmd(dst_pmdp,
+				__pmd(pmd_val(pmd) & ~PMD_SECT_RDONLY));
+		}
+	} while (dst_pmdp++, src_pmdp++, addr = next, addr != end);
+
+	return 0;
+}
+
+static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
+		    unsigned long end)
+{
+	pud_t *dst_pudp;
+	pud_t *src_pudp;
+	unsigned long next;
+	unsigned long addr = start;
+
+	if (pgd_none(READ_ONCE(*dst_pgdp))) {
+		dst_pudp = (pud_t *)get_safe_page(GFP_ATOMIC);
+		if (!dst_pudp)
+			return -ENOMEM;
+		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
+	}
+	dst_pudp = pud_offset(dst_pgdp, start);
+
+	src_pudp = pud_offset(src_pgdp, start);
+	do {
+		pud_t pud = READ_ONCE(*src_pudp);
+
+		next = pud_addr_end(addr, end);
+		if (pud_none(pud))
+			continue;
+		if (pud_table(pud)) {
+			if (copy_pmd(dst_pudp, src_pudp, addr, next))
+				return -ENOMEM;
+		} else {
+			set_pud(dst_pudp,
+				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
+		}
+	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
+
+	return 0;
+}
+
+static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
+			    unsigned long end)
+{
+	unsigned long next;
+	unsigned long addr = start;
+	pgd_t *src_pgdp = pgd_offset_k(start);
+
+	dst_pgdp = pgd_offset_raw(dst_pgdp, start);
+	do {
+		next = pgd_addr_end(addr, end);
+		if (pgd_none(READ_ONCE(*src_pgdp)))
+			continue;
+		if (copy_pud(dst_pgdp, src_pgdp, addr, next))
+			return -ENOMEM;
+	} while (dst_pgdp++, src_pgdp++, addr = next, addr != end);
+
+	return 0;
+}
+
+int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+			  unsigned long end)
+{
+	int rc;
+	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
+
+	if (!trans_pgd) {
+		pr_err("Failed to allocate memory for temporary page tables.\n");
+		return -ENOMEM;
+	}
+
+	rc = copy_page_tables(trans_pgd, start, end);
+	if (!rc)
+		*dst_pgdp = trans_pgd;
+
+	return rc;
+}
+
+int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
+		       pgprot_t pgprot)
+{
+	pgd_t *pgdp;
+	pud_t *pudp;
+	pmd_t *pmdp;
+	pte_t *ptep;
+
+	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
+	if (pgd_none(READ_ONCE(*pgdp))) {
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pudp)
+			return -ENOMEM;
+		pgd_populate(&init_mm, pgdp, pudp);
+	}
+
+	pudp = pud_offset(pgdp, dst_addr);
+	if (pud_none(READ_ONCE(*pudp))) {
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pmdp)
+			return -ENOMEM;
+		pud_populate(&init_mm, pudp, pmdp);
+	}
+
+	pmdp = pmd_offset(pudp, dst_addr);
+	if (pmd_none(READ_ONCE(*pmdp))) {
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
+		if (!ptep)
+			return -ENOMEM;
+		pmd_populate_kernel(&init_mm, pmdp, ptep);
+	}
+
+	ptep = pte_offset_kernel(pmdp, dst_addr);
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
+
+	return 0;
+}
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
