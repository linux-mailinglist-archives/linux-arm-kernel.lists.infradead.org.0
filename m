Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E88917DBFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 10:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VYfRpiLWPN10q0K6k8IYZ7VkI2YLbHpOnRhOqrq1FBM=; b=pVMk9sP/0IS6kv
	zVA3xs/1fRdbXVLwuCr26OjqMs4LecGKX0ZwTNSv0XHVWjj4MOTvpNd6BiKoY+IjwY+wHmC465kVi
	I7ZKf9zn/R4wjsemcOVoGhlv02rANLQrYsmsV9iZHkTThXedouLEX5/IKNd79tZnmRvakGBOVhrH+
	tU3EVgBsIl9y5js21qoSmRBp0rlB10NPyEyDxPg3SqByQN+HgNVZJymhWGmhCqMPEy5Y809JuSwjq
	T7G1xNwisnYPoH2CnEssw1Kz4WZY2EYb/7KsunVGacS7+uG0lg+J/JNLyXULsSHl672dp+44m+HaM
	QaT4EVZKSCu+2JzS73ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBEGS-0006Ev-MT; Mon, 09 Mar 2020 08:59:56 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBEGJ-0006DS-Uw
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 08:59:50 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 609C5D3890AF7904DCED;
 Mon,  9 Mar 2020 16:59:41 +0800 (CST)
Received: from linux-kDCJWP.huawei.com (10.175.104.212) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 9 Mar 2020 16:59:35 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [RFC] KVM: arm64: support enabling dirty log graually in small chunks
Date: Mon, 9 Mar 2020 16:57:27 +0800
Message-ID: <20200309085727.1106-1-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_015948_574611_A32C6469 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jay Zhou <jianjay.zhou@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 Peter Xu <peterx@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>,
 wanghaibin.wang@huawei.com, Keqian Zhu <zhukeqian1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is already support of enabling dirty log graually
in small chunks for x86. This adds support for arm64.

Under the Huawei Kunpeng 920 2.6GHz platform, I did some
tests with a 128G linux VM and counted the time taken of
memory_global_dirty_log_start, here is the numbers:

VM Size        Before    After optimization
128G           527ms     4ms

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
Cc: Jay Zhou <jianjay.zhou@huawei.com>
Cc: Paolo Bonzini <pbonzini@redhat.com> 
Cc: Peter Xu <peterx@redhat.com>
Cc: Sean Christopherson <sean.j.christopherson@intel.com>
---
 Documentation/virt/kvm/api.rst    |  2 +-
 arch/arm64/include/asm/kvm_host.h |  4 ++++
 virt/kvm/arm/mmu.c                | 30 ++++++++++++++++++++++--------
 3 files changed, 27 insertions(+), 9 deletions(-)

diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
index 0adef66585b1..89d4f2680af1 100644
--- a/Documentation/virt/kvm/api.rst
+++ b/Documentation/virt/kvm/api.rst
@@ -5735,7 +5735,7 @@ will be initialized to 1 when created.  This also improves performance because
 dirty logging can be enabled gradually in small chunks on the first call
 to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
 KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
-x86 for now).
+x86 and arm64 for now).
 
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index d87aa609d2b6..0deb2ac7d091 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -16,6 +16,7 @@
 #include <linux/jump_label.h>
 #include <linux/kvm_types.h>
 #include <linux/percpu.h>
+#include <linux/kvm.h>
 #include <asm/arch_gicv3.h>
 #include <asm/barrier.h>
 #include <asm/cpufeature.h>
@@ -45,6 +46,9 @@
 #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
 #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
 
+#define KVM_DIRTY_LOG_MANUAL_CAPS   (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
+					KVM_DIRTY_LOG_INITIALLY_SET)
+
 DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 
 extern unsigned int kvm_sve_max_vl;
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..5c7ca84dec85 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1438,9 +1438,11 @@ static void stage2_wp_ptes(pmd_t *pmd, phys_addr_t addr, phys_addr_t end)
  * @pud:	pointer to pud entry
  * @addr:	range start address
  * @end:	range end address
+ * @wp_ptes:	write protect ptes or not
  */
 static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
-			   phys_addr_t addr, phys_addr_t end)
+			   phys_addr_t addr, phys_addr_t end,
+			   bool wp_ptes)
 {
 	pmd_t *pmd;
 	phys_addr_t next;
@@ -1453,7 +1455,7 @@ static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
 			if (pmd_thp_or_huge(*pmd)) {
 				if (!kvm_s2pmd_readonly(pmd))
 					kvm_set_s2pmd_readonly(pmd);
-			} else {
+			} else if (wp_ptes) {
 				stage2_wp_ptes(pmd, addr, next);
 			}
 		}
@@ -1465,9 +1467,11 @@ static void stage2_wp_pmds(struct kvm *kvm, pud_t *pud,
  * @pgd:	pointer to pgd entry
  * @addr:	range start address
  * @end:	range end address
+ * @wp_ptes:	write protect ptes or not
  */
 static void  stage2_wp_puds(struct kvm *kvm, pgd_t *pgd,
-			    phys_addr_t addr, phys_addr_t end)
+			    phys_addr_t addr, phys_addr_t end,
+			    bool wp_ptes)
 {
 	pud_t *pud;
 	phys_addr_t next;
@@ -1480,7 +1484,7 @@ static void  stage2_wp_puds(struct kvm *kvm, pgd_t *pgd,
 				if (!kvm_s2pud_readonly(pud))
 					kvm_set_s2pud_readonly(pud);
 			} else {
-				stage2_wp_pmds(kvm, pud, addr, next);
+				stage2_wp_pmds(kvm, pud, addr, next, wp_ptes);
 			}
 		}
 	} while (pud++, addr = next, addr != end);
@@ -1491,8 +1495,10 @@ static void  stage2_wp_puds(struct kvm *kvm, pgd_t *pgd,
  * @kvm:	The KVM pointer
  * @addr:	Start address of range
  * @end:	End address of range
+ * @wp_ptes:	Write protect ptes or not
  */
-static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
+static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr,
+			    phys_addr_t end, bool wp_ptes)
 {
 	pgd_t *pgd;
 	phys_addr_t next;
@@ -1513,7 +1519,7 @@ static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
 			break;
 		next = stage2_pgd_addr_end(kvm, addr, end);
 		if (stage2_pgd_present(kvm, *pgd))
-			stage2_wp_puds(kvm, pgd, addr, next);
+			stage2_wp_puds(kvm, pgd, addr, next, wp_ptes);
 	} while (pgd++, addr = next, addr != end);
 }
 
@@ -1535,6 +1541,7 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
 	struct kvm_memslots *slots = kvm_memslots(kvm);
 	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
 	phys_addr_t start, end;
+	bool wp_ptes;
 
 	if (WARN_ON_ONCE(!memslot))
 		return;
@@ -1543,7 +1550,14 @@ void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
 	end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
 
 	spin_lock(&kvm->mmu_lock);
-	stage2_wp_range(kvm, start, end);
+	/*
+	 * If we're with initial-all-set, we don't need to write protect
+	 * any small page because they're reported as dirty already.
+	 * However we still need to write-protect huge pages so that the
+	 * page split can happen lazily on the first write to the huge page.
+	 */
+	wp_ptes = !kvm_dirty_log_manual_protect_and_init_set(kvm);
+	stage2_wp_range(kvm, start, end, wp_ptes);
 	spin_unlock(&kvm->mmu_lock);
 	kvm_flush_remote_tlbs(kvm);
 }
@@ -1567,7 +1581,7 @@ static void kvm_mmu_write_protect_pt_masked(struct kvm *kvm,
 	phys_addr_t start = (base_gfn +  __ffs(mask)) << PAGE_SHIFT;
 	phys_addr_t end = (base_gfn + __fls(mask) + 1) << PAGE_SHIFT;
 
-	stage2_wp_range(kvm, start, end);
+	stage2_wp_range(kvm, start, end, true);
 }
 
 /*
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
