Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572111AD8AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 10:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PKP+YroNeDPHGOSynSC8fdm+2b//SU4JaGr08Ljl0qo=; b=kzF941sh/RiHll
	QSUbUkN85cOjMel6qOAK1/Ey9z7HNcTPouxiBY+Nl6D0HVVijlOBIjp2uBE1Y4UzmngXWNyfJ4T8C
	gYwfwGxLls00sx+arjVWuLjjUTuqpBOKlRTb1Sx28CXco1Mgen3jTY5QT74D+9D/8vQW8XZ/WiEs/
	y+CKX55t2cFoQ4PPcxCpYwXU34X5XG3J06oYQWwRZaik9ITk8U0kZDkTK7Nb+KwjwEnYwg2QxPF6U
	m8YvDHki6a4r/MMuLA43HEwVzAsKFAq+/fMEFleGj8G2xGHrgPgV5tDQ4GGgP8CgRf1OS1emc3OgP
	eh/Fk1LL0W2fxA4ps7dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPMS8-00023u-1b; Fri, 17 Apr 2020 08:34:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPMRP-0001bz-2U
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 08:33:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3F86221EA;
 Fri, 17 Apr 2020 08:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587112418;
 bh=leXis4W8ZvtMZe0/e58isk+dxdlpSgjQXJPhnDTY22c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UsJKXtPz+VXS+36enLV5cjqdbfmqABEJYKCaB9Fylsx07vvT+W5TYrnmYKznDkpdZ
 CMAsr36ICEESUN4LVBjelbY00pnF/PXa13xcByGFAHzPzgVhzlCwtrY2OKLBY+edqs
 2g2kv+0PTrompMhPAdnwAZO5B97ltG+a9Tcwy404=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jPMRN-00473f-0H; Fri, 17 Apr 2020 09:33:37 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 2/6] KVM: arm: vgic: Synchronize the whole guest on GIC{D,
 R}_I{S, C}ACTIVER read
Date: Fri, 17 Apr 2020 09:33:15 +0100
Message-Id: <20200417083319.3066217-3-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200417083319.3066217-1-maz@kernel.org>
References: <20200417083319.3066217-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, yuzenghui@huawei.com,
 eric.auger@redhat.com, Andre.Przywara@arm.com, julien@xen.org,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_013339_152503_5FDEEBBF 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a guest tries to read the active state of its interrupts,
we currently just return whatever state we have in memory. This
means that if such an interrupt lives in a List Register on another
CPU, we fail to obsertve the latest active state for this interrupt.

In order to remedy this, stop all the other vcpus so that they exit
and we can observe the most recent value for the state. This is
similar to what we are doing for the write side of the same
registers, and results in new MMIO handlers for userspace (which
do not need to stop the guest, as it is supposed to be stopped
already).

Reported-by: Julien Grall <julien@xen.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-mmio-v2.c |   4 +-
 virt/kvm/arm/vgic/vgic-mmio-v3.c |  12 ++--
 virt/kvm/arm/vgic/vgic-mmio.c    | 100 ++++++++++++++++++++-----------
 virt/kvm/arm/vgic/vgic-mmio.h    |   3 +
 4 files changed, 75 insertions(+), 44 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
index 5945f062d749..d63881f60e1a 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
@@ -422,11 +422,11 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_SET,
 		vgic_mmio_read_active, vgic_mmio_write_sactive,
-		NULL, vgic_mmio_uaccess_write_sactive, 1,
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_CLEAR,
 		vgic_mmio_read_active, vgic_mmio_write_cactive,
-		NULL, vgic_mmio_uaccess_write_cactive, 1,
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PRI,
 		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index e72dcc454247..f2b37a081f26 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -553,11 +553,11 @@ static const struct vgic_register_region vgic_v3_dist_registers[] = {
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISACTIVER,
 		vgic_mmio_read_active, vgic_mmio_write_sactive,
-		NULL, vgic_mmio_uaccess_write_sactive, 1,
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICACTIVER,
 		vgic_mmio_read_active, vgic_mmio_write_cactive,
-		NULL, vgic_mmio_uaccess_write_cactive,
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive,
 		1, VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_IPRIORITYR,
 		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
@@ -625,12 +625,12 @@ static const struct vgic_register_region vgic_v3_rd_registers[] = {
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISACTIVER0,
 		vgic_mmio_read_active, vgic_mmio_write_sactive,
-		NULL, vgic_mmio_uaccess_write_sactive,
-		4, VGIC_ACCESS_32bit),
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 4,
+		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ICACTIVER0,
 		vgic_mmio_read_active, vgic_mmio_write_cactive,
-		NULL, vgic_mmio_uaccess_write_cactive,
-		4, VGIC_ACCESS_32bit),
+		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 4,
+		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_IPRIORITYR0,
 		vgic_mmio_read_priority, vgic_mmio_write_priority, 32,
 		VGIC_ACCESS_32bit | VGIC_ACCESS_8bit),
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index d085e047953f..b38e94e8f74a 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -348,8 +348,39 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
 	}
 }
 
-unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
-				    gpa_t addr, unsigned int len)
+
+/*
+ * If we are fiddling with an IRQ's active state, we have to make sure the IRQ
+ * is not queued on some running VCPU's LRs, because then the change to the
+ * active state can be overwritten when the VCPU's state is synced coming back
+ * from the guest.
+ *
+ * For shared interrupts as well as GICv3 private interrupts, we have to
+ * stop all the VCPUs because interrupts can be migrated while we don't hold
+ * the IRQ locks and we don't want to be chasing moving targets.
+ *
+ * For GICv2 private interrupts we don't have to do anything because
+ * userspace accesses to the VGIC state already require all VCPUs to be
+ * stopped, and only the VCPU itself can modify its private interrupts
+ * active state, which guarantees that the VCPU is not running.
+ */
+static void vgic_access_active_prepare(struct kvm_vcpu *vcpu, u32 intid)
+{
+	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
+	    intid >= VGIC_NR_PRIVATE_IRQS)
+		kvm_arm_halt_guest(vcpu->kvm);
+}
+
+/* See vgic_access_active_prepare */
+static void vgic_access_active_finish(struct kvm_vcpu *vcpu, u32 intid)
+{
+	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
+	    intid >= VGIC_NR_PRIVATE_IRQS)
+		kvm_arm_resume_guest(vcpu->kvm);
+}
+
+static unsigned long __vgic_mmio_read_active(struct kvm_vcpu *vcpu,
+					     gpa_t addr, unsigned int len)
 {
 	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
 	u32 value = 0;
@@ -359,6 +390,10 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
 	for (i = 0; i < len * 8; i++) {
 		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
 
+		/*
+		 * Even for HW interrupts, don't evaluate the HW state as
+		 * all the guest is interested in is the virtual state.
+		 */
 		if (irq->active)
 			value |= (1U << i);
 
@@ -368,6 +403,29 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
 	return value;
 }
 
+unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
+				    gpa_t addr, unsigned int len)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	u32 val;
+
+	mutex_lock(&vcpu->kvm->lock);
+	vgic_access_active_prepare(vcpu, intid);
+
+	val = __vgic_mmio_read_active(vcpu, addr, len);
+
+	vgic_access_active_finish(vcpu, intid);
+	mutex_unlock(&vcpu->kvm->lock);
+
+	return val;
+}
+
+unsigned long vgic_uaccess_read_active(struct kvm_vcpu *vcpu,
+				    gpa_t addr, unsigned int len)
+{
+	return __vgic_mmio_read_active(vcpu, addr, len);
+}
+
 /* Must be called with irq->irq_lock held */
 static void vgic_hw_irq_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
 				      bool active, bool is_uaccess)
@@ -426,36 +484,6 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
 		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 }
 
-/*
- * If we are fiddling with an IRQ's active state, we have to make sure the IRQ
- * is not queued on some running VCPU's LRs, because then the change to the
- * active state can be overwritten when the VCPU's state is synced coming back
- * from the guest.
- *
- * For shared interrupts, we have to stop all the VCPUs because interrupts can
- * be migrated while we don't hold the IRQ locks and we don't want to be
- * chasing moving targets.
- *
- * For private interrupts we don't have to do anything because userspace
- * accesses to the VGIC state already require all VCPUs to be stopped, and
- * only the VCPU itself can modify its private interrupts active state, which
- * guarantees that the VCPU is not running.
- */
-static void vgic_change_active_prepare(struct kvm_vcpu *vcpu, u32 intid)
-{
-	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
-	    intid >= VGIC_NR_PRIVATE_IRQS)
-		kvm_arm_halt_guest(vcpu->kvm);
-}
-
-/* See vgic_change_active_prepare */
-static void vgic_change_active_finish(struct kvm_vcpu *vcpu, u32 intid)
-{
-	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
-	    intid >= VGIC_NR_PRIVATE_IRQS)
-		kvm_arm_resume_guest(vcpu->kvm);
-}
-
 static void __vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
 				      gpa_t addr, unsigned int len,
 				      unsigned long val)
@@ -477,11 +505,11 @@ void vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
 	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
 
 	mutex_lock(&vcpu->kvm->lock);
-	vgic_change_active_prepare(vcpu, intid);
+	vgic_access_active_prepare(vcpu, intid);
 
 	__vgic_mmio_write_cactive(vcpu, addr, len, val);
 
-	vgic_change_active_finish(vcpu, intid);
+	vgic_access_active_finish(vcpu, intid);
 	mutex_unlock(&vcpu->kvm->lock);
 }
 
@@ -514,11 +542,11 @@ void vgic_mmio_write_sactive(struct kvm_vcpu *vcpu,
 	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
 
 	mutex_lock(&vcpu->kvm->lock);
-	vgic_change_active_prepare(vcpu, intid);
+	vgic_access_active_prepare(vcpu, intid);
 
 	__vgic_mmio_write_sactive(vcpu, addr, len, val);
 
-	vgic_change_active_finish(vcpu, intid);
+	vgic_access_active_finish(vcpu, intid);
 	mutex_unlock(&vcpu->kvm->lock);
 }
 
diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
index 5af2aefad435..30713a44e3fa 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.h
+++ b/virt/kvm/arm/vgic/vgic-mmio.h
@@ -152,6 +152,9 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
 unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
 				    gpa_t addr, unsigned int len);
 
+unsigned long vgic_uaccess_read_active(struct kvm_vcpu *vcpu,
+				    gpa_t addr, unsigned int len);
+
 void vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
 			     gpa_t addr, unsigned int len,
 			     unsigned long val);
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
