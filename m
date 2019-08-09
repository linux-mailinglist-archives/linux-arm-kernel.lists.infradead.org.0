Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B8287378
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFJ2Izw16H8I5z44QbLrJBQAKJ0vXXEOUkOqXtwwn30=; b=KtaafxvFhdcMOQ
	w8NWMU98RntxTNI5DYMZcx09tMuNHU59vHDl+zPEWZV7BooiltS6OfsujsDqeTwg8Q46Vt7iXLAD4
	gWbpemhcyDZgahlsJYN5WtC23+ciDBjEHYOWmZm8zcW4EcLo/3RH8F4FlNVcAsLhuM1dn2Ppl/zCh
	M9ZwUZEg2wv2qMrTO2cSQCRnctKnG2DYL1ymKPbhoR9wsDEgZ0472n/BpXC6hu3Z/U7AZHifiG89V
	T0pWqD/1VHSXf8OD+YmATzLso+bOzpu+45OdedjVTh/udCA/K+65V3ThomSraXRRkl9AABA+cDXwE
	weqY2mWEW6HFzHTAzC9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzfO-0006EB-Q6; Fri, 09 Aug 2019 07:50:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvze7-0004Lt-Fh
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:49:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7DDA3344;
 Fri,  9 Aug 2019 00:49:06 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D509C3F706;
 Fri,  9 Aug 2019 00:49:04 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 4/4] KVM: arm/arm64: vgic: Reevaluate level sensitive
 interrupts on enable
Date: Fri,  9 Aug 2019 08:48:32 +0100
Message-Id: <20190809074832.13283-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809074832.13283-1-maz@kernel.org>
References: <20190809074832.13283-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_004907_781921_23790F71 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Alexandru Elisei <alexandru.elisei@arm.com>

A HW mapped level sensitive interrupt asserted by a device will not be put
into the ap_list if it is disabled at the VGIC level. When it is enabled
again, it will be inserted into the ap_list and written to a list register
on guest entry regardless of the state of the device.

We could argue that this can also happen on real hardware, when the command
to enable the interrupt reached the GIC before the device had the chance to
de-assert the interrupt signal; however, we emulate the distributor and
redistributors in software and we can do better than that.

Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
