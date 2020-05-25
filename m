Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F2F1E0CE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38PenWoYzCCcq1YZ0vhAz84I8Od0feTjeAi7l775lpk=; b=oz63l/RUkLVr1C
	1eW2gziJtSflG/vyJVzYi9mOVuzpK3/nmktN7WrvNDOhnp3T9fZIboxMsrprrNVhGEyr5iHhrIi1Z
	WatqyZpnGY7KeFySJmGNfWFvtiwYTUSXEXfKpSPFt7Ygv+yvbvNf1x5YNx5J8igvQCLA3+fxnsfFH
	8wBNsRZKPvf8dSajzw4MIORq1fUqlQ9Opk8aJJ1HHruJJ3BnZUOEVMipL6g64b4MKRuFe31uDYlSA
	ux5cyXtWbQSez18rULWodhG8Ql2Z+8Z9D0yh3Ls0y7CIfgTO7dWV1HSLHESe05aNj06vNO1wEiIeB
	8yNZppVVyEtZPQ841B8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBFf-0007DT-Ni; Mon, 25 May 2020 11:26:39 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBEN-00067k-MY
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:25:23 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7BD22BFD676F8AA7CA59;
 Mon, 25 May 2020 19:25:14 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 19:25:06 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [RFC PATCH 5/7] kvm: arm64: Modify stage2 young mechanism to support
 hw DBM
Date: Mon, 25 May 2020 19:24:04 +0800
Message-ID: <20200525112406.28224-6-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200525112406.28224-1-zhukeqian1@huawei.com>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_042519_947486_9E1C23B8 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Sean Christopherson <sean.j.christopherson@intel.com>,
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

Making page table entries young (set AF bit) should be atomic to
avoid cover dirty info that is set by hardware.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 arch/arm64/include/asm/kvm_mmu.h | 32 ++++++++++++++++++++++----------
 virt/kvm/arm/mmu.c               | 10 +++++-----
 2 files changed, 27 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 8df078f0ee67..a4620d87e456 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -235,6 +235,18 @@ static inline void kvm_set_s2pte_readonly(pte_t *ptep)
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
@@ -250,6 +262,11 @@ static inline void kvm_set_s2pmd_readonly(pmd_t *pmdp)
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
@@ -265,6 +282,11 @@ static inline void kvm_set_s2pud_readonly(pud_t *pudp)
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
@@ -275,16 +297,6 @@ static inline bool kvm_s2pud_exec(pud_t *pudp)
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
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index 779859b85d6d..e1d9e4b98cb6 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1888,15 +1888,15 @@ static void handle_access_fault(struct kvm_vcpu *vcpu, phys_addr_t fault_ipa)
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
@@ -2141,7 +2141,7 @@ static int kvm_test_age_hva_handler(struct kvm *kvm, gpa_t gpa, u64 size, void *
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
