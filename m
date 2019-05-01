Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084DE10694
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 11:49:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MAZYc/wVmtrwsqoqiwn+iZGnk6b1PyG5CdBXJZaL68k=; b=o4FufKhxaKowpb
	JTPAa/SUxMB2duDstJetWjdmn7F4UFFIWXTs7nVyf3h+H/309tqFJogLQg3EC3u+Z57kF4M3EjEHv
	l6ohFfp8iUf08FAgmt40i4lahBuZ7vQkCATrUuVfYjT5zGRDr+5tKo+iGIxsJivJvPAo1P9dw5tvM
	CG+yppj2iQ178/B08sqBy/GUpI3FpVOFBnOdRB9kMSRihUHtIgnhLBZ6yoV45RV2gPo8iZzlxTLED
	VKpBXC9+CWHmItSeZr05o2jSMUgc35uR+9UjZWLDMbZdtr7LdGRsubuoiHMQAysq7316j/l7+nBJH
	5AUn24DmzFEFB7VsX0Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLlrR-0006EY-EL; Wed, 01 May 2019 09:49:09 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLlqo-0005XD-L1
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 09:48:32 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CEDEF9F163E2777B5360;
 Wed,  1 May 2019 17:48:19 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 1 May 2019 17:48:09 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <linux-kernel@vger.kernel.org>, <kvm@vger.kernel.org>
Subject: [PATCH 3/5] KVM: arm/arm64: Support dirty page tracking for
 contiguous hugepages
Date: Wed, 1 May 2019 09:44:25 +0000
Message-ID: <1556703867-22396-4-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
In-Reply-To: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
References: <1556703867-22396-1-git-send-email-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_024830_882317_841BAB6B 
X-CRM114-Status: GOOD (  12.68  )
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

When logging is enabled, we should keep tracking of normal size pages.
If the memslot is backed by contiguous hugepages, we should dissolve
the contiguous hugepages - clear the whole contiguous range and flush
corresponding TLB entry.

Move kvm_set_{pte,pmd} to the front of stage2_dissolve_cont_{pte,pmd}s
to avoid one more declaration.

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 arch/arm/include/asm/pgtable-hwdef.h |  8 ++++
 virt/kvm/arm/mmu.c                   | 76 ++++++++++++++++++++++++++++++------
 2 files changed, 72 insertions(+), 12 deletions(-)

diff --git a/arch/arm/include/asm/pgtable-hwdef.h b/arch/arm/include/asm/pgtable-hwdef.h
index 8426229..41f4633 100644
--- a/arch/arm/include/asm/pgtable-hwdef.h
+++ b/arch/arm/include/asm/pgtable-hwdef.h
@@ -16,4 +16,12 @@
 #include <asm/pgtable-2level-hwdef.h>
 #endif
 
+/* dummy definition */
+#define CONT_PTES		(0)
+#define CONT_PTE_SIZE		(0)
+#define CONT_PTE_MASK		(0)
+#define CONT_PMDS		(0)
+#define CONT_PMD_SIZE		(0)
+#define CONT_PMD_MASK		(0)
+
 #endif
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index cf8b035..36c863f 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -96,6 +96,58 @@ static bool kvm_is_device_pfn(unsigned long pfn)
 	return !pfn_valid(pfn);
 }
 
+static inline void kvm_set_pte(pte_t *ptep, pte_t new_pte)
+{
+	WRITE_ONCE(*ptep, new_pte);
+	dsb(ishst);
+}
+
+static inline void kvm_set_pmd(pmd_t *pmdp, pmd_t new_pmd)
+{
+	WRITE_ONCE(*pmdp, new_pmd);
+	dsb(ishst);
+}
+
+static void stage2_dissolve_cont_ptes(struct kvm *kvm, phys_addr_t addr,
+				      pte_t *pte)
+{
+	phys_addr_t addrp;
+	pte_t *ptep;
+	int i;
+
+	if (!kvm_s2pte_cont(*pte))
+		return;
+
+	/* Start with the first pte */
+	addrp = addr & CONT_PTE_MASK;
+	ptep = pte - (addr - addrp) / PAGE_SIZE;
+
+	for (i = 0; i < CONT_PTES; i++, ptep++, addrp += PAGE_SIZE) {
+		kvm_set_pte(ptep, __pte(0));
+		kvm_tlb_flush_vmid_ipa(kvm, addrp);
+		put_page(virt_to_page(ptep));
+	}
+}
+
+static void stage2_dissolve_cont_pmds(struct kvm *kvm, phys_addr_t addr,
+				      pmd_t *pmd)
+{
+	phys_addr_t addrp;
+	pmd_t *pmdp;
+	int i;
+
+	/* Start with the first pmd */
+	addr &= PMD_MASK;
+	addrp = addr & CONT_PMD_MASK;
+	pmdp = pmd - (addr - addrp) / PMD_SIZE;
+
+	for (i = 0; i < CONT_PMDS; i++, pmdp++, addrp += PMD_SIZE) {
+		pmd_clear(pmdp);
+		kvm_tlb_flush_vmid_ipa(kvm, addrp);
+		put_page(virt_to_page(pmdp));
+	}
+}
+
 /**
  * stage2_dissolve_pmd() - clear and flush huge PMD entry
  * @kvm:	pointer to kvm structure.
@@ -109,6 +161,11 @@ static void stage2_dissolve_pmd(struct kvm *kvm, phys_addr_t addr, pmd_t *pmd)
 	if (!pmd_thp_or_huge(*pmd))
 		return;
 
+	if (kvm_s2pmd_cont(*pmd)) {
+		stage2_dissolve_cont_pmds(kvm, addr, pmd);
+		return;
+	}
+
 	pmd_clear(pmd);
 	kvm_tlb_flush_vmid_ipa(kvm, addr);
 	put_page(virt_to_page(pmd));
@@ -193,18 +250,6 @@ static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr
 	put_page(virt_to_page(pmd));
 }
 
-static inline void kvm_set_pte(pte_t *ptep, pte_t new_pte)
-{
-	WRITE_ONCE(*ptep, new_pte);
-	dsb(ishst);
-}
-
-static inline void kvm_set_pmd(pmd_t *pmdp, pmd_t new_pmd)
-{
-	WRITE_ONCE(*pmdp, new_pmd);
-	dsb(ishst);
-}
-
 static inline void kvm_pmd_populate(pmd_t *pmdp, pte_t *ptep)
 {
 	kvm_set_pmd(pmdp, kvm_mk_pmd(ptep));
@@ -1289,6 +1334,13 @@ static int stage2_set_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
 
 	pte = pte_offset_kernel(pmd, addr);
 
+	/*
+	 * While dirty page logging - dissolve contiguous PTE pages, then
+	 * continue on to allocate page.
+	 */
+	if (logging_active)
+		stage2_dissolve_cont_ptes(kvm, addr, pte);
+
 	if (iomap && pte_present(*pte))
 		return -EFAULT;
 
-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
