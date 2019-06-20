Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5206C4CE5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 15:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OVHn6tMNEYasVRwAjNs3Npqmi7UWz9smaFwLK4uZayU=; b=U0isqsKrVaEtr2DdiXjzoRKjaO
	YeYiP/VsRwGHV4mA7pWkPUuGO9A8h6tqgZ+TRTsQskparLJY2AAPvDfrPL/ATnc9jPw2LB1f5VcQ3
	epifZyz+i0+T9MHghGCQnDooG0e5SxcE75pB+aI00Hqx+oK0uBJyYh9uTzoKdZFn530l1+x0rOjss
	I3pCNjnGrWjYh9BWNSqZnNzxYQ3nmMCFFEGmBrFFF4RdgAr5zW+4Qdz7Obm7TuAmwvMh48Xpjz++N
	RjfrSwTPW/Wa4RipkiEMamKNcocnPFFDvcFLcGhCWzj7P2art1MlsjoHk22qb5MT3ReNmsnR03N7M
	EWDT3jAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdwqM-0001pq-EC; Thu, 20 Jun 2019 13:11:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdwm5-0005T8-V4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 13:06:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0BA7411B3;
 Thu, 20 Jun 2019 06:06:45 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6B973F718;
 Thu, 20 Jun 2019 06:06:43 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
Subject: [RFC v2 14/14] kvm/arm: Align the VMID allocation with the arm64 ASID
 one
Date: Thu, 20 Jun 2019 14:06:08 +0100
Message-Id: <20190620130608.17230-15-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190620130608.17230-1-julien.grall@arm.com>
References: <20190620130608.17230-1-julien.grall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_060646_165589_F4D29AD0 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

With the new algo, the code is now adapted:
    - The function __kvm_flush_vm_context() has been renamed to
    __kvm_flush_cpu_vmid_context and now only flushing the current CPU context.
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
---
 arch/arm/include/asm/kvm_asm.h    |   2 +-
 arch/arm/include/asm/kvm_host.h   |   5 +-
 arch/arm/include/asm/kvm_hyp.h    |   1 +
 arch/arm/kvm/hyp/tlb.c            |   8 +--
 arch/arm64/include/asm/kvm_asid.h |   8 +++
 arch/arm64/include/asm/kvm_asm.h  |   2 +-
 arch/arm64/include/asm/kvm_host.h |   5 +-
 arch/arm64/kvm/hyp/tlb.c          |  10 ++--
 virt/kvm/arm/arm.c                | 112 +++++++++++++-------------------------
 9 files changed, 61 insertions(+), 92 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_asid.h

diff --git a/arch/arm/include/asm/kvm_asm.h b/arch/arm/include/asm/kvm_asm.h
index f615830f9f57..c2a2e6ef1e2f 100644
--- a/arch/arm/include/asm/kvm_asm.h
+++ b/arch/arm/include/asm/kvm_asm.h
@@ -53,7 +53,7 @@ struct kvm_vcpu;
 extern char __kvm_hyp_init[];
 extern char __kvm_hyp_init_end[];
 
-extern void __kvm_flush_vm_context(void);
+extern void __kvm_flush_cpu_vmid_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);
 extern void __kvm_tlb_flush_vmid(struct kvm *kvm);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index f80418ddeb60..7b894ff16688 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -50,8 +50,8 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu);
 void kvm_reset_coprocs(struct kvm_vcpu *vcpu);
 
 struct kvm_vmid {
-	/* The VMID generation used for the virt. memory system */
-	u64    vmid_gen;
+	/* The ASID used for the ASID allocator */
+	atomic64_t asid;
 	u32    vmid;
 };
 
@@ -259,7 +259,6 @@ unsigned long __kvm_call_hyp(void *hypfn, ...);
 		ret;							\
 	})
 
-void force_vm_exit(const cpumask_t *mask);
 int __kvm_arm_vcpu_get_events(struct kvm_vcpu *vcpu,
 			      struct kvm_vcpu_events *events);
 
diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
index 87bcd18df8d5..c3d1011ca1bf 100644
--- a/arch/arm/include/asm/kvm_hyp.h
+++ b/arch/arm/include/asm/kvm_hyp.h
@@ -75,6 +75,7 @@
 #define TLBIALLIS	__ACCESS_CP15(c8, 0, c3, 0)
 #define TLBIALL		__ACCESS_CP15(c8, 0, c7, 0)
 #define TLBIALLNSNHIS	__ACCESS_CP15(c8, 4, c3, 4)
+#define TLBIALLNSNH	__ACCESS_CP15(c8, 4, c7, 4)
 #define PRRR		__ACCESS_CP15(c10, 0, c2, 0)
 #define NMRR		__ACCESS_CP15(c10, 0, c2, 1)
 #define AMAIR0		__ACCESS_CP15(c10, 0, c3, 0)
diff --git a/arch/arm/kvm/hyp/tlb.c b/arch/arm/kvm/hyp/tlb.c
index 8e4afba73635..42b9ab47fc94 100644
--- a/arch/arm/kvm/hyp/tlb.c
+++ b/arch/arm/kvm/hyp/tlb.c
@@ -71,9 +71,9 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	write_sysreg(0, VTTBR);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __hyp_text __kvm_flush_cpu_vmid_context(void)
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
index ff73f5462aca..06821f548c0f 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -62,7 +62,7 @@ extern char __kvm_hyp_init_end[];
 
 extern char __kvm_hyp_vector[];
 
-extern void __kvm_flush_vm_context(void);
+extern void __kvm_flush_cpu_vmid_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm *kvm, phys_addr_t ipa);
 extern void __kvm_tlb_flush_vmid(struct kvm *kvm);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 4bcd9c1291d5..7ef45b7da4eb 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -68,8 +68,8 @@ int kvm_arch_vm_ioctl_check_extension(struct kvm *kvm, long ext);
 void __extended_idmap_trampoline(phys_addr_t boot_pgd, phys_addr_t idmap_start);
 
 struct kvm_vmid {
-	/* The VMID generation used for the virt. memory system */
-	u64    vmid_gen;
+	/* The ASID used for the ASID allocator */
+	atomic64_t asid;
 	u32    vmid;
 };
 
@@ -478,7 +478,6 @@ u64 __kvm_call_hyp(void *hypfn, ...);
 		ret;							\
 	})
 
-void force_vm_exit(const cpumask_t *mask);
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
 int handle_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index 76c30866069e..e80e922988c1 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -200,10 +200,10 @@ void __hyp_text __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu)
 	__tlb_switch_to_host()(kvm, &cxt);
 }
 
-void __hyp_text __kvm_flush_vm_context(void)
+void __hyp_text __kvm_flush_cpu_vmid_context(void)
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
index bd5c55916d0d..e906278a67cd 100644
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
@@ -449,35 +447,17 @@ bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
 	return vcpu_mode_priv(vcpu);
 }
 
-/* Just ensure a guest exit from a particular CPU */
-static void exit_vm_noop(void *info)
+static void vmid_flush_cpu_ctxt(void)
 {
+	kvm_call_hyp(__kvm_flush_cpu_vmid_context);
 }
 
-void force_vm_exit(const cpumask_t *mask)
+static void vmid_update_ctxt(void *ctxt)
 {
-	preempt_disable();
-	smp_call_function_many(mask, exit_vm_noop, NULL, true);
-	preempt_enable();
-}
+	struct kvm_vmid *vmid = ctxt;
+	u64 asid = atomic64_read(&vmid->asid);
 
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
-{
-	u64 current_vmid_gen = atomic64_read(&kvm_vmid_gen);
-	smp_rmb(); /* Orders read of kvm_vmid_gen and kvm->arch.vmid */
-	return unlikely(READ_ONCE(vmid->vmid_gen) != current_vmid_gen);
+	vmid->vmid = asid & ((1ULL << kvm_get_vmid_bits()) - 1);
 }
 
 /**
@@ -487,48 +467,11 @@ static bool need_new_vmid_gen(struct kvm_vmid *vmid)
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
+	int cpu = get_cpu();
 
-	vmid->vmid = kvm_next_vmid;
-	kvm_next_vmid++;
-	kvm_next_vmid &= (1 << kvm_get_vmid_bits()) - 1;
+	asid_check_context(&vmid_info, &vmid->asid, cpu, vmid);
 
-	smp_wmb();
-	WRITE_ONCE(vmid->vmid_gen, atomic64_read(&kvm_vmid_gen));
-
-	spin_unlock(&kvm_vmid_lock);
+	put_cpu();
 }
 
 static int kvm_vcpu_first_run_init(struct kvm_vcpu *vcpu)
@@ -682,8 +625,6 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 */
 		cond_resched();
 
-		update_vmid(&vcpu->kvm->arch.vmid);
-
 		check_vcpu_requests(vcpu);
 
 		/*
@@ -693,6 +634,15 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
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
@@ -731,8 +681,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		 */
 		smp_store_mb(vcpu->mode, IN_GUEST_MODE);
 
-		if (ret <= 0 || need_new_vmid_gen(&vcpu->kvm->arch.vmid) ||
-		    kvm_request_pending(vcpu)) {
+		if (ret <= 0 || kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
 			isb(); /* Ensure work in x_flush_hwstate is committed */
 			kvm_pmu_sync_hwstate(vcpu);
@@ -1322,6 +1271,8 @@ static void cpu_init_hyp_mode(void *dummy)
 
 	__cpu_init_hyp_mode(pgd_ptr, hyp_stack_ptr, vector_ptr);
 	__cpu_init_stage2();
+
+	kvm_call_hyp(__kvm_flush_cpu_vmid_context);
 }
 
 static void cpu_hyp_reset(void)
@@ -1429,6 +1380,17 @@ static inline void hyp_cpu_pm_exit(void)
 
 static int init_common_resources(void)
 {
+	/*
+	 * Initialize the ASID allocator telling it to allocate a single
+	 * VMID per VM.
+	 */
+	if (asid_allocator_init(&vmid_info, kvm_get_vmid_bits(), 1,
+				vmid_flush_cpu_ctxt, vmid_update_ctxt))
+		panic("Failed to initialize VMID allocator\n");
+
+	vmid_info.active = &active_vmids;
+	vmid_info.reserved = &reserved_vmids;
+
 	kvm_set_ipa_limit();
 
 	return 0;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
