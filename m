Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 575F9733EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=q/iZNKYoS0xwp7yjlrj2PkK8MA5Z12k4iic6FouFibk=; b=YPiRwcNqJS153FR4Gk3diRVGOT
	qknt+7F7EkpqQQOiBln9azrmKkwlH9XTkJMDYr7O/zlWikanY7djI/70swqOqYpvKLRGvyq745ePb
	uicORyYGG4oacwcjLS/Bvq1tv4jN9iiB13eXv9YUOVbW9Y/IEPTBUlXaXdSbMhBFJszL/pDX3FfTE
	UmulB8tdiPuYCQPLEwyU+t4KYYqf/K+obB/u81YuP8vu92iKAh5dxNPSahGZNBxOBUiGQcknCknTv
	wTc0WAa6erUvQUBeUmbjB5ABMCinjTs+Z/sExmZOv2QR+KNeWiIGT8XDam4ln5/v73Ukkas7FT9YK
	24xWXtSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqK97-0003vs-TH; Wed, 24 Jul 2019 16:29:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqK5i-0000K2-W5
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:26:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C731628;
 Wed, 24 Jul 2019 09:26:10 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6FE1A3F71F;
 Wed, 24 Jul 2019 09:26:09 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 15/15] kvm/arm: Align the VMID allocation with the arm64
 ASID one
Date: Wed, 24 Jul 2019 17:25:34 +0100
Message-Id: <20190724162534.7390-16-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190724162534.7390-1-julien.grall@arm.com>
References: <20190724162534.7390-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_092611_172958_6C87049B 
X-CRM114-Status: GOOD (  32.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: suzuki.poulose@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 julien.thierry@arm.com, will.deacon@arm.com,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment, the VMID algorithm will send an SGI to all the CPUs to
force an exit and then broadcast a full TLB flush and I-Cache
invalidation.

This patch re-use the new ASID allocator. The
benefits are:
    - CPUs are not forced to exit at roll-over. Instead the VMID will be
    marked reserved and the context will be flushed at next exit. This
    will reduce the IPIs traffic.
    - Context invalidation is now per-CPU rather than broadcasted.
    - Catalin has a formal model of the ASID allocator.

With the new algo, the code is now adapted:
    - The function __kvm_flush_vm_context() has been renamed to
    __kvm_tlb_flush_local_all() and now only flushing the current CPU
    context.
    - The call to update_vttbr() will be done with preemption disabled
    as the new algo requires to store information per-CPU.
    - The TLBs associated to EL1 will be flushed when booting a CPU to
    deal with stale information. This was previously done on the
    allocation of the first VMID of a new generation.

The measurement was made on a Seattle based SoC (8 CPUs), with the
number of VMID limited to 4-bit. The test involves running concurrently 40
guests with 2 vCPUs. Each guest will then execute hackbench 5 times
before exiting.

The performance difference between the current algo and the new one are:
    - 2.5% less exit from the guest
    - 22.4% more flush, although they are now local rather than
    broadcasted
    - 0.11% faster (just for the record)

Signed-off-by: Julien Grall <julien.grall@arm.com>

----
    Looking at the __kvm_flush_vm_context, it might be possible to
    reduce more the overhead by removing the I-Cache flush for other
    cache than VIPT. This has been left aside for now.

    Changes in v3:
        - Free resource if initialization failed
        - s/__kvm_flush_cpu_vmid_context/__kvm_tlb_flush_local_all/
        - s/asid/id/ in kvm_vmid to avoid confusion
        - Generate the VMID in kvm_get_vttbr() rather than using a
        callback in the ASID allocator
        - Use smp_processor_id() rather than {get, put}_cpu() as the
        code should already be called from non-preemptible context
        - Mention the formal model in the commit message
---
 arch/arm/include/asm/kvm_asm.h    |   2 +-
 arch/arm/include/asm/kvm_host.h   |   5 +-
 arch/arm/include/asm/kvm_hyp.h    |   1 +
 arch/arm/include/asm/kvm_mmu.h    |   3 +-
 arch/arm/kvm/hyp/tlb.c            |   8 +--
 arch/arm64/include/asm/kvm_asid.h |   8 +++
 arch/arm64/include/asm/kvm_asm.h  |   2 +-
 arch/arm64/include/asm/kvm_host.h |   5 +-
 arch/arm64/include/asm/kvm_mmu.h  |   3 +-
 arch/arm64/kvm/hyp/tlb.c          |  10 +--
 virt/kvm/arm/arm.c                | 125 ++++++++++++++------------------------
 11 files changed, 70 insertions(+), 102 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_asid.h

diff --git a/arch/arm/include/asm/kvm_asm.h b/arch/arm/include/asm/kvm_asm.h
index f615830f9f57..b6342258b466 100644
--- a/arch/arm/include/asm/kvm_asm.h
+++ b/arch/arm/include/asm/kvm_asm.h
@@ -53,10 +53,10 @@ struct kvm_vcpu;
 extern char __kvm_hyp_init[];
 extern char __kvm_hyp_init_end[];
 
-extern void __kvm_flush_vm_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);
 extern void __kvm_tlb_flush_vmid(struct kvm *kvm);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
+extern void __kvm_tlb_flush_local_all(void);
 
 extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
 
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 8a37c8e89777..9b534f73725f 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -49,9 +49,7 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
 void kvm_reset_coprocs(struct kvm_vcpu *vcpu);
 
 struct kvm_vmid {
-	/* The VMID generation used for the virt. memory system */
-	u64    vmid_gen;
-	u32    vmid;
+	atomic64_t id;
 };
 
 struct kvm_arch {
@@ -257,7 +255,6 @@ unsigned long __kvm_call_hyp(void *hypfn, ...);
 		ret;							\
 	})
 
-void force_vm_exit(const cpumask_t *mask);
 int __kvm_arm_vcpu_get_events(struct kvm_vcpu *vcpu,
 			      struct kvm_vcpu_events *events);
 
diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
index 40e9034db601..46484a516e76 100644
--- a/arch/arm/include/asm/kvm_hyp.h
+++ b/arch/arm/include/asm/kvm_hyp.h
@@ -64,6 +64,7 @@
 #define TLBIALLIS	__ACCESS_CP15(c8, 0, c3, 0)
 #define TLBIALL		__ACCESS_CP15(c8, 0, c7, 0)
 #define TLBIALLNSNHIS	__ACCESS_CP15(c8, 4, c3, 4)
+#define TLBIALLNSNH	__ACCESS_CP15(c8, 4, c7, 4)
 #define PRRR		__ACCESS_CP15(c10, 0, c2, 0)
 #define NMRR		__ACCESS_CP15(c10, 0, c2, 1)
 #define AMAIR0		__ACCESS_CP15(c10, 0, c3, 0)
diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 0d84d50bf9ba..d7208e7b01bd 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -426,7 +426,8 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 	u64 vmid_field, baddr;
 
 	baddr = kvm->arch.pgd_phys;
-	vmid_field = (u64)vmid->vmid << VTTBR_VMID_SHIFT;
+	vmid_field = atomic64_read(&vmid->id) << VTTBR_VMID_SHIFT;
+	vmid_field &= VTTBR_VMID_MASK(kvm_get_vmid_bits());
 	return kvm_phys_to_vttbr(baddr) | vmid_field;
 }
 
diff --git a/arch/arm/kvm/hyp/tlb.c b/arch/arm/kvm/hyp/tlb.c
index 848f27bbad9d..af0108350a35 100644
--- a/arch/arm/kvm/hyp/tlb.c
+++ b/arch/arm/kvm/hyp/tlb.c
@@ -60,9 +60,9 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	write_sysreg(0, VTTBR);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __hyp_text __kvm_tlb_flush_local_all(void)
 {
-	write_sysreg(0, TLBIALLNSNHIS);
-	write_sysreg(0, ICIALLUIS);
-	dsb(ish);
+	write_sysreg(0, TLBIALLNSNH);
+	write_sysreg(0, ICIALLU);
+	dsb(nsh);
 }
diff --git a/arch/arm64/include/asm/kvm_asid.h b/arch/arm64/include/asm/kvm_asid.h
new file mode 100644
index 000000000000..8b586e43c094
--- /dev/null
+++ b/arch/arm64/include/asm/kvm_asid.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ARM64_KVM_ASID_H__
+#define __ARM64_KVM_ASID_H__
+
+#include <asm/asid.h>
+
+#endif /* __ARM64_KVM_ASID_H__ */
+
diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 44a243754c1b..0e19e8f1283a 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -57,10 +57,10 @@ extern char __kvm_hyp_init_end[];
 
 extern char __kvm_hyp_vector[];
 
-extern void __kvm_flush_vm_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);
 extern void __kvm_tlb_flush_vmid(struct kvm *kvm);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
+extern void __kvm_tlb_flush_local_all(void);
 
 extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
 
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f656169db8c3..501121a82bbc 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -57,9 +57,7 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
 
 struct kvm_vmid {
-	/* The VMID generation used for the virt. memory system */
-	u64    vmid_gen;
-	u32    vmid;
+	atomic64_t id;
 };
 
 struct kvm_arch {
@@ -467,7 +465,6 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 		ret;							\
 	})
 
-void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
 int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 2ce8055a84b8..0c5b36af4abe 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -597,7 +597,8 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 	u64 cnp = system_supports_cnp() ? VTTBR_CNP_BIT : 0;
 
 	baddr = kvm->arch.pgd_phys;
-	vmid_field = (u64)vmid->vmid << VTTBR_VMID_SHIFT;
+	vmid_field = atomic64_read(&vmid->id) << VTTBR_VMID_SHIFT;
+	vmid_field &= VTTBR_VMID_MASK(kvm_get_vmid_bits());
 	return kvm_phys_to_vttbr(baddr) | vmid_field | cnp;
 }
 
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index d49a14497715..46839c70461a 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -189,10 +189,10 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	__tlb_switch_to_host()(kvm, &cxt);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __hyp_text __kvm_tlb_flush_local_all(void)
 {
-	dsb(ishst);
-	__tlbi(alle1is);
-	asm volatile("ic ialluis" : : );
-	dsb(ish);
+	dsb(nshst);
+	__tlbi(alle1);
+	asm volatile("ic iallu" : : );
+	dsb(nsh);
 }
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index f645c0fbf7ec..c01b6036c909 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -32,6 +32,7 @@
 #include <asm/tlbflush.h>
 #include <asm/cacheflush.h>
 #include <asm/cpufeature.h>
+#include <asm/lib_asid.h>
 #include <asm/virt.h>
 #include <asm/kvm_arm.h>
 #include <asm/kvm_asm.h>
@@ -50,10 +51,10 @@ static DEFINE_PER_CPU(unsigned long, kvm_arm_hyp_stack_page);
 /* Per-CPU variable containing the currently running vcpu. */
 static DEFINE_PER_CPU(struct kvm_vcpu *, kvm_arm_running_vcpu);
 
-/* The VMID used in the VTTBR */
-static atomic64_t kvm_vmid_gen = ATOMIC64_INIT(1);
-static u32 kvm_next_vmid;
-static DEFINE_SPINLOCK(kvm_vmid_lock);
+static DEFINE_PER_CPU(atomic64_t, active_vmids);
+static DEFINE_PER_CPU(u64, reserved_vmids);
+
+struct asid_info vmid_info;
 
 static bool vgic_present;
 
@@ -128,9 +129,6 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 
 	kvm_vgic_early_init(kvm);
 
-	/* Mark the initial VMID generation invalid */
-	kvm->arch.vmid.vmid_gen = 0;
-
 	/* The maximum number of VCPUs is limited by the host's GIC model */
 	kvm->arch.max_vcpus = vgic_present ?
 				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
@@ -449,35 +447,9 @@ bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
 	return vcpu_mode_priv(vcpu);
 }
 
-/* Just ensure a guest exit from a particular CPU */
-static void exit_vm_noop(void *info)
-{
-}
-
-void force_vm_exit(const cpumask_t *mask)
-{
-	preempt_disable();
-	smp_call_function_many(mask, exit_vm_noop, NULL, true);
-	preempt_enable();
-}
-
-/**
- * need_new_vmid_gen - check that the VMID is still valid
- * @vmid: The VMID to check
- *
- * return true if there is a new generation of VMIDs being used
- *
- * The hardware supports a limited set of values with the value zero reserved
- * for the host, so we check if an assigned value belongs to a previous
- * generation, which which requires us to assign a new value. If we're the
- * first to use a VMID for the new generation, we must flush necessary caches
- * and TLBs on all CPUs.
- */
-static bool need_new_vmid_gen(struct kvm_vmid *vmid)
+static void vmid_flush_cpu_ctxt(void)
 {
-	u64 current_vmid_gen = atomic64_read(&kvm_vmid_gen);
-	smp_rmb(); /* Orders read of kvm_vmid_gen and kvm->arch.vmid */
-	return unlikely(READ_ONCE(vmid->vmid_gen) != current_vmid_gen);
+	kvm_call_hyp(__kvm_tlb_flush_local_all);
 }
 
 /**
@@ -487,48 +459,9 @@ static bool need_new_vmid_gen(struct kvm_vmid *vmid)
  */
 static void update_vmid(struct kvm_vmid *vmid)
 {
-	if (!need_new_vmid_gen(vmid))
-		return;
-
-	spin_lock(&kvm_vmid_lock);
-
-	/*
-	 * We need to re-check the vmid_gen here to ensure that if another vcpu
-	 * already allocated a valid vmid for this vm, then this vcpu should
-	 * use the same vmid.
-	 */
-	if (!need_new_vmid_gen(vmid)) {
-		spin_unlock(&kvm_vmid_lock);
-		return;
-	}
-
-	/* First user of a new VMID generation? */
-	if (unlikely(kvm_next_vmid == 0)) {
-		atomic64_inc(&kvm_vmid_gen);
-		kvm_next_vmid = 1;
-
-		/*
-		 * On SMP we know no other CPUs can use this CPU's or each
-		 * other's VMID after force_vm_exit returns since the
-		 * kvm_vmid_lock blocks them from reentry to the guest.
-		 */
-		force_vm_exit(cpu_all_mask);
-		/*
-		 * Now broadcast TLB + ICACHE invalidation over the inner
-		 * shareable domain to make sure all data structures are
-		 * clean.
-		 */
-		kvm_call_hyp(__kvm_flush_vm_context);
-	}
+	int cpu = smp_processor_id();
 
-	vmid->vmid = kvm_next_vmid;
-	kvm_next_vmid++;
-	kvm_next_vmid &= (1 << kvm_get_vmid_bits()) - 1;
-
-	smp_wmb();
-	WRITE_ONCE(vmid->vmid_gen, atomic64_read(&kvm_vmid_gen));
-
-	spin_unlock(&kvm_vmid_lock);
+	asid_check_context(&vmid_info, &vmid->id, cpu);
 }
 
 static int kvm_vcpu_first_run_init(struct kvm_vcpu *vcpu)
@@ -682,8 +615,6 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 */
 		cond_resched();
 
-		update_vmid(&vcpu->kvm->arch.vmid);
-
 		check_vcpu_requests(vcpu);
 
 		/*
@@ -693,6 +624,15 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 */
 		preempt_disable();
 
+		/*
+		 * The ASID/VMID allocator only tracks active VMIDs per
+		 * physical CPU, and therefore the VMID allocated may not be
+		 * preserved on VMID roll-over if the task was preempted,
+		 * making a thread's VMID inactive. So we need to call
+		 * update_vttbr in non-premptible context.
+		 */
+		update_vmid(&vcpu->kvm->arch.vmid);
+
 		kvm_pmu_flush_hwstate(vcpu);
 
 		local_irq_disable();
@@ -731,8 +671,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 */
 		smp_store_mb(vcpu->mode, IN_GUEST_MODE);
 
-		if (ret <= 0 || need_new_vmid_gen(&vcpu->kvm->arch.vmid) ||
-		    kvm_request_pending(vcpu)) {
+		if (ret <= 0 || kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
 			isb(); /* Ensure work in x_flush_hwstate is committed */
 			kvm_pmu_sync_hwstate(vcpu);
@@ -1328,6 +1267,8 @@ static void cpu_hyp_reset(void)
 {
 	if (!is_kernel_in_hyp_mode())
 		__hyp_reset_vectors();
+
+	kvm_call_hyp(__kvm_tlb_flush_local_all);
 }
 
 static void cpu_hyp_reinit(void)
@@ -1431,11 +1372,32 @@ static inline void hyp_cpu_pm_exit(void)
 
 static int init_common_resources(void)
 {
+	int err;
+
+	/*
+	 * Initialize the ASID allocator telling it to allocate a single
+	 * VMID per VM.
+	 */
+	err = asid_allocator_init(&vmid_info, kvm_get_vmid_bits(), 1,
+				  vmid_flush_cpu_ctxt);
+	if (err) {
+		kvm_err("Failed to initialize VMID allocator.\n");
+		return err;
+	}
+
+	vmid_info.active = &active_vmids;
+	vmid_info.reserved = &reserved_vmids;
+
 	kvm_set_ipa_limit();
 
 	return 0;
 }
 
+static void free_common_resources(void)
+{
+	asid_allocator_free(&vmid_info);
+}
+
 static int init_subsystems(void)
 {
 	int err = 0;
@@ -1684,7 +1646,7 @@ int kvm_arch_init(void *opaque)
 
 	err = kvm_arm_init_sve();
 	if (err)
-		return err;
+		goto out_err;
 
 	if (!in_hyp_mode) {
 		err = init_hyp_mode();
@@ -1707,6 +1669,7 @@ int kvm_arch_init(void *opaque)
 	if (!in_hyp_mode)
 		teardown_hyp_mode();
 out_err:
+	free_common_resources();
 	return err;
 }
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
