Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB95F52EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:50:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1jik70sr/3/8piN+a7/KyHoA+D2KhlhIFvAZ7FEC2+Y=; b=J1FUzsyza9krTE7RNCnkLmpVfU
	e18pDviLkxZ0L+VPsYkwIG2xh/PDrV75RDZk0KxXM+YUZiYk6R33k7PEuskBRFQMHvMS2gPV0A9ot
	YS20dCCHyOZ/cxc5O3O0kl1UJ9LcR7JEQE9XUQPIeFdG5bi/mPnSmOZfgFpPDKu4F4p6d6NWcl/ev
	K8YDWLw5c2ECofQcLB1c4LED70YkFnMWCy6Eguyq9EYwInTlLQIdlweYHo+6YSP5tFL3g6I/g7VLw
	wIDJbRGF4Ur84Ye/rGV6/rfWh6RbU1VpPBFaHkgJQga1gOJFx9Q1tfCBCFnBBL2zX2Md79J3LOJA8
	1QFmiUog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8Oy-0005Rs-Hv; Fri, 08 Nov 2019 17:50:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8OX-00041I-0K
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:50:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5C3B7A7;
 Fri,  8 Nov 2019 09:50:00 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55FD23F719;
 Fri,  8 Nov 2019 09:49:59 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH 1/3] kvm: arm: VGIC: Prepare for handling two interrupt groups
Date: Fri,  8 Nov 2019 17:49:50 +0000
Message-Id: <20191108174952.740-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108174952.740-1-andre.przywara@arm.com>
References: <20191108174952.740-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_095001_130393_CB14B4B4 
X-CRM114-Status: GOOD (  21.68  )
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GIC specification describes support for two distinct interrupt
groups, which can be enabled independently from each other. At the
moment our VGIC emulation does not really honour this, so using
Group0 interrupts with the GICv3 emulation does not work as expected
at the moment.

Prepare the code for dealing with the *two* interrupt groups:
Allow to handle the two enable bits in the distributor, by providing
accessors. At the moment this still only honours group1, because we
need more code to properly differentiate the group enables.
Also provide a stub function to later implement the re-scanning of all
IRQs, should the group enable bit for a group change.

This patch does not change the current behaviour yet, but just provides
the infrastructure bits separately, mostly for review purposes.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 include/kvm/arm_vgic.h           |  7 ++-
 virt/kvm/arm/vgic/vgic-debug.c   |  2 +-
 virt/kvm/arm/vgic/vgic-mmio-v2.c | 23 ++++++----
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 22 +++++----
 virt/kvm/arm/vgic/vgic.c         | 76 +++++++++++++++++++++++++++++++-
 virt/kvm/arm/vgic/vgic.h         |  3 ++
 6 files changed, 110 insertions(+), 23 deletions(-)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 9d53f545a3d5..0f845430c732 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -29,6 +29,9 @@
 #define VGIC_MIN_LPI		8192
 #define KVM_IRQCHIP_NUM_PINS	(1020 - 32)
 
+#define GIC_GROUP0		0
+#define GIC_GROUP1		1
+
 #define irq_is_ppi(irq) ((irq) >= VGIC_NR_SGIS && (irq) < VGIC_NR_PRIVATE_IRQS)
 #define irq_is_spi(irq) ((irq) >= VGIC_NR_PRIVATE_IRQS && \
 			 (irq) <= VGIC_MAX_SPI)
@@ -227,8 +230,8 @@ struct vgic_dist {
 		struct list_head rd_regions;
 	};
 
-	/* distributor enabled */
-	bool			enabled;
+	/* group0 and/or group1 IRQs enabled on the distributor level */
+	u8			groups_enable;
 
 	struct vgic_irq		*spis;
 
diff --git a/virt/kvm/arm/vgic/vgic-debug.c b/virt/kvm/arm/vgic/vgic-debug.c
index cc12fe9b2df3..ab64e908024e 100644
--- a/virt/kvm/arm/vgic/vgic-debug.c
+++ b/virt/kvm/arm/vgic/vgic-debug.c
@@ -150,7 +150,7 @@ static void print_dist_state(struct seq_file *s, struct vgic_dist *dist)
 	seq_printf(s, "nr_spis:\t%d\n", dist->nr_spis);
 	if (v3)
 		seq_printf(s, "nr_lpis:\t%d\n", dist->lpi_list_count);
-	seq_printf(s, "enabled:\t%d\n", dist->enabled);
+	seq_printf(s, "groups enabled:\t%d\n", dist->groups_enable);
 	seq_printf(s, "\n");
 
 	seq_printf(s, "P=pending_latch, L=line_level, A=active\n");
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
index 5945f062d749..fe8528bd5b55 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
@@ -26,11 +26,14 @@ static unsigned long vgic_mmio_read_v2_misc(struct kvm_vcpu *vcpu,
 					    gpa_t addr, unsigned int len)
 {
 	struct vgic_dist *vgic = &vcpu->kvm->arch.vgic;
-	u32 value;
+	u32 value = 0;
 
 	switch (addr & 0x0c) {
 	case GIC_DIST_CTRL:
-		value = vgic->enabled ? GICD_ENABLE : 0;
+		if (vgic_dist_group_enabled(vcpu->kvm, GIC_GROUP0))
+			value |= GICD_ENABLE;
+		if (vgic_dist_group_enabled(vcpu->kvm, GIC_GROUP1))
+			value |= BIT(1);
 		break;
 	case GIC_DIST_CTR:
 		value = vgic->nr_spis + VGIC_NR_PRIVATE_IRQS;
@@ -42,8 +45,6 @@ static unsigned long vgic_mmio_read_v2_misc(struct kvm_vcpu *vcpu,
 			(vgic->implementation_rev << GICD_IIDR_REVISION_SHIFT) |
 			(IMPLEMENTER_ARM << GICD_IIDR_IMPLEMENTER_SHIFT);
 		break;
-	default:
-		return 0;
 	}
 
 	return value;
@@ -53,14 +54,18 @@ static void vgic_mmio_write_v2_misc(struct kvm_vcpu *vcpu,
 				    gpa_t addr, unsigned int len,
 				    unsigned long val)
 {
-	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
-	bool was_enabled = dist->enabled;
+	struct kvm *kvm = vcpu->kvm;
+	int grp0_changed, grp1_changed;
 
 	switch (addr & 0x0c) {
 	case GIC_DIST_CTRL:
-		dist->enabled = val & GICD_ENABLE;
-		if (!was_enabled && dist->enabled)
-			vgic_kick_vcpus(vcpu->kvm);
+		grp0_changed = vgic_dist_enable_group(kvm, GIC_GROUP0,
+						      val & GICD_ENABLE);
+		grp1_changed = vgic_dist_enable_group(kvm, GIC_GROUP1,
+						      val & BIT(1));
+		if (grp0_changed || grp1_changed)
+			vgic_rescan_pending_irqs(kvm, grp0_changed > 0 ||
+						      grp1_changed > 0);
 		break;
 	case GIC_DIST_CTR:
 	case GIC_DIST_IIDR:
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index 7dfd15dbb308..73e3410af332 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -66,7 +66,9 @@ static unsigned long vgic_mmio_read_v3_misc(struct kvm_vcpu *vcpu,
 
 	switch (addr & 0x0c) {
 	case GICD_CTLR:
-		if (vgic->enabled)
+		if (vgic_dist_group_enabled(vcpu->kvm, GIC_GROUP0))
+			value |= GICD_CTLR_ENABLE_SS_G0;
+		if (vgic_dist_group_enabled(vcpu->kvm, GIC_GROUP1))
 			value |= GICD_CTLR_ENABLE_SS_G1;
 		value |= GICD_CTLR_ARE_NS | GICD_CTLR_DS;
 		break;
@@ -85,8 +87,6 @@ static unsigned long vgic_mmio_read_v3_misc(struct kvm_vcpu *vcpu,
 			(vgic->implementation_rev << GICD_IIDR_REVISION_SHIFT) |
 			(IMPLEMENTER_ARM << GICD_IIDR_IMPLEMENTER_SHIFT);
 		break;
-	default:
-		return 0;
 	}
 
 	return value;
@@ -96,15 +96,19 @@ static void vgic_mmio_write_v3_misc(struct kvm_vcpu *vcpu,
 				    gpa_t addr, unsigned int len,
 				    unsigned long val)
 {
-	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
-	bool was_enabled = dist->enabled;
+	struct kvm *kvm = vcpu->kvm;
+	int grp0_changed, grp1_changed;
 
 	switch (addr & 0x0c) {
 	case GICD_CTLR:
-		dist->enabled = val & GICD_CTLR_ENABLE_SS_G1;
-
-		if (!was_enabled && dist->enabled)
-			vgic_kick_vcpus(vcpu->kvm);
+		grp0_changed = vgic_dist_enable_group(kvm, GIC_GROUP0,
+						val & GICD_CTLR_ENABLE_SS_G0);
+		grp1_changed = vgic_dist_enable_group(kvm, GIC_GROUP1,
+						val & GICD_CTLR_ENABLE_SS_G1);
+
+		if (grp0_changed || grp1_changed)
+			vgic_rescan_pending_irqs(kvm, grp0_changed > 0 ||
+						      grp1_changed > 0);
 		break;
 	case GICD_TYPER:
 	case GICD_IIDR:
diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 99b02ca730a8..3b88e14d239f 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -201,6 +201,12 @@ void vgic_irq_set_phys_active(struct vgic_irq *irq, bool active)
 				      active));
 }
 
+static bool vgic_irq_is_grp_enabled(struct kvm *kvm, struct vgic_irq *irq)
+{
+	/* Placeholder implementation until we properly support Group0. */
+	return kvm->arch.vgic.groups_enable;
+}
+
 /**
  * kvm_vgic_target_oracle - compute the target vcpu for an irq
  *
@@ -228,7 +234,8 @@ static struct kvm_vcpu *vgic_target_oracle(struct vgic_irq *irq)
 	 */
 	if (irq->enabled && irq_is_pending(irq)) {
 		if (unlikely(irq->target_vcpu &&
-			     !irq->target_vcpu->kvm->arch.vgic.enabled))
+			     !vgic_irq_is_grp_enabled(irq->target_vcpu->kvm,
+						      irq)))
 			return NULL;
 
 		return irq->target_vcpu;
@@ -303,6 +310,71 @@ static void vgic_sort_ap_list(struct kvm_vcpu *vcpu)
 	list_sort(NULL, &vgic_cpu->ap_list_head, vgic_irq_cmp);
 }
 
+int vgic_dist_enable_group(struct kvm *kvm, int group, bool status)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	u32 group_mask = 1U << group;
+	u32 new_bit = (unsigned)status << group;
+	u8 was_enabled = dist->groups_enable & group_mask;
+
+	if (new_bit == was_enabled)
+		return 0;
+
+	/* Group 0 on GICv3 and Group 1 on GICv2 are ignored for now. */
+	if (kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
+		if (group == GIC_GROUP0)
+			return 0;
+	} else {
+		if (group == GIC_GROUP1)
+			return 0;
+	}
+
+	dist->groups_enable &= ~group_mask;
+	dist->groups_enable |= new_bit;
+	if (new_bit > was_enabled)
+		return 1;
+	else
+		return -1;
+
+	return 0;
+}
+
+/*
+ * The group enable status of at least one of the groups has changed.
+ * If enabled is true, at least one of the groups got enabled.
+ * Adjust the forwarding state of every IRQ (on ap_list or not) accordingly.
+ */
+void vgic_rescan_pending_irqs(struct kvm *kvm, bool enabled)
+{
+	/*
+	 * TODO: actually scan *all* IRQs of the VM for pending IRQs.
+	 * If a pending IRQ's group is now enabled, add it to its ap_list.
+	 * If a pending IRQ's group is now disabled, kick the VCPU to
+	 * let it remove this IRQ from its ap_list. We have to let the
+	 * VCPU do it itself, because we can't know the exact state of an
+	 * IRQ pending on a running VCPU.
+	 */
+
+	 /* For now just kick all VCPUs, as the old code did. */
+	vgic_kick_vcpus(kvm);
+}
+
+bool vgic_dist_group_enabled(struct kvm *kvm, int group)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+
+	/* Group 0 on GICv3 and Group 1 on GICv2 are ignored for now. */
+	if (kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
+		if (group == GIC_GROUP0)
+			return false;
+	} else {
+		if (group == GIC_GROUP1)
+			return false;
+	}
+
+	return dist->groups_enable & (1U << group);
+}
+
 /*
  * Only valid injection if changing level for level-triggered IRQs or for a
  * rising edge, and in-kernel connected IRQ lines can only be controlled by
@@ -949,7 +1021,7 @@ int kvm_vgic_vcpu_pending_irq(struct kvm_vcpu *vcpu)
 	unsigned long flags;
 	struct vgic_vmcr vmcr;
 
-	if (!vcpu->kvm->arch.vgic.enabled)
+	if (!vcpu->kvm->arch.vgic.groups_enable)
 		return false;
 
 	if (vcpu->arch.vgic_cpu.vgic_v3.its_vpe.pending_last)
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index c7fefd6b1c80..219eb23d580d 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -168,7 +168,10 @@ void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending);
 void vgic_irq_set_phys_active(struct vgic_irq *irq, bool active);
 bool vgic_queue_irq_unlock(struct kvm *kvm, struct vgic_irq *irq,
 			   unsigned long flags);
+bool vgic_dist_group_enabled(struct kvm *kvm, int group);
+int vgic_dist_enable_group(struct kvm *kvm, int group, bool status);
 void vgic_kick_vcpus(struct kvm *kvm);
+void vgic_rescan_pending_irqs(struct kvm *kvm, bool enabled);
 
 int vgic_check_ioaddr(struct kvm *kvm, phys_addr_t *ioaddr,
 		      phys_addr_t addr, phys_addr_t alignment);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
