Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE1F848F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5txRLkjwygxCorlXfCRhqbduGyoSNq9VdoeX8EzSaMc=; b=mMt
	cJvOmrvv0pHr00P/EFL+kILelm3hfi2gmTIHLWJccEwqW8PyzfjsfPDR+7VrfOEjgzhIbW89zmdm0
	BTQ4eUoURafQX//GYt45vifUd5mpGfFLOfF+R20iP25o9eYFbJ58Mfy49SxuLa68+uksTVH6UyFnn
	/qe4PDYv4pv9tmA2Lzc1rJUuTmlRSrFHI9RSBMsykn7gPKKrk/4/u9KZMHTIswWkDBvsydaKEHE1R
	vwdHq1tVgDcv4bCsZgg/DGAn5fEvyAGI9/P6oybCSzKytRZDro5lCrTOQQidZpIr8sgxzb9EVQhk1
	6cQUX9YZtSRvmGaeFI8Nq74g7wonahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIe2-0004cj-3z; Wed, 07 Aug 2019 09:54:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIdm-0004Vx-FW
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:53:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 938E128;
 Wed,  7 Aug 2019 02:53:51 -0700 (PDT)
Received: from e121566-lin.cambridge.arm.com (e121566-lin.cambridge.arm.com
 [10.1.196.217])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8D1D83F575;
 Wed,  7 Aug 2019 02:53:50 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH] KVM: arm/arm64: vgic: Reevaluate level sensitive interrupts
 on enable
Date: Wed,  7 Aug 2019 10:53:20 +0100
Message-Id: <1565171600-11082-1-git-send-email-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_025354_845048_4AAB06B8 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: maz@kernel.org, andre.przywara@arm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A HW mapped level sensitive interrupt asserted by a device will not be put
into the ap_list if it is disabled at the VGIC level. When it is enabled
again, it will be inserted into the ap_list and written to a list register
on guest entry regardless of the state of the device.

We could argue that this can also happen on real hardware, when the command
to enable the interrupt reached the GIC before the device had the chance to
de-assert the interrupt signal; however, we emulate the distributor and
redistributors in software and we can do better than that.

Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 virt/kvm/arm/vgic/vgic-mmio.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index 3ba7278fb533..44efc2ff863f 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -113,6 +113,22 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
 		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
 
 		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		if (vgic_irq_is_mapped_level(irq)) {
+			bool was_high = irq->line_level;
+
+			/*
+			 * We need to update the state of the interrupt because
+			 * the guest might have changed the state of the device
+			 * while the interrupt was disabled at the VGIC level.
+			 */
+			irq->line_level = vgic_get_phys_line_level(irq);
+			/*
+			 * Deactivate the physical interrupt so the GIC will let
+			 * us know when it is asserted again.
+			 */
+			if (!irq->active && was_high && !irq->line_level)
+				vgic_irq_set_phys_active(irq, false);
+		}
 		irq->enabled = true;
 		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
