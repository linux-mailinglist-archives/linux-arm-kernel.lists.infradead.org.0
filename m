Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70D980E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pCEeiJfJT7ccOHnvwSk56vDOYU/EXvpBDRx1WWg0ebs=; b=vEP
	6LWJjjUum3FLlqGN/6xkfh7BG9uITMxYLeEr4s9AF8qcLOM/M1BEXJInHGbVGK4X47Y2y9CCFYT6D
	vVkm+IBDXLRzrwrTlFnWg0d8cXrhZU5IMw/KQQPyw/Op7YnaR9+p85euFzMTpB7g0PvmFAAHhTRa9
	FGQxTRtK2MKhjT0nvztm3mN3xFGiZVNih+orMqBGhwc2DqkFR5Z/554xMYvYWZ+ntfp/LHT5uRsbU
	cca3fOfN8nl/bwzuDE9LbOwsj0PSfp77x+qESknJKyeuecbIF4U5PtzTIVZLrLOHynDeatuR8F7Qz
	utrGhmhoRnwNrMTrmu41zhUNJbebq9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Tz3-0007bs-Iw; Wed, 21 Aug 2019 17:01:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Tyv-0007bZ-6z
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:01:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E9C6337;
 Wed, 21 Aug 2019 10:01:07 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A9B63F718;
 Wed, 21 Aug 2019 10:01:05 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: [RESEND PATCH] KVM: arm: VGIC: properly initialise private IRQ
 affinity
Date: Wed, 21 Aug 2019 18:00:52 +0100
Message-Id: <20190821170052.169065-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_100109_302429_E9B16F82 
X-CRM114-Status: GOOD (  12.81  )
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
Cc: Julien Grall <julien.grall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org, Dave Martin <dave.martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment we initialise the target *mask* of a virtual IRQ to the
VCPU it belongs to, even though this mask is only defined for GICv2 and
quickly runs out of bits for many GICv3 guests.
This behaviour triggers an UBSAN complaint for more than 32 VCPUs:
------
[ 5659.462377] UBSAN: Undefined behaviour in virt/kvm/arm/vgic/vgic-init.c:223:21
[ 5659.471689] shift exponent 32 is too large for 32-bit type 'unsigned int'
------
Also for GICv3 guests the reporting of TARGET in the "vgic-state" debugfs
dump is wrong, due to this very same problem.

Fix both issues by only initialising vgic_irq->targets for a vGICv2 guest,
and by initialising vgic_irq->mpdir for vGICv3 guests instead. We can't
use the actual MPIDR for that, as the VCPU's system register is not
initialised at this point yet. This is not really an issue, as ->mpidr
is just used for the debugfs output and the IROUTER MMIO register, which
does not exist in redistributors (dealing with SGIs and PPIs).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Reported-by: Dave Martin <dave.martin@arm.com>
---
Hi,

this came up here again, I think it fell through the cracks back in
March:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/637209.html

Cheers,
Andre.

 virt/kvm/arm/vgic/vgic-init.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index 80127ca9269f..8bce2f75e0c1 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -210,7 +210,6 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
 		irq->intid = i;
 		irq->vcpu = NULL;
 		irq->target_vcpu = vcpu;
-		irq->targets = 1U << vcpu->vcpu_id;
 		kref_init(&irq->refcount);
 		if (vgic_irq_is_sgi(i)) {
 			/* SGIs */
@@ -221,10 +220,14 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
 			irq->config = VGIC_CONFIG_LEVEL;
 		}
 
-		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3)
+		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {
 			irq->group = 1;
-		else
+			/* The actual MPIDR is not initialised at this point. */
+			irq->mpidr = 0;
+		} else {
 			irq->group = 0;
+			irq->targets = 1U << vcpu->vcpu_id;
+		}
 	}
 
 	if (!irqchip_in_kernel(vcpu->kvm))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
