Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BED1FACDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 11:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkJmC7TamDOjRDOvMhnQTKhHZI5goDVZtEvPrkibNFU=; b=NAGgcSftdnA1NE
	moQVVXg4uxrtLFUKwXGbj8oQsPiuUv2FRbLJWCjJr4wxykku2dInrf15Z4BbJJHLIT64qW9QKs2AE
	w5wODMP8BmWjik++E4HJn72uMc/8rwgs1lNaJLxwENZfl0oclItDluU5XuUsSpxGoM4OvJ6t98Szg
	c8eIHqH6yZxzped4S/M3iR4XU67Jn0JjsweNKRLnybC+sjMjFocH27t+PvkW9i2fAJcBLt97UyrXa
	NvRty7ni1MAWgPe5drSalRCoo3+9q8WB2thb8adBI3Ajjtl1hc8Tc6cFNXMjy3prEsbdxXasxfsFp
	MMb2Ff6xSvR8nwP1M1ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl84A-0004Mp-JU; Tue, 16 Jun 2020 09:39:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl813-0001np-WD
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 09:36:33 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B60935F1AB9CCB5C0849;
 Tue, 16 Jun 2020 17:36:18 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Tue, 16 Jun 2020 17:36:09 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [PATCH 07/12] KVM: arm64: Scan PTEs to sync dirty log
Date: Tue, 16 Jun 2020 17:35:48 +0800
Message-ID: <20200616093553.27512-8-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200616093553.27512-1-zhukeqian1@huawei.com>
References: <20200616093553.27512-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023626_419649_90E5B294 
X-CRM114-Status: GOOD (  14.28  )
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

For hardware management of dirty state, dirty state is stored in
PTEs. We have to scan all PTEs to sync dirty log to memslot dirty
bitmap.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
Signed-off-by: Peng Liang <liangpeng10@huawei.com>
---
 arch/arm64/include/asm/kvm_host.h |   2 +
 arch/arm64/kvm/arm.c              |   6 +-
 arch/arm64/kvm/mmu.c              | 162 ++++++++++++++++++++++++++++++
 virt/kvm/kvm_main.c               |   4 +-
 4 files changed, 172 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 2bc3256759e3..910ec33afea8 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -489,6 +489,8 @@ void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 void kvm_mmu_clear_dbm(struct kvm *kvm, struct kvm_memory_slot *memslot);
 void kvm_mmu_clear_dbm_all(struct kvm *kvm);
+void kvm_mmu_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot);
+void kvm_mmu_sync_dirty_log_all(struct kvm *kvm);
 
 int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		int exception_index);
diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 850cc5cbc6f0..92f0b40a30fa 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -1209,7 +1209,11 @@ long kvm_arch_vcpu_ioctl(struct file *filp,
 
 void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-
+#ifdef CONFIG_ARM64_HW_AFDBM
+	if (kvm->arch.hw_dirty_log) {
+		kvm_mmu_sync_dirty_log(kvm, memslot);
+	}
+#endif
 }
 
 void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index 742c7943176f..3aa0303d83f0 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -2600,6 +2600,168 @@ void kvm_mmu_clear_dbm_all(struct kvm *kvm)
 		kvm_mmu_clear_dbm(kvm, memslot);
 	}
 }
+
+/**
+ * stage2_sync_dirty_log_ptes() - synchronize dirty log from PMD range
+ * @kvm:	The KVM pointer
+ * @pmd:	pointer to pmd entry
+ * @addr:	range start address
+ * @end:	range end address
+ */
+static void stage2_sync_dirty_log_ptes(struct kvm *kvm, pmd_t *pmd,
+				       phys_addr_t addr, phys_addr_t end)
+{
+	pte_t *pte;
+
+	pte = pte_offset_kernel(pmd, addr);
+	do {
+		if (!pte_none(*pte) && !kvm_s2pte_readonly(pte))
+			mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+	} while (pte++, addr += PAGE_SIZE, addr != end);
+}
+
+/**
+ * stage2_sync_dirty_log_pmds() - synchronize dirty log from PUD range
+ * @kvm:	The KVM pointer
+ * @pud:	pointer to pud entry
+ * @addr:	range start address
+ * @end:	range end address
+ */
+static void stage2_sync_dirty_log_pmds(struct kvm *kvm, pud_t *pud,
+				       phys_addr_t addr, phys_addr_t end)
+{
+	pmd_t *pmd;
+	phys_addr_t next;
+
+	pmd = stage2_pmd_offset(kvm, pud, addr);
+	do {
+		next = stage2_pmd_addr_end(kvm, addr, end);
+		if (!pmd_none(*pmd) && !pmd_thp_or_huge(*pmd))
+			stage2_sync_dirty_log_ptes(kvm, pmd, addr, next);
+	} while (pmd++, addr = next, addr != end);
+}
+
+/**
+ * stage2_sync_dirty_log_puds() - synchronize dirty log from P4D range
+ * @kvm:	The KVM pointer
+ * @pgd:	pointer to pgd entry
+ * @addr:	range start address
+ * @end:	range end address
+ */
+static void stage2_sync_dirty_log_puds(struct kvm *kvm, p4d_t *p4d,
+				       phys_addr_t addr, phys_addr_t end)
+{
+	pud_t *pud;
+	phys_addr_t next;
+
+	pud = stage2_pud_offset(kvm, p4d, addr);
+	do {
+		next = stage2_pud_addr_end(kvm, addr, end);
+		if (!stage2_pud_none(kvm, *pud) && !stage2_pud_huge(kvm, *pud))
+			stage2_sync_dirty_log_pmds(kvm, pud, addr, next);
+	} while (pud++, addr = next, addr != end);
+}
+
+/**
+ * stage2_sync_dirty_log_p4ds() - synchronize dirty log from PGD range
+ * @kvm:	The KVM pointer
+ * @pgd:	pointer to pgd entry
+ * @addr:	range start address
+ * @end:	range end address
+ */
+static void stage2_sync_dirty_log_p4ds(struct kvm *kvm, pgd_t *pgd,
+				       phys_addr_t addr, phys_addr_t end)
+{
+	p4d_t *p4d;
+	phys_addr_t next;
+
+	p4d = stage2_p4d_offset(kvm, pgd, addr);
+	do {
+		next = stage2_p4d_addr_end(kvm, addr, end);
+		if (!stage2_p4d_none(kvm, *p4d))
+			stage2_sync_dirty_log_puds(kvm, p4d, addr, next);
+	} while (p4d++, addr = next, addr != end);
+}
+
+/**
+ * stage2_sync_dirty_log_range() - synchronize dirty log from stage2 memory
+ * region range
+ * @kvm:	The KVM pointer
+ * @addr:	Start address of range
+ * @end:	End address of range
+ */
+static void stage2_sync_dirty_log_range(struct kvm *kvm, phys_addr_t addr,
+					phys_addr_t end)
+{
+	pgd_t *pgd;
+	phys_addr_t next;
+
+	pgd = kvm->arch.pgd + stage2_pgd_index(kvm, addr);
+	do {
+		cond_resched_lock(&kvm->mmu_lock);
+		if (!READ_ONCE(kvm->arch.pgd))
+			break;
+		next = stage2_pgd_addr_end(kvm, addr, end);
+		if (stage2_pgd_present(kvm, *pgd))
+			stage2_sync_dirty_log_p4ds(kvm, pgd, addr, next);
+	} while (pgd++, addr = next, addr != end);
+}
+
+/**
+ * kvm_mmu_sync_dirty_log() - synchronize dirty log from stage2 PTEs for
+ * memory slot
+ * @kvm:	The KVM pointer
+ * @slot:	The memory slot to synchronize dirty log
+ *
+ * Called to synchronize dirty log (marked by hw) after memory region
+ * KVM_GET_DIRTY_LOG operation is called. After this function returns
+ * all dirty log information (for that hw will modify page tables during
+ * this routine, it is true only when guest is stopped, but it is OK
+ * because we won't miss dirty log finally.) are collected into memslot
+ * dirty_bitmap. Afterwards dirty_bitmap can be copied to userspace.
+ *
+ * Acquires kvm_mmu_lock. Called with kvm->slots_lock mutex acquired,
+ * serializing operations for VM memory regions.
+ */
+void kvm_mmu_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
+	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
+	int idx;
+
+	if (WARN_ON_ONCE(!memslot->dirty_bitmap))
+                return;
+
+	idx = srcu_read_lock(&kvm->srcu);
+	spin_lock(&kvm->mmu_lock);
+
+	stage2_sync_dirty_log_range(kvm, start, end);
+
+	spin_unlock(&kvm->mmu_lock);
+	srcu_read_unlock(&kvm->srcu, idx);
+}
+
+/**
+ * kvm_mmu_sync_dirty_log_all() - synchronize dirty log from PTEs for whole VM
+ * @kvm:	The KVM pointer
+ *
+ * Called with kvm->slots_lock mutex acquired
+ */
+void kvm_mmu_sync_dirty_log_all(struct kvm *kvm)
+{
+	struct kvm_memslots *slots = kvm_memslots(kvm);
+	struct kvm_memory_slot *memslots = slots->memslots;
+	struct kvm_memory_slot *memslot;
+	int slot;
+
+	if (unlikely(!slots->used_slots))
+		return;
+
+	for (slot = 0; slot < slots->used_slots; slot++) {
+		memslot = &memslots[slot];
+		kvm_mmu_sync_dirty_log(kvm, memslot);
+	}
+}
 #endif /* CONFIG_ARM64_HW_AFDBM */
 
 void kvm_arch_commit_memory_region(struct kvm *kvm,
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index a852af5c3214..3722343fd460 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2581,7 +2581,9 @@ static void mark_page_dirty_in_slot(struct kvm_memory_slot *memslot,
 	if (memslot && memslot->dirty_bitmap) {
 		unsigned long rel_gfn = gfn - memslot->base_gfn;
 
-		set_bit_le(rel_gfn, memslot->dirty_bitmap);
+		/* Speed up if this bit has already been set */
+		if (!test_bit_le(rel_gfn, memslot->dirty_bitmap))
+			set_bit_le(rel_gfn, memslot->dirty_bitmap);
 	}
 }
 
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
