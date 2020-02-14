Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898DE15F516
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbenGe9Z/w9iHuH2oG0+SjybAcRXOvJPtKAPX5LtMYA=; b=CXmuO7oRPTorWZ
	skFAoCnQvRpFk896uH448VQ+UjJIcFzgC4ZcjsdVzXajSd/uH1yBJd20Elp8s/zIzEu4cFXWQiYDJ
	zA+Ds4CRN3bCS0FWvRbeHtjnqaA8ucGqovmyZSi3ERH3S7nwR02YDVOgtwJKdpeAWJdbjvHiGfrVs
	K1qfTOOhPwHcnPBkvDY2Zcc+87Ux/Q+Xz4BfTD6gdTd0Xq/6i2vS7njvlsW4ABYUl+J2mEjuBlby/
	oTH43RJZmpwecfI3O6ofBCunU9uDbKPAPu2YLOEZN9vMMuxmf+1TGarFDUhXezVADSpm7As6mMPXG
	V4L+4tTz+OFZerfzE6bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fpc-0005ge-H2; Fri, 14 Feb 2020 18:36:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fpG-0005Vj-K0
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:36:32 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27CE1222C2;
 Fri, 14 Feb 2020 18:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581705390;
 bh=U47Cim1m36ncRf1F2X4HkjZI4B/fxmPv0g5AophOpgA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eJhR293pkuXcdRUeLf+A+a5MOkH+eBfFE4Kwin/ZWZlOCyHu6DIus/kBknxlwLH58
 tH2aUPG3KcPyZtTScRIDdIRvnIIrIqLgah7CS70dF4/bqz+Mf2n1buxSD3En2Qzhh3
 2k2rqsfuW1010yFz/XHAZSuvJndRy49pEJckG08I=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2fpE-005J5c-Gy; Fri, 14 Feb 2020 18:36:28 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 1/2] KVM: arm64: Add PMU event filtering infrastructure
Date: Fri, 14 Feb 2020 18:36:14 +0000
Message-Id: <20200214183615.25498-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214183615.25498-1-maz@kernel.org>
References: <20200214183615.25498-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103630_698601_DAEBB3E5 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It can be desirable to expose a PMU to a guest, and yet not want the
guest to be able to count some of the implemented events (because this
would give information on shared resources, for example.

For this, let's extend the PMUv3 device API, and offer a way to setup a
bitmap of the allowed events (the default being no bitmap, and thus no
filtering).

Userspace can thus allow/deny ranges of event. The default policy
depends on the "polarity" of the first filter setup (default deny if the
filter allows events, and default allow if the filter denies events).
This allows to setup exactly what is allowed for a given guest.

Note that although the ioctl is per-vcpu, the map of allowed events is
global to the VM (it can be setup from any vcpu until the vcpu PMU is
initialized).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h |  6 +++
 arch/arm64/include/uapi/asm/kvm.h | 16 +++++++
 virt/kvm/arm/arm.c                |  2 +
 virt/kvm/arm/pmu.c                | 76 ++++++++++++++++++++++++++-----
 4 files changed, 88 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index d87aa609d2b6..b594c604215f 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -91,6 +91,12 @@ struct kvm_arch {
 	 * supported.
 	 */
 	bool return_nisv_io_abort_to_user;
+
+	/*
+	 * VM-wide PMU filter, implemented as a bitmap and big enough
+	 * for up to 65536 events
+	 */
+	unsigned long *pmu_filter;
 };
 
 #define KVM_NR_MEM_OBJS     40
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index ba85bb23f060..7b1511d6ce44 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -159,6 +159,21 @@ struct kvm_sync_regs {
 struct kvm_arch_memory_slot {
 };
 
+/*
+ * PMU filter structure. Describe a range of events with a particular
+ * action. To be used with KVM_ARM_VCPU_PMU_V3_FILTER.
+ */
+struct kvm_pmu_event_filter {
+	__u16	base_event;
+	__u16	nevents;
+
+#define KVM_PMU_EVENT_ALLOW	0
+#define KVM_PMU_EVENT_DENY	1
+
+	__u8	action;
+	__u8	pad[3];
+};
+
 /* for KVM_GET/SET_VCPU_EVENTS */
 struct kvm_vcpu_events {
 	struct {
@@ -329,6 +344,7 @@ struct kvm_vcpu_events {
 #define KVM_ARM_VCPU_PMU_V3_CTRL	0
 #define   KVM_ARM_VCPU_PMU_V3_IRQ	0
 #define   KVM_ARM_VCPU_PMU_V3_INIT	1
+#define   KVM_ARM_VCPU_PMU_V3_FILTER	2
 #define KVM_ARM_VCPU_TIMER_CTRL		1
 #define   KVM_ARM_VCPU_TIMER_IRQ_VTIMER		0
 #define   KVM_ARM_VCPU_TIMER_IRQ_PTIMER		1
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index d65a0faa46d8..9132f7508975 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -164,6 +164,8 @@ void kvm_arch_destroy_vm(struct kvm *kvm)
 	free_percpu(kvm->arch.last_vcpu_ran);
 	kvm->arch.last_vcpu_ran = NULL;
 
+	bitmap_free(kvm->arch.pmu_filter);
+
 	for (i = 0; i < KVM_MAX_VCPUS; ++i) {
 		if (kvm->vcpus[i]) {
 			kvm_vcpu_destroy(kvm->vcpus[i]);
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index f0d0312c0a55..817f341ed9ad 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -585,6 +585,14 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
 		return;
 
+	/*
+	 * If we have a filter in place and that the event isn't allowed, do
+	 * not install a perf event either.
+	 */
+	if (vcpu->kvm->arch.pmu_filter &&
+	    !test_bit(eventsel, vcpu->kvm->arch.pmu_filter))
+		return;
+
 	memset(&attr, 0, sizeof(struct perf_event_attr));
 	attr.type = PERF_TYPE_RAW;
 	attr.size = sizeof(attr);
@@ -735,15 +743,6 @@ int kvm_arm_pmu_v3_enable(struct kvm_vcpu *vcpu)
 
 static int kvm_arm_pmu_v3_init(struct kvm_vcpu *vcpu)
 {
-	if (!kvm_arm_support_pmu_v3())
-		return -ENODEV;
-
-	if (!test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
-		return -ENXIO;
-
-	if (vcpu->arch.pmu.created)
-		return -EBUSY;
-
 	if (irqchip_in_kernel(vcpu->kvm)) {
 		int ret;
 
@@ -794,8 +793,19 @@ static bool pmu_irq_is_valid(struct kvm *kvm, int irq)
 	return true;
 }
 
+#define NR_EVENTS	(ARMV8_PMU_EVTYPE_EVENT + 1)
+
 int kvm_arm_pmu_v3_set_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 {
+	if (!kvm_arm_support_pmu_v3())
+		return -ENODEV;
+
+	if (!test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
+		return -ENODEV;
+
+	if (vcpu->arch.pmu.created)
+		return -EBUSY;
+
 	switch (attr->attr) {
 	case KVM_ARM_VCPU_PMU_V3_IRQ: {
 		int __user *uaddr = (int __user *)(long)attr->addr;
@@ -804,9 +814,6 @@ int kvm_arm_pmu_v3_set_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 		if (!irqchip_in_kernel(vcpu->kvm))
 			return -EINVAL;
 
-		if (!test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
-			return -ENODEV;
-
 		if (get_user(irq, uaddr))
 			return -EFAULT;
 
@@ -824,6 +831,50 @@ int kvm_arm_pmu_v3_set_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 		vcpu->arch.pmu.irq_num = irq;
 		return 0;
 	}
+	case KVM_ARM_VCPU_PMU_V3_FILTER: {
+		struct kvm_pmu_event_filter __user *uaddr;
+		struct kvm_pmu_event_filter filter;
+
+		uaddr = (struct kvm_pmu_event_filter __user *)(long)attr->addr;
+
+		if (copy_from_user(&filter, uaddr, sizeof(filter)))
+			return -EFAULT;
+
+		if (((u32)filter.base_event + filter.nevents) > NR_EVENTS ||
+		    (filter.action != KVM_PMU_EVENT_ALLOW &&
+		     filter.action != KVM_PMU_EVENT_DENY))
+			return -EINVAL;
+
+		mutex_lock(&vcpu->kvm->lock);
+
+		if (!vcpu->kvm->arch.pmu_filter) {
+			vcpu->kvm->arch.pmu_filter = bitmap_alloc(NR_EVENTS, GFP_KERNEL);
+			if (!vcpu->kvm->arch.pmu_filter) {
+				mutex_unlock(&vcpu->kvm->lock);
+				return -ENOMEM;
+			}
+
+			/*
+			 * The default depends on the first applied filter.
+			 * If it allows events, the default is to deny.
+			 * Conversely, if the first filter denies a set of
+			 * events, the default is to allow.
+			 */
+			if (filter.action == KVM_PMU_EVENT_ALLOW)
+				bitmap_zero(vcpu->kvm->arch.pmu_filter, NR_EVENTS);
+			else
+				bitmap_fill(vcpu->kvm->arch.pmu_filter, NR_EVENTS);
+		}
+
+		if (filter.action == KVM_PMU_EVENT_ALLOW)
+			bitmap_set(vcpu->kvm->arch.pmu_filter, filter.base_event, filter.nevents);
+		else
+			bitmap_clear(vcpu->kvm->arch.pmu_filter, filter.base_event, filter.nevents);
+
+		mutex_unlock(&vcpu->kvm->lock);
+
+		return 0;
+	}
 	case KVM_ARM_VCPU_PMU_V3_INIT:
 		return kvm_arm_pmu_v3_init(vcpu);
 	}
@@ -860,6 +911,7 @@ int kvm_arm_pmu_v3_has_attr(struct kvm_vcpu *vcpu, struct kvm_device_attr *attr)
 	switch (attr->attr) {
 	case KVM_ARM_VCPU_PMU_V3_IRQ:
 	case KVM_ARM_VCPU_PMU_V3_INIT:
+	case KVM_ARM_VCPU_PMU_V3_FILTER:
 		if (kvm_arm_support_pmu_v3() &&
 		    test_bit(KVM_ARM_VCPU_PMU_V3, vcpu->arch.features))
 			return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
