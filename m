Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D544E5A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:14:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NBs5uESdVaGIsSpmYInRhhaIkyypQpEXugSCpBrFAg=; b=jXBzvqBZFnz+Kr
	vathr3fOHRgydgvwoXTtwYGq8dERcaFMjZCK896Nfq2P2/pjRNxLYyAplUWM/NEWro/SdvuuAghlM
	sgVbFH1bLZh/Y0FITEhEkC5hBLiC3+TmiMhXkYLJxHiVW9WYUOpoCXEbUirM3jnrB8E4Iavh6RAx3
	mzVrEckAqkyich7F6ItT/zLx+4pZcBdkeLz9olHHwF7jc1TzP2l/Lshqted6MTdcjd6h4aRcRFSSS
	FnWp6nT0QK2W1LppIav9oaLI9UWU8p1i/1ZJaISk4vc5f8O9Iw3zDfgdwHQ52dUTLwhM67pATlmux
	Os/tj0BVbirMs42nzBmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGYw-0000wF-9S; Fri, 21 Jun 2019 10:14:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG2F-0000k3-JL
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FAED1478;
 Fri, 21 Jun 2019 02:40:43 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1B3263F246;
 Fri, 21 Jun 2019 02:40:42 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 58/59] arm64: KVM: nv: Restrict S2 RD/WR permissions to match
 the guest's
Date: Fri, 21 Jun 2019 10:38:42 +0100
Message-Id: <20190621093843.220980-59-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024043_784001_A403C035 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When mapping a page in a shadow stage-2, special care must be
taken not to be more permissive than the guest is (writable or
readable page when the guest hasn't set that permission).

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm/include/asm/kvm_mmu.h      | 18 ++++++++++++++++++
 arch/arm64/include/asm/kvm_mmu.h    | 18 ++++++++++++++++++
 arch/arm64/include/asm/kvm_nested.h | 10 ++++++++++
 virt/kvm/arm/mmu.c                  | 21 ++++++++++++++++++++-
 4 files changed, 66 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 7a6e9008ed45..7aa7182ca744 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -113,6 +113,12 @@ static inline pud_t kvm_s2pud_mkexec(pud_t pud)
 	return pud;
 }
 
+static inline pud_t kvm_s2pud_revoke_read(pud_t pud)
+{
+	WARN_ON(1);
+	return pud;
+}
+
 static inline bool kvm_s2pud_exec(pud_t *pud)
 {
 	WARN_ON(1);
@@ -155,6 +161,18 @@ static inline pmd_t kvm_s2pmd_mkexec(pmd_t pmd)
 	return pmd;
 }
 
+static inline pte_t kvm_s2pte_revoke_read(pte_t pte)
+{
+	pte_val(pte) &= ~L_PTE_S2_RDONLY;
+	return pte;
+}
+
+static inline pmd_t kvm_s2pmd_revoke_read(pmd_t pmd)
+{
+	pmd_val(pmd) &= ~L_PMD_S2_RDONLY;
+	return pmd;
+}
+
 static inline void kvm_set_s2pte_readonly(pte_t *pte)
 {
 	pte_val(*pte) = (pte_val(*pte) & ~L_PTE_S2_RDWR) | L_PTE_S2_RDONLY;
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 53103607065a..f46ea12e55c2 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -238,6 +238,24 @@ static inline pud_t kvm_s2pud_mkexec(pud_t pud)
 	return pud;
 }
 
+static inline pte_t kvm_s2pte_revoke_read(pte_t pte)
+{
+	pte_val(pte) &= ~PTE_S2_RDONLY;
+	return pte;
+}
+
+static inline pmd_t kvm_s2pmd_revoke_read(pmd_t pmd)
+{
+	pmd_val(pmd) &= ~PMD_S2_RDONLY;
+	return pmd;
+}
+
+static inline pud_t kvm_s2pud_revoke_read(pud_t pud)
+{
+	pud_val(pud) &= ~PUD_S2_RDONLY;
+	return pud;
+}
+
 static inline void kvm_set_s2pte_readonly(pte_t *ptep)
 {
 	pteval_t old_pteval, pteval;
diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index 3b415bc76ced..76777b1b9419 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -42,6 +42,16 @@ static inline u32 kvm_s2_trans_esr(struct kvm_s2_trans *trans)
 	return trans->esr;
 }
 
+static inline bool kvm_s2_trans_readable(struct kvm_s2_trans *trans)
+{
+	return trans->readable;
+}
+
+static inline bool kvm_s2_trans_writable(struct kvm_s2_trans *trans)
+{
+	return trans->writable;
+}
+
 extern int kvm_walk_nested_s2(struct kvm_vcpu *vcpu, phys_addr_t gipa,
 			      struct kvm_s2_trans *result);
 
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 0ea79e543b29..bc8cb529647b 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1729,7 +1729,7 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			  unsigned long hva, unsigned long fault_status)
 {
 	int ret;
-	bool write_fault, writable;
+	bool write_fault, writable, readable = true;
 	bool exec_fault, needs_exec;
 	unsigned long mmu_seq;
 	phys_addr_t ipa = fault_ipa;
@@ -1842,6 +1842,16 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			writable = false;
 	}
 
+	/*
+	 * Potentially reduce shadow S2 permissions to match the guest's own
+	 * S2. For exec faults, we'd only reach this point if the guest
+	 * actually allowed it (see kvm_s2_handle_perm_fault).
+	 */
+	if (kvm_is_shadow_s2_fault(vcpu)) {
+		writable &= kvm_s2_trans_writable(nested);
+		readable &= kvm_s2_trans_readable(nested);
+	}
+
 	spin_lock(&kvm->mmu_lock);
 	if (mmu_notifier_retry(kvm, mmu_seq))
 		goto out_unlock;
@@ -1887,6 +1897,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		if (writable)
 			new_pud = kvm_s2pud_mkwrite(new_pud);
 
+		if (!readable)
+			new_pud = kvm_s2pud_revoke_read(new_pud);
+
 		if (needs_exec)
 			new_pud = kvm_s2pud_mkexec(new_pud);
 
@@ -1899,6 +1912,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 		if (writable)
 			new_pmd = kvm_s2pmd_mkwrite(new_pmd);
 
+		if (!readable)
+			new_pmd = kvm_s2pmd_revoke_read(new_pmd);
+
 		if (needs_exec)
 			new_pmd = kvm_s2pmd_mkexec(new_pmd);
 
@@ -1911,6 +1927,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
 			mark_page_dirty(kvm, gfn);
 		}
 
+		if (!readable)
+			new_pte = kvm_s2pte_revoke_read(new_pte);
+
 		if (needs_exec)
 			new_pte = kvm_s2pte_mkexec(new_pte);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
