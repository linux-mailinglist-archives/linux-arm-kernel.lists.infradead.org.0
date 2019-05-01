Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461F310697
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mc2dNs4YoGZ42fATh1sXssDn3JXV9o5ZIno/g5T1BTw=; b=TdLaNDbI+Co5cF
	t6eTfcjOmt/3ljybyyiTpyAYQwmdq8n6grgMntfwfhUzJ8Cmo8pvJBAO4hIWjqcT1qe+gjV5vDEJW
	SPH/fmzJ0IJozLdR4/vT3ZZ4HuiVlIs/IAXkT8o17TJfTrpfCH6hWbe/9bLj3GRhQ/vyV2Ha1mlG5
	r2nSlSvOayI+o4nHAnU6kJ+kUjzKEZniXCz/rH8nKxKC+xhmLt/1iI3YN1QcWgF3nHW1pV5I1szEy
	SISttZby7ZrVMtdjIMl0oVUucG7Iv3l46oe8VbZS9BOxNl//HdHgBLRZ3gpVvD7TGpvHj1lMAxari
	V8izmKsKzNfCavB8w/fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlrm-0006TO-Nc; Wed, 01 May 2019 09:49:30 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlqt-0005XC-Sn
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:42 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C6025F73C997A760BED0;
 Wed,  1 May 2019 17:48:19 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:10 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [PATCH 5/5] KVM: arm/arm64: Add support for creating PMD contiguous
 hugepages at stage2
Date: Wed, 1 May 2019 09:44:27 +0000
Message-ID: <1556703867-22396-6-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
References: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024837_121855_2E636FF6 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

With this patch, we now support PMD contiguous hugepages at stage2, with
following additional page size at stage2:

                CONT PMD
                --------
 4K granule:      32M
16K granule:       1G
64K granule:      16G

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 virt/kvm/arm/mmu.c | 66 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index fdd6314..7173589 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1125,6 +1125,66 @@ static pte_t *stage2_get_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache
 	return pte_offset_kernel(pmd, addr);
 }
 
+static inline pgprot_t pmd_pgprot(pmd_t pmd)
+{
+	unsigned long pfn = pmd_pfn(pmd);
+
+	return __pgprot(pmd_val(pfn_pmd(pfn, __pgprot(0))) ^ pmd_val(pmd));
+}
+
+static int stage2_set_cont_pmds(struct kvm *kvm, struct kvm_mmu_memory_cache
+				*cache, phys_addr_t addr, const pmd_t *new_pmd)
+{
+	pmd_t *pmd, old_pmd;
+	unsigned long pfn, dpfn;
+	int i;
+	pgprot_t hugeprot;
+	phys_addr_t baddr;
+
+	/* Start with the first pmd. */
+	addr &= CONT_PMD_MASK;
+	pfn = pmd_pfn(*new_pmd);
+	dpfn = PMD_SIZE >> PAGE_SHIFT;
+	hugeprot = pmd_pgprot(*new_pmd);
+
+retry:
+	pmd = stage2_get_pmd(kvm, cache, addr);
+	VM_BUG_ON(!pmd);
+
+	old_pmd = *pmd;
+
+	/* Skip page table update if there is no change */
+	if (pmd_val(old_pmd) == pmd_val(*new_pmd))
+		return 0;
+
+	/*
+	 * baddr and the following loop is for only one scenario:
+	 * logging cancel ... Can we do it better?
+	 */
+	baddr = addr;
+	for (i = 0; i < CONT_PMDS; i++, pmd++, baddr += PMD_SIZE) {
+		if (pmd_present(*pmd) && !pmd_thp_or_huge(*pmd)) {
+			unmap_stage2_range(kvm, baddr, S2_PMD_SIZE);
+			goto retry;
+		}
+	}
+
+	pmd = stage2_get_pmd(kvm, cache, addr);
+
+	for (i = 0; i < CONT_PMDS; i++, pmd++, addr += PMD_SIZE, pfn += dpfn) {
+		if (pmd_present(old_pmd)) {
+			pmd_clear(pmd);
+			kvm_tlb_flush_vmid_ipa(kvm, addr);
+		} else {
+			get_page(virt_to_page(pmd));
+		}
+
+		kvm_set_pmd(pmd, pfn_pmd(pfn, hugeprot));
+	}
+
+	return 0;
+}
+
 static int stage2_set_pmd_huge(struct kvm *kvm, struct kvm_mmu_memory_cache
 			       *cache, phys_addr_t addr, const pmd_t *new_pmd)
 {
@@ -1894,6 +1954,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	 * 3 levels, i.e, PMD is not folded.
 	 */
 	if (vma_pagesize == CONT_PTE_SIZE || vma_pagesize == PMD_SIZE ||
+	    vma_pagesize == CONT_PMD_SIZE ||
 	    (vma_pagesize == PUD_SIZE && kvm_stage2_has_pmd(kvm)))
 		gfn = (fault_ipa & huge_page_mask(hstate_vma(vma))) >> PAGE_SHIFT;
 	up_read(&current->mm->mmap_sem);
@@ -1982,6 +2043,11 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 						 needs_exec);
 
 		ret = stage2_set_pud_huge(kvm, memcache, fault_ipa, &new_pud);
+	} else if (vma_pagesize == CONT_PMD_SIZE) {
+		pmd_t new_pmd = stage2_build_pmd(pfn, mem_type, writable,
+						 needs_exec, true);
+
+		ret = stage2_set_cont_pmds(kvm, memcache, fault_ipa, &new_pmd);
 	} else if (vma_pagesize == PMD_SIZE) {
 		pmd_t new_pmd = stage2_build_pmd(pfn, mem_type, writable,
 						 needs_exec, false);
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
