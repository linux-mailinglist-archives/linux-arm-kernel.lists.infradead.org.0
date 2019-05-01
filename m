Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F2E10691
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvEMj06+SgxCYsrWJ0+e89YoVHRMlzjgdEAdDhCr7kQ=; b=HIwZN8rjvqVdrQ
	jD96BjrD9WtD04PQMSmLg467kKNWbvdS5VCwr4+ral2d83otXPS856vZFvIBIrWV8nxYFPTnad/B1
	AT+mm6VMK2z8cdqqMGi8bWuTNR73WgTQpH8aFrzXyeyLrPXQh7Ndi8qllqzUJ0p2XPFV4axGZxZSd
	ErMZ4ErXQURm7OtsO8i/iNjynYRljTRvT/O1nLrxNsC9v+Xcc0Nbe5rt6C4iyAoTt4y1uZxQjxVR5
	hM3/Xx608vCQZ1a/F6UHnM/9ee9AHpJvYb/Nd8ezB2L53PyJJJsqDV559Nd0ueB4328bHYlpk790M
	V6ZLeQ9dEtj6WYuzrzAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlrJ-0005v8-G7; Wed, 01 May 2019 09:49:01 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlql-0005XE-QL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:29 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D711E68B5D98E459F02A;
 Wed,  1 May 2019 17:48:19 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:10 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [PATCH 4/5] KVM: arm/arm64: Add support for creating PTE contiguous
 hugepages at stage2
Date: Wed, 1 May 2019 09:44:26 +0000
Message-ID: <1556703867-22396-5-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
References: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024828_441997_AE5F7E0E 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: julien.thierry@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, christoffer.dall@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend the stage2 fault handling to map in PTE contiguous hugepages first.
With this patch, we now support additional following page size at stage2:

                CONT PTE
                --------
 4K granule:      64K
16K granule:       2M
64K granule:       2M

The PMD contiguous huge mapping is still not supported yet and will be
simply fall back to a PTE mapping.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/mmu.c | 76 +++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 75 insertions(+), 1 deletion(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 36c863f..fdd6314 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1104,6 +1104,27 @@ static pmd_t *stage2_get_pmd(struct kvm *kvm, struct kvm_mmu_memory_cache *cache
 	return stage2_pmd_offset(kvm, pud, addr);
 }
 
+static pte_t *stage2_get_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
+			     phys_addr_t addr)
+{
+	pmd_t *pmd;
+	pte_t *pte;
+
+	pmd = stage2_get_pmd(kvm, cache, addr);
+	if (!pmd || pmd_thp_or_huge(*pmd))
+		return NULL;
+
+	if (pmd_none(*pmd)) {
+		if (!cache)
+			return NULL;
+		pte = mmu_memory_cache_alloc(cache);
+		kvm_pmd_populate(pmd, pte);
+		get_page(virt_to_page(pmd));
+	}
+
+	return pte_offset_kernel(pmd, addr);
+}
+
 static int stage2_set_pmd_huge(struct kvm *kvm, struct kvm_mmu_memory_cache
 			       *cache, phys_addr_t addr, const pmd_t *new_pmd)
 {
@@ -1270,6 +1291,54 @@ static bool stage2_is_exec(struct kvm *kvm, phys_addr_t addr)
 		return kvm_s2pte_exec(ptep);
 }
 
+/* This code is borrowed from arch/arm64/mm/hugetlbpage.c */
+static inline pgprot_t pte_pgprot(pte_t pte)
+{
+	unsigned long pfn = pte_pfn(pte);
+
+	return __pgprot(pte_val(pfn_pte(pfn, __pgprot(0))) ^ pte_val(pte));
+}
+
+static int stage2_set_cont_ptes(struct kvm *kvm, struct kvm_mmu_memory_cache
+				*cache, phys_addr_t addr, const pte_t *new_pte)
+{
+	pte_t *pte, old_pte;
+	unsigned long pfn, dpfn;
+	int i;
+	pgprot_t hugeprot;
+
+	/*
+	 * Make sure we start manipulating the first pte
+	 * within CONT_PTES ptes.
+	 */
+	addr &= CONT_PTE_MASK;
+	pfn = pte_pfn(*new_pte);
+	dpfn = PAGE_SIZE >> PAGE_SHIFT;
+	hugeprot = pte_pgprot(*new_pte);
+
+	pte = stage2_get_pte(kvm, cache, addr);
+	VM_BUG_ON(!pte);
+
+	old_pte = *pte;
+
+	/* Skip page table update if there is no change */
+	if (pte_val(old_pte) == pte_val(*new_pte))
+		return 0;
+
+	for (i = 0; i < CONT_PTES; i++, pte++, addr += PAGE_SIZE, pfn += dpfn) {
+		if (pte_present(old_pte)) {
+			kvm_set_pte(pte, __pte(0));
+			kvm_tlb_flush_vmid_ipa(kvm, addr);
+		} else {
+			get_page(virt_to_page(pte));
+		}
+
+		kvm_set_pte(pte, kvm_pfn_pte(pfn, hugeprot));
+	}
+
+	return 0;
+}
+
 static int stage2_set_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
 			  phys_addr_t addr, const pte_t *new_pte,
 			  unsigned long flags)
@@ -1824,7 +1893,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	 * As for PUD huge maps, we must make sure that we have at least
 	 * 3 levels, i.e, PMD is not folded.
 	 */
-	if (vma_pagesize == PMD_SIZE ||
+	if (vma_pagesize == CONT_PTE_SIZE || vma_pagesize == PMD_SIZE ||
 	    (vma_pagesize == PUD_SIZE && kvm_stage2_has_pmd(kvm)))
 		gfn = (fault_ipa & huge_page_mask(hstate_vma(vma))) >> PAGE_SHIFT;
 	up_read(&current->mm->mmap_sem);
@@ -1918,6 +1987,11 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 						 needs_exec, false);
 
 		ret = stage2_set_pmd_huge(kvm, memcache, fault_ipa, &new_pmd);
+	} else if (vma_pagesize == CONT_PTE_SIZE) {
+		pte_t new_pte = stage2_build_pte(pfn, mem_type, writable,
+						 needs_exec, true);
+
+		ret = stage2_set_cont_ptes(kvm, memcache, fault_ipa, &new_pte);
 	} else {
 		pte_t new_pte = stage2_build_pte(pfn, mem_type, writable,
 						 needs_exec, false);
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
