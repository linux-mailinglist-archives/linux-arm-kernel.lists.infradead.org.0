Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0EB37A46
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqi2v59hYfKAGVoZYjDe24ERWr559tWrKEy8KPceG0I=; b=HAc63pm1uSIwMz
	K6OBnfd9uVP0PShSuB0/nIgiYRgW4HnkqhTPy2Zj15PmMp0uKZ51c4BvDCkDW46MjKjIjzBS/Srbt
	3WFgGSd3ImeiiF4012UyyxSk5h8Jx17Z4O3gXOzfy3r3kj4f/202/Jq7l5GTszJRf+4OpGGCSku5g
	PH/AaoQ59IscD7ONTBiieEbJ5MVyo+3hQkVDeHZH2VR5QELfeqIKiknccHDVbgbMd+P9/CEOzkLQW
	MbEn6BTjOJrbQ0HSfGRNgvWy2iHRZcZig8CWLbyZLslXZ8mECA+fyccR8z7+ZinQdI7BmygHzCfat
	//VDnfDYClxqzH358DGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYvfr-0006EM-CP; Thu, 06 Jun 2019 16:55:35 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYvfR-0005pf-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:55:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53C4215AB;
 Thu,  6 Jun 2019 09:55:09 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8762A3F690;
 Thu,  6 Jun 2019 09:55:07 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 2/8] KVM: arm/arm64: vgic: Add __vgic_put_lpi_locked primitive
Date: Thu,  6 Jun 2019 17:54:49 +0100
Message-Id: <20190606165455.162478-3-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190606165455.162478-1-marc.zyngier@arm.com>
References: <20190606165455.162478-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_095509_962054_64687E73 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Our LPI translation cache needs to be able to drop the refcount
on an LPI whilst already holding the lpi_list_lock.

Let's add a new primitive for this.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic.c | 26 +++++++++++++++++---------
 virt/kvm/arm/vgic/vgic.h |  1 +
 2 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
index 191deccf60bf..376a297e2169 100644
--- a/virt/kvm/arm/vgic/vgic.c
+++ b/virt/kvm/arm/vgic/vgic.c
@@ -130,6 +130,22 @@ static void vgic_irq_release(struct kref *ref)
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
@@ -139,16 +155,8 @@ void vgic_put_irq(struct kvm *kvm, struct vgic_irq *irq)
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
index a58e1b263dca..80cd40575bc9 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -172,6 +172,7 @@ vgic_get_mmio_region(struct kvm_vcpu *vcpu, struct vgic_io_device *iodev,
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
