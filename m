Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CD6192028
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 05:27:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKOjKUCE3siI4PX6wwydjXt8uRIRNqtRFrZ7smfIvtg=; b=dGWoTfP/2+xZTN
	UuZlrpLqZiMkK9p263uwCYlvTe1MhZHKuFmeFkbY0hg//GkvZEgl3gj8Xw7j/DRNA1s3RiUp1s+eD
	4Ktq6nT9YtDl5LXpx78hBS8dvdYqEQW/mvx4WTJG1OmyuIJG0I1L1UnvtIsl1RvYHtMdqWPsNPwEv
	y+EMCLXYRv1swbGsU55Zr+XNnL5Ml+QkF4WMJM4Pp+YV8JtFQ1TgO9q7f/LYwAGQezY5TWEOe0lCx
	WzGRjo16DlQGxy/8ySAKPMf7rKdtFhNNTvSridE/Yt7aDSNBSBhRWDVxaRnv5cPUDsWeQ+EguYAGU
	ox3dOwgr9SEVKAXjZ3dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGxdk-0001tY-9C; Wed, 25 Mar 2020 04:27:40 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGxd2-0001SP-LZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 04:26:59 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 335E1B1CCF7EE3EE6D95;
 Wed, 25 Mar 2020 12:26:44 +0800 (CST)
Received: from linux-kDCJWP.huawei.com (10.175.104.212) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.487.0; Wed, 25 Mar 2020 12:26:35 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH 2/3] KVM/arm64: Support enabling dirty log gradually in small
 chunks
Date: Wed, 25 Mar 2020 12:24:22 +0800
Message-ID: <20200325042423.12181-3-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200325042423.12181-1-zhukeqian1@huawei.com>
References: <20200325042423.12181-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_212656_873117_ABD6B844 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Keqian Zhu <zhukeqian1@huawei.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 James Morse <james.morse@arm.com>, wanghaibin.wang@huawei.com,
 Jay Zhou <jianjay.zhou@huawei.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is already support of enabling dirty log gradually in small chunks
for x86. This adds support for arm64. However, unlike x86, all pages,
including huge pages and normal pages, don't need to be write protected
when enabling dirty log if KVM_DIRTY_LOG_INITIALLY_SET is eanbled. For
that both huge pages and normal pages can be write protected later by
userspace manually.

Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 128G
Linux VMs with different page size. The memory pressure is 127G in each
case. The time taken of memory_global_dirty_log_start in QEMU is listed
below:

Page Size      Before    After Optimization
  4K            650ms         1.8ms
  2M             4ms          1.8ms
  1G             2ms          1.8ms

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 Documentation/virt/kvm/api.rst    |  2 +-
 arch/arm/include/asm/kvm_host.h   |  2 --
 arch/arm64/include/asm/kvm_host.h |  5 ++++-
 virt/kvm/arm/mmu.c                | 16 +++++++++++++---
 4 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
index 158d1186d103..8bfe86d86363 100644
--- a/Documentation/virt/kvm/api.rst
+++ b/Documentation/virt/kvm/api.rst
@@ -5771,7 +5771,7 @@ will be initialized to 1 when created.  This also improves performance because
 dirty logging can be enabled gradually in small chunks on the first call
 to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
 KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
-x86 for now).
+x86 and arm64 for now).
 
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index c3314b286a61..ffa815800de0 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -358,8 +358,6 @@ static inline bool kvm_arm_is_pvtime_enabled(struct kvm_vcpu_arch *vcpu_arch)
 	return false;
 }
 
-void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
-
 struct kvm_vcpu *kvm_mpidr_to_vcpu(struct kvm *kvm, unsigned long mpidr);
 
 static inline bool kvm_arch_requires_vhe(void) { return false; }
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index d87aa609d2b6..67d372e0c75a 100644
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
@@ -478,7 +482,6 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 	})
 
 void force_vm_exit(const cpumask_t *mask);
-void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
 int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		int exception_index);
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..6c84de442a0e 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -1530,7 +1530,7 @@ static void stage2_wp_range(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
  * Acquires kvm_mmu_lock. Called with kvm->slots_lock mutex acquired,
  * serializing operations for VM memory regions.
  */
-void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
+static void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot)
 {
 	struct kvm_memslots *slots = kvm_memslots(kvm);
 	struct kvm_memory_slot *memslot = id_to_memslot(slots, slot);
@@ -2265,8 +2265,18 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
 	 * memory slot is write protected.
 	 */
-	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
-		kvm_mmu_wp_memory_region(kvm, mem->slot);
+	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES) {
+		if (!kvm_dirty_log_manual_protect_and_init_set(kvm)) {
+			kvm_mmu_wp_memory_region(kvm, mem->slot);
+		} else {
+			/*
+			 * If we're with initial-all-set, we don't need to
+			 * write protect any pages because they're reported
+			 * as dirty here.
+			 */
+			bitmap_set(new->dirty_bitmap, 0, new->npages);
+		}
+	}
 }
 
 int kvm_arch_prepare_memory_region(struct kvm *kvm,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
