Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C279E1D5798
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilMCOaT5mA0WG2aRmzx51+GrwmCJrMFqm/CSESzUMrA=; b=M5BsVP3ABAO7RO
	wbo5GyYCKB+rO/rx95pARARPt+6ggEc5c/U2KxML/0974qcAeyt7DAyJe+D7wISrEMQOm4hFoRKch
	9/9zGLPEsClVL9GvyEgJOuwsjyulu1Jym0bb1hGr0v9EhY4T6zTVL8ImKleC5J66bLJpke+5M0A3t
	r+t/kGURKLOpqvK+nQsPuFXKle77KtPoNeZn0YtIacECAAh+VhlknypC9pvosplPwBzCaaZ0NQL6B
	E+Qe8J9wqfO0AF5w+VJwpNJS6oV2kGi5Fk4Do8cGGOBV/okKCIah0PlOaDu2RGCq7P7l29M4yysi4
	xxE0MnNlq0uU0WC4KSPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe32-0001XJ-3h; Fri, 15 May 2020 17:23:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdxF-00025U-Mi
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:17:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8ECFE1042;
 Fri, 15 May 2020 10:17:01 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BEDA73F305;
 Fri, 15 May 2020 10:16:59 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 20/26] mm: Add arch hooks for saving/restoring tags
Date: Fri, 15 May 2020 18:16:06 +0100
Message-Id: <20200515171612.1020-21-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515171612.1020-1-catalin.marinas@arm.com>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101701_860606_12D42F98 
X-CRM114-Status: GOOD (  14.33  )
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

Arm's Memory Tagging Extension (MTE) adds some metadata (tags) to
every physical page, when swapping pages out to disk it is necessary to
save these tags, and later restore them when reading the pages back.

Add some hooks along with dummy implementations to enable the
arch code to handle this.

Three new hooks are added to the swap code:
 * arch_prepare_to_swap() and
 * arch_swap_invalidate_page() / arch_swap_invalidate_area().
One new hook is added to shmem:
 * arch_swap_restore_tags()

Signed-off-by: Steven Price <steven.price@arm.com>
[catalin.marinas@arm.com: add unlock_page() on the error path]
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
---
 include/asm-generic/pgtable.h | 23 +++++++++++++++++++++++
 mm/page_io.c                  | 10 ++++++++++
 mm/shmem.c                    |  6 ++++++
 mm/swapfile.c                 |  2 ++
 4 files changed, 41 insertions(+)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 329b8c8ca703..306cee75b9ec 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -475,6 +475,29 @@ static inline int arch_unmap_one(struct mm_struct *mm,
 }
 #endif
 
+#ifndef __HAVE_ARCH_PREPARE_TO_SWAP
+static inline int arch_prepare_to_swap(struct page *page)
+{
+	return 0;
+}
+#endif
+
+#ifndef __HAVE_ARCH_SWAP_INVALIDATE
+static inline void arch_swap_invalidate_page(int type, pgoff_t offset)
+{
+}
+
+static inline void arch_swap_invalidate_area(int type)
+{
+}
+#endif
+
+#ifndef __HAVE_ARCH_SWAP_RESTORE_TAGS
+static inline void arch_swap_restore_tags(swp_entry_t entry, struct page *page)
+{
+}
+#endif
+
 #ifndef __HAVE_ARCH_PGD_OFFSET_GATE
 #define pgd_offset_gate(mm, addr)	pgd_offset(mm, addr)
 #endif
diff --git a/mm/page_io.c b/mm/page_io.c
index 76965be1d40e..dae85d56e45b 100644
--- a/mm/page_io.c
+++ b/mm/page_io.c
@@ -253,6 +253,16 @@ int swap_writepage(struct page *page, struct writeback_control *wbc)
 		unlock_page(page);
 		goto out;
 	}
+	/*
+	 * Arch code may have to preserve more data than just the page
+	 * contents, e.g. memory tags.
+	 */
+	ret = arch_prepare_to_swap(page);
+	if (ret) {
+		set_page_dirty(page);
+		unlock_page(page);
+		goto out;
+	}
 	if (frontswap_store(page) == 0) {
 		set_page_writeback(page);
 		unlock_page(page);
diff --git a/mm/shmem.c b/mm/shmem.c
index 73754ed7af69..0e87925a7cb4 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -1658,6 +1658,12 @@ static int shmem_swapin_page(struct inode *inode, pgoff_t index,
 	}
 	wait_on_page_writeback(page);
 
+	/*
+	 * Some architectures may have to restore extra metadata to the
+	 * physical page after reading from swap.
+	 */
+	arch_swap_restore_tags(swap, page);
+
 	if (shmem_should_replace_page(page, gfp)) {
 		error = shmem_replace_page(&page, gfp, info, index);
 		if (error)
diff --git a/mm/swapfile.c b/mm/swapfile.c
index 5871a2aa86a5..b39c6520b0cf 100644
--- a/mm/swapfile.c
+++ b/mm/swapfile.c
@@ -722,6 +722,7 @@ static void swap_range_free(struct swap_info_struct *si, unsigned long offset,
 	else
 		swap_slot_free_notify = NULL;
 	while (offset <= end) {
+		arch_swap_invalidate_page(si->type, offset);
 		frontswap_invalidate_page(si->type, offset);
 		if (swap_slot_free_notify)
 			swap_slot_free_notify(si->bdev, offset);
@@ -2645,6 +2646,7 @@ SYSCALL_DEFINE1(swapoff, const char __user *, specialfile)
 	frontswap_map = frontswap_map_get(p);
 	spin_unlock(&p->lock);
 	spin_unlock(&swap_lock);
+	arch_swap_invalidate_area(p->type);
 	frontswap_invalidate_area(p->type);
 	frontswap_map_set(p, NULL);
 	mutex_unlock(&swapon_mutex);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
