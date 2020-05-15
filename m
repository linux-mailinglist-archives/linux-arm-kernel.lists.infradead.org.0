Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B3E1D57A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:23:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQ43jGOiuDmwtulRbTvcl3uVd5l1IvuwFsgchcQVb/Y=; b=HoFWXeVZgcdVdZ
	YqtFLOg2vWSiBLl4sl7z3KZzMna+kQFh4+eryKHh049SFUU7J+Zg9SFg3W68uwwPx+Dw/PLAxXfti
	ELCB/C1zLb4OW28DxS3+vrEyu5ikwM4ikdDjZd+Qippnl4oFtYPIB2qM3BEQ7ziXFKQ+96SXssShr
	SRgBlitf1HnNZar7we1TBKuZy2xu9pe9AYk6Fj0mKYpWGu9AFhoCJtBUCg9LT7+kZl0XLfLfq9xot
	Lgj/sydaS/Ikg1P5SzE8jhS4vCgcWch5IOUNAxGPCEGMA7bA3DP8EA7YV5CVkjt7teIYsm/8JDkJF
	2ugFBHztFIS+4vTQc5AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe3L-0001mL-1A; Fri, 15 May 2020 17:23:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxI-0002hl-IC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9FBD113E;
 Fri, 15 May 2020 10:17:03 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C49313F305;
 Fri, 15 May 2020 10:17:01 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 21/26] arm64: mte: Enable swap of tagged pages
Date: Fri, 15 May 2020 18:16:07 +0100
Message-Id: <20200515171612.1020-22-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101704_717042_5A69D261 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Steven Price <steven.price@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-mm@kvack.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

When swapping pages out to disk it is necessary to save any tags that
have been set, and restore when swapping back in. Make use of the new
page flag (PG_ARCH_2, locally named PG_mte_tagged) to identify pages
with tags. When swapping out these pages the tags are stored in memory
and later restored when the pages are brought back in. Because shmem can
swap pages back in without restoring the userspace PTE it is also
necessary to add a hook for shmem.

Signed-off-by: Steven Price <steven.price@arm.com>
[catalin.marinas@arm.com: move function prototypes to mte.h]
[catalin.marinas@arm.com: drop '_tags' from arch_swap_restore_tags()]
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/mte.h     |  8 ++++
 arch/arm64/include/asm/pgtable.h | 32 +++++++++++++
 arch/arm64/kernel/mte.c          | 10 ++++
 arch/arm64/lib/mte.S             | 45 ++++++++++++++++++
 arch/arm64/mm/Makefile           |  1 +
 arch/arm64/mm/mteswap.c          | 82 ++++++++++++++++++++++++++++++++
 include/asm-generic/pgtable.h    |  4 +-
 mm/shmem.c                       |  2 +-
 8 files changed, 181 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/mm/mteswap.c

diff --git a/arch/arm64/include/asm/mte.h b/arch/arm64/include/asm/mte.h
index 9d4b1390d07d..ad43cfe88d5f 100644
--- a/arch/arm64/include/asm/mte.h
+++ b/arch/arm64/include/asm/mte.h
@@ -21,6 +21,14 @@ unsigned long mte_copy_tags_from_user(void *to, const void __user *from,
 				      unsigned long n);
 unsigned long mte_copy_tags_to_user(void __user *to, void *from,
 				    unsigned long n);
+int mte_save_tags(struct page *page);
+void mte_save_page_tags(const void *page_addr, void *tag_storage);
+bool mte_restore_tags(swp_entry_t entry, struct page *page);
+void mte_restore_page_tags(void *page_addr, const void *tag_storage);
+void mte_invalidate_tags(int type, pgoff_t offset);
+void mte_invalidate_tags_area(int type);
+void *mte_allocate_tag_storage(void);
+void mte_free_tag_storage(char *storage);
 
 #ifdef CONFIG_ARM64_MTE
 
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index f2cd59b01b27..281d0b0f4fe1 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -851,6 +851,38 @@ static inline pmd_t pmdp_establish(struct vm_area_struct *vma,
 
 extern int kern_addr_valid(unsigned long addr);
 
+#ifdef CONFIG_ARM64_MTE
+
+#define __HAVE_ARCH_PREPARE_TO_SWAP
+static inline int arch_prepare_to_swap(struct page *page)
+{
+	if (system_supports_mte())
+		return mte_save_tags(page);
+	return 0;
+}
+
+#define __HAVE_ARCH_SWAP_INVALIDATE
+static inline void arch_swap_invalidate_page(int type, pgoff_t offset)
+{
+	if (system_supports_mte())
+		mte_invalidate_tags(type, offset);
+}
+
+static inline void arch_swap_invalidate_area(int type)
+{
+	if (system_supports_mte())
+		mte_invalidate_tags_area(type);
+}
+
+#define __HAVE_ARCH_SWAP_RESTORE
+static inline void arch_swap_restore(swp_entry_t entry, struct page *page)
+{
+	if (system_supports_mte() && mte_restore_tags(entry, page))
+		set_bit(PG_mte_tagged, &page->flags);
+}
+
+#endif /* CONFIG_ARM64_MTE */
+
 #include <asm-generic/pgtable.h>
 
 /*
diff --git a/arch/arm64/kernel/mte.c b/arch/arm64/kernel/mte.c
index 6abd6a16a145..7b3041b0f909 100644
--- a/arch/arm64/kernel/mte.c
+++ b/arch/arm64/kernel/mte.c
@@ -10,6 +10,8 @@
 #include <linux/sched.h>
 #include <linux/sched/mm.h>
 #include <linux/string.h>
+#include <linux/swap.h>
+#include <linux/swapops.h>
 #include <linux/thread_info.h>
 #include <linux/uio.h>
 
@@ -21,11 +23,19 @@
 void mte_sync_tags(pte_t *ptep, pte_t pte)
 {
 	struct page *page = pte_page(pte);
+	pte_t old_pte = READ_ONCE(*ptep);
 
 	/* if PG_mte_tagged is set, tags have already been initialised */
 	if (test_and_set_bit(PG_mte_tagged, &page->flags))
 		return;
 
+	if (is_swap_pte(old_pte)) {
+		swp_entry_t entry = pte_to_swp_entry(old_pte);
+
+		if (!non_swap_entry(entry) && mte_restore_tags(entry, page))
+			return;
+	}
+
 	/* tags of the zero page will be cleared on first mapping */
 	mte_clear_page_tags(page_address(page), page_size(page));
 }
diff --git a/arch/arm64/lib/mte.S b/arch/arm64/lib/mte.S
index 862655a36013..dd4593693e63 100644
--- a/arch/arm64/lib/mte.S
+++ b/arch/arm64/lib/mte.S
@@ -93,3 +93,48 @@ SYM_FUNC_START(mte_copy_tags_to_user)
 2:	sub	x0, x0, x3		// update the number of tags copied
 	ret
 SYM_FUNC_END(mte_copy_tags_to_user)
+
+/*
+ * Save the tags in a page
+ *   x0 - page address
+ *   x1 - tag storage
+ */
+SYM_FUNC_START(mte_save_page_tags)
+	multitag_transfer_size x7, x5
+1:
+	mov	x2, #0
+2:
+	ldgm	x5, [x0]
+	orr	x2, x2, x5
+	add	x0, x0, x7
+	tst	x0, #0xFF		// 16 tag values fit in a register,
+	b.ne	2b			// which is 16*16=256 bytes
+
+	str	x2, [x1], #8
+
+	tst	x0, #(PAGE_SIZE - 1)
+	b.ne	1b
+
+	ret
+SYM_FUNC_END(mte_save_page_tags)
+
+/*
+ * Restore the tags in a page
+ *   x0 - page address
+ *   x1 - tag storage
+ */
+SYM_FUNC_START(mte_restore_page_tags)
+	multitag_transfer_size x7, x5
+1:
+	ldr	x2, [x1], #8
+2:
+	stgm	x2, [x0]
+	add	x0, x0, x7
+	tst	x0, #0xFF
+	b.ne	2b
+
+	tst	x0, #(PAGE_SIZE - 1)
+	b.ne	1b
+
+	ret
+SYM_FUNC_END(mte_restore_page_tags)
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index d91030f0ffee..5bcc9e0aa259 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
+obj-$(CONFIG_ARM64_MTE)		+= mteswap.o
 KASAN_SANITIZE_physaddr.o	+= n
 
 obj-$(CONFIG_KASAN)		+= kasan_init.o
diff --git a/arch/arm64/mm/mteswap.c b/arch/arm64/mm/mteswap.c
new file mode 100644
index 000000000000..847d99814d03
--- /dev/null
+++ b/arch/arm64/mm/mteswap.c
@@ -0,0 +1,82 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/pagemap.h>
+#include <linux/xarray.h>
+#include <linux/swap.h>
+#include <linux/swapops.h>
+#include <asm/mte.h>
+
+static DEFINE_XARRAY(mte_pages);
+
+void *mte_allocate_tag_storage(void)
+{
+	/* tags granule is 16 bytes, 2 tags stored per byte */
+	return kmalloc(PAGE_SIZE / 16 / 2, GFP_KERNEL);
+}
+
+void mte_free_tag_storage(char *storage)
+{
+	kfree(storage);
+}
+
+int mte_save_tags(struct page *page)
+{
+	void *tag_storage, *ret;
+
+	if (!test_bit(PG_mte_tagged, &page->flags))
+		return 0;
+
+	tag_storage = mte_allocate_tag_storage();
+	if (!tag_storage)
+		return -ENOMEM;
+
+	mte_save_page_tags(page_address(page), tag_storage);
+
+	/* page_private contains the swap entry.val set in do_swap_page */
+	ret = xa_store(&mte_pages, page_private(page), tag_storage, GFP_KERNEL);
+	if (WARN(xa_is_err(ret), "Failed to store MTE tags")) {
+		mte_free_tag_storage(tag_storage);
+		return xa_err(ret);
+	} else if (ret) {
+		/* Entry is being replaced, free the old entry */
+		mte_free_tag_storage(ret);
+	}
+
+	return 0;
+}
+
+bool mte_restore_tags(swp_entry_t entry, struct page *page)
+{
+	void *tags = xa_load(&mte_pages, entry.val);
+
+	if (!tags)
+		return false;
+
+	mte_restore_page_tags(page_address(page), tags);
+
+	return true;
+}
+
+void mte_invalidate_tags(int type, pgoff_t offset)
+{
+	swp_entry_t entry = swp_entry(type, offset);
+	void *tags = xa_erase(&mte_pages, entry.val);
+
+	mte_free_tag_storage(tags);
+}
+
+void mte_invalidate_tags_area(int type)
+{
+	swp_entry_t entry = swp_entry(type, 0);
+	swp_entry_t last_entry = swp_entry(type + 1, 0);
+	void *tags;
+
+	XA_STATE(xa_state, &mte_pages, entry.val);
+
+	xa_lock(&mte_pages);
+	xas_for_each(&xa_state, tags, last_entry.val - 1) {
+		__xa_erase(&mte_pages, xa_state.xa_index);
+		mte_free_tag_storage(tags);
+	}
+	xa_unlock(&mte_pages);
+}
diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 306cee75b9ec..09eb80160920 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -492,8 +492,8 @@ static inline void arch_swap_invalidate_area(int type)
 }
 #endif
 
-#ifndef __HAVE_ARCH_SWAP_RESTORE_TAGS
-static inline void arch_swap_restore_tags(swp_entry_t entry, struct page *page)
+#ifndef __HAVE_ARCH_SWAP_RESTORE
+static inline void arch_swap_restore(swp_entry_t entry, struct page *page)
 {
 }
 #endif
diff --git a/mm/shmem.c b/mm/shmem.c
index 0e87925a7cb4..003b0e96c746 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -1662,7 +1662,7 @@ static int shmem_swapin_page(struct inode *inode, pgoff_t index,
 	 * Some architectures may have to restore extra metadata to the
 	 * physical page after reading from swap.
 	 */
-	arch_swap_restore_tags(swap, page);
+	arch_swap_restore(swap, page);
 
 	if (shmem_should_replace_page(page, gfp)) {
 		error = shmem_replace_page(&page, gfp, info, index);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
