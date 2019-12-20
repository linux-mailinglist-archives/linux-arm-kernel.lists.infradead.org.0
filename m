Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE89127E87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+XY+BdUToXjsZcJERR0fMHYagm/KQiGmXX/MMtDK8m0=; b=aXxI8dRriTmiKK
	kwiFEq6zZ8Cx3o5odxV8HL0NgpXUNQDq9zRxtNdNgJ/mEqIgiMiioG1DLeLAaw1z2AUky7oQazMVe
	euxuJY7a7oxzwHEyBE3YqL9uTmo7PPCSZIdFQB8XCiG6mf5j8h+Iw6QkVcNRA5HSDV67wTCH8zpVU
	SB2PHwXhcz1Hsit7Mw5ep3pYpPKQ+9vo4eiPxINlxqOk0r5+vi4yLIi26t8XT9Hah8kTRYISkZYJx
	PvaaLLoImqcvyjPq+wozRMFrpTjk6SV86gx+tvIW0dPvtYoD5FIBFUzDcE7Cj9wTYX9WJPBNWYojU
	KNISg/MbPhfLFHtX5dtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJZU-0004Pp-BW; Fri, 20 Dec 2019 14:48:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJYn-0003qC-8m
 for linux-arm-kernel@bombadil.infradead.org; Fri, 20 Dec 2019 14:47:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lpS9JpAZFbZTeA1pB8HN8Ladzm/GXGQd/babW15B59w=; b=Eh0S6woI5igf9D731w2Yjo3GN8
 5EQJRH6NIrB57Fuemf2oOfQ0TeF7bOGDw8egBJ9aldcoE4YPFCtr7b4uDNtdhb6PCBAA0MV91/c52
 jCDMNz26+00DqDh+vfg0h7jeGgKqay1yl512IDTx49ZpYMym+VMa0hhtKborVCthg8L5GXOd+8jue
 6JThPAWgjom56MqBoPvgFtHuxeOLVSkNM12Hu96qcyX56zPhgNt2xno6H9DRTUWMxUPjaF4tFE4kj
 +HnWoRSA36CwXQEx7Vl650B8wSmb7LacqoBwBSaaHM1oWqkW9MNUrzbuOX1tYsT3A+jOo7QqQm0sr
 UYA3uHnw==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJJU-0002zw-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:31:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FE4D12FC;
 Fri, 20 Dec 2019 06:31:03 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 370353F718;
 Fri, 20 Dec 2019 06:31:01 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 14/18] KVM: arm64: spe: Provide guest virtual interrupts
 for SPE
Date: Fri, 20 Dec 2019 14:30:21 +0000
Message-Id: <20191220143025.33853-15-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191220143025.33853-1-andrew.murray@arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_143133_106741_CC813202 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Upon the exit of a guest, let's determine if the SPE device has generated
an interrupt - if so we'll inject a virtual interrupt to the guest.

Upon the entry and exit of a guest we'll also update the state of the
physical IRQ such that it is active when a guest interrupt is pending
and the guest is running.

Finally we map the physical IRQ to the virtual IRQ such that the guest
can deactivate the interrupt when it handles the interrupt.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 include/kvm/arm_spe.h |  6 ++++
 virt/kvm/arm/arm.c    |  5 ++-
 virt/kvm/arm/spe.c    | 71 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 81 insertions(+), 1 deletion(-)

diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
index 9c65130d726d..91b2214f543a 100644
--- a/include/kvm/arm_spe.h
+++ b/include/kvm/arm_spe.h
@@ -37,6 +37,9 @@ static inline bool kvm_arm_support_spe_v1(void)
 						      ID_AA64DFR0_PMSVER_SHIFT);
 }
 
+void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu);
+inline void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu);
+
 int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
 			    struct kvm_device_attr *attr);
 int kvm_arm_spe_v1_get_attr(struct kvm_vcpu *vcpu,
@@ -49,6 +52,9 @@ int kvm_arm_spe_v1_enable(struct kvm_vcpu *vcpu);
 #define kvm_arm_support_spe_v1()	(false)
 #define kvm_arm_spe_irq_initialized(v)	(false)
 
+static inline void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu) {}
+static inline void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu) {}
+
 static inline int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
 					  struct kvm_device_attr *attr)
 {
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 340d2388ee2c..a66085c8e785 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -741,6 +741,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		preempt_disable();
 
 		kvm_pmu_flush_hwstate(vcpu);
+		kvm_spe_flush_hwstate(vcpu);
 
 		local_irq_disable();
 
@@ -782,6 +783,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		    kvm_request_pending(vcpu)) {
 			vcpu->mode = OUTSIDE_GUEST_MODE;
 			isb(); /* Ensure work in x_flush_hwstate is committed */
+			kvm_spe_sync_hwstate(vcpu);
 			kvm_pmu_sync_hwstate(vcpu);
 			if (static_branch_unlikely(&userspace_irqchip_in_use))
 				kvm_timer_sync_hwstate(vcpu);
@@ -816,11 +818,12 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
 		kvm_arm_clear_debug(vcpu);
 
 		/*
-		 * We must sync the PMU state before the vgic state so
+		 * We must sync the PMU and SPE state before the vgic state so
 		 * that the vgic can properly sample the updated state of the
 		 * interrupt line.
 		 */
 		kvm_pmu_sync_hwstate(vcpu);
+		kvm_spe_sync_hwstate(vcpu);
 
 		/*
 		 * Sync the vgic state before syncing the timer state because
diff --git a/virt/kvm/arm/spe.c b/virt/kvm/arm/spe.c
index 83ac2cce2cc3..097ed39014e4 100644
--- a/virt/kvm/arm/spe.c
+++ b/virt/kvm/arm/spe.c
@@ -35,6 +35,68 @@ int kvm_arm_spe_v1_enable(struct kvm_vcpu *vcpu)
 	return 0;
 }
 
+static inline void set_spe_irq_phys_active(struct arm_spe_kvm_info *info,
+					   bool active)
+{
+	int r;
+	r = irq_set_irqchip_state(info->physical_irq, IRQCHIP_STATE_ACTIVE,
+				  active);
+	WARN_ON(r);
+}
+
+void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu)
+{
+	struct kvm_spe *spe = &vcpu->arch.spe;
+	bool phys_active = false;
+	struct arm_spe_kvm_info *info = arm_spe_get_kvm_info();
+
+	if (!kvm_arm_spe_v1_ready(vcpu))
+		return;
+
+	if (irqchip_in_kernel(vcpu->kvm))
+		phys_active = kvm_vgic_map_is_active(vcpu, spe->irq_num);
+
+	phys_active |= spe->irq_level;
+
+	set_spe_irq_phys_active(info, phys_active);
+}
+
+void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu)
+{
+	struct kvm_spe *spe = &vcpu->arch.spe;
+	u64 pmbsr;
+	int r;
+	bool service;
+	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
+	struct arm_spe_kvm_info *info = arm_spe_get_kvm_info();
+
+	if (!kvm_arm_spe_v1_ready(vcpu))
+		return;
+
+	set_spe_irq_phys_active(info, false);
+
+	pmbsr = ctxt->sys_regs[PMBSR_EL1];
+	service = !!(pmbsr & BIT(SYS_PMBSR_EL1_S_SHIFT));
+	if (spe->irq_level == service)
+		return;
+
+	spe->irq_level = service;
+
+	if (likely(irqchip_in_kernel(vcpu->kvm))) {
+		r = kvm_vgic_inject_irq(vcpu->kvm, vcpu->vcpu_id,
+					spe->irq_num, service, spe);
+		WARN_ON(r);
+	}
+}
+
+static inline bool kvm_arch_arm_spe_v1_get_input_level(int vintid)
+{
+	struct kvm_vcpu *vcpu = kvm_arm_get_running_vcpu();
+	struct kvm_spe *spe = &vcpu->arch.spe;
+
+	return spe->irq_level;
+}
+
 static int kvm_arm_spe_v1_init(struct kvm_vcpu *vcpu)
 {
 	if (!kvm_arm_support_spe_v1())
@@ -48,6 +110,7 @@ static int kvm_arm_spe_v1_init(struct kvm_vcpu *vcpu)
 
 	if (irqchip_in_kernel(vcpu->kvm)) {
 		int ret;
+		struct arm_spe_kvm_info *info;
 
 		/*
 		 * If using the SPE with an in-kernel virtual GIC
@@ -57,10 +120,18 @@ static int kvm_arm_spe_v1_init(struct kvm_vcpu *vcpu)
 		if (!vgic_initialized(vcpu->kvm))
 			return -ENODEV;
 
+		info = arm_spe_get_kvm_info();
+		if (!info->physical_irq)
+			return -ENODEV;
+
 		ret = kvm_vgic_set_owner(vcpu, vcpu->arch.spe.irq_num,
 					 &vcpu->arch.spe);
 		if (ret)
 			return ret;
+
+		ret = kvm_vgic_map_phys_irq(vcpu, info->physical_irq,
+					    vcpu->arch.spe.irq_num,
+					    kvm_arch_arm_spe_v1_get_input_level);
 	}
 
 	vcpu->arch.spe.created = true;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
