Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384FA1E8342
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDCbpyoSWj6zt9atKG9IvbQULOfy+Gfl6npXR1LTrZM=; b=AGb5LOwdl+lZNR
	ssUcAIq7ivfpxs7EOYMAumD9QZiLcORBEY2sDDF6OeqIZsz6E8vnJI5UXbQ7aeEIaErjPVCeSxnn9
	7GjLVTdOYAz/86U3G9faSfn2siHX1670KnAEGetCrRzgzf6jPjnJWbW+PFI+dNoonyjHpRGBcJiFO
	xjF9x/FSmlMt2OWH51yL0ocOYVbx4ZOJpHY9E4hhNcdl+yy4HPGr0mGDmWpHKbZa1EHIZaB7gwxJE
	KFVi+KxEzEJeA5JVWePtfvNnbch5ZOV/wBXgLKaB6qu4vCkTHsj4VS5646UF/5wmCFtkLzjLc9ADJ
	cEx1SPidRtzJ4PHsugEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehaK-0003k5-Uw; Fri, 29 May 2020 16:10:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehUL-0005E8-O9
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:04:09 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 196B320897;
 Fri, 29 May 2020 16:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768245;
 bh=rnC8N5LvRXw1A611nNlAnBGGlAmDvS+ZZToD/l2LVbA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uIKgJjauYhqnBXT/kHJh1NJzVASqKcaf+tohHyUdkjPNP6JLCYu24bXI/hBj5gEI1
 nJEkndKui5kANYBl6UIU1ApXIqdWIGvx4pgnwdzEaZ0oJA1grTyeJzAmkUUQNNKFmR
 1CFUgoW74jwKtaPjv52P1kV8xvJWDc74NqawBA+w=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehSB-00GJKc-I8; Fri, 29 May 2020 17:01:52 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 12/24] KVM: arm64: Unify handling THP backed host memory
Date: Fri, 29 May 2020 17:01:09 +0100
Message-Id: <20200529160121.899083-13-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090405_837260_7DB4DF38 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
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

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200507123546.1875-3-yuzenghui@huawei.com
---
 arch/arm64/kvm/mmu.c | 115 ++++++++++++++++++++++---------------------
 1 file changed, 60 insertions(+), 55 deletions(-)

diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index ccb44e7d30d9..66eb8e3f6e8c 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -1375,47 +1375,6 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
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
@@ -1663,6 +1622,59 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
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
@@ -1776,20 +1788,13 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
