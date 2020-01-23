Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7C3146241
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 08:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OPam8FOY5T5vTynregWqXQODBGWaYilBqaznk5hyaV0=; b=YJUoKG8Nut2Exz
	1MNIygEemGxbzXVmbLtexykBqlUSCpUmVoxhKObOK5t4PMunE2xa/n7ksx/xxPm4wO4COWuNGgwRu
	aRcFCyM32YreiqjutQjKMyT4uPgun/Fpx7QrXACKnRjU7D2sT1BgjIdXpjFAoiO1V1k4e1cffojGQ
	xCW8NzjMr8Qij6JsxnqFcMI9Dqc9U5ZRqF3phXKoQdOXVOL527QYW0MyoH5VMtB964iCCZN8h79tQ
	o/qfApFsQQ6SchrfGa2V7ggknAqdHITjKuhw5fZvtOTIioUqskQUCtv8cRqFs5wRJCyAIX1vhctcI
	OiTy7fHsd0anT3I1ezbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuWZ6-0000uE-Fd; Thu, 23 Jan 2020 07:06:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuWYL-0000No-Vs
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 07:05:25 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 48CDD697474171B3E209;
 Thu, 23 Jan 2020 15:05:10 +0800 (CST)
Received: from huawei.com (10.175.102.38) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 23 Jan 2020
 15:05:03 +0800
From: Xuefeng Wang <wxf.wang@hisilicon.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <mark.rutland@arm.com>,
 <arnd@arndb.de>, <akpm@linux-foundation.org>
Subject: [PATCH v2 1/2] mm: add helpers pmdp_modify_prot_start/commit
Date: Thu, 23 Jan 2020 15:55:12 +0800
Message-ID: <20200123075514.15142-2-wxf.wang@hisilicon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200123075514.15142-1-wxf.wang@hisilicon.com>
References: <20200123075514.15142-1-wxf.wang@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.38]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_230522_192258_BF53C686 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, Xuefeng Wang <wxf.wang@hisilicon.com>,
 chenzhou10@huawei.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce helpers pmdp_modify_prot_start/commit to abstract
pmdp_modify_prot transaction. Helpers pmdp_modify_prot_start/commit are
functionally unchanged.

Signed-off-by: Xuefeng Wang <wxf.wang@hisilicon.com>
Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 include/asm-generic/pgtable.h | 35 +++++++++++++++++++++++++++++++++++
 mm/huge_memory.c              | 19 ++++++++-----------
 2 files changed, 43 insertions(+), 11 deletions(-)

diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 798ea36a0549..e81bd58a9170 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -673,6 +673,41 @@ static inline void ptep_modify_prot_commit(struct vm_area_struct *vma,
	__ptep_modify_prot_commit(vma, addr, ptep, pte);
 }
 #endif /* __HAVE_ARCH_PTEP_MODIFY_PROT_TRANSACTION */
+
+static inline pmd_t __pmdp_modify_prot_start(struct vm_area_struct *vma,
+						unsigned long addr,
+						pmd_t *pmdp)
+{
+	return pmdp_invalidate(vma, addr, pmdp);
+}
+
+static inline void __pmdp_modify_prot_commit(struct vm_area_struct *vma,
+						unsigned long addr,
+						pmd_t *pmdp, pmd_t pmd)
+{
+	set_pmd_at(vma->vm_mm, addr, pmdp, pmd);
+}
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+#ifndef __HAVE_ARCH_PMDP_MODIFY_PROT_TRANSACTION
+static inline pmd_t pmdp_modify_prot_start(struct vm_area_struct *vma,
+						unsigned long addr,
+						pmd_t *pmdp)
+{
+	__pmdp_modify_prot_start(vma, addr, pmdp);
+}
+#endif /* __HAVE_ARCH_PMDP_MODIFY_PROT_TRANSACTION */
+
+/*
+ * Commit an update to a pmd.
+ */
+static inline void pmdp_modify_prot_commit(struct vm_area_struct *vma,
+						unsigned long addr,
+						pmd_t *pmdp, pmd_t old_pmd, pmd_t pmd)
+{
+	__pmdp_modify_prot_commit(vma, addr, pmdp, pmd);
+}
+#endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 #endif /* CONFIG_MMU */

 /*
diff --git a/mm/huge_memory.c b/mm/huge_memory.c
index a88093213674..53515a3c91dd 100644
--- a/mm/huge_memory.c
+++ b/mm/huge_memory.c
@@ -1933,9 +1933,8 @@ bool move_huge_pmd(struct vm_area_struct *vma, unsigned long old_addr,
 int change_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, pgprot_t newprot, int prot_numa)
 {
-	struct mm_struct *mm = vma->vm_mm;
	spinlock_t *ptl;
-	pmd_t entry;
+	pmd_t pmdnt, oldpmd;
	bool preserve_write;
	int ret;

@@ -1961,7 +1960,7 @@ int change_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
			newpmd = swp_entry_to_pmd(entry);
			if (pmd_swp_soft_dirty(*pmd))
				newpmd = pmd_swp_mksoft_dirty(newpmd);
-			set_pmd_at(mm, addr, pmd, newpmd);
+			set_pmd_at(vma->vm_mm, addr, pmd, newpmd);
		}
		goto unlock;
	}
@@ -1995,18 +1994,16 @@ int change_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
	 *
	 * The race makes MADV_DONTNEED miss the huge pmd and don't clear it
	 * which may break userspace.
-	 *
-	 * pmdp_invalidate() is required to make sure we don't miss
-	 * dirty/young flags set by hardware.
	 */
-	entry = pmdp_invalidate(vma, addr, pmd);

-	entry = pmd_modify(entry, newprot);
+	oldpmd = pmdp_modify_prot_start(vma, addr, pmd);
+	pmdnt = pmd_modify(oldpmd, newprot);
	if (preserve_write)
-		entry = pmd_mk_savedwrite(entry);
+		pmdnt = pmd_mk_savedwrite(pmdnt);
+	pmdp_modify_prot_commit(vma, addr, pmd, oldpmd, pmdnt);
+
	ret = HPAGE_PMD_NR;
-	set_pmd_at(mm, addr, pmd, entry);
-	BUG_ON(vma_is_anonymous(vma) && !preserve_write && pmd_write(entry));
+	BUG_ON(vma_is_anonymous(vma) && !preserve_write && pmd_write(pmdnt));
 unlock:
	spin_unlock(ptl);
	return ret;
--
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
