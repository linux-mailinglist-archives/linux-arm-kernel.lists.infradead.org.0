Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8D18E117
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 13:17:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JCZgEQFzQLgxc6MteqzhnhAWcQbVbEniZAuLOKdKCtA=; b=KIYGt4S70heytF
	rEwZc6mBPKRznv+rEJtdnekMQCUz1nlUjmKfzNYzE7o9Mr+ZkRVbJq1vcP7jWtZhjMF3mbAuvBCOm
	J9Fs5j7BZRjauBjBx58KFZgZMFRU4WQCMJ+vivvAk4br34XhcNjde0xIxUUMYOvgVudJ+npya+kEo
	1sDjkw+CCHw4AQ3QnqwuStODJFeBVjZCo9WEAsUre2FZbr/tkqhQyvwAhgcgVeWvn0FbmfJsA7B4y
	hDwWfbGkconTHn8M3UNIJ9w6xX6UUrHjBel/9XJvPC7SraTSHjgJSzEmsHsKtj4Dfxr/yzHBBSuo2
	bE63pPfKhXcuqOveSdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFd41-00028o-HL; Sat, 21 Mar 2020 12:17:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFd3Y-0001wu-8g
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 12:16:49 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 60DF2373D7F53E2F57F7;
 Sat, 21 Mar 2020 20:16:42 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 21 Mar 2020 20:16:33 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>, <catalin.marinas@arm.com>,
 <aneesh.kumar@linux.ibm.com>, <maz@kernel.org>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [RFC PATCH v3 4/4] mm: Set VM_LEVEL flags in some tlb_flush functions
Date: Sat, 21 Mar 2020 20:16:21 +0800
Message-ID: <20200321121621.1600-5-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200321121621.1600-1-yezhenyu2@huawei.com>
References: <20200321121621.1600-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_051648_489800_A08FEF74 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, yezhenyu2@huawei.com,
 linux-kernel@vger.kernel.org, xiexiangyou@huawei.com,
 zhangshaokun@hisilicon.com, linux-mm@kvack.org, arm@kernel.org,
 prime.zeng@hisilicon.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The relevant functions are:

	tlb_flush in asm/tlb.h
	get_clear_flush and clear_flush in mm/hugetlbpage.c
	flush_pmd|pud_tlb_range in asm-generic/patable.h
	do_huge_pmd_numa_page and move_huge_pmd in mm/huge_memory.c

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 arch/arm64/include/asm/tlb.h  | 12 ++++++++++++
 arch/arm64/mm/hugetlbpage.c   |  4 ++--
 include/asm-generic/pgtable.h | 16 ++++++++++++++--
 mm/huge_memory.c              |  8 +++++++-
 4 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/tlb.h b/arch/arm64/include/asm/tlb.h
index b76df828e6b7..77fe942b30b6 100644
--- a/arch/arm64/include/asm/tlb.h
+++ b/arch/arm64/include/asm/tlb.h
@@ -27,6 +27,18 @@ static inline void tlb_flush(struct mmu_gather *tlb)
 	bool last_level = !tlb->freed_tables;
 	unsigned long stride = tlb_get_unmap_size(tlb);
 
+	/*
+	 * mm_gather tracked which levels of the page tables
+	 * have been cleared, we can use this info to set
+	 * vm->vm_flags.
+	 */
+	if (tlb->cleared_ptes)
+		vma.vm_flags |= VM_LEVEL_PTE;
+	else if (tlb->cleared_pmds)
+		vma.vm_flags |= VM_LEVEL_PMD;
+	else if (tlb->cleared_puds)
+		vma.vm_flags |= VM_LEVEL_PUD;
+
 	/*
 	 * If we're tearing down the address space then we only care about
 	 * invalidating the walk-cache, since the ASID allocator won't
diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index bbeb6a5a6ba6..c35a1bd06bd0 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -140,7 +140,7 @@ static pte_t get_clear_flush(struct mm_struct *mm,
 	}
 
 	if (valid) {
-		struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
+		struct vm_area_struct vma = TLB_FLUSH_VMA(mm, VM_LEVEL_PTE);
 		flush_tlb_range(&vma, saddr, addr);
 	}
 	return orig_pte;
@@ -161,7 +161,7 @@ static void clear_flush(struct mm_struct *mm,
 			     unsigned long pgsize,
 			     unsigned long ncontig)
 {
-	struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
+	struct vm_area_struct vma = TLB_FLUSH_VMA(mm, VM_LEVEL_PTE);
 	unsigned long i, saddr = addr;
 
 	for (i = 0; i < ncontig; i++, addr += pgsize, ptep++)
diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index e2e2bef07dd2..391e704faf7a 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1160,8 +1160,20 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
  * invalidate the entire TLB which is not desitable.
  * e.g. see arch/arc: flush_pmd_tlb_range
  */
-#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
-#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
+#define flush_pmd_tlb_range(vma, addr, end)				\
+	do {								\
+		vma->vm_flags &= ~(VM_LEVEL_PUD | VM_LEVEL_PTE);	\
+		vma->vm_flags |= VM_LEVEL_PMD;				\
+		flush_tlb_range(vma, addr, end);			\
+	} while (0)
+
+#define flush_pud_tlb_range(vma, addr, end)				\
+	do {								\
+		vma->vm_flags &= ~(VM_LEVEL_PMD | VM_LEVEL_PTE);	\
+		vma->vm_flags |= VM_LEVEL_PUD;				\
+		flush_tlb_range(vma, addr, end);			\
+	} while (0)
+
 #else
 #define flush_pmd_tlb_range(vma, addr, end)	BUILD_BUG()
 #define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index b08b199f9a11..f28ced8d298e 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -1646,6 +1646,8 @@ vm_fault_t do_huge_pmd_numa_page(struct vm_fault *vmf, pmd_t pmd)
 	 * mapping or not. Hence use the tlb range variant
 	 */
 	if (mm_tlb_flush_pending(vma->vm_mm)) {
+		vma->vm_flags &= ~(VM_LEVEL_PUD | VM_LEVEL_PTE);
+		vma->vm_flags |= VM_LEVEL_PMD;
 		flush_tlb_range(vma, haddr, haddr + HPAGE_PMD_SIZE);
 		/*
 		 * change_huge_pmd() released the pmd lock before
@@ -1917,8 +1919,12 @@ bool move_huge_pmd(struct vm_area_struct *vma, unsigned long old_addr,
 		}
 		pmd = move_soft_dirty_pmd(pmd);
 		set_pmd_at(mm, new_addr, new_pmd, pmd);
-		if (force_flush)
+		if (force_flush) {
+			vma->vm_flags &= ~(VM_LEVEL_PUD | VM_LEVEL_PTE);
+			vma->vm_flags |= VM_LEVEL_PMD;
 			flush_tlb_range(vma, old_addr, old_addr + PMD_SIZE);
+		}
+
 		if (new_ptl != old_ptl)
 			spin_unlock(new_ptl);
 		spin_unlock(old_ptl);
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
