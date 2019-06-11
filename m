Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BD73D36B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR7982e2k9bzfTI/Pm7RLqXBuHluzXJ22dYMLQzspOY=; b=btfUwq1nB9FChq
	2ob75LPtd0a3jDEYA3JV6qYRBT84QVoYVlPUPLs3e7CNZBPpmoTil/hgy7XEPz9H3UAL3F0zViZbF
	8WJdLLcuVmSe9GACDsFxxgMDEaurmz6aF5xlz7BzTsKHDyePetQajM/8+68OxThB6ljVLPvNUN4Ea
	lArHUmxyn6l5RSYhNf+LfBkQDFMttb8NaogysDeQ4j95TE6GweFqBV2vGKdaHXBrP2Y98jnxJ2fcI
	3VYbf67HG7Vz25F25GmAAkrhBdhtaa9/w+wyW9NbmnfxxmZc6cYTRNORBS3cvKkw4zSd1YRuEh6HS
	90e9KDVprLLRAaWDGaHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakDx-0003bB-RN; Tue, 11 Jun 2019 17:06:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hakBj-0000gG-TF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:04:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71D67105A;
 Tue, 11 Jun 2019 10:03:59 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 028F23F73C;
 Tue, 11 Jun 2019 10:03:57 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 7/9] KVM: arm/arm64: vgic-its: Cache successful MSI->LPI
 translation
Date: Tue, 11 Jun 2019 18:03:34 +0100
Message-Id: <20190611170336.121706-8-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611170336.121706-1-marc.zyngier@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100400_107937_C0DA52BD 
X-CRM114-Status: GOOD (  14.35  )
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

On a successful translation, preserve the parameters in the LPI
translation cache. Each translation is reusing the last slot
in the list, naturally evincting the least recently used entry.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 virt/kvm/arm/vgic/vgic-its.c | 86 ++++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 0aa0cbbc3af6..62932458476a 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -546,6 +546,90 @@ static unsigned long vgic_mmio_read_its_idregs(struct kvm *kvm,
 	return 0;
 }
 
+static struct vgic_irq *__vgic_its_check_cache(struct vgic_dist *dist,
+					       phys_addr_t db,
+					       u32 devid, u32 eventid)
+{
+	struct vgic_translation_cache_entry *cte;
+	struct vgic_irq *irq = NULL;
+
+	list_for_each_entry(cte, &dist->lpi_translation_cache, entry) {
+		/*
+		 * If we hit a NULL entry, there is nothing after this
+		 * point.
+		 */
+		if (!cte->irq)
+			break;
+
+		if (cte->db == db &&
+		    cte->devid == devid &&
+		    cte->eventid == eventid) {
+			/*
+			 * Move this entry to the head, as it is the
+			 * most recently used.
+			 */
+			list_move(&cte->entry, &dist->lpi_translation_cache);
+			irq = cte->irq;
+			break;
+		}
+	}
+
+	return irq;
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
@@ -589,6 +673,8 @@ int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
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
