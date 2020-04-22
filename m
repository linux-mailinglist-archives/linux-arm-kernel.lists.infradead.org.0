Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B851B4A39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 18:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=91saVywuaNFYPDc7GXqrlMnBKUDs0qTAOVQPz4GJ9CA=; b=SFC5YUdqIFmDNG
	PFT0JAiYKqMHgTCYVEACdLUZFUgo95GTiuRq86/0jXVFLQPNmien6sw/EaP9UKP0rHTpODp/7ule4
	smwBZ5M0KoqYp81hKSvFak/OCOteg21luM1rSKZiMXWuqJ9phNSxGC7TrZenyqNuK/oFQV7GjbD12
	qGRxnaYVa+O/Mkssa/lybPcQ/N3wH+HlUqnKyzQ9wZX33b+4yUyD+/Hh5XS05ICkrgBavuSR3C+Ct
	JILWQzZnqwEG9sPd/p+lU9Kb4RG9sBHN+qH/Sq0t2Ci2XNcnKLfNMVXhhP7UdtULnOQpDz7MMwOP/
	SVMKyW2F25dgX7y9hnag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRI7E-000829-QY; Wed, 22 Apr 2020 16:20:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRI5r-0004t6-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 16:19:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B44921556;
 Wed, 22 Apr 2020 16:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587572363;
 bh=u9wJ98y83882yP13mPxxBtHB6hebqyf0H70GUs8Z/fY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dR/nIg0fRw1kiG8pUr+Z9Qa/eQEKXTGWCDvKsnx1uCQS5uUvG3vyHg+H67e0ZZtzC
 YFnSFabHV9LdAofMXU7EpmISMs6Zk0badq10ohj6a25gvjs5pxsMYytZEq8eX8TQVo
 yAiiEqZZdxUltpz0akLmaAX5rdI39PDD6A1AW6cM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRI5p-005Ynp-RK; Wed, 22 Apr 2020 17:19:22 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 3/6] KVM: arm: vgic: Only use the virtual state when
 userspace accesses enable bits
Date: Wed, 22 Apr 2020 17:18:41 +0100
Message-Id: <20200422161844.3848063-4-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422161844.3848063-1-maz@kernel.org>
References: <20200422161844.3848063-1-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200422_091924_057005_DB208CD9 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no point in accessing the HW when writing to any of the
ISENABLER/ICENABLER registers from userspace, as only the guest
should be allowed to change the HW state.

Introduce new userspace-specific accessors that deal solely with
the virtual state.

Reported-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-mmio-v2.c |  6 +++--
 virt/kvm/arm/vgic/vgic-mmio-v3.c | 16 +++++++-----
 virt/kvm/arm/vgic/vgic-mmio.c    | 42 ++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-mmio.h    |  8 ++++++
 4 files changed, 64 insertions(+), 8 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
index d63881f60e1a5..f51c6e939c761 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
@@ -409,10 +409,12 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
 		NULL, vgic_mmio_uaccess_write_v2_group, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ENABLE_SET,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ENABLE_CLEAR,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+		NULL, vgic_uaccess_write_cenable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PENDING_SET,
 		vgic_mmio_read_pending, vgic_mmio_write_spending, NULL, NULL, 1,
diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
index f2b37a081f26a..416613f2400c5 100644
--- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
+++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
@@ -538,10 +538,12 @@ static const struct vgic_register_region vgic_v3_dist_registers[] = {
 		vgic_mmio_read_group, vgic_mmio_write_group, NULL, NULL, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISENABLER,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICENABLER,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, NULL, NULL, 1,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+	       NULL, vgic_uaccess_write_cenable, 1,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISPENDR,
 		vgic_mmio_read_pending, vgic_mmio_write_spending,
@@ -609,11 +611,13 @@ static const struct vgic_register_region vgic_v3_rd_registers[] = {
 	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_IGROUPR0,
 		vgic_mmio_read_group, vgic_mmio_write_group, 4,
 		VGIC_ACCESS_32bit),
-	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_ISENABLER0,
-		vgic_mmio_read_enable, vgic_mmio_write_senable, 4,
+	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISENABLER0,
+		vgic_mmio_read_enable, vgic_mmio_write_senable,
+		NULL, vgic_uaccess_write_senable, 4,
 		VGIC_ACCESS_32bit),
-	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_ICENABLER0,
-		vgic_mmio_read_enable, vgic_mmio_write_cenable, 4,
+	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ICENABLER0,
+		vgic_mmio_read_enable, vgic_mmio_write_cenable,
+		NULL, vgic_uaccess_write_cenable, 4,
 		VGIC_ACCESS_32bit),
 	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISPENDR0,
 		vgic_mmio_read_pending, vgic_mmio_write_spending,
diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
index b38e94e8f74ad..6e30034d14645 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.c
+++ b/virt/kvm/arm/vgic/vgic-mmio.c
@@ -184,6 +184,48 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
 	}
 }
 
+int vgic_uaccess_write_senable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	int i;
+	unsigned long flags;
+
+	for_each_set_bit(i, &val, len * 8) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
+
+		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		irq->enabled = true;
+		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+
+	return 0;
+}
+
+int vgic_uaccess_write_cenable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val)
+{
+	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
+	int i;
+	unsigned long flags;
+
+	for_each_set_bit(i, &val, len * 8) {
+		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
+
+		raw_spin_lock_irqsave(&irq->irq_lock, flags);
+		irq->enabled = false;
+		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
+
+		vgic_put_irq(vcpu->kvm, irq);
+	}
+
+	return 0;
+}
+
 unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
 				     gpa_t addr, unsigned int len)
 {
diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
index 30713a44e3faa..327d0a6938e4d 100644
--- a/virt/kvm/arm/vgic/vgic-mmio.h
+++ b/virt/kvm/arm/vgic/vgic-mmio.h
@@ -138,6 +138,14 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
 			     gpa_t addr, unsigned int len,
 			     unsigned long val);
 
+int vgic_uaccess_write_senable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val);
+
+int vgic_uaccess_write_cenable(struct kvm_vcpu *vcpu,
+			       gpa_t addr, unsigned int len,
+			       unsigned long val);
+
 unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
 				     gpa_t addr, unsigned int len);
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
