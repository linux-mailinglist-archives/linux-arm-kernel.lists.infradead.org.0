Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA191A664B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o9p3O1HCBTea8xnzX2NS/fZLaQ0MK7X3Xn2rwtZiscs=; b=sZc5B5AjJNz5s7
	UVmgbzJJT6MRGj3UWhzbpYXMlAmo2mONbB4mrefZZsYjlVMuYVUcQUvzEEmUnfwzI6D2Ej7elk/8X
	YvXADZJ9xW4A3kfOHTC0kqDFSaK1zOSVBRCzetZ2B2QNNFAYwHLLiuHsdJNKAq7R55htlG3d8r91C
	dIK0FQbMjZcvrwZc9LuGuV38l8AFz/ygj3HmoJlRN74NHrkUH55NTg8Pbp0/ZU2RU0kjn0Lp9lHr8
	ywfPc60GLoK1lvp8kb96JI+ezvmdL1sMUR/g54nSOp8cpLaRxispbiW2Rk1M8GcW1aMvy+IxWa0rI
	OTU/vkDOcBFcYL+X5A/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNy7V-0003dO-8w; Mon, 13 Apr 2020 12:23:21 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNy7M-0003LO-LQ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:23:14 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6B73DF5F703402750F59;
 Mon, 13 Apr 2020 20:22:52 +0800 (CST)
Received: from linux-kDCJWP.huawei.com (10.175.104.212) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.487.0; Mon, 13 Apr 2020 20:22:45 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>
Subject: [PATCH v2] KVM/arm64: Support enabling dirty log gradually in small
 chunks
Date: Mon, 13 Apr 2020 20:20:23 +0800
Message-ID: <20200413122023.52583-1-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_052312_884056_F152F8B0 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

There is already support of enabling dirty log graually in small chunks
for x86 in commit 3c9bd4006bfc ("KVM: x86: enable dirty log gradually in
small chunks"). This adds support for arm64.

x86 still writes protect all huge pages when DIRTY_LOG_INITIALLY_ALL_SET
is eanbled. However, for arm64, both huge pages and normal pages can be
write protected gradually by userspace.

Under the Huawei Kunpeng 920 2.6GHz platform, I did some tests on 128G
Linux VMs with different page size. The memory pressure is 127G in each
case. The time taken of memory_global_dirty_log_start in QEMU is listed
below:

Page Size      Before    After Optimization
  4K            650ms         1.8ms
  2M             4ms          1.8ms
  1G             2ms          1.8ms

Besides the time reduction, the biggest income is that we will minimize
the performance side effect (because of dissloving huge pages and marking
memslots dirty) on guest after enabling dirty log.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
---
 Documentation/virt/kvm/api.rst    |  2 +-
 arch/arm64/include/asm/kvm_host.h |  3 +++
 virt/kvm/arm/mmu.c                | 12 ++++++++++--
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/virt/kvm/api.rst b/Documentation/virt/kvm/api.rst
index efbbe570aa9b..0017f63fa44f 100644
--- a/Documentation/virt/kvm/api.rst
+++ b/Documentation/virt/kvm/api.rst
@@ -5777,7 +5777,7 @@ will be initialized to 1 when created.  This also improves performance because
 dirty logging can be enabled gradually in small chunks on the first call
 to KVM_CLEAR_DIRTY_LOG.  KVM_DIRTY_LOG_INITIALLY_SET depends on
 KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE (it is also only available on
-x86 for now).
+x86 and arm64 for now).
 
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT2 was previously available under the name
 KVM_CAP_MANUAL_DIRTY_LOG_PROTECT, but the implementation had bugs that make
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..a723f84fab83 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -46,6 +46,9 @@
 #define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
 #define KVM_REQ_RELOAD_GICv4	KVM_ARCH_REQ(4)
 
+#define KVM_DIRTY_LOG_MANUAL_CAPS   (KVM_DIRTY_LOG_MANUAL_PROTECT_ENABLE | \
+				     KVM_DIRTY_LOG_INITIALLY_SET)
+
 DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 
 extern unsigned int kvm_sve_max_vl;
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index e3b9ee268823..1077f653a611 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2265,8 +2265,16 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
 	 * memory slot is write protected.
 	 */
-	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
-		kvm_mmu_wp_memory_region(kvm, mem->slot);
+	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES) {
+		/*
+		 * If we're with initial-all-set, we don't need to write
+		 * protect any pages because they're all reported as dirty.
+		 * Huge pages and normal pages will be write protect gradually.
+		 */
+		if (!kvm_dirty_log_manual_protect_and_init_set(kvm)) {
+			kvm_mmu_wp_memory_region(kvm, mem->slot);
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
