Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C8811EA55
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:31:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGIPIvD9hiR234eVBETFFVFLD4me9KAT2XP9cJhgyms=; b=O3TvsIKD87AOUc
	7bCmUqA4KFp8U85WsE0WJDF+/qaCNMAG2rJzFBpWV4Wz7ADsR4GtVrd2UlPATcGi7Rwxm5030zk+0
	YXt4nll4u4r/XoKyWcBQmf2JPRUF4JwmoVqb+4QYzSP98fxc7r2XQ8vNaiS+cPVbBj8bD3z0TMCdf
	jHkQs+iPbFwhvpsMVLB/rPmBGxi6a2lWygcLXRITB06Ei0IR/Ei24BibrUpWzNtrdEVzQW0BajZI8
	MpHcrNFBbR3c99kyc85cmS8rDTSLoQoQH7urowRkChcsGd4rQB6DK3PJq/1O7npfMmxKg+gYOTIk4
	nXXbhyhdM0FLzg8z9xBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpiR-00042Q-DQ; Fri, 13 Dec 2019 18:31:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifphi-0003TL-IW
 for linux-arm-kernel@bombadil.infradead.org; Fri, 13 Dec 2019 18:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SERy6jLYtPQtnCZQig3rTtkjMBE/u+4PdMy05T5rTdY=; b=SyA2Knbc5LCZnjsDfF0XKRpBUR
 qm3FnV2px2gok4jFcbIYCK2Pug7LzJ1re9XXUjLH7hn+QWqeetJ68A8KC/XIMcJZTOt2WhBUV1wHi
 4OqijZdolYREvdRrtTHpRLpy9mGrI/yx/fc3+YxB7V8IAtfrIskJFEuAR1LIF3dPcGsQuBVUgEnsL
 6N5xAMMRjKNnaXghioH55uKiwLz08gTeZLhY/Z0OeEk8evthYU3L7m1lwIDTwH2QZe07Afl63e7Ci
 cyZVd6euYDenfDlzjS2klCQqoe+SIYt9agfv1xYeMkm96IH2SnbJticzMHZZ4K+kYXmhoM8ayu2/F
 nHj6/1hw==;
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpi8-0006OL-O2
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 18:30:47 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ifpdF-0001O7-KH; Fri, 13 Dec 2019 19:25:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: 
Subject: [PATCH 2/7] KVM: arm/arm64: Pass flags along Stage-2 unmapping
 functions
Date: Fri, 13 Dec 2019 18:24:58 +0000
Message-Id: <20191213182503.14460-3-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20191213_183044_829084_88F3C0F9 
X-CRM114-Status: GOOD (  12.78  )
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

Pass a set of flags to all Stage-2 unmapping functions.
The only value passed for now is zero, and it is not evaluated yet.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/mmu.c | 47 ++++++++++++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 078e10c5650e..0fed7c19c6d5 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -152,7 +152,8 @@ static void *mmu_memory_cache_alloc(struct kvm_mmu_memory_cache *mc)
 	return p;
 }
 
-static void clear_stage2_pgd_entry(struct kvm *kvm, pgd_t *pgd, phys_addr_t addr)
+static void clear_stage2_pgd_entry(struct kvm *kvm, pgd_t *pgd, phys_addr_t addr,
+				   unsigned long flags)
 {
 	pud_t *pud_table __maybe_unused = stage2_pud_offset(kvm, pgd, 0UL);
 	stage2_pgd_clear(kvm, pgd);
@@ -161,7 +162,8 @@ static void clear_stage2_pgd_entry(struct kvm *kvm, pgd_t *pgd, phys_addr_t addr
 	put_page(virt_to_page(pgd));
 }
 
-static void clear_stage2_pud_entry(struct kvm *kvm, pud_t *pud, phys_addr_t addr)
+static void clear_stage2_pud_entry(struct kvm *kvm, pud_t *pud, phys_addr_t addr,
+				   unsigned long flags)
 {
 	pmd_t *pmd_table __maybe_unused = stage2_pmd_offset(kvm, pud, 0);
 	VM_BUG_ON(stage2_pud_huge(kvm, *pud));
@@ -171,7 +173,8 @@ static void clear_stage2_pud_entry(struct kvm *kvm, pud_t *pud, phys_addr_t addr
 	put_page(virt_to_page(pud));
 }
 
-static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr)
+static void clear_stage2_pmd_entry(struct kvm *kvm, pmd_t *pmd, phys_addr_t addr,
+				   unsigned long flags)
 {
 	pte_t *pte_table = pte_offset_kernel(pmd, 0);
 	VM_BUG_ON(pmd_thp_or_huge(*pmd));
@@ -235,7 +238,8 @@ static inline void kvm_pgd_populate(pgd_t *pgdp, pud_t *pudp)
  * does.
  */
 static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
-		       phys_addr_t addr, phys_addr_t end)
+			      phys_addr_t addr, phys_addr_t end,
+			      unsigned long flags)
 {
 	phys_addr_t start_addr = addr;
 	pte_t *pte, *start_pte;
@@ -257,11 +261,12 @@ static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
 	} while (pte++, addr += PAGE_SIZE, addr != end);
 
 	if (stage2_pte_table_empty(kvm, start_pte))
-		clear_stage2_pmd_entry(kvm, pmd, start_addr);
+		clear_stage2_pmd_entry(kvm, pmd, start_addr, flags);
 }
 
 static void unmap_stage2_pmds(struct kvm *kvm, pud_t *pud,
-		       phys_addr_t addr, phys_addr_t end)
+			      phys_addr_t addr, phys_addr_t end,
+			      unsigned long flags)
 {
 	phys_addr_t next, start_addr = addr;
 	pmd_t *pmd, *start_pmd;
@@ -280,17 +285,18 @@ static void unmap_stage2_pmds(struct kvm *kvm, pud_t *pud,
 
 				put_page(virt_to_page(pmd));
 			} else {
-				unmap_stage2_ptes(kvm, pmd, addr, next);
+				unmap_stage2_ptes(kvm, pmd, addr, next, flags);
 			}
 		}
 	} while (pmd++, addr = next, addr != end);
 
 	if (stage2_pmd_table_empty(kvm, start_pmd))
-		clear_stage2_pud_entry(kvm, pud, start_addr);
+		clear_stage2_pud_entry(kvm, pud, start_addr, flags);
 }
 
 static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
-		       phys_addr_t addr, phys_addr_t end)
+			      phys_addr_t addr, phys_addr_t end,
+			      unsigned long flags)
 {
 	phys_addr_t next, start_addr = addr;
 	pud_t *pud, *start_pud;
@@ -307,13 +313,13 @@ static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
 				kvm_flush_dcache_pud(old_pud);
 				put_page(virt_to_page(pud));
 			} else {
-				unmap_stage2_pmds(kvm, pud, addr, next);
+				unmap_stage2_pmds(kvm, pud, addr, next, flags);
 			}
 		}
 	} while (pud++, addr = next, addr != end);
 
 	if (stage2_pud_table_empty(kvm, start_pud))
-		clear_stage2_pgd_entry(kvm, pgd, start_addr);
+		clear_stage2_pgd_entry(kvm, pgd, start_addr, flags);
 }
 
 /**
@@ -327,7 +333,8 @@ static void unmap_stage2_puds(struct kvm *kvm, pgd_t *pgd,
  * destroying the VM), otherwise another faulting VCPU may come in and mess
  * with things behind our backs.
  */
-static void unmap_stage2_range(struct kvm *kvm, phys_addr_t start, u64 size)
+static void unmap_stage2_range(struct kvm *kvm, phys_addr_t start, u64 size,
+			       unsigned long flags)
 {
 	pgd_t *pgd;
 	phys_addr_t addr = start, end = start + size;
@@ -347,7 +354,7 @@ static void unmap_stage2_range(struct kvm *kvm, phys_addr_t start, u64 size)
 			break;
 		next = stage2_pgd_addr_end(kvm, addr, end);
 		if (!stage2_pgd_none(kvm, *pgd))
-			unmap_stage2_puds(kvm, pgd, addr, next);
+			unmap_stage2_puds(kvm, pgd, addr, next, flags);
 		/*
 		 * If the range is too large, release the kvm->mmu_lock
 		 * to prevent starvation and lockup detector warnings.
@@ -950,7 +957,7 @@ static void stage2_unmap_memslot(struct kvm *kvm,
 
 		if (!(vma->vm_flags & VM_PFNMAP)) {
 			gpa_t gpa = addr + (vm_start - memslot->userspace_addr);
-			unmap_stage2_range(kvm, gpa, vm_end - vm_start);
+			unmap_stage2_range(kvm, gpa, vm_end - vm_start, 0);
 		}
 		hva = vm_end;
 	} while (hva < reg_end);
@@ -996,7 +1003,7 @@ void kvm_free_stage2_pgd(struct kvm *kvm)
 
 	spin_lock(&kvm->mmu_lock);
 	if (kvm->arch.pgd) {
-		unmap_stage2_range(kvm, 0, kvm_phys_size(kvm));
+		unmap_stage2_range(kvm, 0, kvm_phys_size(kvm), 0);
 		pgd = READ_ONCE(kvm->arch.pgd);
 		kvm->arch.pgd = NULL;
 		kvm->arch.pgd_phys = 0;
@@ -1086,7 +1093,7 @@ static int stage2_set_pmd_huge(struct kvm *kvm, struct kvm_mmu_memory_cache
 		 * get handled accordingly.
 		 */
 		if (!pmd_thp_or_huge(old_pmd)) {
-			unmap_stage2_range(kvm, addr & S2_PMD_MASK, S2_PMD_SIZE);
+			unmap_stage2_range(kvm, addr & S2_PMD_MASK, S2_PMD_SIZE, 0);
 			goto retry;
 		}
 		/*
@@ -1136,7 +1143,7 @@ static int stage2_set_pud_huge(struct kvm *kvm, struct kvm_mmu_memory_cache *cac
 		 * the range for this block and retry.
 		 */
 		if (!stage2_pud_huge(kvm, old_pud)) {
-			unmap_stage2_range(kvm, addr & S2_PUD_MASK, S2_PUD_SIZE);
+			unmap_stage2_range(kvm, addr & S2_PUD_MASK, S2_PUD_SIZE, 0);
 			goto retry;
 		}
 
@@ -2031,7 +2038,7 @@ static int handle_hva_to_gpa(struct kvm *kvm,
 
 static int kvm_unmap_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *data)
 {
-	unmap_stage2_range(kvm, gpa, size);
+	unmap_stage2_range(kvm, gpa, size, 0);
 	return 0;
 }
 
@@ -2344,7 +2351,7 @@ int kvm_arch_prepare_memory_region(struct kvm *kvm,
 
 	spin_lock(&kvm->mmu_lock);
 	if (ret)
-		unmap_stage2_range(kvm, mem->guest_phys_addr, mem->memory_size);
+		unmap_stage2_range(kvm, mem->guest_phys_addr, mem->memory_size, 0);
 	else
 		stage2_flush_memslot(kvm, memslot);
 	spin_unlock(&kvm->mmu_lock);
@@ -2380,7 +2387,7 @@ void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
 	phys_addr_t size = slot->npages << PAGE_SHIFT;
 
 	spin_lock(&kvm->mmu_lock);
-	unmap_stage2_range(kvm, gpa, size);
+	unmap_stage2_range(kvm, gpa, size, 0);
 	spin_unlock(&kvm->mmu_lock);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
