Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4857415979E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5F147vc6CKYQDEF+RW4+A8jdDgM6Thpf7XX/RI2U+tM=; b=LAJaoUyHY9RvMR
	KdKVODEY8ayXjW0xv6dnd9Xk/ExQFyMbxZ+AuQBeV29mfqkINbQFZkmPVcMYDy6Myh93LO9dqynVy
	X3apUzyyP3oGvkYWQBFVCLFy0/bPs2su/wPyX12I2jpNxo86z5Qn9sQlOoduxyPqDIaoBNOr720MT
	M8hifp+UvwKdiavNqWt/8bRKMxYqVb4QEWRzlyHsxRTMLqaHRHMymj3RFo3Knf9vVP6BfVj98UZwo
	ED6EBF+NPr0SsmxAPyHs1e3FPBe7xPq9I1E0enLG5JdDp3urISn/B/zssqi25TgJBvpPnZ/6UrHNZ
	78EXquwbssAOJjSvagtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zsg-00063u-PR; Tue, 11 Feb 2020 18:03:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zhf-0002Al-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:11 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C56A208C3;
 Tue, 11 Feb 2020 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443526;
 bh=+xm0GyRSVwHVcIutj4WcHndnRUt3TPwqJzrA5woUxCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f5Dlin2MWX7gTEniKJd1TzD1iNW7WuDuHL9JSwSqF/8vMtCRQthMLMlEfDuGocIg+
 eOfoeaGAXDKbHZdpzlVcxpTqH4oTrPthgr7i21RGS58WBGlK/FrsvAoAYnfH3tENqZ
 IFtwb+YPtzu7eRxmvYOgvG/ADYjnXwZ2UJAq9hPE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zg7-004O7k-O9; Tue, 11 Feb 2020 17:50:31 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 65/94] arm64: KVM: nv: Tag shadow S2 entries with nested
 level
Date: Tue, 11 Feb 2020 17:49:09 +0000
Message-Id: <20200211174938.27809-66-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095207_207851_9974D27A 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Populate bits [56:55] of the leaf entry with the level provided
by the guest's S2 translation.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_mmu.h      |  5 +++++
 arch/arm64/include/asm/kvm_nested.h |  6 ++++++
 virt/kvm/arm/mmu.c                  | 20 ++++++++++++++++++++
 3 files changed, 31 insertions(+)

diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index be7be6583e54..3774a7289ef2 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -484,6 +484,11 @@ static inline bool kvm_s2_trans_writable(struct kvm_s2_trans *trans)
 	BUG();
 }
 
+static inline u64 kvm_encode_nested_level(struct kvm_s2_trans *trans)
+{
+	BUG();
+}
+
 static inline void kvm_nested_s2_flush(struct kvm *kvm) {}
 static inline void kvm_nested_s2_wp(struct kvm *kvm) {}
 static inline void kvm_nested_s2_clear(struct kvm *kvm) {}
diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index debae814fdc5..3e3778d3cec6 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -2,6 +2,7 @@
 #ifndef __ARM64_KVM_NESTED_H
 #define __ARM64_KVM_NESTED_H
 
+#include <linux/bitfield.h>
 #include <linux/kvm_host.h>
 
 static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
@@ -79,4 +80,9 @@ void access_nested_id_reg(struct kvm_vcpu *v, struct sys_reg_params *p,
 
 #define KVM_NV_GUEST_MAP_SZ	GENMASK_ULL(56, 55)
 
+static inline u64 kvm_encode_nested_level(struct kvm_s2_trans *trans)
+{
+	return FIELD_PREP(KVM_NV_GUEST_MAP_SZ, trans->level);
+}
+
 #endif /* __ARM64_KVM_NESTED_H */
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 7da72c2b7f0f..eaa86cad2ac8 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1715,6 +1715,11 @@ static bool fault_supports_stage2_huge_mapping(struct kvm_memory_slot *memslot,
 	       (hva & ~(map_size - 1)) + map_size <= uaddr_end;
 }
 
+#define set_desc_bits(which, desc, val)					\
+	do {								\
+		desc = __ ## which(which ## _val(desc) | val);		\
+	} while(0)
+
 static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			  struct kvm_s2_trans *nested,
 			  struct kvm_memory_slot *memslot,
@@ -1736,6 +1741,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	unsigned long vma_pagesize, flags = 0;
 	struct kvm_s2_mmu *mmu = vcpu->arch.hw_mmu;
 	unsigned long max_map_size = PUD_SIZE;
+	u64 l1_s2_level;
 
 	write_fault = kvm_is_write_fault(vcpu);
 	exec_fault = kvm_vcpu_trap_is_iabt(vcpu);
@@ -1845,10 +1851,18 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 	 * Potentially reduce shadow S2 permissions to match the guest's own
 	 * S2. For exec faults, we'd only reach this point if the guest
 	 * actually allowed it (see kvm_s2_handle_perm_fault).
+	 *
+	 * Also encode the level of the nested translation in the SW bits of
+	 * the PTE/PMD/PUD. This will be retrived on TLB invalidation from
+	 * the guest.
 	 */
 	if (kvm_is_shadow_s2_fault(vcpu)) {
 		writable &= kvm_s2_trans_writable(nested);
 		readable &= kvm_s2_trans_readable(nested);
+
+		l1_s2_level = kvm_encode_nested_level(nested);
+	} else {
+		l1_s2_level = 0;
 	}
 
 	spin_lock(&kvm->mmu_lock);
@@ -1902,6 +1916,8 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		if (needs_exec)
 			new_pud = kvm_s2pud_mkexec(new_pud);
 
+		set_desc_bits(pud, new_pud, l1_s2_level);
+
 		ret = stage2_set_pud_huge(mmu, memcache, fault_ipa, &new_pud);
 	} else if (vma_pagesize == PMD_SIZE) {
 		pmd_t new_pmd = kvm_pfn_pmd(pfn, mem_type);
@@ -1917,6 +1933,8 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		if (needs_exec)
 			new_pmd = kvm_s2pmd_mkexec(new_pmd);
 
+		set_desc_bits(pmd, new_pmd, l1_s2_level);
+
 		ret = stage2_set_pmd_huge(mmu, memcache, fault_ipa, &new_pmd);
 	} else {
 		pte_t new_pte = kvm_pfn_pte(pfn, mem_type);
@@ -1932,6 +1950,8 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		if (needs_exec)
 			new_pte = kvm_s2pte_mkexec(new_pte);
 
+		set_desc_bits(pte, new_pte, l1_s2_level);
+
 		ret = stage2_set_pte(mmu, memcache, fault_ipa, &new_pte, flags);
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
