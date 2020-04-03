Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A119D2FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 11:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abJ9dwfXtVZVAVDXuN+8z0cdeAJ6uHP0keI4wQXoGfY=; b=NIcx+hZeJ68XLi
	ozYnNA+pyhLiXsiquIL9OzmebP6tutyx/Ug/UAPYj5Kl/YskKDXdQbhDFG3EF3B/xG8LYrUS1uI3O
	9Hoote03t5982k7SQaK9VdW8r+Ph859aCgoCriPnQy4bvaBx+J7p9a0rIpu3Bbupw5giinQ895S5b
	8+PQGXFpIKJzK/FBqVBZhrzQuK1TpsgH4DrkSjTUdwA2IFhs+WEPd7baVdpvpJtXERtYJRAO1+epi
	v0jbp5CquWymvl1LiC88/CJE4EQHJfek8XdzHylT2i+5e1sPoZTokk3MFalDWNQBPzCSINVRV466X
	e5fuyKKVJJXh7gKfSZDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKIDR-0005XY-A1; Fri, 03 Apr 2020 09:02:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKICQ-0004T8-Mj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 09:01:17 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E6FA519880F97011DEC2;
 Fri,  3 Apr 2020 17:01:11 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.487.0; Fri, 3 Apr 2020 17:01:05 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <peterz@infradead.org>, <mark.rutland@arm.com>, <will@kernel.org>,
 <catalin.marinas@arm.com>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, <npiggin@gmail.com>, <arnd@arndb.de>,
 <rostedt@goodmis.org>, <maz@kernel.org>, <suzuki.poulose@arm.com>,
 <tglx@linutronix.de>, <yuzhao@google.com>, <Dave.Martin@arm.com>,
 <steven.price@arm.com>, <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v1 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
Date: Fri, 3 Apr 2020 17:00:47 +0800
Message-ID: <20200403090048.938-6-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200403090048.938-1-yezhenyu2@huawei.com>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_020114_936971_5ABE58C0 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch provides flush_{pte|pmd|pud|p4d}_tlb_range() in generic
code, which are expressed through the mmu_gather APIs.  These
interface set tlb->cleared_* and finally call tlb_flush(), so we
can do the tlb invalidation according to the information in
struct mmu_gather.

Signed-off-by: Zhenyu Ye <yezhenyu2@huawei.com>
---
 include/asm-generic/pgtable.h | 12 +++++++--
 mm/pgtable-generic.c          | 50 +++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index e2e2bef07dd2..2bedeee94131 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1160,11 +1160,19 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
  * invalidate the entire TLB which is not desitable.
  * e.g. see arch/arc: flush_pmd_tlb_range
  */
-#define flush_pmd_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
-#define flush_pud_tlb_range(vma, addr, end)	flush_tlb_range(vma, addr, end)
+extern void flush_pte_tlb_range(struct vm_area_struct *vma,
+				unsigned long addr, unsigned long end);
+extern void flush_pmd_tlb_range(struct vm_area_struct *vma,
+				unsigned long addr, unsigned long end);
+extern void flush_pud_tlb_range(struct vm_area_struct *vma,
+				unsigned long addr, unsigned long end);
+extern void flush_p4d_tlb_range(struct vm_area_struct *vma,
+				unsigned long addr, unsigned long end);
 #else
+#define flush_pte_tlb_range(vma, addr, end)	BUILD_BUG()
 #define flush_pmd_tlb_range(vma, addr, end)	BUILD_BUG()
 #define flush_pud_tlb_range(vma, addr, end)	BUILD_BUG()
+#define flush_p4d_tlb_range(vma, addr, end)	BUILD_BUG()
 #endif
 #endif
 
diff --git a/mm/pgtable-generic.c b/mm/pgtable-generic.c
index 3d7c01e76efc..0f5414a4a2ec 100644
--- a/mm/pgtable-generic.c
+++ b/mm/pgtable-generic.c
@@ -101,6 +101,56 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 
+#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
+void flush_pte_tlb_range(struct vm_area_struct *vma,
+			 unsigned long addr, unsigned long end)
+{
+	struct mmu_gather tlb;
+
+	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
+	tlb_start_vma(&tlb, vma);
+	tlb_set_pte_range(&tlb, addr, end - addr);
+	tlb_end_vma(&tlb, vma);
+	tlb_finish_mmu(&tlb, addr, end);
+}
+
+void flush_pmd_tlb_range(struct vm_area_struct *vma,
+			 unsigned long addr, unsigned long end)
+{
+	struct mmu_gather tlb;
+
+	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
+	tlb_start_vma(&tlb, vma);
+	tlb_set_pmd_range(&tlb, addr, end - addr);
+	tlb_end_vma(&tlb, vma);
+	tlb_finish_mmu(&tlb, addr, end);
+}
+
+void flush_pud_tlb_range(struct vm_area_struct *vma,
+			 unsigned long addr, unsigned long end)
+{
+	struct mmu_gather tlb;
+
+	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
+	tlb_start_vma(&tlb, vma);
+	tlb_set_pud_range(&tlb, addr, end - addr);
+	tlb_end_vma(&tlb, vma);
+	tlb_finish_mmu(&tlb, addr, end);
+}
+
+void flush_p4d_tlb_range(struct vm_area_struct *vma,
+			 unsigned long addr, unsigned long end)
+{
+	struct mmu_gather tlb;
+
+	tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);
+	tlb_start_vma(&tlb, vma);
+	tlb_set_p4d_range(&tlb, addr, end - addr);
+	tlb_end_vma(&tlb, vma);
+	tlb_finish_mmu(&tlb, addr, end);
+}
+#endif /* __HAVE_ARCH_FLUSH_PMD_TLB_RANGE */
+
 #ifndef __HAVE_ARCH_PMDP_SET_ACCESS_FLAGS
 int pmdp_set_access_flags(struct vm_area_struct *vma,
 			  unsigned long address, pmd_t *pmdp,
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
