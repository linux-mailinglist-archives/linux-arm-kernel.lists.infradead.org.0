Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 745CE15DAA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:21:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDXNEFl49IAXespTUOINi8bqA07nB5lgjB2JcWWB7EI=; b=Y86RrwNbiqF/3C
	1WM3mFUqNKddWZSx8y2tQZglMROzgTHKnsCg+w1y6d0ArA4o1U7WNXPYjxebh3Lx0veRedU8Za/cb
	PhcEsufK8K4gDIlbFmoJBnxgm/6rXZoPQW+oCLEvhO/92LKWFiLnF5PY15tBH5s2h8dd0bPfLHBm7
	8iHWgE39aZsCZDWaC2Xzh29Oa5tTjKjmwocsZhN+Pi1SvNKSTkY8m4S5cw9bMT5r9tzFeCNyHYcoe
	O/zv7Nco0NfgG154AowK63rCnCLlq92yfI3Htx84/89TlP28+RDXDOW7P3hWQF0EAqinQgqGIlUkh
	e69LwiuoxCjbBXot3H3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cmq-0000a9-Nt; Fri, 14 Feb 2020 15:21:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cmA-00005o-Mb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 15:21:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B7522465D;
 Fri, 14 Feb 2020 15:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581693666;
 bh=C26s2HRE+wPz1uugU5+btkXiJRVLhTEvqGNwYSzqZE8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VDN01hxRKiUm11geARc6hVKNzTiMZ+UWfmV4hI21kVM+UZPfTNpMRRkajaeagMdLj
 LGKBV9jZ3Mll55RLXrhdlZBtEGVIVyx4EmeVvv+3qcba1Kz0sr8S7Xrartj6bsoXy7
 F6ZCCAug3uy4ZzP+uc6yenbV7zG2FdLtRj4UXuG4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2cPo-0057sw-AH; Fri, 14 Feb 2020 14:58:00 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 17/20] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
Date: Fri, 14 Feb 2020 14:57:33 +0000
Message-Id: <20200214145736.18550-18-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200214_072106_824354_DA164A13 
X-CRM114-Status: GOOD (  16.31  )
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

The GICv4.1 architecture gives the hypervisor the option to let
the guest choose whether it wants the good old SGIs with an
active state, or the new, HW-based ones that do not have one.

For this, plumb the configuration of SGIs into the GICv3 MMIO
handling, present the GICD_TYPER2.nASSGIcap to the guest,
and handle the GICD_CTLR.nASSGIreq setting.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 48 ++++++++++++++++++++++++++++++--
 1 file changed, 46 insertions(+), 2 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index de89da76a379..442f3b8c2559 100644
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
+		if (kvm_vgic_global_state.has_gicv4_1 && vgic->nassgireq)
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
@@ -117,10 +150,21 @@ static int vgic_mmio_uaccess_write_v3_misc(struct kvm_vcpu *vcpu,
 					   gpa_t addr, unsigned int len,
 					   unsigned long val)
 {
+	struct vgic_dist *dist = &vcpu->kvm->arch.vgic;
+
 	switch (addr & 0x0c) {
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
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
