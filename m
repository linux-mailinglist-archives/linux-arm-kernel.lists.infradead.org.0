Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE35C1E0ECC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 14:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GWWy4EA4h+fb8YrmCprvMSCHgzDXsfwv21X7f52CQMw=; b=oMXBRvtc3csDt7
	o/63/KtgEga10qXyA68+Hy6osc0WxSbLQjNAHV3L0gqNwYc1tD+QKZK4PM5ts0d3QoEd7Jjeq5nR6
	GThXEcB2+SWu8YnTXtgHhz2D+xtdbTy2V6RjeJlN2eyD2JAJMMLRAMkUOmGSPTcL9veVdDGHnWCfE
	y3fUoY7ynx6mqoDsU/Cd/TmkN1dHieEaULR3WZ5SYHcp+c2ojjgCsHch6vZHp2LHWNELJjQmWeGA3
	op4BwfNsoFiZYsw+PXm3xBjk4pJ9x2uhWr4vdl6ayb6czMWC2biYuW9/wDEiQK7ldDXTHMqQ8OT0c
	IrnLJVGl3pGCbQjstPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCd9-00019R-A3; Mon, 25 May 2020 12:54:59 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCbo-0008P9-Bt
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 12:53:39 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 440D8F4D63F11ACEF441;
 Mon, 25 May 2020 20:53:32 +0800 (CST)
Received: from DESKTOP-KKJBAGG.china.huawei.com (10.173.220.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 20:53:23 +0800
From: Zhenyu Ye <yezhenyu2@huawei.com>
To: <catalin.marinas@arm.com>, <peterz@infradead.org>, <mark.rutland@arm.com>, 
 <will@kernel.org>, <aneesh.kumar@linux.ibm.com>,
 <akpm@linux-foundation.org>, 
 <npiggin@gmail.com>, <arnd@arndb.de>, <rostedt@goodmis.org>,
 <maz@kernel.org>, <suzuki.poulose@arm.com>, <tglx@linutronix.de>,
 <yuzhao@google.com>, <Dave.Martin@arm.com>, <steven.price@arm.com>,
 <broonie@kernel.org>, <guohanjun@huawei.com>
Subject: [PATCH v3 5/6] mm: tlb: Provide flush_*_tlb_range wrappers
Date: Mon, 25 May 2020 20:52:59 +0800
Message-ID: <20200525125300.794-6-yezhenyu2@huawei.com>
X-Mailer: git-send-email 2.22.0.windows.1
In-Reply-To: <20200525125300.794-1-yezhenyu2@huawei.com>
References: <20200525125300.794-1-yezhenyu2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_055336_591769_EC6D2AD6 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 include/asm-generic/pgtable.h | 12 ++++++++++--
 mm/pgtable-generic.c          | 22 ++++++++++++++++++++++
 2 files changed, 32 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 329b8c8ca703..8c92122ded9b 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1161,11 +1161,19 @@ static inline int pmd_free_pte_page(pmd_t *pmd, unsigned long addr)
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
index 3d7c01e76efc..3eff199d3507 100644
--- a/mm/pgtable-generic.c
+++ b/mm/pgtable-generic.c
@@ -101,6 +101,28 @@ pte_t ptep_clear_flush(struct vm_area_struct *vma, unsigned long address,
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 
+#ifndef __HAVE_ARCH_FLUSH_PMD_TLB_RANGE
+
+#define FLUSH_Pxx_TLB_RANGE(_pxx)					\
+void flush_##_pxx##_tlb_range(struct vm_area_struct *vma,		\
+			      unsigned long addr, unsigned long end)	\
+{									\
+		struct mmu_gather tlb;					\
+									\
+		tlb_gather_mmu(&tlb, vma->vm_mm, addr, end);		\
+		tlb_start_vma(&tlb, vma);				\
+		tlb_flush_##_pxx##_range(&tlb, addr, end - addr);	\
+		tlb_end_vma(&tlb, vma);					\
+		tlb_finish_mmu(&tlb, addr, end);			\
+}
+
+FLUSH_Pxx_TLB_RANGE(pte)
+FLUSH_Pxx_TLB_RANGE(pmd)
+FLUSH_Pxx_TLB_RANGE(pud)
+FLUSH_Pxx_TLB_RANGE(p4d)
+
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
