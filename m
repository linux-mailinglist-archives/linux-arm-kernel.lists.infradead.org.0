Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272D7FC969
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 16:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zcH073tl+EPLaT71rIq2Z+W2W2YcX/ZuUeUifHqKeVM=; b=dc9nTxeJ0+1xEA
	PyqR2vn69yrKpG7WGjrE0wx0zmsOngVqeSCtC8Bg6xdrU5aGMxGlM6GLZHqOzPCRESg/o8uAclDnF
	MHzsYCANckx/k7fbqXWq3QKOD0QJ7ywUxa8FuzLu2aHFPiAlwrcJmaFkJ+GM1iF7BrLpMzJJy/omB
	4ITRwbxr3AlcMrkarWDXOnhNPVu246JF0+oWvRryDdwf7DPCl0CGo9/dX5LlFTmcga/XFj1NjuJEE
	LsAlvVers1pwtiT7FOo2mORR+dywgZknNVmgqu0fd8eW8ZMGJEBg95bwM+xcRi2eo05W6UB2FXEIF
	a0YtpcUG+9TDa3CfWmQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVGcV-0000FI-4j; Thu, 14 Nov 2019 15:01:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVGbL-0006aF-Rz
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 15:00:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3268DDA7;
 Thu, 14 Nov 2019 07:00:03 -0800 (PST)
Received: from ewhatever.cambridge.arm.com (ewhatever.cambridge.arm.com
 [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1418F3F52E;
 Thu, 14 Nov 2019 07:00:01 -0800 (PST)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] KVM: arm64: Workaround Cortex-A77 erratum 1542418 on VMID
 rollover
Date: Thu, 14 Nov 2019 14:59:17 +0000
Message-Id: <20191114145918.235339-5-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191114145918.235339-1-suzuki.poulose@arm.com>
References: <20191114145918.235339-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_070004_039176_7C97AFCC 
X-CRM114-Status: GOOD (  14.37  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 linux-kernel@vger.kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

Cortex-A77's erratum 1542418 workaround needs to be applied for VMID
re-use too. This prevents the CPU correctly predicting a modified branch
based on a previous user of the VMID and ASID.

KVM doesn't use force_vm_exit or exit_vm_noop for anything other than
vmid rollover. Rename them, and use this to invoke the VMID workaround
on each CPU.

Another case where VMID and ASID may get reused is if the system is
over-provisioned and two vCPUs of the same VMID are scheduled on
one physical CPU. KVM invalidates the TLB to prevent ASID sharing
in this case, invoke the asid-rollover workaround too so we avoid
the ASID sharing tripping the erratum.

Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm/include/asm/kvm_mmu.h   |  5 +++++
 arch/arm64/include/asm/kvm_mmu.h | 15 +++++++++++++++
 virt/kvm/arm/arm.c               | 20 ++++++++++++++------
 3 files changed, 34 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 0d84d50bf9ba..8a5702e0c3f8 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -430,6 +430,11 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 	return kvm_phys_to_vttbr(baddr) | vmid_field;
 }
 
+static inline void kvm_workaround_1542418_vmid_rollover(void)
+{
+	/* not affected */
+}
+
 #endif	/* !__ASSEMBLY__ */
 
 #endif /* __ARM_KVM_MMU_H__ */
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index befe37d4bc0e..5776e53c296d 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -9,6 +9,7 @@
 
 #include <asm/page.h>
 #include <asm/memory.h>
+#include <asm/mmu_context.h>
 #include <asm/cpufeature.h>
 
 /*
@@ -603,5 +604,19 @@ static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 	return kvm_phys_to_vttbr(baddr) | vmid_field | cnp;
 }
 
+static inline void kvm_workaround_1542418_vmid_rollover(void)
+{
+	unsigned long flags;
+
+	if (!IS_ENABLED(CONFIG_ARM64_ERRATUM_1542418) ||
+	    !cpus_have_const_cap(ARM64_WORKAROUND_1542418))
+		return;
+
+	local_irq_save(flags);
+	arm64_workaround_1542418_asid_rollover();
+	local_irq_restore(flags);
+
+}
+
 #endif /* __ASSEMBLY__ */
 #endif /* __ARM64_KVM_MMU_H__ */
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 86c6aa1cb58e..ac9e017df7c9 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -368,6 +368,13 @@ void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
 	 */
 	if (*last_ran != vcpu->vcpu_id) {
 		kvm_call_hyp(__kvm_tlb_flush_local_vmid, vcpu);
+
+		/*
+		 * 'last_ran' and this vcpu may share an ASID and hit the
+		 *  conditions for Cortex-A77 erratum 1542418.
+		 */
+		kvm_workaround_1542418_vmid_rollover();
+
 		*last_ran = vcpu->vcpu_id;
 	}
 
@@ -458,15 +465,16 @@ bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
 	return vcpu_mode_priv(vcpu);
 }
 
-/* Just ensure a guest exit from a particular CPU */
-static void exit_vm_noop(void *info)
+static void exit_vmid_rollover(void *info)
 {
+	kvm_workaround_1542418_vmid_rollover();
 }
 
-void force_vm_exit(const cpumask_t *mask)
+static void force_vmid_rollover_exit(const cpumask_t *mask)
 {
 	preempt_disable();
-	smp_call_function_many(mask, exit_vm_noop, NULL, true);
+	smp_call_function_many(mask, exit_vmid_rollover, NULL, true);
+	kvm_workaround_1542418_vmid_rollover();
 	preempt_enable();
 }
 
@@ -518,10 +526,10 @@ static void update_vmid(struct kvm_vmid *vmid)
 
 		/*
 		 * On SMP we know no other CPUs can use this CPU's or each
-		 * other's VMID after force_vm_exit returns since the
+		 * other's VMID after force_vmid_rollover_exit returns since the
 		 * kvm_vmid_lock blocks them from reentry to the guest.
 		 */
-		force_vm_exit(cpu_all_mask);
+		force_vmid_rollover_exit(cpu_all_mask);
 		/*
 		 * Now broadcast TLB + ICACHE invalidation over the inner
 		 * shareable domain to make sure all data structures are
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
