Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2AC1E0CF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 13:27:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/qMChMmjptait1mA4FVewrMPMTnA8ZNk6eMPW8IH2Y=; b=rqSv8LKbbNk1up
	41tKD6Y6Lc1TDUUGN0paaufw5alrg6n+PNUlWp6JkMWTI5LxC0ueDYCmtIc2qVyMJEwbSol5RZTcm
	vcn7DjnYDw0v+hLEhDr9nNCQpRWyxEPI/kTEN2YZd8adA1zlGyXToUjFj6xSE+W6ztHOVKbM7XcBl
	ValstvxK1THsBf5tzDPqRiWvcLztySzPoQe4IYmpGN3K3HBvanPmpHLF07MEBoL24XZSnlvVXu5Ja
	Oc5jjBVx4snl91xjA/GFYwMFy8WdvDkcvOAKOH3TQHyz8gmC8egF32VHCgy+f5E5O+ncgqYFmgSzs
	IGq2Jzzwf+yrymV6euSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBGN-0007ty-1A; Mon, 25 May 2020 11:27:23 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBEN-00067m-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 11:25:24 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8C55850255F4F8827112;
 Mon, 25 May 2020 19:25:14 +0800 (CST)
Received: from DESKTOP-5IS4806.china.huawei.com (10.173.221.230) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 25 May 2020 19:25:04 +0800
From: Keqian Zhu <zhukeqian1@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>
Subject: [RFC PATCH 3/7] KVM: arm64: Traverse page table entries when sync
 dirty log
Date: Mon, 25 May 2020 19:24:02 +0800
Message-ID: <20200525112406.28224-4-zhukeqian1@huawei.com>
X-Mailer: git-send-email 2.8.4.windows.1
In-Reply-To: <20200525112406.28224-1-zhukeqian1@huawei.com>
References: <20200525112406.28224-1-zhukeqian1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.230]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_042519_946438_5C59ACA6 
X-CRM114-Status: GOOD (  14.73  )
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
 Peng Liang <liangpeng10@huawei.com>, Alexios Zavras <alexios.zavras@intel.com>,
 zhengxiang9@huawei.com, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 wanghaibin.wang@huawei.com, Thomas
 Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For hardware management of dirty state, dirty state is stored in
page table entries. We have to traverse page table entries when
sync dirty log.

Signed-off-by: Keqian Zhu <zhukeqian1@huawei.com>
Signed-off-by: Peng Liang <liangpeng10@huawei.com>
---
 arch/arm64/include/asm/kvm_host.h |   1 +
 virt/kvm/arm/arm.c                |   6 +-
 virt/kvm/arm/mmu.c                | 127 ++++++++++++++++++++++++++++++
 3 files changed, 133 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 32c8a675e5a4..916617d3fed6 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -480,6 +480,7 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 
 void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
+int kvm_mmu_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot);
 
 int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 		int exception_index);
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 48d0ec44ad77..975311fa3a27 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1191,7 +1191,11 @@ long kvm_arch_vcpu_ioctl(struct file *filp,
 
 void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
 {
-
+#ifdef CONFIG_ARM64_HW_AFDBM
+	if (kvm_hw_dbm_enabled()) {
+		kvm_mmu_sync_dirty_log(kvm, memslot);
+	}
+#endif
 }
 
 void kvm_arch_flush_remote_tlbs_memslot(struct kvm *kvm,
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index dc97988eb2e0..ff8df9702e04 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -2266,6 +2266,133 @@ int kvm_mmu_init(void)
 	return err;
 }
 
+#ifdef CONFIG_ARM64_HW_AFDBM
+/**
+ * stage2_sync_dirty_log_ptes() - synchronize dirty log from PMD range
+ * @kvm:        The KVM pointer
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
+		if (!pte_none(*pte) && !kvm_s2pte_readonly(pte)) {
+			mark_page_dirty(kvm, addr >> PAGE_SHIFT);
+		}
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
+		if (!pmd_none(*pmd) && !pmd_thp_or_huge(*pmd)) {
+			stage2_sync_dirty_log_ptes(kvm, pmd, addr, next);
+		}
+	} while (pmd++, addr = next, addr != end);
+}
+
+/**
+ * stage2_sync_dirty_log_puds() - synchronize dirty log from PGD range
+ * @kvm:	The KVM pointer
+ * @pgd:	pointer to pgd entry
+ * @addr:	range start address
+ * @end:	range end address
+ */
+static void stage2_sync_dirty_log_puds(struct kvm *kvm, pgd_t *pgd,
+				       phys_addr_t addr, phys_addr_t end)
+{
+	pud_t *pud;
+	phys_addr_t next;
+
+	pud = stage2_pud_offset(kvm, pgd, addr);
+	do {
+		next = stage2_pud_addr_end(kvm, addr, end);
+		if (!stage2_pud_none(kvm, *pud) && !stage2_pud_huge(kvm, *pud)) {
+			stage2_sync_dirty_log_pmds(kvm, pud, addr, next);
+		}
+	} while (pud++, addr = next, addr != end);
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
+		/*
+		 * Release kvm_mmu_lock periodically if the memory region is
+		 * large. Otherwise, we may see kernel panics with
+		 * CONFIG_DETECT_HUNG_TASK, CONFIG_LOCKUP_DETECTOR,
+		 * CONFIG_LOCKDEP. Additionally, holding the lock too long
+		 * will also starve other vCPUs. We have to also make sure
+		 * that the page tables are not freed while we released
+		 * the lock.
+		 */
+		cond_resched_lock(&kvm->mmu_lock);
+		if (!READ_ONCE(kvm->arch.pgd))
+			break;
+		next = stage2_pgd_addr_end(kvm, addr, end);
+		if (stage2_pgd_present(kvm, *pgd))
+			stage2_sync_dirty_log_puds(kvm, pgd, addr, next);
+	} while (pgd++, addr = next, addr != end);
+}
+
+/**
+ * kvm_mmu_sync_dirty_log() - synchronize dirty log from stage2 entries for
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
+int kvm_mmu_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+	phys_addr_t start = memslot->base_gfn << PAGE_SHIFT;
+	phys_addr_t end = (memslot->base_gfn + memslot->npages) << PAGE_SHIFT;
+
+	spin_lock(&kvm->mmu_lock);
+	stage2_sync_dirty_log_range(kvm, start, end);
+	spin_unlock(&kvm->mmu_lock);
+
+	return 0;
+}
+#endif /* CONFIG_ARM64_HW_AFDBM */
+
 void kvm_arch_commit_memory_region(struct kvm *kvm,
 				   const struct kvm_userspace_memory_region *mem,
 				   struct kvm_memory_slot *old,
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
