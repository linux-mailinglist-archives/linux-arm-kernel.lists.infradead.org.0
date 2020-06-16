Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87471FAD23
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:52:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLUB6NbWo28TabwTIkQNnHmiRdgADlcx0FssqLTzj5k=; b=KkImnHT214S3kf
	kt0y1dsn4X9JSDO7FvucK0jA1oq4cLl8Cir1qBoIyO+ocLIigmuFC9wjoX0xW+d8FzODURvei/fRa
	McJVhd41HmrjWLa6RN53MMZYLl7YsznRVIW79ik8j10GR16j1bcLmDEj28W6mawCssL2G0AqR7Zpf
	+zgi/mVE1IEg6iEGVCNGlmkTzQhpkfk+zx+atSn6qA2UprdeMlxZS0cPWW4FJCN2wNcvJDwdbuDpF
	The2joRsBy0q4UJ12xbm0hHj8CdDW7q1+rve9VNBU0DnDI/DIYbwZ+RThzpap09laaSbcO+YgZplO
	1YWkUQ6YMPocAgdUFStg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl8Gg-0005YH-Cx; Tue, 16 Jun 2020 09:52:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl8GD-0004nJ-Ur
 for linux-arm-kernel@bombadil.infradead.org; Tue, 16 Jun 2020 09:52:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=M4SEgvz0nyb9jcZO7f0rIys4Vap0y4Kr6/0oBvgK0ns=; b=NhnR1LzDkKU+D3fZC/UneKn4ie
 qGczg9okttLEg1qoi8Qpw4AkHD7St8bUxyqX62O0mKqVwgsFHPcvuee2yw8JM+ZQCop9nJyGr8Rkj
 hs6lZqs+rj25ZacH134AzZD0bu/wRFsWExW1KFzh4DPjh3NIsrWdFqmlSyrrI22ITJhtWULw7d1ei
 TScjqWLI6zLdxKF5c1vIcmUFPf0R/IfiRExHQ/ea1DSFAu/619UgVfrBjcbeXQsKjJ3Ccjn9eb7pB
 nNH9ZG6DweI1JUgWPITxSCoQLPGScMBCAMn3PkYCjQiWBIC/OLsA4gviq04IMz+YaXtdGsSGw0OLc
 EUj7vEHQ==;
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl81G-0005aA-67
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:39 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D41EBD40471D8FD3AFBD;
 Tue, 16 Jun 2020 17:36:18 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:12 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 10/12] KVM: arm64: Save stage2 PTE dirty status if it is
 coverred
Date: Tue, 16 Jun 2020 17:35:51 +0800
Message-ID: <20200616093553.27512-11-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
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

There are two types of operations will change PTE and may cover
dirty status set by hardware.

1. Stage2 PTE unmapping: Page table merging (revert of huge page
table dissolving), kvm_unmap_hva_range() and so on.

2. Stage2 PTE changing: including user_mem_abort(), kvm_mmu_notifier
_change_pte() and so on.

All operations above will invoke kvm_set_pte() finally. We should
save the dirty status into memslot bitmap.

Question: Should we acquire kvm_slots_lock when invoke mark_page_dirty?
It seems that user_mem_abort does not acquire this lock when invoke it.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 arch/arm64/kvm/mmu.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index 898e272a2c07..a230fbcf3889 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -294,15 +294,23 @@ static void unmap_stage2_ptes(struct kvm *kvm, pmd_t *pmd,
 {
 	phys_addr_t start_addr = addr;
 	pte_t *pte, *start_pte;
+	bool dirty_coverred;
+	int idx;
 
 	start_pte = pte = pte_offset_kernel(pmd, addr);
 	do {
 		if (!pte_none(*pte)) {
 			pte_t old_pte = *pte;
 
-			kvm_set_pte(pte, __pte(0));
+			dirty_coverred = kvm_set_pte(pte, __pte(0));
 			kvm_tlb_flush_vmid_ipa(kvm, addr);
 
+			if (dirty_coverred) {
+				idx = srcu_read_lock(&kvm->srcu);
+				mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+				srcu_read_unlock(&kvm->srcu, idx);
+			}
+
 			/* No need to invalidate the cache for device mappings */
 			if (!kvm_is_device_pfn(pte_pfn(old_pte)))
 				kvm_flush_dcache_pte(old_pte);
@@ -1388,6 +1396,8 @@ static int stage2_set_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
 	pte_t *pte, old_pte;
 	bool iomap = flags & KVM_S2PTE_FLAG_IS_IOMAP;
 	bool logging_active = flags & KVM_S2_FLAG_LOGGING_ACTIVE;
+	bool dirty_coverred;
+	int idx;
 
 	VM_BUG_ON(logging_active && !cache);
 
@@ -1453,8 +1463,14 @@ static int stage2_set_pte(struct kvm *kvm, struct kvm_mmu_memory_cache *cache,
 		if (pte_val(old_pte) == pte_val(*new_pte))
 			return 0;
 
-		kvm_set_pte(pte, __pte(0));
+		dirty_coverred = kvm_set_pte(pte, __pte(0));
 		kvm_tlb_flush_vmid_ipa(kvm, addr);
+
+		if (dirty_coverred) {
+			idx = srcu_read_lock(&kvm->srcu);
+			mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+			srcu_read_unlock(&kvm->srcu, idx);
+		}
 	} else {
 		get_page(virt_to_page(pte));
 	}
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
