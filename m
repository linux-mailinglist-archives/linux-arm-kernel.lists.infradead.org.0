Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A21E830D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:05:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rycHdMZ3gNTQfDko39s4z1+y1fQIsqso814KwFGLLc=; b=JgA6/zID2XHFQh
	4qCn527LS2F5gDwwsalxalKGTrMi/hntR6o5MaCRS2zbekdPlY1fPYSmuXauJOSv8mCsdwuUADw0W
	8OwF3yT5iWI9AJnrENHIe6UJR3I3PBtJXRk82EKeouD0aG8P/QsRQ+38fZHTETk3nexgvoDLzKHES
	MlKimuKcy5uQQ8t2itijBQA8Wk86QEs0JJwnFRYgwlFKxT88ifOgVOP2mYALBzSI3/ZubOWtd9NHv
	QhJcCnRPw+mVy8idmNfGhUk9Tep6AWUk+EHtHTT5N0p6MfhaT643JMFin3/dwEhsTwBe9EXCqIkiE
	UB4zXePw9kN+zLW8N3Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehVd-0005q4-3q; Fri, 29 May 2020 16:05:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehS9-0003ao-95
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:01:51 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3680207BC;
 Fri, 29 May 2020 16:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768108;
 bh=OThRhzT0W+2YIjl/IXncu66M5+xkIfQbpFCdZeIRKw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PSHfARgqhjTP8onmT3QxaJ4QBWexFsKtD/nVuynqF8J4PCcY0laM8VWLcIWTyAle5
 ZCa5x5V8BDwjSSsJJQ84wTeeQlO6jLxHmhA3e2nf+CUdH0ljG98L8LlDoxKiwqG6mv
 aAOvVak4o2IcVtIiDMaTRRlbVKuFocWfECXndUrY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehS6-00GJKc-NC; Fri, 29 May 2020 17:01:47 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 08/24] KVM: Fix spelling in code comments
Date: Fri, 29 May 2020 17:01:05 +0100
Message-Id: <20200529160121.899083-9-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529160121.899083-1-maz@kernel.org>
References: <20200529160121.899083-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090149_378733_367DAD3B 
X-CRM114-Status: GOOD (  27.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fuad Tabba <tabba@google.com>

Fix spelling and typos (e.g., repeated words) in comments.

Signed-off-by: Fuad Tabba <tabba@google.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200401140310.29701-1-tabba@google.com
---
 arch/arm64/kvm/arm.c            | 6 +++---
 arch/arm64/kvm/guest.c          | 4 ++--
 arch/arm64/kvm/hyp/vgic-v3-sr.c | 2 +-
 arch/arm64/kvm/mmio.c           | 2 +-
 arch/arm64/kvm/mmu.c            | 6 +++---
 arch/arm64/kvm/psci.c           | 6 +++---
 arch/arm64/kvm/reset.c          | 6 +++---
 arch/arm64/kvm/sys_regs.c       | 6 +++---
 arch/arm64/kvm/vgic/vgic-v3.c   | 2 +-
 virt/kvm/coalesced_mmio.c       | 2 +-
 virt/kvm/eventfd.c              | 2 +-
 virt/kvm/kvm_main.c             | 2 +-
 12 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index c958bb37b769..ee1b5bba1d08 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -455,9 +455,9 @@ void force_vm_exit(const cpumask_t *mask)
  *
  * The hardware supports a limited set of values with the value zero reserved
  * for the host, so we check if an assigned value belongs to a previous
- * generation, which which requires us to assign a new value. If we're the
- * first to use a VMID for the new generation, we must flush necessary caches
- * and TLBs on all CPUs.
+ * generation, which requires us to assign a new value. If we're the first to
+ * use a VMID for the new generation, we must flush necessary caches and TLBs
+ * on all CPUs.
  */
 static bool need_new_vmid_gen(struct kvm_vmid *vmid)
 {
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 50a279d3ddd7..871d51729b63 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -267,7 +267,7 @@ static int set_sve_vls(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	/*
 	 * Vector lengths supported by the host can't currently be
 	 * hidden from the guest individually: instead we can only set a
-	 * maxmium via ZCR_EL2.LEN.  So, make sure the available vector
+	 * maximum via ZCR_EL2.LEN.  So, make sure the available vector
 	 * lengths match the set requested exactly up to the requested
 	 * maximum:
 	 */
@@ -337,7 +337,7 @@ static int sve_reg_to_region(struct sve_state_reg_region *region,
 	unsigned int reg_num;
 
 	unsigned int reqoffset, reqlen; /* User-requested offset and length */
-	unsigned int maxlen; /* Maxmimum permitted length */
+	unsigned int maxlen; /* Maximum permitted length */
 
 	size_t sve_state_size;
 
diff --git a/arch/arm64/kvm/hyp/vgic-v3-sr.c b/arch/arm64/kvm/hyp/vgic-v3-sr.c
index 49fedf6710f9..6b85773e15c4 100644
--- a/arch/arm64/kvm/hyp/vgic-v3-sr.c
+++ b/arch/arm64/kvm/hyp/vgic-v3-sr.c
@@ -577,7 +577,7 @@ static u8 __hyp_text __vgic_v3_pri_to_pre(u8 pri, u32 vmcr, int grp)
 
 /*
  * The priority value is independent of any of the BPR values, so we
- * normalize it using the minumal BPR value. This guarantees that no
+ * normalize it using the minimal BPR value. This guarantees that no
  * matter what the guest does with its BPR, we can always set/get the
  * same value of a priority.
  */
diff --git a/arch/arm64/kvm/mmio.c b/arch/arm64/kvm/mmio.c
index aedfcff99ac5..4e0366759726 100644
--- a/arch/arm64/kvm/mmio.c
+++ b/arch/arm64/kvm/mmio.c
@@ -131,7 +131,7 @@ int io_mem_abort(struct kvm_vcpu *vcpu, struct kvm_run *run,
 
 	/*
 	 * No valid syndrome? Ask userspace for help if it has
-	 * voluntered to do so, and bail out otherwise.
+	 * volunteered to do so, and bail out otherwise.
 	 */
 	if (!kvm_vcpu_dabt_isvalid(vcpu)) {
 		if (vcpu->kvm->arch.return_nisv_io_abort_to_user) {
diff --git a/arch/arm64/kvm/mmu.c b/arch/arm64/kvm/mmu.c
index e3b9ee268823..29d8f24df944 100644
--- a/arch/arm64/kvm/mmu.c
+++ b/arch/arm64/kvm/mmu.c
@@ -784,7 +784,7 @@ static int __create_hyp_private_mapping(phys_addr_t phys_addr, size_t size,
 	mutex_lock(&kvm_hyp_pgd_mutex);
 
 	/*
-	 * This assumes that we we have enough space below the idmap
+	 * This assumes that we have enough space below the idmap
 	 * page to allocate our VAs. If not, the check below will
 	 * kick. A potential alternative would be to detect that
 	 * overflow and switch to an allocation above the idmap.
@@ -964,7 +964,7 @@ static void stage2_unmap_memslot(struct kvm *kvm,
  * stage2_unmap_vm - Unmap Stage-2 RAM mappings
  * @kvm: The struct kvm pointer
  *
- * Go through the memregions and unmap any reguler RAM
+ * Go through the memregions and unmap any regular RAM
  * backing memory already mapped to the VM.
  */
 void stage2_unmap_vm(struct kvm *kvm)
@@ -2262,7 +2262,7 @@ void kvm_arch_commit_memory_region(struct kvm *kvm,
 {
 	/*
 	 * At this point memslot has been committed and there is an
-	 * allocated dirty_bitmap[], dirty pages will be be tracked while the
+	 * allocated dirty_bitmap[], dirty pages will be tracked while the
 	 * memory slot is write protected.
 	 */
 	if (change != KVM_MR_DELETE && mem->flags & KVM_MEM_LOG_DIRTY_PAGES)
diff --git a/arch/arm64/kvm/psci.c b/arch/arm64/kvm/psci.c
index ae364716ee40..83415e96b589 100644
--- a/arch/arm64/kvm/psci.c
+++ b/arch/arm64/kvm/psci.c
@@ -94,7 +94,7 @@ static unsigned long kvm_psci_vcpu_on(struct kvm_vcpu *source_vcpu)
 
 	/*
 	 * NOTE: We always update r0 (or x0) because for PSCI v0.1
-	 * the general puspose registers are undefined upon CPU_ON.
+	 * the general purpose registers are undefined upon CPU_ON.
 	 */
 	reset_state->r0 = smccc_get_arg3(source_vcpu);
 
@@ -265,10 +265,10 @@ static int kvm_psci_0_2_call(struct kvm_vcpu *vcpu)
 	case PSCI_0_2_FN_SYSTEM_OFF:
 		kvm_psci_system_off(vcpu);
 		/*
-		 * We should'nt be going back to guest VCPU after
+		 * We shouldn't be going back to guest VCPU after
 		 * receiving SYSTEM_OFF request.
 		 *
-		 * If user space accidently/deliberately resumes
+		 * If user space accidentally/deliberately resumes
 		 * guest VCPU after SYSTEM_OFF request then guest
 		 * VCPU should see internal failure from PSCI return
 		 * value. To achieve this, we preload r0 (or x0) with
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 30b7ea680f66..658f3a79617b 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -163,7 +163,7 @@ static int kvm_vcpu_finalize_sve(struct kvm_vcpu *vcpu)
 	vl = vcpu->arch.sve_max_vl;
 
 	/*
-	 * Resposibility for these properties is shared between
+	 * Responsibility for these properties is shared between
 	 * kvm_arm_init_arch_resources(), kvm_vcpu_enable_sve() and
 	 * set_sve_vls().  Double-check here just to be sure:
 	 */
@@ -249,7 +249,7 @@ static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
  * ioctl or as part of handling a request issued by another VCPU in the PSCI
  * handling code.  In the first case, the VCPU will not be loaded, and in the
  * second case the VCPU will be loaded.  Because this function operates purely
- * on the memory-backed valus of system registers, we want to do a full put if
+ * on the memory-backed values of system registers, we want to do a full put if
  * we were loaded (handling a request) and load the values back at the end of
  * the function.  Otherwise we leave the state alone.  In both cases, we
  * disable preemption around the vcpu reset as we would otherwise race with
@@ -357,7 +357,7 @@ void kvm_set_ipa_limit(void)
 	 *
 	 * So clamp the ipa limit further down to limit the number of levels.
 	 * Since we can concatenate upto 16 tables at entry level, we could
-	 * go upto 4bits above the maximum VA addressible with the current
+	 * go upto 4bits above the maximum VA addressable with the current
 	 * number of levels.
 	 */
 	va_max = PGDIR_SHIFT + PAGE_SHIFT - 3;
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 51db934702b6..620eaf11e672 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -34,7 +34,7 @@
 #include "trace.h"
 
 /*
- * All of this file is extremly similar to the ARM coproc.c, but the
+ * All of this file is extremely similar to the ARM coproc.c, but the
  * types are different. My gut feeling is that it should be pretty
  * easy to merge, but that would be an ABI breakage -- again. VFP
  * would also need to be abstracted.
@@ -118,8 +118,8 @@ void vcpu_write_sys_reg(struct kvm_vcpu *vcpu, u64 val, int reg)
 	 * entry to the guest but are only restored on vcpu_load.
 	 *
 	 * Note that MPIDR_EL1 for the guest is set by KVM via VMPIDR_EL2 but
-	 * should never be listed below, because the the MPIDR should only be
-	 * set once, before running the VCPU, and never changed later.
+	 * should never be listed below, because the MPIDR should only be set
+	 * once, before running the VCPU, and never changed later.
 	 */
 	switch (reg) {
 	case CSSELR_EL1:	write_sysreg_s(val, SYS_CSSELR_EL1);	return;
diff --git a/arch/arm64/kvm/vgic/vgic-v3.c b/arch/arm64/kvm/vgic/vgic-v3.c
index 5bc2ab58954b..3ccd6d3cb4d3 100644
--- a/arch/arm64/kvm/vgic/vgic-v3.c
+++ b/arch/arm64/kvm/vgic/vgic-v3.c
@@ -587,7 +587,7 @@ int vgic_v3_probe(const struct gic_kvm_info *info)
 	int ret;
 
 	/*
-	 * The ListRegs field is 5 bits, but there is a architectural
+	 * The ListRegs field is 5 bits, but there is an architectural
 	 * maximum of 16 list registers. Just ignore bit 4...
 	 */
 	kvm_vgic_global_state.nr_lr = (ich_vtr_el2 & 0xf) + 1;
diff --git a/virt/kvm/coalesced_mmio.c b/virt/kvm/coalesced_mmio.c
index 00c747dbc82e..e2c197fd4f9d 100644
--- a/virt/kvm/coalesced_mmio.c
+++ b/virt/kvm/coalesced_mmio.c
@@ -119,7 +119,7 @@ int kvm_coalesced_mmio_init(struct kvm *kvm)
 
 	/*
 	 * We're using this spinlock to sync access to the coalesced ring.
-	 * The list doesn't need it's own lock since device registration and
+	 * The list doesn't need its own lock since device registration and
 	 * unregistration should only happen when kvm->slots_lock is held.
 	 */
 	spin_lock_init(&kvm->ring_lock);
diff --git a/virt/kvm/eventfd.c b/virt/kvm/eventfd.c
index 67b6fc153e9c..e586d1395c28 100644
--- a/virt/kvm/eventfd.c
+++ b/virt/kvm/eventfd.c
@@ -116,7 +116,7 @@ irqfd_shutdown(struct work_struct *work)
 	struct kvm *kvm = irqfd->kvm;
 	u64 cnt;
 
-	/* Make sure irqfd has been initalized in assign path. */
+	/* Make sure irqfd has been initialized in assign path. */
 	synchronize_srcu(&kvm->irq_srcu);
 
 	/*
diff --git a/virt/kvm/kvm_main.c b/virt/kvm/kvm_main.c
index 74bdb7bf3295..f57792b1541b 100644
--- a/virt/kvm/kvm_main.c
+++ b/virt/kvm/kvm_main.c
@@ -2799,7 +2799,7 @@ EXPORT_SYMBOL_GPL(kvm_vcpu_yield_to);
  *
  *  (a) VCPU which has not done pl-exit or cpu relax intercepted recently
  *  (preempted lock holder), indicated by @in_spin_loop.
- *  Set at the beiginning and cleared at the end of interception/PLE handler.
+ *  Set at the beginning and cleared at the end of interception/PLE handler.
  *
  *  (b) VCPU which has done pl-exit/ cpu relax intercepted but did not get
  *  chance last time (mostly it has become eligible now since we have probably
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
