Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8785AF52F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lUCUetSF3TC2g+t+dFHjYxT8h5Qc+bes5DFzfMRgvnQ=; b=VrLaAnONtkhEAspRcAAAOb4PYJ
	P2D68qaWcGFao8OOIaZdjOTkDOvo20yJ04lDq4L8XPRE9iX5QV89g82ZdbFKCy7COgbkjT9Mrgqr4
	dxTIH3o5DpvN72CAiTj7OS9x04Zhy5rcG+7C6Zzqj/h+mOx+z2GsMkKhsOrlyd27cZbYTXvuRuxZ7
	fZ4t31XzRl+DYSLr0LNcLBWjXsgWU6Rsfe5bUESZZGbVVV/Rmnn2MgvkYAWAhbKVkaRu82bbKJO3t
	+olcQa6CaLZosadhqLFA+2XaaD+rEvU+rRQKRq7SC3VJX+6oHK8i5opkJsB/s5MXiSvm//OQLOSzP
	eWOa9ezQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8PM-0005vd-W1; Fri, 08 Nov 2019 17:50:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8Ob-0004Kd-9U
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:50:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C4DDDAB6;
 Fri,  8 Nov 2019 09:50:03 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76D1F3F719;
 Fri,  8 Nov 2019 09:50:02 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH 3/3] kvm: arm: VGIC: Enable proper Group0 handling
Date: Fri,  8 Nov 2019 17:49:52 +0000
Message-Id: <20191108174952.740-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108174952.740-1-andre.przywara@arm.com>
References: <20191108174952.740-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_095005_415678_964C4140 
X-CRM114-Status: GOOD (  12.18  )
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

Now that our VGIC emulation can properly deal with two separate
interrupt groups and their enable bits, we can allow a guest to control
the Group0 enable bit in the distributor.

When evaluating the state of an interrupt, we now take its individual
group enable bit into account, and drop the global "distributor
disabled" notion when checking for VCPUs with a pending interrupt.

This allows the guest to control both groups independently.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 virt/kvm/arm/vgic/vgic.c | 24 +-----------------------
 1 file changed, 1 insertion(+), 23 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 28d9ff282017..ed3a10b9ea93 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -203,8 +203,7 @@ void vgic_irq_set_phys_active(struct vgic_irq *irq, bool active)
 
 static bool vgic_irq_is_grp_enabled(struct kvm *kvm, struct vgic_irq *irq)
 {
-	/* Placeholder implementation until we properly support Group0. */
-	return kvm->arch.vgic.groups_enable;
+	return vgic_dist_group_enabled(kvm, irq->group);
 }
 
 /**
@@ -320,15 +319,6 @@ int vgic_dist_enable_group(struct kvm *kvm, int group, bool status)
 	if (new_bit == was_enabled)
 		return 0;
 
-	/* Group 0 on GICv3 and Group 1 on GICv2 are ignored for now. */
-	if (kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
-		if (group == GIC_GROUP0)
-			return 0;
-	} else {
-		if (group == GIC_GROUP1)
-			return 0;
-	}
-
 	dist->groups_enable &= ~group_mask;
 	dist->groups_enable |= new_bit;
 	if (new_bit > was_enabled)
@@ -435,15 +425,6 @@ bool vgic_dist_group_enabled(struct kvm *kvm, int group)
 {
 	struct vgic_dist *dist = &kvm->arch.vgic;
 
-	/* Group 0 on GICv3 and Group 1 on GICv2 are ignored for now. */
-	if (kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
-		if (group == GIC_GROUP0)
-			return false;
-	} else {
-		if (group == GIC_GROUP1)
-			return false;
-	}
-
 	return dist->groups_enable & (1U << group);
 }
 
@@ -1093,9 +1074,6 @@ int kvm_vgic_vcpu_pending_irq(struct kvm_vcpu *vcpu)
 	unsigned long flags;
 	struct vgic_vmcr vmcr;
 
-	if (!vcpu->kvm->arch.vgic.groups_enable)
-		return false;
-
 	if (vcpu->arch.vgic_cpu.vgic_v3.its_vpe.pending_last)
 		return true;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
