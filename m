Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4EB15DAA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:22:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOlCWnYq0iur8L1FN7fj/zVSJlhgDor+gqGfDLAcymA=; b=LC+oJUrvCNwKDk
	aoRqzcxKPNt28GzL/fA9+YEZuOZ8Rld4P/Q/JNQt6hW6H4DTNi7DQaPVtjfK3/Yr1rqhzcPCJQnVK
	XJSqVFOd5u6C7Lwr5+yyDUfiwvZX8m6fYJeznawXz5Y7aOZb1Xj36wwdO94p3Ui/9VagLPGnZcCEw
	l4XziNtPX2strowWJxp5bjnFotaw8L9QEXiSuP74dUibjUHwkDAWdGwwzi8FwnW6kDhwEj+MWqTK6
	ABrIT9ukpFcpfj/mSltLuqHzs7t/Fk8arkwOQEi1EquJxY+6ldjRFbA2Gb/n3b9A4TN6mPZpB1Fnk
	w5sEOQBskmxeV3FbxdyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cn1-0000xT-Cj; Fri, 14 Feb 2020 15:21:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cmC-00008X-Gb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:21:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02E8A24676;
 Fri, 14 Feb 2020 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581693668;
 bh=p41IaqIf4yPxBmve45CWjaltCyruEsUOMHY83mKFko8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XSFXzk1/I06cXKC5uQVKjl6fKbvA1pmCyverRVfvTjINR5Bkos+kI4Wd+NXe/7eMy
 PMIqnNljhmjPM0hhZfD3oQdO5qaujboNocVweeKQnNilHo9c1254i5/giPlWIfrAG9
 ybJ+8UcNWirGf52MWETwbT6aUdAtEBfnDWh/HG28=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2cPm-0057sw-2B; Fri, 14 Feb 2020 14:57:58 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 15/20] KVM: arm64: GICv4.1: Add direct injection capability
 to SGI registers
Date: Fri, 14 Feb 2020 14:57:31 +0000
Message-Id: <20200214145736.18550-16-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214145736.18550-1-maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, yuzenghui@huawei.com,
 eric.auger@redhat.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_072108_603403_19482916 
X-CRM114-Status: GOOD (  18.05  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of the GICv3 emulation code that deals with SGIs now has to be
aware of the v4.1 capabilities in order to benefit from it.

Add such support, keyed on the interrupt having the hw flag set and
being a SGI.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
 virt/kvm/arm/vgic/vgic-mmio.c    | 88 ++++++++++++++++++++++++++++++--
 2 files changed, 96 insertions(+), 7 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index ebc218840fc2..de89da76a379 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -6,6 +6,7 @@
 #include <linux/irqchip/arm-gic-v3.h>
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
+#include <linux/interrupt.h>
 #include <kvm/iodev.h>
 #include <kvm/arm_vgic.h>
 
@@ -942,8 +943,18 @@ void vgic_v3_dispatch_sgi(struct kvm_vcpu *vcpu, u64 reg, bool allow_group1)
 		 * generate interrupts of either group.
 		 */
 		if (!irq->group || allow_group1) {
-			irq->pending_latch = true;
-			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+			if (!irq->hw) {
+				irq->pending_latch = true;
+				vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+			} else {
+				/* HW SGI? Ask the GIC to inject it */
+				int err;
+				err = irq_set_irqchip_state(irq->host_irq,
+							    IRQCHIP_STATE_PENDING,
+							    true);
+				WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
+				raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+			}
 		} else {
 			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 		}
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index d656ebd5f9d4..0a1fb61e5b89 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -5,6 +5,8 @@
 
 #include <linux/bitops.h>
 #include <linux/bsearch.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
 #include <kvm/iodev.h>
@@ -59,6 +61,11 @@ unsigned long vgic_mmio_read_group(struct kvm_vcpu *vcpu,
 	return value;
 }
 
+static void vgic_update_vsgi(struct vgic_irq *irq)
+{
+	WARN_ON(its_prop_update_vsgi(irq->host_irq, irq->priority, irq->group));
+}
+
 void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
 			   unsigned int len, unsigned long val)
 {
@@ -71,7 +78,12 @@ void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
 		irq->group = !!(val & BIT(i));
-		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			vgic_update_vsgi(irq);
+			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+		} else {
+			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+		}
 
 		vgic_put_irq(vcpu->kvm, irq);
 	}
@@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
 		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
-		if (vgic_irq_is_mapped_level(irq)) {
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			if (!irq->enabled) {
+				struct irq_data *data;
+
+				irq->enabled = true;
+				data = &irq_to_desc(irq->host_irq)->irq_data;
+				while (irqd_irq_disabled(data))
+					enable_irq(irq->host_irq);
+			}
+
+			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+			vgic_put_irq(vcpu->kvm, irq);
+
+			continue;
+		} else if (vgic_irq_is_mapped_level(irq)) {
 			bool was_high = irq->line_level;
 
 			/*
@@ -148,6 +174,8 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
 		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		if (irq->hw && vgic_irq_is_sgi(irq->intid) && irq->enabled)
+			disable_irq_nosync(irq->host_irq);
 
 		irq->enabled = false;
 
@@ -167,10 +195,22 @@ unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
 	for (i = 0; i < len * 8; i++) {
 		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
 		unsigned long flags;
+		bool val;
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
-		if (irq_is_pending(irq))
-			value |= (1U << i);
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			int err;
+
+			val = false;
+			err = irq_get_irqchip_state(irq->host_irq,
+						    IRQCHIP_STATE_PENDING,
+						    &val);
+			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
+		} else {
+			val = irq_is_pending(irq);
+		}
+
+		value |= ((u32)val << i);
 		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 
 		vgic_put_irq(vcpu->kvm, irq);
@@ -227,6 +267,21 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,
 		}
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			/* HW SGI? Ask the GIC to inject it */
+			int err;
+			err = irq_set_irqchip_state(irq->host_irq,
+						    IRQCHIP_STATE_PENDING,
+						    true);
+			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
+
+			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+			vgic_put_irq(vcpu->kvm, irq);
+
+			continue;
+		}
+
 		if (irq->hw)
 			vgic_hw_irq_spending(vcpu, irq, is_uaccess);
 		else
@@ -281,6 +336,20 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
 
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			/* HW SGI? Ask the GIC to inject it */
+			int err;
+			err = irq_set_irqchip_state(irq->host_irq,
+						    IRQCHIP_STATE_PENDING,
+						    false);
+			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
+
+			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+			vgic_put_irq(vcpu->kvm, irq);
+
+			continue;
+		}
+
 		if (irq->hw)
 			vgic_hw_irq_cpending(vcpu, irq, is_uaccess);
 		else
@@ -330,8 +399,15 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
 
 	raw_spin_lock_irqsave(&irq->irq_lock, flags);
 
-	if (irq->hw) {
+	if (irq->hw && !vgic_irq_is_sgi(irq->intid)) {
 		vgic_hw_irq_change_active(vcpu, irq, active, !requester_vcpu);
+	} else if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+		/*
+		 * GICv4.1 VSGI feature doesn't track an active state,
+		 * so let's not kid ourselves, there is nothing we can
+		 * do here.
+		 */
+		irq->active = false;
 	} else {
 		u32 model = vcpu->kvm->arch.vgic.vgic_model;
 		u8 active_source;
@@ -505,6 +581,8 @@ void vgic_mmio_write_priority(struct kvm_vcpu *vcpu,
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
 		/* Narrow the priority range to what we actually support */
 		irq->priority = (val >> (i * 8)) & GENMASK(7, 8 - VGIC_PRI_BITS);
+		if (irq->hw && vgic_irq_is_sgi(irq->intid))
+			vgic_update_vsgi(irq);
 		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
 
 		vgic_put_irq(vcpu->kvm, irq);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
