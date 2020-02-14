Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ECBE15DABA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNIuRoki8PCvgrSowz5a+BBvXJC2NA83cClXyraxqII=; b=CIdYczrxzyiv/J
	SZ3AGVHLv8kaj5dZHmI2zde+rhG0Jw926FsUW2CWvrDrMaUlrGFkx/LRye46QValbhOxBw8V7TWZk
	Vi74MRh7nfYyavkgu16l6PLOrhcU+MWiXZIA5fn6aNbH/kB5tgECLY5/3XkFLTOLjm9VBMxiInAQJ
	ZvzgzTVbidhJVp7+oDhcPTPkOYVS06SC574ghk5otzR9JQyMT+dPvaqRRqerg441wOZESpSSNB45u
	5EVjAb8k5Xh6WP5+A/bK9wLCEsHMaN8Nne8BcLUq3O1qdC3EpT5ruS2x1muBNGMbz0/CP3HcFIxnc
	ssPHSpmNLkLFA4nc1i3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2co5-00026P-OY; Fri, 14 Feb 2020 15:23:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cmK-0000IE-Ed
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:21:18 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 743702082F;
 Fri, 14 Feb 2020 15:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581693674;
 bh=569NeW8Dm5AkGLXd1hzDBfiVUVN9Yy66W/d/qknuHC4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QsF85+YHSPrNVsA48g/Z8BWYatwIgxNCLX4lMER68E1IKun9naiwygADMAlQgFWfk
 kimOtcjlWvJ1ie5m4BQDJkwu3t3snNLfl90YoVf34cLz8gJJ2WwZ0dIrxM0+VhGD5X
 FLFCDylfAl7XwCaW8WlvOSm1tJNk5MnDbkpZre5Q=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2cPn-0057sw-MG; Fri, 14 Feb 2020 14:57:59 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 16/20] KVM: arm64: GICv4.1: Allow SGIs to switch between HW
 and SW interrupts
Date: Fri, 14 Feb 2020 14:57:32 +0000
Message-Id: <20200214145736.18550-17-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200214_072116_540607_177BBEB9 
X-CRM114-Status: GOOD (  14.62  )
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

In order to let a guest buy in the new, active-less SGIs, we
need to be able to switch between the two modes.

Handle this by stopping all guest activity, transfer the state
from one mode to the other, and resume the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 include/kvm/arm_vgic.h      |  3 ++
 virt/kvm/arm/vgic/vgic-v3.c |  2 +
 virt/kvm/arm/vgic/vgic-v4.c | 96 +++++++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic.h    |  1 +
 4 files changed, 102 insertions(+)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 63457908c9c4..69f4164d6477 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -231,6 +231,9 @@ struct vgic_dist {
 	/* distributor enabled */
 	bool			enabled;
 
+	/* Wants SGIs without active state */
+	bool			nassgireq;
+
 	struct vgic_irq		*spis;
 
 	struct vgic_io_device	dist_iodev;
diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
index 1bc09b523486..2c9fc13e2c59 100644
--- a/virt/kvm/arm/vgic/vgic-v3.c
+++ b/virt/kvm/arm/vgic/vgic-v3.c
@@ -540,6 +540,8 @@ int vgic_v3_map_resources(struct kvm *kvm)
 		goto out;
 	}
 
+	if (kvm_vgic_global_state.has_gicv4_1)
+		vgic_v4_configure_vsgis(kvm);
 	dist->ready = true;
 
 out:
diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
index c2fcde104ea2..063785fd2dc7 100644
--- a/virt/kvm/arm/vgic/vgic-v4.c
+++ b/virt/kvm/arm/vgic/vgic-v4.c
@@ -97,6 +97,102 @@ static irqreturn_t vgic_v4_doorbell_handler(int irq, void *info)
 	return IRQ_HANDLED;
 }
 
+static void vgic_v4_sync_sgi_config(struct its_vpe *vpe, struct vgic_irq *irq)
+{
+	vpe->sgi_config[irq->intid].enabled	= irq->enabled;
+	vpe->sgi_config[irq->intid].group 	= irq->group;
+	vpe->sgi_config[irq->intid].priority	= irq->priority;
+}
+
+static void vgic_v4_enable_vsgis(struct kvm_vcpu *vcpu)
+{
+	struct its_vpe *vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;
+	int i;
+
+	/*
+	 * With GICv4.1, every virtual SGI can be directly injected. So
+	 * let's pretend that they are HW interrupts, tied to a host
+	 * IRQ. The SGI code will do its magic.
+	 */
+	for (i = 0; i < VGIC_NR_SGIS; i++) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, i);
+		struct irq_desc *desc;
+		int ret;
+
+		if (irq->hw) {
+			vgic_put_irq(vcpu->kvm, irq);
+			continue;
+		}
+
+		irq->hw = true;
+		irq->host_irq = irq_find_mapping(vpe->sgi_domain, i);
+		vgic_v4_sync_sgi_config(vpe, irq);
+		/*
+		 * SGIs are initialised as disabled. Enable them if
+		 * required by the rest of the VGIC init code.
+		 */
+		desc = irq_to_desc(irq->host_irq);
+		ret = irq_domain_activate_irq(irq_desc_get_irq_data(desc),
+					      false);
+		if (!WARN_ON(ret)) {
+			/* Transfer pending state */
+			ret = irq_set_irqchip_state(irq->host_irq,
+						    IRQCHIP_STATE_PENDING,
+						    irq->pending_latch);
+			WARN_ON(ret);
+			irq->pending_latch = false;
+		}
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+}
+
+static void vgic_v4_disable_vsgis(struct kvm_vcpu *vcpu)
+{
+	int i;
+
+	for (i = 0; i < VGIC_NR_SGIS; i++) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, i);
+		struct irq_desc *desc;
+		int ret;
+
+		if (!irq->hw) {
+			vgic_put_irq(vcpu->kvm, irq);
+			continue;
+		}
+
+		irq->hw = false;
+		ret = irq_get_irqchip_state(irq->host_irq,
+					    IRQCHIP_STATE_PENDING,
+					    &irq->pending_latch);
+		WARN_ON(ret);
+
+		desc = irq_to_desc(irq->host_irq);
+		irq_domain_deactivate_irq(irq_desc_get_irq_data(desc));
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+}
+
+/* Must be called with the kvm lock held */
+void vgic_v4_configure_vsgis(struct kvm *kvm)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	struct kvm_vcpu *vcpu;
+	int i;
+
+	kvm_arm_halt_guest(kvm);
+
+	kvm_for_each_vcpu(i, vcpu, kvm) {
+		if (dist->nassgireq)
+			vgic_v4_enable_vsgis(vcpu);
+		else
+			vgic_v4_disable_vsgis(vcpu);
+	}
+
+	kvm_arm_resume_guest(kvm);
+}
+
 /**
  * vgic_v4_init - Initialize the GICv4 data structures
  * @kvm:	Pointer to the VM being initialized
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index c7fefd6b1c80..769e4802645e 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -316,5 +316,6 @@ void vgic_its_invalidate_cache(struct kvm *kvm);
 bool vgic_supports_direct_msis(struct kvm *kvm);
 int vgic_v4_init(struct kvm *kvm);
 void vgic_v4_teardown(struct kvm *kvm);
+void vgic_v4_configure_vsgis(struct kvm *kvm);
 
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
