Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C629A925ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:05:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h29BE49sHemHgtOlepoXDqnEk60Q6CJ4NmwV9MKyWtc=; b=Md6s0NcU1klXvQ
	WNx7IqMAjz7SXZYrnRx5bFMQaHbEb6xajC73zmdLVFurOs+AS3uomPDxdfcTNehLMa5JuSGSsXQGi
	tuXIFznbEg2pSicAbBPNF7DeGkF+1b2AabYY81X6CNKj+Yd3hu2pqhWKEvshtf5f+BU9TYRDeB+El
	uApyPRGLVvci4X8RuoGLAFGeLAXhi7jJuQc8kp/vx3SFm9ADjmRCPSbJt1vHxBXAa+h/Ng5j/hHzp
	lEVwhBtzs33lQA/T4AsBorPf3cBDsBg+rPUtqpY7JPQEHmjF2Bl/cNPXU90oKfsYTo2A6n/JfaIfr
	5t+LtMLaqkMcyOB6df+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziII-0007Xc-6V; Mon, 19 Aug 2019 14:05:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hziHG-0005NK-0X
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:04:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D4CD360;
 Mon, 19 Aug 2019 07:04:53 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0AAE03F718;
 Mon, 19 Aug 2019 07:04:50 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 4/9] KVM: arm64: Support stolen time reporting via shared
 structure
Date: Mon, 19 Aug 2019 15:04:31 +0100
Message-Id: <20190819140436.12207-5-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190819140436.12207-1-steven.price@arm.com>
References: <20190819140436.12207-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_070454_228048_25EA3277 
X-CRM114-Status: GOOD (  20.84  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement the service call for configuring a shared structure between a
VCPU and the hypervisor in which the hypervisor can write the time
stolen from the VCPU's execution time by other tasks on the host.

The hypervisor allocates memory which is placed at an IPA chosen by user
space. The hypervisor then uses WRITE_ONCE() to update the shared
structure ensuring single copy atomicity of the 64-bit unsigned value
that reports stolen time in nanoseconds.

Whenever stolen time is enabled by the guest, the stolen time counter is
reset.

The stolen time itself is retrieved from the sched_info structure
maintained by the Linux scheduler code. We enable SCHEDSTATS when
selecting KVM Kconfig to ensure this value is meaningful.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm/include/asm/kvm_host.h   | 15 +++++++
 arch/arm64/include/asm/kvm_host.h | 16 ++++++-
 arch/arm64/kvm/Kconfig            |  1 +
 include/linux/kvm_types.h         |  2 +
 virt/kvm/arm/arm.c                | 19 +++++++++
 virt/kvm/arm/hypercalls.c         |  3 ++
 virt/kvm/arm/pvtime.c             | 71 +++++++++++++++++++++++++++++++
 7 files changed, 126 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
index 369b5d2d54bf..14d61a84c270 100644
--- a/arch/arm/include/asm/kvm_host.h
+++ b/arch/arm/include/asm/kvm_host.h
@@ -39,6 +39,7 @@
 	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
 #define KVM_REQ_IRQ_PENDING	KVM_ARCH_REQ(1)
 #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
+#define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
 
 DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 
@@ -77,6 +78,12 @@ struct kvm_arch {
 
 	/* Mandated version of PSCI */
 	u32 psci_version;
+
+	struct kvm_arch_pvtime {
+		struct gfn_to_hva_cache st_ghc;
+		gpa_t st_base;
+		u64 st_size;
+	} pvtime;
 };
 
 #define KVM_NR_MEM_OBJS     40
@@ -328,6 +335,14 @@ static inline int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
 {
 	return SMCCC_RET_NOT_SUPPORTED;
 }
+static inline int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
+{
+	return SMCCC_RET_NOT_SUPPORTED;
+}
+static inline int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
+{
+	return -ENOTSUPP;
+}
 
 void kvm_mmu_wp_memory_region(struct kvm *kvm, int slot);
 
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 583b3639062a..627ecbdd0c59 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -44,6 +44,7 @@
 	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
 #define KVM_REQ_IRQ_PENDING	KVM_ARCH_REQ(1)
 #define KVM_REQ_VCPU_RESET	KVM_ARCH_REQ(2)
+#define KVM_REQ_RECORD_STEAL	KVM_ARCH_REQ(3)
 
 DECLARE_STATIC_KEY_FALSE(userspace_irqchip_in_use);
 
@@ -83,6 +84,12 @@ struct kvm_arch {
 
 	/* Mandated version of PSCI */
 	u32 psci_version;
+
+	struct kvm_arch_pvtime {
+		struct gfn_to_hva_cache st_ghc;
+		gpa_t st_base;
+		u64 st_size;
+	} pvtime;
 };
 
 #define KVM_NR_MEM_OBJS     40
@@ -338,8 +345,13 @@ struct kvm_vcpu_arch {
 	/* True when deferrable sysregs are loaded on the physical CPU,
 	 * see kvm_vcpu_load_sysregs and kvm_vcpu_put_sysregs. */
 	bool sysregs_loaded_on_cpu;
-};
 
+	/* Guest PV state */
+	struct {
+		u64 steal;
+		u64 last_steal;
+	} steal;
+};
 /* Pointer to the vcpu's SVE FFR for sve_{save,load}_state() */
 #define vcpu_sve_pffr(vcpu) ((void *)((char *)((vcpu)->arch.sve_state) + \
 				      sve_ffr_offset((vcpu)->arch.sve_max_vl)))
@@ -479,6 +491,8 @@ int kvm_perf_init(void);
 int kvm_perf_teardown(void);
 
 int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
+int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu);
+int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init);
 
 void kvm_set_sei_esr(struct kvm_vcpu *vcpu, u64 syndrome);
 
diff --git a/arch/arm64/kvm/Kconfig b/arch/arm64/kvm/Kconfig
index a67121d419a2..d8b88e40d223 100644
--- a/arch/arm64/kvm/Kconfig
+++ b/arch/arm64/kvm/Kconfig
@@ -39,6 +39,7 @@ config KVM
 	select IRQ_BYPASS_MANAGER
 	select HAVE_KVM_IRQ_BYPASS
 	select HAVE_KVM_VCPU_RUN_PID_CHANGE
+	select SCHEDSTATS
 	---help---
 	  Support hosting virtualized guest machines.
 	  We don't support KVM with 16K page tables yet, due to the multiple
diff --git a/include/linux/kvm_types.h b/include/linux/kvm_types.h
index bde5374ae021..1c88e69db3d9 100644
--- a/include/linux/kvm_types.h
+++ b/include/linux/kvm_types.h
@@ -35,6 +35,8 @@ typedef unsigned long  gva_t;
 typedef u64            gpa_t;
 typedef u64            gfn_t;
 
+#define GPA_INVALID	(~(gpa_t)0)
+
 typedef unsigned long  hva_t;
 typedef u64            hpa_t;
 typedef u64            hfn_t;
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 35a069815baf..53cc80e98d8b 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -40,6 +40,10 @@
 #include <asm/kvm_coproc.h>
 #include <asm/sections.h>
 
+#include <kvm/arm_hypercalls.h>
+#include <kvm/arm_pmu.h>
+#include <kvm/arm_psci.h>
+
 #ifdef REQUIRES_VIRT
 __asm__(".arch_extension	virt");
 #endif
@@ -135,6 +139,7 @@ int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
 	kvm->arch.max_vcpus = vgic_present ?
 				kvm_vgic_get_max_vcpus() : KVM_MAX_VCPUS;
 
+	kvm->arch.pvtime.st_base = GPA_INVALID;
 	return ret;
 out_free_stage2_pgd:
 	kvm_free_stage2_pgd(kvm);
@@ -379,6 +384,8 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	kvm_vcpu_load_sysregs(vcpu);
 	kvm_arch_vcpu_load_fp(vcpu);
 	kvm_vcpu_pmu_restore_guest(vcpu);
+	if (vcpu->kvm->arch.pvtime.st_base != GPA_INVALID)
+		kvm_make_request(KVM_REQ_RECORD_STEAL, vcpu);
 
 	if (single_task_running())
 		vcpu_clear_wfe_traps(vcpu);
@@ -625,6 +632,15 @@ static void vcpu_req_sleep(struct kvm_vcpu *vcpu)
 	smp_rmb();
 }
 
+static void vcpu_req_record_steal(struct kvm_vcpu *vcpu)
+{
+	int idx;
+
+	idx = srcu_read_lock(&vcpu->kvm->srcu);
+	kvm_update_stolen_time(vcpu, false);
+	srcu_read_unlock(&vcpu->kvm->srcu, idx);
+}
+
 static int kvm_vcpu_initialized(struct kvm_vcpu *vcpu)
 {
 	return vcpu->arch.target >= 0;
@@ -644,6 +660,9 @@ static void check_vcpu_requests(struct kvm_vcpu *vcpu)
 		 * that a VCPU sees new virtual interrupts.
 		 */
 		kvm_check_request(KVM_REQ_IRQ_PENDING, vcpu);
+
+		if (kvm_check_request(KVM_REQ_RECORD_STEAL, vcpu))
+			vcpu_req_record_steal(vcpu);
 	}
 }
 
diff --git a/virt/kvm/arm/hypercalls.c b/virt/kvm/arm/hypercalls.c
index 63ae629c466a..ac678eabf15f 100644
--- a/virt/kvm/arm/hypercalls.c
+++ b/virt/kvm/arm/hypercalls.c
@@ -56,6 +56,9 @@ int kvm_hvc_call_handler(struct kvm_vcpu *vcpu)
 	case ARM_SMCCC_HV_PV_FEATURES:
 		val = kvm_hypercall_pv_features(vcpu);
 		break;
+	case ARM_SMCCC_HV_PV_TIME_ST:
+		val = kvm_hypercall_stolen_time(vcpu);
+		break;
 	default:
 		return kvm_psci_call(vcpu);
 	}
diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
index 6201d71cb1f8..f169184e4076 100644
--- a/virt/kvm/arm/pvtime.c
+++ b/virt/kvm/arm/pvtime.c
@@ -3,8 +3,55 @@
 
 #include <linux/arm-smccc.h>
 
+#include <asm/pvclock-abi.h>
+
 #include <kvm/arm_hypercalls.h>
 
+int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init)
+{
+	struct kvm *kvm = vcpu->kvm;
+	struct kvm_arch_pvtime *pvtime = &kvm->arch.pvtime;
+	u64 steal;
+	u64 steal_le;
+	u64 offset;
+	int idx;
+	const int stride = sizeof(struct pvclock_vcpu_stolen_time);
+
+	if (pvtime->st_base == GPA_INVALID)
+		return -ENOTSUPP;
+
+	/* Let's do the local bookkeeping */
+	steal = vcpu->arch.steal.steal;
+	steal += current->sched_info.run_delay - vcpu->arch.steal.last_steal;
+	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
+	vcpu->arch.steal.steal = steal;
+
+	offset = stride * kvm_vcpu_get_idx(vcpu);
+
+	if (unlikely(offset + stride > pvtime->st_size))
+		return -EINVAL;
+
+	steal_le = cpu_to_le64(steal);
+	pagefault_disable();
+	idx = srcu_read_lock(&kvm->srcu);
+	if (init) {
+		struct pvclock_vcpu_stolen_time init_values = {
+			.revision = 0,
+			.attributes = 0
+		};
+		kvm_write_guest_offset_cached(kvm,
+				&pvtime->st_ghc,
+				&init_values, offset, sizeof(init_values));
+	}
+	offset += offsetof(struct pvclock_vcpu_stolen_time, stolen_time);
+	kvm_write_guest_offset_cached(kvm, &pvtime->st_ghc,
+			&steal_le, offset, sizeof(steal_le));
+	srcu_read_unlock(&kvm->srcu, idx);
+	pagefault_enable();
+
+	return 0;
+}
+
 int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
 {
 	u32 feature = smccc_get_arg1(vcpu);
@@ -12,6 +59,7 @@ int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
 
 	switch (feature) {
 	case ARM_SMCCC_HV_PV_FEATURES:
+	case ARM_SMCCC_HV_PV_TIME_ST:
 		val = SMCCC_RET_SUCCESS;
 		break;
 	}
@@ -19,3 +67,26 @@ int kvm_hypercall_pv_features(struct kvm_vcpu *vcpu)
 	return val;
 }
 
+int kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
+{
+	u64 ret;
+	int err;
+
+	/*
+	 * Start counting stolen time from the time the guest requests
+	 * the feature enabled.
+	 */
+	vcpu->arch.steal.steal = 0;
+	vcpu->arch.steal.last_steal = current->sched_info.run_delay;
+
+	err = kvm_update_stolen_time(vcpu, true);
+
+	if (err)
+		ret = SMCCC_RET_NOT_SUPPORTED;
+	else
+		ret = vcpu->kvm->arch.pvtime.st_base +
+			(sizeof(struct pvclock_vcpu_stolen_time) *
+			 kvm_vcpu_get_idx(vcpu));
+
+	return ret;
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
