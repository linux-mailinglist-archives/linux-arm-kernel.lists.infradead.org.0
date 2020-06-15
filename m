Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB451F92FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYVLvOrHFKCEdqunmYhDcDbrLBNJod92vvIue7Ktwfo=; b=fRGnBJnBI0hOyK
	VpbI7Gld3DBJwQz2KnmRh02yDtXB9U1QK1WGbiZFEYDtu79+4rIle02T4rGys34PXTCRmsvFv3S8m
	rNx3TdtJdQ8FNpat8ke+B77uqKuKzq+0MjCii00FhJHVXs7+VkaY49flAhlpEHvUq+SWFIqw7qZL3
	XwAUVCU0Sb34dSnsXSMVhjYXK+fx2RLshYps3PJUrBMK51yEt+DE5Tc3z0xtGa3YbQKckfSzVQ/jV
	nHrn20EvnOFX8a1Tf2fvoT5XIqPKW5MVogEcxuxJqGbQqPFegnQgrOBtnXgt5wbjUoJ36Lz8LQwQC
	L4nZV/srBlmd5Kwe2YJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklCQ-0004Z8-AI; Mon, 15 Jun 2020 09:14:38 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl3B-0000n2-0N
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:05:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id n23so18190073ljh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AVIqAVowCMkKmTiihEes5/dU7jVqd1QwevHRtqn290w=;
 b=aecswP220IqNXevzlhVOHzUpcrKX5QdtqgDfgofZ5+KaKWLZEMJmla43gbPhBN6tMU
 +y7C/Eh57vkIiOi7qfbYChDrKFfq78VAUSY5FULh9CcZvd0ashzEHYe0nbtRnRPiUZM7
 gAlvL20L3K/yKMetQwfWePH0v8YaVd8wwYQPfftpC/abeb6bfWbR1Sza0JjWXd/jEQf7
 RY9ryIId6bnVf97szEc0EQu1keySdD/QIYF7F06ia6MRM5nDBBuwLDltWYm8fMjHwmEg
 EtsdJk2FokoiTbfntzYig1bXC970oVK2hQDh+D8bQa3pXuFo+WB8J9Hz3x3/lr/x/ElG
 igqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AVIqAVowCMkKmTiihEes5/dU7jVqd1QwevHRtqn290w=;
 b=pE3jDiyuwsc9OODoc3iKcHGwDKCg9QTUORJcpSFsuVmi8sGKH+Q75zZsCPi2/BasHP
 Sutdlf30eRqfToPrIr7kk1L5vmrUQNwGrAC1vRZ6Rth1HOtB+2N5GTwYjqgLqdKdHZeK
 TTVTaUdqp4GzKJtcf0QNtL7pjIBJhT+3CAwsITjDVjPJDn1nr3PU/s5tz9IX0M5OjEC1
 Uz99B42IQQp7hitUfDdtbP+F20WBosOk83jrEJ0Lbe0HUX1ww0pwD5LtxlwE4+EdSIPj
 7EAUPirDTn8+ViWZdjtx0NKZOcHTzWO2/wEdiuxthcVoed1WaNFQblcvco9RK8Jq2KAJ
 4XYg==
X-Gm-Message-State: AOAM530c11o20i3JsmgKRUIZN607DThANXJ3SEmUhR5hxXhFaVLBKiuT
 q5IQLtJkvD6T9HDr++FGqs/ZWWRETDASgw==
X-Google-Smtp-Source: ABdhPJxAUN2lEwZN+HgdLN1/53/o62e+dohrzJ1S0xTodYNdRcey3iogFz543mzm38z+WNS0S1uheQ==
X-Received: by 2002:a2e:140a:: with SMTP id u10mr12358777ljd.56.1592211901222; 
 Mon, 15 Jun 2020 02:05:01 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id c78sm5284434lfd.63.2020.06.15.02.05.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:05:00 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Florian Fainelli <f.fainelli@gmail.com>,
 Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>,
 Ard Biesheuvel <ardb@kernel.org>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Mike Rapoport <rppt@linux.ibm.com>
Subject: [PATCH 4/5 v10] ARM: Initialize the mapping of KASan shadow memory
Date: Mon, 15 Jun 2020 11:02:46 +0200
Message-Id: <20200615090247.5218-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200615090247.5218-1-linus.walleij@linaro.org>
References: <20200615090247.5218-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020505_575831_0BDD5232 
X-CRM114-Status: GOOD (  27.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 kasan-dev@googlegroups.com, Alexander Potapenko <glider@google.com>,
 linux-arm-kernel@lists.infradead.org, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Abbott Liu <liuwenliang@huawei.com>
- Add support ARM LPAE: If LPAE is enabled, KASan shadow region's
  mapping table need be copied in the pgd_alloc() function.
- Change kasan_pte_populate,kasan_pmd_populate,kasan_pud_populate,
  kasan_pgd_populate from .meminit.text section to .init.text section.
  Reported by Florian Fainelli <f.fainelli@gmail.com>

Linus Walleij <linus.walleij@linaro.org>:
- Drop the custom mainpulation of TTBR0 and just use
  cpu_switch_mm() to switch the pgd table.
- Adopt to handle 4th level page tabel folding.
- Rewrite the entire page directory and page entry initialization
  sequence to be recursive based on ARM64:s kasan_init.c

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
ChangeLog v9->v10:
- Rebase onto v5.8-rc1
- add support for folded p4d page tables, use the primitives necessary
  for the 4th level folding, add (empty) walks of p4d level.
- Use the <linux/pgtable.h> header file that has now appeared as part
  of the VM consolidation series.
- Use a recursive method to walk pgd/p4d/pud/pmd/pte instead of the
  separate early/main calls and the flat call structure used in the
  old code. This was inspired by the ARM64 KASan init code.
- Assume authorship of this code, I have now written the majority of
  it so the blame is on me and noone else.
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
 arch/arm/include/asm/kasan.h       |  32 +++
 arch/arm/include/asm/pgalloc.h     |   9 +-
 arch/arm/include/asm/thread_info.h |   4 +
 arch/arm/kernel/head-common.S      |   3 +
 arch/arm/kernel/setup.c            |   2 +
 arch/arm/mm/Makefile               |   3 +
 arch/arm/mm/kasan_init.c           | 304 +++++++++++++++++++++++++++++
 arch/arm/mm/pgd.c                  |  15 +-
 8 files changed, 369 insertions(+), 3 deletions(-)
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
index 000000000000..6438a13f8368
--- /dev/null
+++ b/arch/arm/mm/kasan_init.c
@@ -0,0 +1,304 @@
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
+#include <linux/pgtable.h>
+#include <asm/cputype.h>
+#include <asm/highmem.h>
+#include <asm/mach/map.h>
+#include <asm/memory.h>
+#include <asm/page.h>
+#include <asm/pgalloc.h>
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
+static void __init kasan_pte_populate(pmd_t *pmdp, unsigned long addr,
+				      unsigned long end, int node, bool early)
+{
+	unsigned long next;
+	pte_t *ptep = pte_offset_kernel(pmdp, addr);
+
+	do {
+		next = addr + PAGE_SIZE;
+
+		if (pte_none(*ptep)) {
+			pte_t entry;
+			void *p;
+
+			/*
+			 * The early shadow memory is mapping all KASan operations to one and the same page
+			 * in memory, "kasan_early_shadow_page" so that the instrumentation will work on
+			 * a scratch area until we can set up the proper KASan shadow memory.
+			 */
+			if (early) {
+				p = kasan_early_shadow_page;
+				entry = pfn_pte(virt_to_pfn(kasan_early_shadow_page),
+						__pgprot(_L_PTE_DEFAULT | L_PTE_DIRTY
+							 | L_PTE_XN));
+			} else {
+				p = kasan_alloc_block(PAGE_SIZE, node);
+				if (!p) {
+					panic("%s failed to alloc pte for address 0x%lx\n",
+					      __func__, addr);
+					return;
+				}
+				memset(p, KASAN_SHADOW_INIT, PAGE_SIZE);
+				entry = pfn_pte(virt_to_pfn(p),
+					__pgprot(pgprot_val(PAGE_KERNEL)));
+			}
+
+			set_pte_at(&init_mm, addr, ptep, entry);
+		}
+	} while (ptep++, addr = next, addr != end && pte_none(READ_ONCE(*ptep)));
+}
+
+/*
+ * The pmd (page middle directory) used on LPAE?
+ */
+static void __init kasan_pmd_populate(pud_t *pudp, unsigned long addr,
+				      unsigned long end, int node, bool early)
+{
+	unsigned long next;
+	pmd_t *pmdp = pmd_offset(pudp, addr);
+
+	if (pmd_none(*pmdp)) {
+		void *p = early ? kasan_early_shadow_pte : kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p) {
+			panic("%s failed to allocate pmd for address 0x%lx\n",
+			      __func__, addr);
+			return;
+		}
+		pmd_populate_kernel(&init_mm, pmdp, p);
+		flush_pmd_entry(pmdp);
+	}
+
+	do {
+		next = pmd_addr_end(addr, end);
+		kasan_pte_populate(pmdp, addr, next, node, early);
+	} while (pmdp++, addr = next, addr != end && pmd_none(READ_ONCE(*pmdp)));
+}
+
+/*
+ * The pud (page upper directory) is only used on LPAE systems.
+ */
+static void __init kasan_pud_populate(p4d_t *p4dp, unsigned long addr,
+				      unsigned long end, int node, bool early)
+{
+	unsigned long next;
+	pud_t *pudp = pud_offset(p4dp, addr);
+
+	/*
+	 * FIXME: necessary?
+	 * Allocate and populate the PUD if it doesn't already exist
+	 * On non-LPAE systems using just 2-level page tables pud_none()
+	 * will always be zero and this will be skipped.
+	 */
+	if (!early && pud_none(*pudp)) {
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p) {
+			panic("%s failed to allocate pud for address 0x%lx\n",
+			      __func__, addr);
+			return;
+		}
+		pr_info("populating pud addr %lx\n", addr);
+		pud_populate(&init_mm, pudp, p);
+	}
+
+	do {
+		next = pud_addr_end(addr, end);
+		kasan_pmd_populate(pudp, addr, next, node, early);
+	} while (pudp++, addr = next, addr != end && pud_none(READ_ONCE(*pudp)));
+}
+
+/*
+ * The p4d (fourth level translation table) is unused on ARM32 but we iterate over it to
+ * please the Linux VMM.
+ */
+static void __init kasan_p4d_populate(pgd_t *pgdp, unsigned long addr,
+				      unsigned long end, int node, bool early)
+{
+	unsigned long next;
+	p4d_t *p4dp = p4d_offset(pgdp, addr);
+
+	/* We do not check for p4d_none() as it is unused for sure */
+	if (p4d_none_or_clear_bad(p4dp)) {
+		panic("%s failed to populate p4d for address 0x%lx\n",
+		      __func__, addr);
+		return;
+	}
+
+	do {
+		next = p4d_addr_end(addr, end);
+		kasan_pud_populate(p4dp, addr, next, node, early);
+	} while (p4dp++, addr = next, addr != end);
+}
+
+
+static void __init kasan_pgd_populate(unsigned long addr, unsigned long end,
+				      int node, bool early)
+{
+	unsigned long next;
+	pgd_t *pgdp;
+
+	pgdp = pgd_offset_k(addr);
+
+	/* Allocate and populate the PGD if it doesn't already exist */
+	if (!early && pgd_none(*pgdp)) {
+		void *p = kasan_alloc_block(PAGE_SIZE, node);
+
+		if (!p) {
+			panic("%s failed to allocate pgd for address 0x%lx\n",
+			      __func__, addr);
+			return;
+		}
+		pgd_populate(&init_mm, pgdp, p);
+	}
+
+	do {
+		next = pgd_addr_end(addr, end);
+		kasan_p4d_populate(pgdp, addr, next, node, early);
+	} while (pgdp++, addr = next, addr != end);
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
+	/*
+	 * We walk the page table and set all of the shadow memory to point
+	 * to the scratch page.
+	 */
+	kasan_pgd_populate(KASAN_SHADOW_START, KASAN_SHADOW_END, NUMA_NO_NODE,
+			   true);
+}
+
+static void __init clear_pgds(unsigned long start,
+			unsigned long end)
+{
+	for (; start && start < end; start += PMD_SIZE)
+		pmd_clear(pmd_off_k(start));
+}
+
+static int __init create_mapping(unsigned long start, unsigned long end,
+				int node)
+{
+	pr_info("populating shadow for %lx, %lx\n", start, end);
+	kasan_pgd_populate(start, end, NUMA_NO_NODE, false);
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
index c5e1b27046a8..db5ef068e523 100644
--- a/arch/arm/mm/pgd.c
+++ b/arch/arm/mm/pgd.c
@@ -66,7 +66,20 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
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
