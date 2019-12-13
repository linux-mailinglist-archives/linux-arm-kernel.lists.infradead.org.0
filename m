Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF6211EA54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:30:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQ6JHwk9k+Z2/k2aa/3+TFHHPuCW52VDUSax24JOKH8=; b=HqDRVUgKrLiZ2c
	zmxzX8siDaHXBo3n6exp0HezDRjMGsWL0vmhh4pSO98uA4LzGb31mnw2Tq14YG3tMgFjDZKFMIchh
	bP3U0cbwGV6mS60C5uIA979YhPZ9tmIb/hnwyjFegqVO4o9HN+YMT5X9ZrKKys9wdyCfGHa01E9BK
	Yt9OaBy3d1czIv300euJLU1R8udo7fdlWRjnN+DtqNdnVMxlRvjWnjlRb2iKyznp+LTXHBZvpx1+M
	C4qhWGOK8GB52Z2Jgt5UAZLTqwhdB1MhHW2tg2+52CsvmFaS+sQu6IvCozhyQLOxG6KKMgdJWl+E8
	uR/4g63Djo9fC9aBvMgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpiB-0003d2-TS; Fri, 13 Dec 2019 18:30:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifphi-0003TI-6h
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WAuT2wlA5NSeznqmnfgHqGVJ1sG0Nwiv/gcz3aYIWp0=; b=QvRh8+gGm2G5cqCeU79CSvjIUO
 UHTyZL1bCYntLJFqhgXx+fnhuTznA92ag7IA/aP6VHOpU3oGHStd2wOZzcKMIRmciCvoQQu4xSgaP
 Ix5zQRtCnFVTaD9lAm42V3Dj8GZmPKzdN8oyEqLcUtw1HdYztmOxeDN3LMCLjE55m/uDz7MNcENNd
 SxekflnFzGCtzY63/BWbPh+X0YBFuRDTZhAFHqXtXps511HjMcItsWXcGmdgC3Uf5PD+7JRytxHly
 INmNbHflh32ZtYB2+zIhLLNweBwXJhSZ+c8/M5gHsX+v8v5GAxUq8p0A3jJvvrTG7HKiI6hKQFyBE
 JIlF1ZUw==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpi8-0006OK-OD
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:30:46 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdH-0001O7-7w; Fri, 13 Dec 2019 19:25:43 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 4/7] KVM: arm/arm64: Condition TLB maintenance on unmap with a
 flag
Date: Fri, 13 Dec 2019 18:25:00 +0000
Message-Id: <20191213182503.14460-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213182503.14460-1-maz@kernel.org>
References: <20191213182503.14460-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, jhogan@kernel.org, paulus@ozlabs.org,
 pbonzini@redhat.com, rkrcmar@redhat.com, sean.j.christopherson@intel.com,
 vkuznets@redhat.com, wanpengli@tencent.com, jmattson@google.com,
 joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-mips@vger.kernel.org,
 kvm-ppc@vger.kernel.org, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_183044_829884_BA98B888 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (1.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm-ppc@vger.kernel.org, Wanpeng Li <wanpengli@tencent.com>,
 kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Hogan <jhogan@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 linux-mips@vger.kernel.org,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Paul Mackerras <paulus@ozlabs.org>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Paolo Bonzini <pbonzini@redhat.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Jim Mattson <jmattson@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow the elision of TLB maintenance operations
on unmap, add a new flag (KVM_UNMAP_ELIDE_TBLI) that a caller
can use to indicate that TLB invalidation is not required.

Nobody is passing this flag yet, hence no functional change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index ebf8c87cc007..4399866842dc 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -37,6 +37,7 @@ static unsigned long io_map_base;
 
 /* Flags controlling S2 unmapping */
 #define KVM_UNMAP_ELIDE_CMO		(1UL << 0)
+#define KVM_UNMAP_ELIDE_TBLI		(1UL << 1)
 
 #define KVM_S2PTE_FLAG_IS_IOMAP		(1UL << 0)
 #define KVM_S2_FLAG_LOGGING_ACTIVE	(1UL << 1)
@@ -160,7 +161,8 @@ static void clear_stage2_pgd_entry(struct kvm *kvm, pgd_t *pgd, phys_addr_t addr
 {
 	pud_t *pud_table __maybe_unused = stage2_pud_offset(kvm, pgd, 0UL);
 	stage2_pgd_clear(kvm, pgd);
-	kvm_tlb_flush_vmid_ipa(kvm, addr);
+	if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+		kvm_tlb_flush_vmid_ipa(kvm, addr);
 	stage2_pud_free(kvm, pud_table);
 	put_page(virt_to_page(pgd));
 }
@@ -171,7 +173,8 @@ static void clear_stage2_pud_entry(struct kvm *kvm, pud_t *pud, phys_addr_t addr
 	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
 	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
 	stage2_pud_clear(kvm, pud);
-	kvm_tlb_flush_vmid_ipa(kvm, addr);
+	if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+		kvm_tlb_flush_vmid_ipa(kvm, addr);
 	stage2_pmd_free(kvm, pmd_table);
 	put_page(virt_to_page(pud));
 }
@@ -182,7 +185,8 @@ static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr
 	pte_t *pte_table = pte_offset_kernel(pmd, 0);
 	VM_BUG_ON(pmd_thp_or_huge(*pmd));
 	pmd_clear(pmd);
-	kvm_tlb_flush_vmid_ipa(kvm, addr);
+	if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+		kvm_tlb_flush_vmid_ipa(kvm, addr);
 	free_page((unsigned long)pte_table);
 	put_page(virt_to_page(pmd));
 }
@@ -253,7 +257,8 @@ static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
 			pte_t old_pte = *pte;
 
 			kvm_set_pte(pte, __pte(0));
-			kvm_tlb_flush_vmid_ipa(kvm, addr);
+			if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+				kvm_tlb_flush_vmid_ipa(kvm, addr);
 
 			/* No need to invalidate the cache for device mappings */
 			if (!kvm_is_device_pfn(pte_pfn(old_pte)) &&
@@ -283,7 +288,8 @@ static void unmap_stage2_pmds(struct kvm *kvm, pud_t *pud,
 				pmd_t old_pmd = *pmd;
 
 				pmd_clear(pmd);
-				kvm_tlb_flush_vmid_ipa(kvm, addr);
+				if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+					kvm_tlb_flush_vmid_ipa(kvm, addr);
 
 				if (!(flags & KVM_UNMAP_ELIDE_CMO))
 					kvm_flush_dcache_pmd(old_pmd);
@@ -314,7 +320,8 @@ static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
 				pud_t old_pud = *pud;
 
 				stage2_pud_clear(kvm, pud);
-				kvm_tlb_flush_vmid_ipa(kvm, addr);
+				if (!(flags & KVM_UNMAP_ELIDE_TBLI))
+					kvm_tlb_flush_vmid_ipa(kvm, addr);
 				if (!(flags & KVM_UNMAP_ELIDE_CMO))
 					kvm_flush_dcache_pud(old_pud);
 				put_page(virt_to_page(pud));
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
