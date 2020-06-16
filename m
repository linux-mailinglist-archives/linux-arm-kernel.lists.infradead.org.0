Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198B51FACCD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:37:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcQnqbQON2AXPMH/15iq/VQJT/t7KxRI3KL7jhre7Oc=; b=l+CWwuDdDksP0g
	hrreUiHVspTjvTta9fFcWEF9mbswdy+NFGBZs0xJ6wE6j2t7auMUMPTw9cE/4Lh8Lb9BEhX44LpFY
	En75iZg+uRYZK7vIcaoo5zXxDwehLwD06M05RBvE0jH9Hto4C/uL7zTmwvK67aP3vcKo40BTibZTV
	71dlzMRs6Tc8A9OHg9vuzKT+sPGX+dsHfSHalfdu752krYgdqqI0QtN0t4OV6XeGlK06T0wdZvYhK
	6xUvPzHWH4ZnBslam11zi7GedJxZW//j+SFIk9oZrb1Y6c8iey1ujKXuNf2TckTdNGOiNFCRQ++wM
	yNzdiHdYsZR1QcDn7t3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl82I-0002gj-CQ; Tue, 16 Jun 2020 09:37:42 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl810-0001m1-3w
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:27 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B8F055F8BBC2B2F531C4;
 Tue, 16 Jun 2020 17:36:13 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:05 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 02/12] KVM: arm64: Modify stage2 young mechanism to support hw
 DBM
Date: Tue, 16 Jun 2020 17:35:43 +0800
Message-ID: <20200616093553.27512-3-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023622_364851_0B9084B0 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
Cc: Suzuki K
 Poulose <suzuki.poulose@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>, liangpeng10@huawei.com,
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

Marking PTs young (set AF bit) should be atomic to avoid cover
dirty status set by hardware.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 arch/arm64/include/asm/kvm_mmu.h | 32 ++++++++++++++++++++++----------
 arch/arm64/kvm/mmu.c             | 15 ++++++++-------
 2 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index e0ee6e23d626..51af71505fbc 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -215,6 +215,18 @@ static inline void kvm_set_s2pte_readonly(pte_t *ptep)
 	} while (pteval != old_pteval);
 }
 
+static inline void kvm_set_s2pte_young(pte_t *ptep)
+{
+	pteval_t old_pteval, pteval;
+
+	pteval = READ_ONCE(pte_val(*ptep));
+	do {
+		old_pteval = pteval;
+		pteval |= PTE_AF;
+		pteval = cmpxchg_relaxed(&pte_val(*ptep), old_pteval, pteval);
+	} while (pteval != old_pteval);
+}
+
 static inline bool kvm_s2pte_readonly(pte_t *ptep)
 {
 	return (READ_ONCE(pte_val(*ptep)) & PTE_S2_RDWR) == PTE_S2_RDONLY;
@@ -230,6 +242,11 @@ static inline void kvm_set_s2pmd_readonly(pmd_t *pmdp)
 	kvm_set_s2pte_readonly((pte_t *)pmdp);
 }
 
+static inline void kvm_set_s2pmd_young(pmd_t *pmdp)
+{
+	kvm_set_s2pte_young((pte_t *)pmdp);
+}
+
 static inline bool kvm_s2pmd_readonly(pmd_t *pmdp)
 {
 	return kvm_s2pte_readonly((pte_t *)pmdp);
@@ -245,6 +262,11 @@ static inline void kvm_set_s2pud_readonly(pud_t *pudp)
 	kvm_set_s2pte_readonly((pte_t *)pudp);
 }
 
+static inline void kvm_set_s2pud_young(pud_t *pudp)
+{
+	kvm_set_s2pte_young((pte_t *)pudp);
+}
+
 static inline bool kvm_s2pud_readonly(pud_t *pudp)
 {
 	return kvm_s2pte_readonly((pte_t *)pudp);
@@ -255,16 +277,6 @@ static inline bool kvm_s2pud_exec(pud_t *pudp)
 	return !(READ_ONCE(pud_val(*pudp)) & PUD_S2_XN);
 }
 
-static inline pud_t kvm_s2pud_mkyoung(pud_t pud)
-{
-	return pud_mkyoung(pud);
-}
-
-static inline bool kvm_s2pud_young(pud_t pud)
-{
-	return pud_young(pud);
-}
-
 #ifdef CONFIG_ARM64_HW_AFDBM
 static inline bool kvm_hw_dbm_enabled(void)
 {
diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index 8c0035cab6b6..5ad87bce23c0 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -2008,8 +2008,9 @@ static int user_mem_abort(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa,
  * Resolve the access fault by making the page young again.
  * Note that because the faulting entry is guaranteed not to be
  * cached in the TLB, we don't need to invalidate anything.
- * Only the HW Access Flag updates are supported for Stage 2 (no DBM),
- * so there is no need for atomic (pte|pmd)_mkyoung operations.
+ *
+ * Note: Both DBM and HW AF updates are supported for Stage2, so
+ * young operations should be atomic.
  */
 static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
 {
@@ -2027,15 +2028,15 @@ static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
 		goto out;
 
 	if (pud) {		/* HugeTLB */
-		*pud = kvm_s2pud_mkyoung(*pud);
+		kvm_set_s2pud_young(pud);
 		pfn = kvm_pud_pfn(*pud);
 		pfn_valid = true;
 	} else	if (pmd) {	/* THP, HugeTLB */
-		*pmd = pmd_mkyoung(*pmd);
+		kvm_set_s2pmd_young(pmd);
 		pfn = pmd_pfn(*pmd);
 		pfn_valid = true;
-	} else {
-		*pte = pte_mkyoung(*pte);	/* Just a page... */
+	} else {		/* Just a page... */
+		kvm_set_s2pte_young(pte);
 		pfn = pte_pfn(*pte);
 		pfn_valid = true;
 	}
@@ -2280,7 +2281,7 @@ static int kvm_test_age_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *
 		return 0;
 
 	if (pud)
-		return kvm_s2pud_young(*pud);
+		return pud_young(*pud);
 	else if (pmd)
 		return pmd_young(*pmd);
 	else
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
