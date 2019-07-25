Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2525752E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLoGJ/oUULbuvhp43JPNt+QAPLIEovReDlW3F6TSGqA=; b=j2pBLSoM1YcMRu
	NGjFQYLOqa6YH84zaIxG6baTX5M1l0uT1hnCH1wJ9gDKUsQMseVYDHeJouwtwi/oJJKm3up5NLc/a
	0O+ubRv5it3YgFhrzXvJj0S8usSZCvpR/wM6MEL2Lm9da5Z1jNIHSBXXs5d3Rk6SjTiR23au45vQS
	aovmBBhmIwjGg/t5vYNlkyHjnsJng5ollboKzZKjDfrGaw003fShcG/ZJOD1ldxxzR6vWgzjW3b7X
	8x1uG68HwHmKQ1Ya3kZah6jrAfgeKsmO7NzJouQLjGHfJFuewXX0YSRxuIOEdkIdYLPvkVnldthdn
	viYC8uN6PAiPTmgyf+GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfo1-0005FO-Hv; Thu, 25 Jul 2019 15:37:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfnC-0004k2-8E
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:36:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6203C1595;
 Thu, 25 Jul 2019 08:36:29 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B18293F71A;
 Thu, 25 Jul 2019 08:36:27 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v3 02/10] KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked
 primitive
Date: Thu, 25 Jul 2019 16:35:35 +0100
Message-Id: <20190725153543.24386-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725153543.24386-1-maz@kernel.org>
References: <20190725153543.24386-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_083630_332005_FF08AFF6 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 "Raslan, KarimAllah" <karahmed@amazon.de>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>, "Saidi,
 Ali" <alisaidi@amazon.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

Our LPI translation cache needs to be able to drop the refcount
on an LPI whilst already holding the lpi_list_lock.

Let's add a new primitive for this.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic.c | 26 +++++++++++++++++---------
 virt/kvm/arm/vgic/vgic.h |  1 +
 2 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 04786c8ec77e..deb84712f550 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -119,6 +119,22 @@ static void vgic_irq_release(struct kref *ref)
 {
 }
 
+/*
+ * Drop the refcount on the LPI. Must be called with lpi_list_lock held.
+ */
+void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+
+	if (!kref_put(&irq->refcount, vgic_irq_release))
+		return;
+
+	list_del(&irq->lpi_list);
+	dist->lpi_list_count--;
+
+	kfree(irq);
+}
+
 void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
 {
 	struct vgic_dist *dist = &kvm->arch.vgic;
@@ -128,16 +144,8 @@ void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
 		return;
 
 	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
-	if (!kref_put(&irq->refcount, vgic_irq_release)) {
-		raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
-		return;
-	};
-
-	list_del(&irq->lpi_list);
-	dist->lpi_list_count--;
+	__vgic_put_lpi_locked(kvm, irq);
 	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
-
-	kfree(irq);
 }
 
 void vgic_flush_pending_lpis(struct kvm_vcpu *vcpu)
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index 11291a9c8c1c..e523b3a54590 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -161,6 +161,7 @@ vgic_get_mmio_region(struct kvm_vcpu *vcpu, struct vgic_io_device *iodev,
 		     gpa_t addr, int len);
 struct vgic_irq *vgic_get_irq(struct kvm *kvm, struct kvm_vcpu *vcpu,
 			      u32 intid);
+void __vgic_put_lpi_locked(struct kvm *kvm, struct vgic_irq *irq);
 void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq);
 bool vgic_get_phys_line_level(struct vgic_irq *irq);
 void vgic_irq_set_phys_pending(struct vgic_irq *irq, bool pending);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
