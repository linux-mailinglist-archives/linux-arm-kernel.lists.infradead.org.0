Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEF61E0CE2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWTkyR7ZNHNtRnlIPDXlze8eYlJJmZWb2IkJlwsdq/E=; b=HgAcNxZHu5cKOy
	3WMph3Q7WWsu/pBFkLwAP1yp3/L4zNZoUla3PwXok9gXeUfS3ehkKgI+1eck9xM75lWP5Pjo5Uyzd
	Zqa3D3mgJ+uztUwRJ4E1tHUalmGWhKscQEFy+GHOKsensanxlgTQ9UpodKar55acT4iVRAdb7d1gr
	xhgAL/Tz2ups9VC23TON3WRmbx0BDOE4UJwXRAX3yEEg99LvPtPkft0jaXtK6qMa3iZhl8+7qSHyM
	rp9N2sDhSQaL3xRbmXk/3HsABkfa1Wr1EVqtuxZbhoIJ6MKyyTeRzono8z4KUq6jAP4NX6Hb+Z9IM
	mYkl4dQWwTv8rDzqwZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBFB-0006cz-1J; Mon, 25 May 2020 11:26:09 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBEN-00067o-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:25:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9506F6CC1EAF105C267D;
 Mon, 25 May 2020 19:25:14 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 19:25:07 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [RFC PATCH 6/7] kvm: arm64: Save stage2 PTE dirty info if it is
 coverred
Date: Mon, 25 May 2020 19:24:05 +0800
Message-ID: <20200525112406.28224-7-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200525112406.28224-1-zhukeqian1@huawei.com>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_042519_940376_7D2B780E 
X-CRM114-Status: GOOD (  12.55  )
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
Cc: Suzuki K
 Poulose <suzuki.poulose@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Alexios Zavras <alexios.zavras@intel.com>, zhengxiang9@huawei.com,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, wanghaibin.wang@huawei.com, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_set_pte is called to replace a target PTE with a desired one.
We always replace it, but if hw DBM is enalbled and dirty info is
coverred, should let caller know it. Caller can decide to whether
save the dirty info.

kvm_set_pmd and kvm_set_pud is not modified, because we only use
DBM in PTEs for now.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 virt/kvm/arm/mmu.c | 39 +++++++++++++++++++++++++++++++++++----
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e1d9e4b98cb6..43d89c6333f0 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -185,10 +185,34 @@ static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr
 	put_page(virt_to_page(pmd));
 }
 
-static inline void kvm_set_pte(pte_t *ptep, pte_t new_pte)
+/*
+ * @ret: true if dirty info is coverred.
+ */
+static inline bool kvm_set_pte(pte_t *ptep, pte_t new_pte)
 {
+#ifdef CONFIG_ARM64_HW_AFDBM
+	pteval_t old_pteval, new_pteval, pteval;
+
+	if (!kvm_hw_dbm_enabled() || pte_none(*ptep) ||
+	    !kvm_s2pte_readonly(&new_pte)) {
+		WRITE_ONCE(*ptep, new_pte);
+		dsb(ishst);
+		return false;
+	}
+
+	new_pteval = pte_val(new_pte);
+	pteval = READ_ONCE(pte_val(*ptep));
+	do {
+		old_pteval = pteval;
+		pteval = cmpxchg_relaxed(&pte_val(*ptep), old_pteval, new_pteval);
+	} while (pteval != old_pteval);
+
+	return !kvm_s2pte_readonly((pte_t *)&pteval);
+#else
 	WRITE_ONCE(*ptep, new_pte);
 	dsb(ishst);
+	return false;
+#endif
 }
 
 static inline void kvm_set_pmd(pmd_t *pmdp, pmd_t new_pmd)
@@ -249,7 +273,10 @@ static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
 		if (!pte_none(*pte)) {
 			pte_t old_pte = *pte;
 
-			kvm_set_pte(pte, __pte(0));
+			if (kvm_set_pte(pte, __pte(0))) {
+				mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+			}
+
 			kvm_tlb_flush_vmid_ipa(kvm, addr);
 
 			/* No need to invalidate the cache for device mappings */
@@ -1291,13 +1318,17 @@ static int stage2_set_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
 		if (pte_val(old_pte) == pte_val(*new_pte))
 			return 0;
 
-		kvm_set_pte(pte, __pte(0));
+		if (kvm_set_pte(pte, __pte(0))) {
+			mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+		}
 		kvm_tlb_flush_vmid_ipa(kvm, addr);
 	} else {
 		get_page(virt_to_page(pte));
 	}
 
-	kvm_set_pte(pte, *new_pte);
+	if (kvm_set_pte(pte, *new_pte)) {
+		mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+	}
 	return 0;
 }
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
