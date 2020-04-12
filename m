Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F33631A5BA4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 02:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fl8O2j+CxowmQiXZlQPxN68oBPz8dWWNbZjSKAwM3c=; b=b+BOQeBFmuCdDL
	QvYoAc9GNWYVZ0+89EW4lPeDZnQCQn3z96iyuXVNWp9nOu+DMxOJ+Eyuzn99ltoZxQvr8K0mgs6qP
	7BpkRRE2t/EsLMKQT30Qzgg5MhjAiaEIsU/iVs006ob3aieEFzWocLEKpNEMBIsy7XoibhuE+jwgi
	yfugZV8AB8jecvvlA/31+R/5WjROZ8zvWlupDoCWPMgJQZIbgT8uk5xBqiraJPpjvMUwLAzyDeO0i
	6syl9IGwGebrkoRzpd2elymh6ekC8Tr3+daWAy8n2IuzywimiPkKw9+uvCj5AhfcTxBJ4vPrrXlvI
	GSm7xfS1xD63Z8Fr7Cjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNQU9-0004NM-E9; Sun, 12 Apr 2020 00:28:29 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNQT4-0003hw-FO
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 00:27:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id t11so3947375lfe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 17:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cox5VeemZP+TgsSXalF4nMmkvhk4TV83JSxgaFwTEyM=;
 b=SAE2tFVPvxQUH1kRR3brf2vLwZghnpDoyqtkpsJ6HMlvbbx6ONSAx+GpWlayoQ9QYl
 ZTuQnVmcfytLmh7fWUTZR0tDD/90WDUOhgtcBC/xdgnHh0CkC9qL3O14jy3jiNPrp/ra
 tajVM0pCLT1xk5DUF3N0AuKjPQ15ukreRr9DNCoyK34bEYN3WUsmLDj/eAe3RyMxn6V0
 tySZ8rX8b7Mk2exYA5bSBv2SKriQ38SY792XV93wl9DG7KK1VoN4hzAXciXAl+KZ4NjZ
 81rUkgV2x9hCjOTjSLvHPzEO32N6kIYR3bTwyMnuBAgM4BGA3qtkCwjF6FXr+A6oBHej
 MOOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cox5VeemZP+TgsSXalF4nMmkvhk4TV83JSxgaFwTEyM=;
 b=QlUXA2Ols/IPuTL8X0obRYQSKVpkREXAqfk7oVzJj8xwvbmTFlkWWD2Zx+A/cJ3ysF
 pZZpQGIR0H1rbNRb/073eBiemZojiIbb/I8hIJwLT6y3ET0W93Z7zY+ultcFYAV2uyXH
 chfApQ6CqDKqVhEHaly3aCHJChOh/z3/r0DCWe+M0geI8tM5cBooaPr6XZT6fYzbiepl
 GmeojjQpF6RVwOX63yECrsFO2a+J1UOcHZedy3nAh+1Cvn5qEoJg4Ejxa/4XNH4mQz4N
 kRLqxKxpUpM+L6s7zOoOJ8T8ikYBUlQQm9YxBIPENio9JMLwog5tyb01YHQTAoJbkUiN
 p02A==
X-Gm-Message-State: AGi0PuaKZ6DmGe4AghqxnCKEslQVtOSO1LpZtBxpSxOY/pYm0k97jWSW
 ZUhvsfSgRi8nJJwUt/6eAXb3dw==
X-Google-Smtp-Source: APiQypKLS9L7eWYPF6eMIjSFybW2B6h1dhM0yR19/NrkB6TyiUuoKKdOIrM4ApU1G3sJ46daIGjKYw==
X-Received: by 2002:a19:7008:: with SMTP id h8mr2699720lfc.43.1586651240439;
 Sat, 11 Apr 2020 17:27:20 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id x29sm4907345lfn.64.2020.04.11.17.27.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 17:27:19 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 4/5 v2] ARM: Initialize the mapping of KASan shadow memory
Date: Sun, 12 Apr 2020 02:24:06 +0200
Message-Id: <20200412002407.396790-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200412002407.396790-1-linus.walleij@linaro.org>
References: <20200412002407.396790-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_172722_574167_8A4CF841 
X-CRM114-Status: GOOD (  25.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <aryabinin@virtuozzo.com>

This patch initializes KASan shadow region's page table and memory.
There are two stage for KASan initializing:

1. At early boot stage the whole shadow region is mapped to just
   one physical page (kasan_zero_page). It is finished by the function
   kasan_early_init which is called by __mmap_switched(arch/arm/kernel/
   head-common.S)
             ---Andrey Ryabinin <aryabinin@virtuozzo.com>

2. After the calling of paging_init, we use kasan_zero_page as zero
   shadow for some memory that KASan does not need to track, and we
   allocate a new shadow space for the other memory that KASan need to
   track. These issues are finished by the function kasan_init which is
   call by setup_arch.
            ---Andrey Ryabinin <aryabinin@virtuozzo.com>

3. Add support ARM LPAE
   If LPAE is enabled, KASan shadow region's mapping table need be copied
   in the pgd_alloc() function.
            ---Abbott Liu <liuwenliang@huawei.com>

4. Change kasan_pte_populate,kasan_pmd_populate,kasan_pud_populate,
   kasan_pgd_populate from .meminit.text section to .init.text section.
           ---Reported by: Florian Fainelli <f.fainelli@gmail.com>
           ---Signed off by: Abbott Liu <liuwenliang@huawei.com>

Cc: Andrey Ryabinin <aryabinin@virtuozzo.com>
Co-Developed-by: Abbott Liu <liuwenliang@huawei.com>
Reported-by: Russell King - ARM Linux <linux@armlinux.org.uk>
Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Use SPDX identifer for the license.
- Move the TTBR0 accessor calls into this patch.
---
 arch/arm/include/asm/kasan.h       |  32 +++
 arch/arm/include/asm/pgalloc.h     |   9 +-
 arch/arm/include/asm/thread_info.h |   4 +
 arch/arm/kernel/head-common.S      |   3 +
 arch/arm/kernel/setup.c            |   2 +
 arch/arm/mm/Makefile               |   3 +
 arch/arm/mm/kasan_init.c           | 324 +++++++++++++++++++++++++++++
 arch/arm/mm/pgd.c                  |  14 ++
 8 files changed, 389 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/include/asm/kasan.h
 create mode 100644 arch/arm/mm/kasan_init.c

diff --git a/arch/arm/include/asm/kasan.h b/arch/arm/include/asm/kasan.h
new file mode 100644
index 000000000000..56b954db160e
--- /dev/null
+++ b/arch/arm/include/asm/kasan.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * arch/arm/include/asm/kasan.h
+ *
+ * Copyright (c) 2015 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ *
+ */
+
+#ifndef __ASM_KASAN_H
+#define __ASM_KASAN_H
+
+#ifdef CONFIG_KASAN
+
+#include <asm/kasan_def.h>
+
+#define KASAN_SHADOW_SCALE_SHIFT 3
+
+/*
+ * The compiler uses a shadow offset assuming that addresses start
+ * from 0. Kernel addresses don't start from 0, so shadow
+ * for kernel really starts from 'compiler's shadow offset' +
+ * ('kernel address space start' >> KASAN_SHADOW_SCALE_SHIFT)
+ */
+
+extern void kasan_init(void);
+
+#else
+static inline void kasan_init(void) { }
+#endif
+
+#endif
diff --git a/arch/arm/include/asm/pgalloc.h b/arch/arm/include/asm/pgalloc.h
index 069da393110c..d969f8058b26 100644
--- a/arch/arm/include/asm/pgalloc.h
+++ b/arch/arm/include/asm/pgalloc.h
@@ -21,6 +21,7 @@
 #define _PAGE_KERNEL_TABLE	(PMD_TYPE_TABLE | PMD_BIT4 | PMD_DOMAIN(DOMAIN_KERNEL))
 
 #ifdef CONFIG_ARM_LPAE
+#define PGD_SIZE		(PTRS_PER_PGD * sizeof(pgd_t))
 
 static inline pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long addr)
 {
@@ -39,14 +40,18 @@ static inline void pud_populate(struct mm_struct *mm, pud_t *pud, pmd_t *pmd)
 }
 
 #else	/* !CONFIG_ARM_LPAE */
+#define PGD_SIZE		(PAGE_SIZE << 2)
 
 /*
  * Since we have only two-level page tables, these are trivial
  */
 #define pmd_alloc_one(mm,addr)		({ BUG(); ((pmd_t *)2); })
 #define pmd_free(mm, pmd)		do { } while (0)
-#define pud_populate(mm,pmd,pte)	BUG()
-
+#ifndef CONFIG_KASAN
+#define pud_populate(mm, pmd, pte)	BUG()
+#else
+#define pud_populate(mm, pmd, pte)	do { } while (0)
+#endif
 #endif	/* CONFIG_ARM_LPAE */
 
 extern pgd_t *pgd_alloc(struct mm_struct *mm);
diff --git a/arch/arm/include/asm/thread_info.h b/arch/arm/include/asm/thread_info.h
index 3609a6980c34..cf47cf9c4742 100644
--- a/arch/arm/include/asm/thread_info.h
+++ b/arch/arm/include/asm/thread_info.h
@@ -13,7 +13,11 @@
 #include <asm/fpstate.h>
 #include <asm/page.h>
 
+#ifdef CONFIG_KASAN
+#define THREAD_SIZE_ORDER	2
+#else
 #define THREAD_SIZE_ORDER	1
+#endif
 #define THREAD_SIZE		(PAGE_SIZE << THREAD_SIZE_ORDER)
 #define THREAD_START_SP		(THREAD_SIZE - 8)
 
diff --git a/arch/arm/kernel/head-common.S b/arch/arm/kernel/head-common.S
index 6840c7c60a85..89c80154b9ef 100644
--- a/arch/arm/kernel/head-common.S
+++ b/arch/arm/kernel/head-common.S
@@ -111,6 +111,9 @@ __mmap_switched:
 	str	r8, [r2]			@ Save atags pointer
 	cmp	r3, #0
 	strne	r10, [r3]			@ Save control register values
+#ifdef CONFIG_KASAN
+	bl	kasan_early_init
+#endif
 	mov	lr, #0
 	b	start_kernel
 ENDPROC(__mmap_switched)
diff --git a/arch/arm/kernel/setup.c b/arch/arm/kernel/setup.c
index d8e18cdd96d3..b0820847bb92 100644
--- a/arch/arm/kernel/setup.c
+++ b/arch/arm/kernel/setup.c
@@ -58,6 +58,7 @@
 #include <asm/unwind.h>
 #include <asm/memblock.h>
 #include <asm/virt.h>
+#include <asm/kasan.h>
 
 #include "atags.h"
 
@@ -1130,6 +1131,7 @@ void __init setup_arch(char **cmdline_p)
 	early_ioremap_reset();
 
 	paging_init(mdesc);
+	kasan_init();
 	request_standard_resources(mdesc);
 
 	if (mdesc->restart)
diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index 432302911d6e..1c937135c9c4 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -112,3 +112,6 @@ obj-$(CONFIG_CACHE_L2X0_PMU)	+= cache-l2x0-pmu.o
 obj-$(CONFIG_CACHE_XSC3L2)	+= cache-xsc3l2.o
 obj-$(CONFIG_CACHE_TAUROS2)	+= cache-tauros2.o
 obj-$(CONFIG_CACHE_UNIPHIER)	+= cache-uniphier.o
+
+KASAN_SANITIZE_kasan_init.o    := n
+obj-$(CONFIG_KASAN)            += kasan_init.o
diff --git a/arch/arm/mm/kasan_init.c b/arch/arm/mm/kasan_init.c
new file mode 100644
index 000000000000..b4a18863c29f
--- /dev/null
+++ b/arch/arm/mm/kasan_init.c
@@ -0,0 +1,324 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This file contains kasan initialization code for ARM.
+ *
+ * Copyright (c) 2018 Samsung Electronics Co., Ltd.
+ * Author: Andrey Ryabinin <ryabinin.a.a@gmail.com>
+ */
+
+#define pr_fmt(fmt) "kasan: " fmt
+#include <linux/kasan.h>
+#include <linux/kernel.h>
+#include <linux/memblock.h>
+#include <linux/sched/task.h>
+#include <linux/start_kernel.h>
+#include <asm/cputype.h>
+#include <asm/highmem.h>
+#include <asm/mach/map.h>
+#include <asm/memory.h>
+#include <asm/page.h>
+#include <asm/pgalloc.h>
+#include <asm/pgtable.h>
+#include <asm/procinfo.h>
+#include <asm/proc-fns.h>
+#include <asm/tlbflush.h>
+#include <asm/cp15.h>
+
+#include "mm.h"
+
+static pgd_t tmp_pgd_table[PTRS_PER_PGD] __initdata __aligned(PGD_SIZE);
+
+pmd_t tmp_pmd_table[PTRS_PER_PMD] __page_aligned_bss;
+
+static __init void *kasan_alloc_block(size_t size, int node)
+{
+	return memblock_alloc_try_nid(size, size, __pa(MAX_DMA_ADDRESS),
+				      MEMBLOCK_ALLOC_KASAN, node);
+}
+
+static void __init kasan_early_pmd_populate(unsigned long start,
+					unsigned long end, pud_t *pud)
+{
+	unsigned long addr;
+	unsigned long next;
+	pmd_t *pmd;
+
+	pmd = pmd_offset(pud, start);
+	for (addr = start; addr < end;) {
+		pmd_populate_kernel(&init_mm, pmd, kasan_early_shadow_pte);
+		next = pmd_addr_end(addr, end);
+		addr = next;
+		flush_pmd_entry(pmd);
+		pmd++;
+	}
+}
+
+static void __init kasan_early_pud_populate(unsigned long start,
+				unsigned long end, pgd_t *pgd)
+{
+	unsigned long addr;
+	unsigned long next;
+	pud_t *pud;
+
+	pud = pud_offset(pgd, start);
+	for (addr = start; addr < end;) {
+		next = pud_addr_end(addr, end);
+		kasan_early_pmd_populate(addr, next, pud);
+		addr = next;
+		pud++;
+	}
+}
+
+void __init kasan_map_early_shadow(pgd_t *pgdp)
+{
+	int i;
+	unsigned long start = KASAN_SHADOW_START;
+	unsigned long end = KASAN_SHADOW_END;
+	unsigned long addr;
+	unsigned long next;
+	pgd_t *pgd;
+
+	for (i = 0; i < PTRS_PER_PTE; i++)
+		set_pte_at(&init_mm, KASAN_SHADOW_START + i*PAGE_SIZE,
+			&kasan_early_shadow_pte[i], pfn_pte(
+				virt_to_pfn(kasan_early_shadow_page),
+				__pgprot(_L_PTE_DEFAULT | L_PTE_DIRTY
+					| L_PTE_XN)));
+
+	pgd = pgd_offset_k(start);
+	for (addr = start; addr < end;) {
+		next = pgd_addr_end(addr, end);
+		kasan_early_pud_populate(addr, next, pgd);
+		addr = next;
+		pgd++;
+	}
+}
+
+extern struct proc_info_list *lookup_processor_type(unsigned int);
+
+void __init kasan_early_init(void)
+{
+	struct proc_info_list *list;
+
+	/*
+	 * locate processor in the list of supported processor
+	 * types.  The linker builds this table for us from the
+	 * entries in arch/arm/mm/proc-*.S
+	 */
+	list = lookup_processor_type(read_cpuid_id());
+	if (list) {
+#ifdef MULTI_CPU
+		processor = *list->proc;
+#endif
+	}
+
+	BUILD_BUG_ON((KASAN_SHADOW_END - (1UL << 29)) != KASAN_SHADOW_OFFSET);
+	kasan_map_early_shadow(swapper_pg_dir);
+}
+
+static void __init clear_pgds(unsigned long start,
+			unsigned long end)
+{
+	for (; start && start < end; start += PMD_SIZE)
+		pmd_clear(pmd_off_k(start));
+}
+
+pte_t * __init kasan_pte_populate(pmd_t *pmd, unsigned long addr, int node)
+{
+	pte_t *pte = pte_offset_kernel(pmd, addr);
+
+	if (pte_none(*pte)) {
+		pte_t entry;
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p)
+			return NULL;
+		entry = pfn_pte(virt_to_pfn(p),
+			__pgprot(pgprot_val(PAGE_KERNEL)));
+		set_pte_at(&init_mm, addr, pte, entry);
+	}
+	return pte;
+}
+
+pmd_t * __init kasan_pmd_populate(pud_t *pud, unsigned long addr, int node)
+{
+	pmd_t *pmd = pmd_offset(pud, addr);
+
+	if (pmd_none(*pmd)) {
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p)
+			return NULL;
+		pmd_populate_kernel(&init_mm, pmd, p);
+	}
+	return pmd;
+}
+
+pud_t * __init kasan_pud_populate(pgd_t *pgd, unsigned long addr, int node)
+{
+	pud_t *pud = pud_offset(pgd, addr);
+
+	if (pud_none(*pud)) {
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p)
+			return NULL;
+		pr_err("populating pud addr %lx\n", addr);
+		pud_populate(&init_mm, pud, p);
+	}
+	return pud;
+}
+
+pgd_t * __init kasan_pgd_populate(unsigned long addr, int node)
+{
+	pgd_t *pgd = pgd_offset_k(addr);
+
+	if (pgd_none(*pgd)) {
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p)
+			return NULL;
+		pgd_populate(&init_mm, pgd, p);
+	}
+	return pgd;
+}
+
+static int __init create_mapping(unsigned long start, unsigned long end,
+				int node)
+{
+	unsigned long addr = start;
+	pgd_t *pgd;
+	pud_t *pud;
+	pmd_t *pmd;
+	pte_t *pte;
+
+	pr_info("populating shadow for %lx, %lx\n", start, end);
+
+	for (; addr < end; addr += PAGE_SIZE) {
+		pgd = kasan_pgd_populate(addr, node);
+		if (!pgd)
+			return -ENOMEM;
+
+		pud = kasan_pud_populate(pgd, addr, node);
+		if (!pud)
+			return -ENOMEM;
+
+		pmd = kasan_pmd_populate(pud, addr, node);
+		if (!pmd)
+			return -ENOMEM;
+
+		pte = kasan_pte_populate(pmd, addr, node);
+		if (!pte)
+			return -ENOMEM;
+	}
+	return 0;
+}
+
+/*
+ * TTBR0 accessors
+ *
+ * FIXME: this TTBR0 direct-manipulation does not seem to be the
+ * right solution at all: we need something that works on ALL ARM
+ * CPUs not just recent ones with TTBR0/1.
+ */
+#define TTBR0_32	__ACCESS_CP15(c2, 0, c0, 0)
+#define TTBR0_64	__ACCESS_CP15_64(0, c2)
+
+static inline void set_ttbr0(u64 val)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		write_sysreg(val, TTBR0_64);
+	else
+		write_sysreg(val, TTBR0_32);
+}
+
+static inline u64 get_ttbr0(void)
+{
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		return read_sysreg(TTBR0_64);
+	else
+		return read_sysreg(TTBR0_32);
+}
+
+void __init kasan_init(void)
+{
+	struct memblock_region *reg;
+	u64 orig_ttbr0;
+	int i;
+
+	/*
+	 * We are going to perform proper setup of shadow memory.
+	 * At first we should unmap early shadow (clear_pgds() call bellow).
+	 * However, instrumented code couldn't execute without shadow memory.
+	 * tmp_pgd_table and tmp_pmd_table used to keep early shadow mapped
+	 * until full shadow setup will be finished.
+	 */
+	orig_ttbr0 = get_ttbr0();
+
+#ifdef CONFIG_ARM_LPAE
+	memcpy(tmp_pmd_table,
+		pgd_page_vaddr(*pgd_offset_k(KASAN_SHADOW_START)),
+		sizeof(tmp_pmd_table));
+	memcpy(tmp_pgd_table, swapper_pg_dir, sizeof(tmp_pgd_table));
+	set_pgd(&tmp_pgd_table[pgd_index(KASAN_SHADOW_START)],
+		__pgd(__pa(tmp_pmd_table) | PMD_TYPE_TABLE | L_PGD_SWAPPER));
+	set_ttbr0(__pa(tmp_pgd_table));
+#else
+	memcpy(tmp_pgd_table, swapper_pg_dir, sizeof(tmp_pgd_table));
+	set_ttbr0((u64)__pa(tmp_pgd_table));
+#endif
+	flush_cache_all();
+	local_flush_bp_all();
+	local_flush_tlb_all();
+
+	clear_pgds(KASAN_SHADOW_START, KASAN_SHADOW_END);
+
+	kasan_populate_early_shadow(kasan_mem_to_shadow((void *)VMALLOC_START),
+				    kasan_mem_to_shadow((void *)-1UL) + 1);
+
+	for_each_memblock(memory, reg) {
+		void *start = __va(reg->base);
+		void *end = __va(reg->base + reg->size);
+
+		if (reg->base + reg->size > arm_lowmem_limit)
+			end = __va(arm_lowmem_limit);
+		if (start >= end)
+			break;
+
+		create_mapping((unsigned long)kasan_mem_to_shadow(start),
+			(unsigned long)kasan_mem_to_shadow(end),
+			NUMA_NO_NODE);
+	}
+
+	/*
+	 * 1. The module global variables are in MODULES_VADDR ~ MODULES_END,
+	 *    so we need to map this area.
+	 * 2. PKMAP_BASE ~ PKMAP_BASE+PMD_SIZE's shadow and MODULES_VADDR
+	 *    ~ MODULES_END's shadow is in the same PMD_SIZE, so we can't
+	 *    use kasan_populate_zero_shadow.
+	 */
+	create_mapping(
+		(unsigned long)kasan_mem_to_shadow((void *)MODULES_VADDR),
+
+		(unsigned long)kasan_mem_to_shadow((void *)(PKMAP_BASE +
+							PMD_SIZE)),
+		NUMA_NO_NODE);
+
+	/*
+	 * KAsan may reuse the contents of kasan_early_shadow_pte directly, so
+	 * we should make sure that it maps the zero page read-only.
+	 */
+	for (i = 0; i < PTRS_PER_PTE; i++)
+		set_pte_at(&init_mm, KASAN_SHADOW_START + i*PAGE_SIZE,
+			&kasan_early_shadow_pte[i],
+			pfn_pte(virt_to_pfn(kasan_early_shadow_page),
+				__pgprot(pgprot_val(PAGE_KERNEL)
+					| L_PTE_RDONLY)));
+	memset(kasan_early_shadow_page, 0, PAGE_SIZE);
+	set_ttbr0(orig_ttbr0);
+	flush_cache_all();
+	local_flush_bp_all();
+	local_flush_tlb_all();
+	pr_info("Kernel address sanitizer initialized\n");
+	init_task.kasan_depth = 0;
+}
diff --git a/arch/arm/mm/pgd.c b/arch/arm/mm/pgd.c
index 478bd2c6aa50..92a408262df2 100644
--- a/arch/arm/mm/pgd.c
+++ b/arch/arm/mm/pgd.c
@@ -61,6 +61,20 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
 	new_pmd = pmd_alloc(mm, new_pud, 0);
 	if (!new_pmd)
 		goto no_pmd;
+#ifdef CONFIG_KASAN
+	/*
+	 *Copy PMD table for KASAN shadow mappings.
+	 */
+	init_pgd = pgd_offset_k(TASK_SIZE);
+	init_pud = pud_offset(init_pgd, TASK_SIZE);
+	init_pmd = pmd_offset(init_pud, TASK_SIZE);
+	new_pmd = pmd_offset(new_pud, TASK_SIZE);
+	memcpy(new_pmd, init_pmd,
+		(pmd_index(MODULES_VADDR)-pmd_index(TASK_SIZE))
+		* sizeof(pmd_t));
+	clean_dcache_area(new_pmd, PTRS_PER_PMD*sizeof(pmd_t));
+#endif
+
 #endif
 
 	if (!vectors_high()) {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
