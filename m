Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CD51C8B1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6OTPo2DQh640egtZRper6sRDqbeoqBPA1hGeAHePFA=; b=gtKWo+qYuZjjiw
	2hJEtNFtrfCoFCw0imftXV3lplEP33H+5N0xiOHbv+yLS7PuJNYDl0iGvDtMjOhgsJXVS+fyJkSwM
	EtoVVdmAQP0H/bzdu5q0Tor14AW6MrixH3Iu8WwKItM/g9qO4810NJztV/48o5fdfpe/nf2DomHaJ
	tOfEQtUhD36ZUiMsLxTJRibzw5K+pvbiGvzvXsdsAKegVSQYCetBCgwnAZdFFAGL0vL8RFRuD7D4y
	RDnap6iztMaoAVmj9xwEsHyNZm8DDxh/2CRBdINDWO5DnEVI2i67reXoFwkkC0ZwN+Z33wcgT0IJe
	KLsBoQ/6gIfjyxdX5Abg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfn4-0003fb-4Z; Thu, 07 May 2020 12:38:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWflW-00028B-Nx
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:36:42 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 98BE86ECF0636A7CEB95;
 Thu,  7 May 2020 20:36:31 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:36:24 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>, <suzuki.poulose@arm.com>
Subject: [PATCH resend 2/2] KVM: arm64: Unify handling THP backed host memory
Date: Thu, 7 May 2020 20:35:46 +0800
Message-ID: <20200507123546.1875-3-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200507123546.1875-1-yuzenghui@huawei.com>
References: <20200507123546.1875-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_053638_951330_606AE9FD 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvm@vger.kernel.org, maz@kernel.org, christoffer.dall@arm.com,
 linux-kernel@vger.kernel.org, eric.auger@redhat.com, zhengxiang9@huawei.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com,
 Zenghui Yu <yuzenghui@huawei.com>, wanghaibin.wang@huawei.com,
 linux-arm-kernel@lists.infradead.org, amurray@thegoodpenguin.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

We support mapping host memory backed by PMD transparent hugepages
at stage2 as huge pages. However the checks are now spread across
two different places. Let us unify the handling of the THPs to
keep the code cleaner (and future proof for PUD THP support).
This patch moves transparent_hugepage_adjust() closer to the caller
to avoid a forward declaration for fault_supports_stage2_huge_mappings().

Also, since we already handle the case where the host VA and the guest
PA may not be aligned, the explicit VM_BUG_ON() is not required.

Cc: Marc Zyngier <maz@kernel.org>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/mmu.c | 115 +++++++++++++++++++++++----------------------
 1 file changed, 60 insertions(+), 55 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 557f36866d1c..93a770fd2b5e 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1372,47 +1372,6 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 	return ret;
 }
 
-static bool transparent_hugepage_adjust(kvm_pfn_t *pfnp, phys_addr_t *ipap)
-{
-	kvm_pfn_t pfn = *pfnp;
-	gfn_t gfn = *ipap >> PAGE_SHIFT;
-
-	if (kvm_is_transparent_hugepage(pfn)) {
-		unsigned long mask;
-		/*
-		 * The address we faulted on is backed by a transparent huge
-		 * page.  However, because we map the compound huge page and
-		 * not the individual tail page, we need to transfer the
-		 * refcount to the head page.  We have to be careful that the
-		 * THP doesn't start to split while we are adjusting the
-		 * refcounts.
-		 *
-		 * We are sure this doesn't happen, because mmu_notifier_retry
-		 * was successful and we are holding the mmu_lock, so if this
-		 * THP is trying to split, it will be blocked in the mmu
-		 * notifier before touching any of the pages, specifically
-		 * before being able to call __split_huge_page_refcount().
-		 *
-		 * We can therefore safely transfer the refcount from PG_tail
-		 * to PG_head and switch the pfn from a tail page to the head
-		 * page accordingly.
-		 */
-		mask = PTRS_PER_PMD - 1;
-		VM_BUG_ON((gfn & mask) != (pfn & mask));
-		if (pfn & mask) {
-			*ipap &= PMD_MASK;
-			kvm_release_pfn_clean(pfn);
-			pfn &= ~mask;
-			kvm_get_pfn(pfn);
-			*pfnp = pfn;
-		}
-
-		return true;
-	}
-
-	return false;
-}
-
 /**
  * stage2_wp_ptes - write protect PMD range
  * @pmd:	pointer to pmd entry
@@ -1660,6 +1619,59 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
 	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
 }
 
+/*
+ * Check if the given hva is backed by a transparent huge page (THP) and
+ * whether it can be mapped using block mapping in stage2. If so, adjust
+ * the stage2 PFN and IPA accordingly. Only PMD_SIZE THPs are currently
+ * supported. This will need to be updated to support other THP sizes.
+ *
+ * Returns the size of the mapping.
+ */
+static unsigned long
+transparent_hugepage_adjust(struct kvm_memory_slot *memslot,
+			    unsigned long hva, kvm_pfn_t *pfnp,
+			    phys_addr_t *ipap)
+{
+	kvm_pfn_t pfn = *pfnp;
+
+	/*
+	 * Make sure the adjustment is done only for THP pages. Also make
+	 * sure that the HVA and IPA are sufficiently aligned and that the
+	 * block map is contained within the memslot.
+	 */
+	if (kvm_is_transparent_hugepage(pfn) &&
+	    fault_supports_stage2_huge_mapping(memslot, hva, PMD_SIZE)) {
+		/*
+		 * The address we faulted on is backed by a transparent huge
+		 * page.  However, because we map the compound huge page and
+		 * not the individual tail page, we need to transfer the
+		 * refcount to the head page.  We have to be careful that the
+		 * THP doesn't start to split while we are adjusting the
+		 * refcounts.
+		 *
+		 * We are sure this doesn't happen, because mmu_notifier_retry
+		 * was successful and we are holding the mmu_lock, so if this
+		 * THP is trying to split, it will be blocked in the mmu
+		 * notifier before touching any of the pages, specifically
+		 * before being able to call __split_huge_page_refcount().
+		 *
+		 * We can therefore safely transfer the refcount from PG_tail
+		 * to PG_head and switch the pfn from a tail page to the head
+		 * page accordingly.
+		 */
+		*ipap &= PMD_MASK;
+		kvm_release_pfn_clean(pfn);
+		pfn &= ~(PTRS_PER_PMD - 1);
+		kvm_get_pfn(pfn);
+		*pfnp = pfn;
+
+		return PMD_SIZE;
+	}
+
+	/* Use page mapping if we cannot use block mapping. */
+	return PAGE_SIZE;
+}
+
 static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			  struct kvm_memory_slot *memslot, unsigned long hva,
 			  unsigned long fault_status)
@@ -1773,20 +1785,13 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	if (mmu_notifier_retry(kvm, mmu_seq))
 		goto out_unlock;
 
-	if (vma_pagesize == PAGE_SIZE && !force_pte) {
-		/*
-		 * Only PMD_SIZE transparent hugepages(THP) are
-		 * currently supported. This code will need to be
-		 * updated to support other THP sizes.
-		 *
-		 * Make sure the host VA and the guest IPA are sufficiently
-		 * aligned and that the block is contained within the memslot.
-		 */
-		if (fault_supports_stage2_huge_mapping(memslot, hva, PMD_SIZE) &&
-		    transparent_hugepage_adjust(&pfn, &fault_ipa))
-			vma_pagesize = PMD_SIZE;
-	}
-
+	/*
+	 * If we are not forced to use page mapping, check if we are
+	 * backed by a THP and thus use block mapping if possible.
+	 */
+	if (vma_pagesize == PAGE_SIZE && !force_pte)
+		vma_pagesize = transparent_hugepage_adjust(memslot, hva,
+							   &pfn, &fault_ipa);
 	if (writable)
 		kvm_set_pfn_dirty(pfn);
 
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
