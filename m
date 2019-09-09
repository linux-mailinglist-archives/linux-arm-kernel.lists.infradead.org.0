Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2115ADA70
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/KzDckn2yJdKFPo6akJ8xepb7Gdd1S8GDRQ55atUAw=; b=U5Zmnx5gXv2DFE
	IS+wgUafcSU7xqFZpZ+4wjDR/emjBTmQfdYK1RuHjs+fnpR/hbqTgr76fsSenzEAcm8B6ec1toMik
	GvD92X0iWjp0W1Jk6/NLtUuqU1b2omkaOyvJsvkMIqkD6VvwhL2fFyacHkbGJfyj+5dxjZ0rjZrWm
	YK/RUVMp88doHoLaUT0G6OcVdN1O1yw4378SrfwksV1ph8gi5UL4nl/MwAqGkwROXyh2mv+SUxLfw
	tlScWGRB5BIG4AbeMMMF+S5lya3bFTuNJCbowHSpIINawuTUp7myEykNGzQi0nyqXHriu94hBsSEp
	K35ba32BIxhz+LfQyGQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K4j-0005O5-D4; Mon, 09 Sep 2019 13:51:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K2Z-0002Xh-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:49:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 705771713;
 Mon,  9 Sep 2019 06:49:11 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37F293F59C;
 Mon,  9 Sep 2019 06:49:09 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 08/17] KVM: arm/arm64: vgic-its: Cache successful MSI->LPI
 translation
Date: Mon,  9 Sep 2019 14:47:58 +0100
Message-Id: <20190909134807.27978-9-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190909134807.27978-1-maz@kernel.org>
References: <20190909134807.27978-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064912_331312_47405814 
X-CRM114-Status: GOOD (  14.85  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On a successful translation, preserve the parameters in the LPI
translation cache. Each translation is reusing the last slot
in the list, naturally evicting the least recently used entry.

Tested-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 virt/kvm/arm/vgic/vgic-its.c | 86 ++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index d3e90a9d0a7a..e61d3ea0ab40 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -535,6 +535,90 @@ static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
 	return 0;
 }
 
+static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
+					       phys_addr_t db,
+					       u32 devid, u32 eventid)
+{
+	struct vgic_translation_cache_entry *cte;
+
+	list_for_each_entry(cte, &dist->lpi_translation_cache, entry) {
+		/*
+		 * If we hit a NULL entry, there is nothing after this
+		 * point.
+		 */
+		if (!cte->irq)
+			break;
+
+		if (cte->db != db || cte->devid != devid ||
+		    cte->eventid != eventid)
+			continue;
+
+		/*
+		 * Move this entry to the head, as it is the most
+		 * recently used.
+		 */
+		if (!list_is_first(&cte->entry, &dist->lpi_translation_cache))
+			list_move(&cte->entry, &dist->lpi_translation_cache);
+
+		return cte->irq;
+	}
+
+	return NULL;
+}
+
+static void vgic_its_cache_translation(struct kvm *kvm, struct vgic_its *its,
+				       u32 devid, u32 eventid,
+				       struct vgic_irq *irq)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	struct vgic_translation_cache_entry *cte;
+	unsigned long flags;
+	phys_addr_t db;
+
+	/* Do not cache a directly injected interrupt */
+	if (irq->hw)
+		return;
+
+	raw_spin_lock_irqsave(&dist->lpi_list_lock, flags);
+
+	if (unlikely(list_empty(&dist->lpi_translation_cache)))
+		goto out;
+
+	/*
+	 * We could have raced with another CPU caching the same
+	 * translation behind our back, so let's check it is not in
+	 * already
+	 */
+	db = its->vgic_its_base + GITS_TRANSLATER;
+	if (__vgic_its_check_cache(dist, db, devid, eventid))
+		goto out;
+
+	/* Always reuse the last entry (LRU policy) */
+	cte = list_last_entry(&dist->lpi_translation_cache,
+			      typeof(*cte), entry);
+
+	/*
+	 * Caching the translation implies having an extra reference
+	 * to the interrupt, so drop the potential reference on what
+	 * was in the cache, and increment it on the new interrupt.
+	 */
+	if (cte->irq)
+		__vgic_put_lpi_locked(kvm, cte->irq);
+
+	vgic_get_irq_kref(irq);
+
+	cte->db		= db;
+	cte->devid	= devid;
+	cte->eventid	= eventid;
+	cte->irq	= irq;
+
+	/* Move the new translation to the head of the list */
+	list_move(&cte->entry, &dist->lpi_translation_cache);
+
+out:
+	raw_spin_unlock_irqrestore(&dist->lpi_list_lock, flags);
+}
+
 void vgic_its_invalidate_cache(struct kvm *kvm)
 {
 	struct vgic_dist *dist = &kvm->arch.vgic;
@@ -578,6 +662,8 @@ int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
 	if (!vcpu->arch.vgic_cpu.lpis_enabled)
 		return -EBUSY;
 
+	vgic_its_cache_translation(kvm, its, devid, eventid, ite->irq);
+
 	*irq = ite->irq;
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
