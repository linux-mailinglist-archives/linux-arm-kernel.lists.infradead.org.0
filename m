Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E422E3D376
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0Zx01+dWQfQJZPtDfde6uTBGolBBNE683DMH/YERLY=; b=T+N+kZ4gmF5JG4
	RnxYgjBsSleKK000QypkamrtqADmEn/LGJ3xyzpsWPBBWNTcgQY80r/e25KtyX+BxQZ79Rrtlt/HC
	tjJ/WqNLw55nQtocyCy2IA6E4EVlbCYcSlpEty9MQM62omgtRAWjvcwYgCFsrmlZaJBOzKqfA8119
	r1xY/aehQOS4bPfy+rpNr70VQuUWBUbym+Ga2/w6uTis2AF7KxPIa/5gs/ejf1dI/dzHaHOCtMGXU
	43at4m6F64Jysjma3VxUTRS9gKIMTLfLeCmivUokDz8GjuxIoGtXWc0f8rvIiTi9U+JQWWiQ6bSKZ
	kngE7vIk5m+mf+y9K6Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakEC-0003qg-SS; Tue, 11 Jun 2019 17:06:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hakBl-0000ie-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:04:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21131106F;
 Tue, 11 Jun 2019 10:04:01 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A61783F73C;
 Tue, 11 Jun 2019 10:03:59 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 8/9] KVM: arm/arm64: vgic-its: Check the LPI translation
 cache on MSI injection
Date: Tue, 11 Jun 2019 18:03:35 +0100
Message-Id: <20190611170336.121706-9-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611170336.121706-1-marc.zyngier@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100402_148633_2BC0F5DC 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, "Raslan,
 KarimAllah" <karahmed@amazon.de>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, "Saidi, Ali" <alisaidi@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When performing an MSI injection, let's first check if the translation
is already in the cache. If so, let's inject it quickly without
going through the whole translation process.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 36 ++++++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic.h     |  1 +
 2 files changed, 37 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 62932458476a..83d80ec33473 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -577,6 +577,20 @@ static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
 	return irq;
 }
 
+static struct vgic_irq *vgic_its_check_cache(struct kvm *kvm, phys_addr_t db,
+					     u32 devid, u32 eventid)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	struct vgic_irq *irq;
+	unsigned long flags;
+
+	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
+	irq = __vgic_its_check_cache(dist, db, devid, eventid);
+	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
+
+	return irq;
+}
+
 static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
 				       u32 devid, u32 eventid,
 				       struct vgic_irq *irq)
@@ -736,6 +750,25 @@ static int vgic_its_trigger_msi(struct kvm *kvm, struct vgic_its *its,
 	return 0;
 }
 
+int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi)
+{
+	struct vgic_irq *irq;
+	unsigned long flags;
+	phys_addr_t db;
+
+	db = (u64)msi->address_hi << 32 | msi->address_lo;
+	irq = vgic_its_check_cache(kvm, db, msi->devid, msi->data);
+
+	if (!irq)
+		return -1;
+
+	raw_spin_lock_irqsave(&irq->irq_lock, flags);
+	irq->pending_latch = true;
+	vgic_queue_irq_unlock(kvm, irq, flags);
+
+	return 0;
+}
+
 /*
  * Queries the KVM IO bus framework to get the ITS pointer from the given
  * doorbell address.
@@ -747,6 +780,9 @@ int vgic_its_inject_msi(struct kvm *kvm, struct kvm_msi *msi)
 	struct vgic_its *its;
 	int ret;
 
+	if (!vgic_its_inject_cached_translation(kvm, msi))
+		return 1;
+
 	its = vgic_msi_to_its(kvm, msi);
 	if (IS_ERR(its))
 		return PTR_ERR(its);
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index 072f810dc441..ad6eba1e2beb 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -317,6 +317,7 @@ int vgic_copy_lpi_list(struct kvm *kvm, struct kvm_vcpu *vcpu, u32 **intid_ptr);
 int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
 			 u32 devid, u32 eventid, struct vgic_irq **irq);
 struct vgic_its *vgic_msi_to_its(struct kvm *kvm, struct kvm_msi *msi);
+int vgic_its_inject_cached_translation(struct kvm *kvm, struct kvm_msi *msi);
 void vgic_lpi_translation_cache_init(struct kvm *kvm);
 void vgic_lpi_translation_cache_destroy(struct kvm *kvm);
 void vgic_its_invalidate_cache(struct kvm *kvm);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
