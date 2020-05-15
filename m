Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573E31D4CE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIzT229dqMc1hTqhPdcaXxOK8TtlTCqwYdi64aTkJDI=; b=qJE3gNOehTuDt8
	IgPiv5EnK7NKoOgdAGRnI2mLmImEfBrawkFds6gE5fs0HQQdPGaWFYjK5MGoUTsVSZqjSWkWIXJSe
	qrYGmFb+b94hMAWp9vMt7gUrChHFOcuMgcF40XEahxb77/X1Jm3IO8Oh0iDfiFPZhAmupVq4FVCfY
	fkcAM1oAJmUuqmP4iUHVG9fckEIP609aqSdnVL+2+g/bmUBG6PlSCkZqpSUxaH654wy6rIovAUOF0
	3CoJGNDRuhvTjDN9n3xGrxQNBCv9a53G/j0wdLfbclmI2X6mmvnqXfGSbEyz/R07Upz6Lr1+FlS3T
	VerRsaPztgnx7ikzUvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYjI-0000mZ-1V; Fri, 15 May 2020 11:42:16 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYhw-0008FK-Jv
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:40:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id a4so1520226lfh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 04:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UXaVD8wOfK3tNMg9MFC46vXinP5LChZAM6CgUuuKjAs=;
 b=a1jaeeDWbnG5zq1Ckqy9EWFIn1/0FuGKnjT7GdnczPc7eUmEaMyttlGuJJMq7IzPl6
 77ruCZwvHWQE7iUjaMxy/UQGGUuRlqiIxCP7D4aBj5eF1qyjiM9aVXS84BT3JsekU6Xl
 Hy8yTRupXLy4Xi2RmXyrPyvYqeiePvK/g5+GWxjzNIV6y6y4NYdKbTR/2BPS8owC4dwp
 yrah121G2ZDaOiFWK7EZEseNcix24xk3LKLojg+Hvar+lyubPMV34wxCsK8AjTpf+Ijj
 KD/QR9hV+4Or66qBVWAS9OQwUFp6H3A0t9cIdcknFdB9pu+VgrPDgLe4EDMfVrzbbSdR
 9QGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UXaVD8wOfK3tNMg9MFC46vXinP5LChZAM6CgUuuKjAs=;
 b=nvuv9c7+8FUKzfdNXQeG1wjLuZUA9+cOuBW84zilME3c1Uti33UKkNGhb1thn+HUde
 +2g0B0uAW9pI/UZhVIIRaQhClUaELmU91+DBsLLgGDpVl0wKjN8rQP33sBmvxaCAjR5J
 07RC7AkirkLdJ4EiIW7ej9wF9cwr5StMeq3kvlVA7C8h6am6ChtaogFMMmJa2Jjowox4
 aC0FCtVJLxj8UUgQcfkwySJEX6QH+xICLuw4jLezs9oZqaooEiwKT3RF2eMLy9PB+jmk
 zjzGehkx1ArnUBfymPA4H2Y71P9/+QVmQcyc83Q9CpxA7v+OhZAn4gycwIRCfIE4QTfH
 7xOw==
X-Gm-Message-State: AOAM5337+m1q8BIa4FkBLrozD5HUCe9+ElLHFhrTAhfKIrKtNLtpdahO
 ibAj/CMlqdrkWxgiARMCWF+9mw==
X-Google-Smtp-Source: ABdhPJwX2FzLrayB8EotN/Kfbt9n74VA+9Nuj99i1jxJY3zKfDOS1nx1RQXyV7RcEGCv/oeRiPp1hw==
X-Received: by 2002:ac2:5542:: with SMTP id l2mr2142796lfk.113.1589542850589; 
 Fri, 15 May 2020 04:40:50 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id 130sm1218445lfl.37.2020.05.15.04.40.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 04:40:49 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>
Subject: [PATCH 4/5 v9] ARM: Initialize the mapping of KASan shadow memory
Date: Fri, 15 May 2020 13:40:27 +0200
Message-Id: <20200515114028.135674-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200515114028.135674-1-linus.walleij@linaro.org>
References: <20200515114028.135674-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_044052_760276_1F74F3D4 
X-CRM114-Status: GOOD (  27.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 kasan-dev@googlegroups.com, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Dmitry Vyukov <dvyukov@google.com>
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

2. After the calling of paging_init, we use kasan_zero_page as zero
   shadow for some memory that KASan does not need to track, and we
   allocate a new shadow space for the other memory that KASan need to
   track. These issues are finished by the function kasan_init which is
   call by setup_arch.

After the initial development by Andre Ryabinin several modifications
have been made to this code:

- Add support ARM LPAE: If LPAE is enabled, KASan shadow region's
  mapping table need be copied in the pgd_alloc() function.
  (Abbott Liu <liuwenliang@huawei.com>)

- Change kasan_pte_populate,kasan_pmd_populate,kasan_pud_populate,
  kasan_pgd_populate from .meminit.text section to .init.text section.
  Reported by Florian Fainelli <f.fainelli@gmail.com>
  Fixed by Abbott Liu <liuwenliang@huawei.com>

- Drop the custom mainpulation of TTBR0 and just use
  cpu_switch_mm() to switch the pgd table.
  Fixed by Linus Walleij <linus.walleij@linaro.org>

Cc: Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: kasan-dev@googlegroups.com
Co-Developed-by: Abbott Liu <liuwenliang@huawei.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Ard Biesheuvel <ardb@kernel.org> # QEMU/KVM/mach-virt/LPAE/8G
Reported-by: Russell King - ARM Linux <linux@armlinux.org.uk>
Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v8->v9:
- Drop the custom CP15 manipulation and cache flushing for swapping
  TTBR0 and instead just use cpu_switch_mm().
- Collect Ard's tags.
ChangeLog v7->v8:
- Rebased.
ChangeLog v6->v7:
- Use SPDX identifer for the license.
- Move the TTBR0 accessor calls into this patch.
---
 arch/arm/include/asm/kasan.h       |  32 ++++
 arch/arm/include/asm/pgalloc.h     |   9 +-
 arch/arm/include/asm/thread_info.h |   4 +
 arch/arm/kernel/head-common.S      |   3 +
 arch/arm/kernel/setup.c            |   2 +
 arch/arm/mm/Makefile               |   3 +
 arch/arm/mm/kasan_init.c           | 294 +++++++++++++++++++++++++++++
 arch/arm/mm/pgd.c                  |  15 +-
 8 files changed, 359 insertions(+), 3 deletions(-)
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
index 99699c32d8a5..4536159bc8fa 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -113,3 +113,6 @@ obj-$(CONFIG_CACHE_L2X0_PMU)	+= cache-l2x0-pmu.o
 obj-$(CONFIG_CACHE_XSC3L2)	+= cache-xsc3l2.o
 obj-$(CONFIG_CACHE_TAUROS2)	+= cache-tauros2.o
 obj-$(CONFIG_CACHE_UNIPHIER)	+= cache-uniphier.o
+
+KASAN_SANITIZE_kasan_init.o	:= n
+obj-$(CONFIG_KASAN)		+= kasan_init.o
diff --git a/arch/arm/mm/kasan_init.c b/arch/arm/mm/kasan_init.c
new file mode 100644
index 000000000000..30f3b9c39aba
--- /dev/null
+++ b/arch/arm/mm/kasan_init.c
@@ -0,0 +1,294 @@
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
+	/*
+	 * On non-LPAE systems using just 2-level page tables pud_none()
+	 * will alwats be zero and we bail out of here.
+	 */
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
+void __init kasan_init(void)
+{
+	struct memblock_region *reg;
+	int i;
+
+	/*
+	 * We are going to perform proper setup of shadow memory.
+	 *
+	 * At first we should unmap early shadow (clear_pgds() call bellow).
+	 * However, instrumented code couldn't execute without shadow memory.
+	 *
+	 * To keep the early shadow memory MMU tables around while setting up
+	 * the proper shadow memory, we copy swapper_pg_dir (the initial page
+	 * table) to tmp_pgd_table and use that to keep the early shadow memory
+	 * mapped until the full shadow setup is finished. Then we swap back
+	 * to the proper swapper_pg_dir.
+	 */
+#ifdef CONFIG_ARM_LPAE
+	memcpy(tmp_pmd_table,
+		pgd_page_vaddr(*pgd_offset_k(KASAN_SHADOW_START)),
+		sizeof(tmp_pmd_table));
+	memcpy(tmp_pgd_table, swapper_pg_dir, sizeof(tmp_pgd_table));
+	set_pgd(&tmp_pgd_table[pgd_index(KASAN_SHADOW_START)],
+		__pgd(__pa(tmp_pmd_table) | PMD_TYPE_TABLE | L_PGD_SWAPPER));
+	cpu_switch_mm(tmp_pgd_table, &init_mm);
+#else
+	memcpy(tmp_pgd_table, swapper_pg_dir, sizeof(tmp_pgd_table));
+	cpu_switch_mm(tmp_pgd_table, &init_mm);
+#endif
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
+	cpu_switch_mm(swapper_pg_dir, &init_mm);
+	pr_info("Kernel address sanitizer initialized\n");
+	init_task.kasan_depth = 0;
+}
diff --git a/arch/arm/mm/pgd.c b/arch/arm/mm/pgd.c
index 478bd2c6aa50..3a25c3fa6a92 100644
--- a/arch/arm/mm/pgd.c
+++ b/arch/arm/mm/pgd.c
@@ -61,7 +61,20 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
 	new_pmd = pmd_alloc(mm, new_pud, 0);
 	if (!new_pmd)
 		goto no_pmd;
-#endif
+#ifdef CONFIG_KASAN
+	/*
+	 * Copy PMD table for KASAN shadow mappings.
+	 */
+	init_pgd = pgd_offset_k(TASK_SIZE);
+	init_pud = pud_offset(init_pgd, TASK_SIZE);
+	init_pmd = pmd_offset(init_pud, TASK_SIZE);
+	new_pmd = pmd_offset(new_pud, TASK_SIZE);
+	memcpy(new_pmd, init_pmd,
+	       (pmd_index(MODULES_VADDR) - pmd_index(TASK_SIZE))
+	       * sizeof(pmd_t));
+	clean_dcache_area(new_pmd, PTRS_PER_PMD * sizeof(pmd_t));
+#endif /* CONFIG_KASAN */
+#endif /* CONFIG_LPAE */
 
 	if (!vectors_high()) {
 		/*
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
