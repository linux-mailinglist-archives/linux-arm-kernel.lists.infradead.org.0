Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CA3179A48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 21:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8/RKF1W1+EbmjUhs+wDNGdUaQQnf6bC3SyOKjYQo0E=; b=mAgTmIsTScw1d3
	mkapAw4tufmXLLAmGAuAe4Z+odVw78X6JmiE56xyr3vWPhb9jpSN53IYDrk99T87CtYGmAsXnn2FY
	/WKJCJm9WZFRSBaXEAL6r3esfagLg+WGJ0qoUvjW5Zroj3Xk9FyLIh1ZnCrryNpA6F9KSPYtg180d
	UZ9qXSD0lOuIeA2CXC8w/SJkWjjE4KUba4e3ZiWP4h6WMw+3smjHNBfXZRucuGAl2Etj44VohQUEz
	kVpRb+hRREh/jSE8aChgpWpCtUKk0w/KDMKD663f5508FNoPRssI7Xki/aAphBOQdhLvUuMyqjdDb
	LZCoY3rBA3lpXg7O8XAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9apY-0000zy-7U; Wed, 04 Mar 2020 20:41:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9al6-0004hB-By
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 20:36:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90B4821556;
 Wed,  4 Mar 2020 20:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583354207;
 bh=KHln7xyOG0c/LWpyIWiosDeoEecBHjTHH6YSKb+FXgg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f3B3veFM7TrHO30UhFgrGk4rJsdX4mUUeBNQ3qSYqHNCQv3UykM8jKDAJHGyeeEio
 QfCy3er+YsmRIHwCPZHY54BrQBZkMXqb21hOENUb1cKUUqHIcAlBZB9SF3SULL8pFG
 DFRLhl5wnz1YSvdfvli6K147BC093uV8yydvf6nM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j9ajE-00A59R-UH; Wed, 04 Mar 2020 20:34:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 18/23] KVM: arm64: GICv4.1: Add direct injection capability
 to SGI registers
Date: Wed,  4 Mar 2020 20:33:25 +0000
Message-Id: <20200304203330.4967-19-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200304203330.4967-1-maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200304_123648_461744_38822E32 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 97fb2a40e6ba..2199302597fa 100644
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
@@ -215,6 +255,21 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,
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
@@ -269,6 +324,20 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
 
+		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
+			/* HW SGI? Ask the GIC to clear its pending bit */
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
@@ -318,8 +387,15 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
 
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
@@ -493,6 +569,8 @@ void vgic_mmio_write_priority(struct kvm_vcpu *vcpu,
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
