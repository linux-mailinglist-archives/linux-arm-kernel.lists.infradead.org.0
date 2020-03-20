Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A299F18D7DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 19:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljTxCOFpK6VGmHLEvyjNpqf+qZiz2GNyk8NOUMSLv8U=; b=iLMFT/NHQLnA73
	RMEGzHY63E47aZNG5AF3/kzuHOzJGsPLpqeRnkBiggXR9Ch3iBl/KJXeVDy8OOblLpEbslt5UMDps
	cK6OZMm/neNoFSrONqPMcxABmdKw5suCYsW040ZndmEAsZsK6kQkny+MWgc3LWZcPWqgEwSsK2eZ0
	PdVL9yYPPNAnX4d/bjGZM6htjtYYF6Gf4LLYVml17sHQZJoKqp7xiFH3351yNBOcIRvdgK4QsLpTX
	uraTIcPLMbSDzcNI+IGw5dpRmQHJNhCQuylkN3EJPQ/BNDNIszH0f85/Oj41+ZBhWiqHrEZxH+fCc
	Z3il1/4asHsR3HR5Idxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMkT-0006Gh-1j; Fri, 20 Mar 2020 18:52:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMja-0005k5-Gh
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 18:51:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D9F220782;
 Fri, 20 Mar 2020 18:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584730266;
 bh=EWeIoPIU5pLdBJ+TnbGihaGZ67SAvlzjvyRxT2kCXUQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xRywJMOcARzfVMSMVWzxClwxpGtzjMFwmKOMKNpmdjuLWc+Cgn2Hu3ZpBS7mWXMqg
 hBr0nBpBbNJ3jOqyJjNiIx+kjeuY22JcPX3Q3rwq2rYhg3Pm9kPXoPgjgARvriJbRc
 U3Woic7hqdyDnCmV6qkS6DDg4+S35/Cei+yqNFHE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFMKA-00EKAx-7T; Fri, 20 Mar 2020 18:24:50 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
Date: Fri, 20 Mar 2020 18:24:03 +0000
Message-Id: <20200320182406.23465-21-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320182406.23465-1-maz@kernel.org>
References: <20200320182406.23465-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 tglx@linutronix.de, yuzenghui@huawei.com, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_115106_612029_7CBFD7E9 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GICv4.1 architecture gives the hypervisor the option to let
the guest choose whether it wants the good old SGIs with an
active state, or the new, HW-based ones that do not have one.

For this, plumb the configuration of SGIs into the GICv3 MMIO
handling, present the GICD_TYPER2.nASSGIcap to the guest,
and handle the GICD_CTLR.nASSGIreq setting.

In order to be able to deal with the restore of a guest, also
apply the GICD_CTLR.nASSGIreq setting at first run so that we
can move the restored SGIs to the HW if that's what the guest
had selected in a previous life.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Reviewed-by: Zenghui Yu <yuzenghui@huawei.com>
Link: https://lore.kernel.org/r/20200304203330.4967-21-maz@kernel.org
---
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 49 ++++++++++++++++++++++++++++++--
 virt/kvm/arm/vgic/vgic-v3.c      |  2 ++
 2 files changed, 49 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index f4da9d1a6bff..905032a03886 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -3,6 +3,7 @@
  * VGICv3 MMIO handling functions
  */
 
+#include <linux/bitfield.h>
 #include <linux/irqchip/arm-gic-v3.h>
 #include <linux/kvm.h>
 #include <linux/kvm_host.h>
@@ -70,6 +71,8 @@ static unsigned long vgic_mmio_read_v3_misc(struct kvm_vcpu *vcpu,
 		if (vgic->enabled)
 			value |= GICD_CTLR_ENABLE_SS_G1;
 		value |= GICD_CTLR_ARE_NS | GICD_CTLR_DS;
+		if (vgic->nassgireq)
+			value |= GICD_CTLR_nASSGIreq;
 		break;
 	case GICD_TYPER:
 		value = vgic->nr_spis + VGIC_NR_PRIVATE_IRQS;
@@ -81,6 +84,10 @@ static unsigned long vgic_mmio_read_v3_misc(struct kvm_vcpu *vcpu,
 			value |= (INTERRUPT_ID_BITS_SPIS - 1) << 19;
 		}
 		break;
+	case GICD_TYPER2:
+		if (kvm_vgic_global_state.has_gicv4_1)
+			value = GICD_TYPER2_nASSGIcap;
+		break;
 	case GICD_IIDR:
 		value = (PRODUCT_ID_KVM << GICD_IIDR_PRODUCT_ID_SHIFT) |
 			(vgic->implementation_rev << GICD_IIDR_REVISION_SHIFT) |
@@ -98,17 +105,43 @@ static void vgic_mmio_write_v3_misc(struct kvm_vcpu *vcpu,
 				    unsigned long val)
 {
 	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
-	bool was_enabled = dist->enabled;
 
 	switch (addr & 0x0c) {
-	case GICD_CTLR:
+	case GICD_CTLR: {
+		bool was_enabled, is_hwsgi;
+
+		mutex_lock(&vcpu->kvm->lock);
+
+		was_enabled = dist->enabled;
+		is_hwsgi = dist->nassgireq;
+
 		dist->enabled = val & GICD_CTLR_ENABLE_SS_G1;
 
+		/* Not a GICv4.1? No HW SGIs */
+		if (!kvm_vgic_global_state.has_gicv4_1)
+			val &= ~GICD_CTLR_nASSGIreq;
+
+		/* Dist stays enabled? nASSGIreq is RO */
+		if (was_enabled && dist->enabled) {
+			val &= ~GICD_CTLR_nASSGIreq;
+			val |= FIELD_PREP(GICD_CTLR_nASSGIreq, is_hwsgi);
+		}
+
+		/* Switching HW SGIs? */
+		dist->nassgireq = val & GICD_CTLR_nASSGIreq;
+		if (is_hwsgi != dist->nassgireq)
+			vgic_v4_configure_vsgis(vcpu->kvm);
+
 		if (!was_enabled && dist->enabled)
 			vgic_kick_vcpus(vcpu->kvm);
+
+		mutex_unlock(&vcpu->kvm->lock);
 		break;
+	}
 	case GICD_TYPER:
+	case GICD_TYPER2:
 	case GICD_IIDR:
+		/* This is at best for documentation purposes... */
 		return;
 	}
 }
@@ -117,10 +150,22 @@ static int vgic_mmio_uaccess_write_v3_misc(struct kvm_vcpu *vcpu,
 					   gpa_t addr, unsigned int len,
 					   unsigned long val)
 {
+	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
+
 	switch (addr & 0x0c) {
+	case GICD_TYPER2:
 	case GICD_IIDR:
 		if (val != vgic_mmio_read_v3_misc(vcpu, addr, len))
 			return -EINVAL;
+		return 0;
+	case GICD_CTLR:
+		/* Not a GICv4.1? No HW SGIs */
+		if (!kvm_vgic_global_state.has_gicv4_1)
+			val &= ~GICD_CTLR_nASSGIreq;
+
+		dist->enabled = val & GICD_CTLR_ENABLE_SS_G1;
+		dist->nassgireq = val & GICD_CTLR_nASSGIreq;
+		return 0;
 	}
 
 	vgic_mmio_write_v3_misc(vcpu, addr, len, val);
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
