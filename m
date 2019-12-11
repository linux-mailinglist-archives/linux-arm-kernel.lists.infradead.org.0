Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 209D011BC13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6vXL1PPT+yKDq8EYDyQAX8W33ybFVCKDWo9FCDqBPQ=; b=NkOPjobTPYSslE
	37gvyLpUrgW1IvVp6tDzL2JSNaSKuEyRpmFsXeG+aw6fAlLMSQE9IW7EXHm68GvQumx2Pc/kyoEnn
	Ni6Yx5b8vf0EU2Sexujv/qtCKqEzak5KQ5OV9RBRBWOnfpf1kE2YJwDm5s9ipcDql1X2funxv8AMX
	1FotKarCNF3yji3lgqaSE4/RIqKSHH2zX6icm3mB0Rq+ublGXKfavJ9d6ynDQzOBD5NRNyo67FEDW
	8u5HbTBsG+vqs64Y4gQ57OusmBzhvdWZYxndk1lpu1uamNnGqCEwUJmGN96EJiA0TT7j6Dcxw3VrM
	ikK9TIf4N2koefuGAkjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6z4-00072a-6M; Wed, 11 Dec 2019 18:45:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6v0-0003HM-P8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:41:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A01661478;
 Wed, 11 Dec 2019 10:41:02 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 376903F6CF;
 Wed, 11 Dec 2019 10:41:01 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 15/22] arm64: mte: Add PROT_MTE support to mmap() and
 mprotect()
Date: Wed, 11 Dec 2019 18:40:20 +0000
Message-Id: <20191211184027.20130-16-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104102_909911_0F0AF53C 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable tagging on a memory range, the user must explicitly opt in via
a new PROT_MTE flag passed to mmap() or mprotect(). Since this is a new
memory type in the AttrIndx field of a pte, simplify the or'ing of these
bits over the protection_map[] attributes by making MT_NORMAL index 0.

There are two conditions for arch_vm_get_page_prot() to return the
MT_NORMAL_TAGGED memory type: (1) the user requested it via PROT_MTE,
registered as VM_MTE in the vm_flags, and (2) the vma supports MTE,
decided during the mmap() call (only) and registered as VM_MTE_ALLOWED.

arch_calc_vm_prot_bits() is responsible for registering the user request
as VM_MTE. The newly introduced arch_calc_vm_flag_bits() sets
VM_MTE_ALLOWED if the mapping is MAP_ANONYMOUS. An MTE-capable
filesystem (RAM-based) may be able to set VM_MTE_ALLOWED during its
mmap() file ops call.

In addition, update VM_DATA_DEFAULT_FLAGS to allow mprotect(PROT_MTE) on
stack or brk area.

The Linux mmap() syscall currently ignores unknown PROT_* flags. In the
presence of MTE, an mmap(PROT_MTE) on a file which does not support MTE
will not report an error and the memory will not be mapped as Normal
Tagged. For consistency, mprotect(PROT_MTE) will not report an error
either if the memory range does not support MTE. Two subsequent patches
in the series will propose tightening of this behaviour.

Co-developed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/memory.h    | 18 +++++----
 arch/arm64/include/asm/mman.h      | 64 ++++++++++++++++++++++++++++++
 arch/arm64/include/asm/page.h      |  4 +-
 arch/arm64/include/asm/pgtable.h   |  7 +++-
 arch/arm64/include/uapi/asm/mman.h | 14 +++++++
 fs/proc/task_mmu.c                 |  3 ++
 include/linux/mm.h                 |  8 ++++
 7 files changed, 109 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm64/include/asm/mman.h
 create mode 100644 arch/arm64/include/uapi/asm/mman.h

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 55994ab362ae..f0e535895a78 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -138,14 +138,18 @@
 
 /*
  * Memory types available.
+ *
+ * IMPORTANT: MT_NORMAL must be index 0 since vm_get_page_prot() may 'or' in
+ *	      the MT_NORMAL_TAGGED memory type for PROT_MTE mappings. Note
+ *	      that protection_map[] only contains MT_NORMAL attributes.
  */
-#define MT_DEVICE_nGnRnE	0
-#define MT_DEVICE_nGnRE		1
-#define MT_DEVICE_GRE		2
-#define MT_NORMAL_NC		3
-#define MT_NORMAL		4
-#define MT_NORMAL_WT		5
-#define MT_NORMAL_TAGGED	6
+#define MT_NORMAL		0
+#define MT_NORMAL_TAGGED	1
+#define MT_NORMAL_NC		2
+#define MT_NORMAL_WT		3
+#define MT_DEVICE_nGnRnE	4
+#define MT_DEVICE_nGnRE		5
+#define MT_DEVICE_GRE		6
 
 /*
  * Memory types for Stage-2 translation
diff --git a/arch/arm64/include/asm/mman.h b/arch/arm64/include/asm/mman.h
new file mode 100644
index 000000000000..c77a23869223
--- /dev/null
+++ b/arch/arm64/include/asm/mman.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_MMAN_H__
+#define __ASM_MMAN_H__
+
+#include <uapi/asm/mman.h>
+
+/*
+ * There are two conditions required for returning a Normal Tagged memory type
+ * in arch_vm_get_page_prot(): (1) the user requested it via PROT_MTE passed
+ * to mmap() or mprotect() and (2) the corresponding vma supports MTE. We
+ * register (1) as VM_MTE in the vma->vm_flags and (2) as VM_MTE_ALLOWED. Note
+ * that the latter can only be set during the mmap() call since mprotect()
+ * does not accept MAP_* flags.
+ */
+static inline unsigned long arch_calc_vm_prot_bits(unsigned long prot,
+						   unsigned long pkey)
+{
+	if (!system_supports_mte())
+		return 0;
+
+	if (prot & PROT_MTE)
+		return VM_MTE;
+
+	return 0;
+}
+#define arch_calc_vm_prot_bits arch_calc_vm_prot_bits
+
+static inline unsigned long arch_calc_vm_flag_bits(unsigned long flags)
+{
+	if (!system_supports_mte())
+		return 0;
+
+	/*
+	 * Only allow MTE on anonymous mappings as these are guaranteed to be
+	 * backed by tags-capable memory. The vm_flags may be overridden by a
+	 * filesystem supporting MTE (RAM-based).
+	 */
+	if (flags & MAP_ANONYMOUS)
+		return VM_MTE_ALLOWED;
+
+	return 0;
+}
+#define arch_calc_vm_flag_bits arch_calc_vm_flag_bits
+
+static inline pgprot_t arch_vm_get_page_prot(unsigned long vm_flags)
+{
+	return (vm_flags & VM_MTE) && (vm_flags & VM_MTE_ALLOWED) ?
+		__pgprot(PTE_ATTRINDX(MT_NORMAL_TAGGED)) :
+		__pgprot(0);
+}
+#define arch_vm_get_page_prot arch_vm_get_page_prot
+
+static inline bool arch_validate_prot(unsigned long prot, unsigned long addr)
+{
+	unsigned long supported = PROT_READ | PROT_WRITE | PROT_EXEC | PROT_SEM;
+
+	if (system_supports_mte())
+		supported |= PROT_MTE;
+
+	return (prot & ~supported) == 0;
+}
+#define arch_validate_prot arch_validate_prot
+
+#endif /* !__ASM_MMAN_H__ */
diff --git a/arch/arm64/include/asm/page.h b/arch/arm64/include/asm/page.h
index d39ddb258a04..10d71f927b70 100644
--- a/arch/arm64/include/asm/page.h
+++ b/arch/arm64/include/asm/page.h
@@ -32,9 +32,11 @@ extern int pfn_valid(unsigned long);
 
 #endif /* !__ASSEMBLY__ */
 
+/* Used for stack and brk memory ranges */
 #define VM_DATA_DEFAULT_FLAGS \
 	(((current->personality & READ_IMPLIES_EXEC) ? VM_EXEC : 0) | \
-	 VM_READ | VM_WRITE | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC)
+	 VM_READ | VM_WRITE | VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC | \
+	 VM_MTE_ALLOWED)
 
 #include <asm-generic/getorder.h>
 
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 5d15b4735a0e..e5e2cb6f2f3c 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -661,8 +661,13 @@ static inline phys_addr_t pgd_page_paddr(pgd_t pgd)
 
 static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 {
+	/*
+	 * Normal and Normal-Tagged are two different memory types and indices
+	 * in MAIR_EL1. The mask below has to include PTE_ATTRINDX_MASK.
+	 */
 	const pteval_t mask = PTE_USER | PTE_PXN | PTE_UXN | PTE_RDONLY |
-			      PTE_PROT_NONE | PTE_VALID | PTE_WRITE;
+			      PTE_PROT_NONE | PTE_VALID | PTE_WRITE |
+			      PTE_ATTRINDX_MASK;
 	/* preserve the hardware dirty information */
 	if (pte_hw_dirty(pte))
 		pte = pte_mkdirty(pte);
diff --git a/arch/arm64/include/uapi/asm/mman.h b/arch/arm64/include/uapi/asm/mman.h
new file mode 100644
index 000000000000..d7677ee84878
--- /dev/null
+++ b/arch/arm64/include/uapi/asm/mman.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
+#ifndef _UAPI__ASM_MMAN_H
+#define _UAPI__ASM_MMAN_H
+
+#include <asm-generic/mman.h>
+
+/*
+ * The generic mman.h file reserves 0x10 and 0x20 for arch-specific PROT_*
+ * flags.
+ */
+/* 0x10 reserved for PROT_BTI */
+#define PROT_MTE	 0x20		/* Normal Tagged mapping */
+
+#endif /* !_UAPI__ASM_MMAN_H */
diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 9442631fd4af..34bc9e0b4896 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -677,6 +677,9 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
 		[ilog2(VM_MERGEABLE)]	= "mg",
 		[ilog2(VM_UFFD_MISSING)]= "um",
 		[ilog2(VM_UFFD_WP)]	= "uw",
+#ifdef CONFIG_ARM64_MTE
+		[ilog2(VM_MTE)]		= "mt",
+#endif
 #ifdef CONFIG_ARCH_HAS_PKEYS
 		/* These come out via ProtectionKey: */
 		[ilog2(VM_PKEY_BIT0)]	= "",
diff --git a/include/linux/mm.h b/include/linux/mm.h
index c97ea3b694e6..cf59b4558bbe 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -340,6 +340,14 @@ extern unsigned int kobjsize(const void *objp);
 # define VM_MPX		VM_NONE
 #endif
 
+#if defined(CONFIG_ARM64_MTE)
+# define VM_MTE		VM_HIGH_ARCH_0	/* Use Tagged memory for access control */
+# define VM_MTE_ALLOWED	VM_HIGH_ARCH_1	/* Tagged memory permitted */
+#else
+# define VM_MTE		VM_NONE
+# define VM_MTE_ALLOWED	VM_NONE
+#endif
+
 #ifndef VM_GROWSUP
 # define VM_GROWSUP	VM_NONE
 #endif

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
