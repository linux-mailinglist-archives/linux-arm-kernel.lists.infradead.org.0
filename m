Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EA41FACDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fgP8HyHoQvADox5+LheF6aDm7mhhihXIj9VZFZiBOLk=; b=A66y6C2nTq5KX/
	B4DagJFYCGG7nzVtw2lVYLZ10jD1vQGJ5qA/MN0MzfGXn56CWNWhRBwvPdGR/kah4LVZr4m4gDaUf
	5FsdpXo2xVmfVn+3rlwxhWDCa87vMfIWV+hp1gq/AjE0L3XfmHnZKbHcOK40MRXe26VvKKj6df9uN
	akd+TyaehMNd+VONatIIjYpnoAeKCLD+RmWvZx9LVsLWVYGO8TX70NSwo9eZJ+5SW5mGUwzBC6YYi
	eyVwrMxOwAjZr0JINybsLi+2fQmGVeNvuO2f04PyQ6sfsNShk8/p169fJMRPDgPsqGpsg08VuYQ0Y
	Dz6dnf5mQzjDJkPuyukA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl84T-0004bw-3f; Tue, 16 Jun 2020 09:39:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl814-0001nl-Kg
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:34 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AD27B10AC27B32B7709B;
 Tue, 16 Jun 2020 17:36:18 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:08 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 06/12] KVM: arm64: Set DBM bit of PTEs during write protecting
Date: Tue, 16 Jun 2020 17:35:47 +0800
Message-ID: <20200616093553.27512-7-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023626_853538_B76680A1 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
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

During write protecting PTEs, if hardware dirty log is enabled,
set the DBM bit of PTEs when they are *already writable*. This
ensures some mechanisms that rely on "write fault", such as CoW,
are not broken.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
Signed-off-by: Peng Liang <liangpeng10@huawei.com>
---
 arch/arm64/kvm/mmu.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index f08b0fbca0a0..742c7943176f 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -1536,19 +1536,24 @@ int kvm_phys_addr_ioremap(struct kvm *kvm, phys_addr_t guest_ipa,
 
 /**
  * stage2_wp_ptes - write protect PMD range
+ * @kvm:	kvm instance for the VM
  * @pmd:	pointer to pmd entry
  * @addr:	range start address
  * @end:	range end address
  */
-static void stage2_wp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
+static void stage2_wp_ptes(struct kvm *kvm, pmd_t *pmd,
+			   phys_addr_t addr, phys_addr_t end)
 {
 	pte_t *pte;
 
 	pte = pte_offset_kernel(pmd, addr);
 	do {
-		if (!pte_none(*pte)) {
-			if (!kvm_s2pte_readonly(pte))
-				kvm_set_s2pte_readonly(pte);
+		if (!pte_none(*pte) && !kvm_s2pte_readonly(pte)) {
+#ifdef CONFIG_ARM64_HW_AFDBM
+			if (kvm->arch.hw_dirty_log && !kvm_s2pte_dbm(pte))
+				kvm_set_s2pte_dbm(pte);
+#endif
+			kvm_set_s2pte_readonly(pte);
 		}
 	} while (pte++, addr += PAGE_SIZE, addr != end);
 }
@@ -1575,7 +1580,7 @@ static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
 				if (!kvm_s2pmd_readonly(pmd))
 					kvm_set_s2pmd_readonly(pmd);
 			} else {
-				stage2_wp_ptes(pmd, addr, next);
+				stage2_wp_ptes(kvm, pmd, addr, next);
 			}
 		}
 	} while (pmd++, addr = next, addr != end);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
