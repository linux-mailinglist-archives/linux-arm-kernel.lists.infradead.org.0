Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141DD3D34E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOrcRTA15WtC2HbtHI6Ku11pi1SQa8i7GnNhHh6hy6Y=; b=nt8AVXi30YD1Um
	HYeYe6sJyNFG8uUPPQuhIMc+UgPFsSG8o8HLyqOjXavQ8TxGg/mSPcbtUF6JFp1eeSlIa8NyNdNvn
	Nzr4asZhuWvqMGoppcczoVn1NbPCG9Do4qFAL0931cKWNVM3mIS6vZPRvRekUd6i0bpooeBZ7D7/x
	di+A0qcIpi6+KCY2dEGUwjmeco4TbsBEmSFtoSNpj4JNpm7cXfp4bG+QXSeUDmJRUeb4jWSYqrIOp
	aNyRRTuddndLr0KCzjHTcMR+MZ2PRiRAjI6vIYm9z9DruwcMS2KZjgWTryL4IKOdID72ckqDGUble
	URjSmwqPSPuF8A7MN80Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hakC7-0000iA-KW; Tue, 11 Jun 2019 17:04:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hakBa-0000VV-9a
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:03:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BD07346;
 Tue, 11 Jun 2019 10:03:49 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F18333F73C;
 Tue, 11 Jun 2019 10:03:47 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 1/9] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
Date: Tue, 11 Jun 2019 18:03:28 +0100
Message-Id: <20190611170336.121706-2-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611170336.121706-1-marc.zyngier@arm.com>
References: <20190611170336.121706-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_100350_422288_DF807D3B 
X-CRM114-Status: GOOD (  13.20  )
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

Add the basic data structure that expresses an MSI to LPI
translation as well as the allocation/release hooks.

THe size of the cache is arbitrarily defined as 4*nr_vcpus.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 include/kvm/arm_vgic.h        |  3 +++
 virt/kvm/arm/vgic/vgic-init.c |  5 ++++
 virt/kvm/arm/vgic/vgic-its.c  | 49 +++++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic.h      |  2 ++
 4 files changed, 59 insertions(+)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index c36c86f1ec9a..ca7bcf52dc85 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -260,6 +260,9 @@ struct vgic_dist {
 	struct list_head	lpi_list_head;
 	int			lpi_list_count;
 
+	/* LPI translation cache */
+	struct list_head	lpi_translation_cache;
+
 	/* used by vgic-debug */
 	struct vgic_state_iter *iter;
 
diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index 3bdb31eaed64..c7c4c77dd430 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -64,6 +64,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
 	struct vgic_dist *dist = &kvm->arch.vgic;
 
 	INIT_LIST_HEAD(&dist->lpi_list_head);
+	INIT_LIST_HEAD(&dist->lpi_translation_cache);
 	raw_spin_lock_init(&dist->lpi_list_lock);
 }
 
@@ -305,6 +306,7 @@ int vgic_init(struct kvm *kvm)
 	}
 
 	if (vgic_has_its(kvm)) {
+		vgic_lpi_translation_cache_init(kvm);
 		ret = vgic_v4_init(kvm);
 		if (ret)
 			goto out;
@@ -346,6 +348,9 @@ static void kvm_vgic_dist_destroy(struct kvm *kvm)
 		INIT_LIST_HEAD(&dist->rd_regions);
 	}
 
+	if (vgic_has_its(kvm))
+		vgic_lpi_translation_cache_destroy(kvm);
+
 	if (vgic_supports_direct_msis(kvm))
 		vgic_v4_teardown(kvm);
 }
diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 44ceaccb18cf..ce9bcddeb7f1 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -149,6 +149,14 @@ struct its_ite {
 	u32 event_id;
 };
 
+struct vgic_translation_cache_entry {
+	struct list_head	entry;
+	phys_addr_t		db;
+	u32			devid;
+	u32			eventid;
+	struct vgic_irq		*irq;
+};
+
 /**
  * struct vgic_its_abi - ITS abi ops and settings
  * @cte_esz: collection table entry size
@@ -1668,6 +1676,45 @@ static int vgic_register_its_iodev(struct kvm *kvm, struct vgic_its *its,
 	return ret;
 }
 
+/* Default is 16 cached LPIs per vcpu */
+#define LPI_DEFAULT_PCPU_CACHE_SIZE	16
+
+void vgic_lpi_translation_cache_init(struct kvm *kvm)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	unsigned int sz;
+	int i;
+
+	if (!list_empty(&dist->lpi_translation_cache))
+		return;
+
+	sz = atomic_read(&kvm->online_vcpus) * LPI_DEFAULT_PCPU_CACHE_SIZE;
+
+	for (i = 0; i < sz; i++) {
+		struct vgic_translation_cache_entry *cte;
+
+		/* An allocation failure is not fatal */
+		cte = kzalloc(sizeof(*cte), GFP_KERNEL);
+		if (WARN_ON(!cte))
+			break;
+
+		INIT_LIST_HEAD(&cte->entry);
+		list_add(&cte->entry, &dist->lpi_translation_cache);
+	}
+}
+
+void vgic_lpi_translation_cache_destroy(struct kvm *kvm)
+{
+	struct vgic_dist *dist = &kvm->arch.vgic;
+	struct vgic_translation_cache_entry *cte, *tmp;
+
+	list_for_each_entry_safe(cte, tmp,
+				 &dist->lpi_translation_cache, entry) {
+		list_del(&cte->entry);
+		kfree(cte);
+	}
+}
+
 #define INITIAL_BASER_VALUE						  \
 	(GIC_BASER_CACHEABILITY(GITS_BASER, INNER, RaWb)		| \
 	 GIC_BASER_CACHEABILITY(GITS_BASER, OUTER, SameAsInner)		| \
@@ -1696,6 +1743,8 @@ static int vgic_its_create(struct kvm_device *dev, u32 type)
 			kfree(its);
 			return ret;
 		}
+
+		vgic_lpi_translation_cache_init(dev->kvm);
 	}
 
 	mutex_init(&its->its_lock);
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index abeeffabc456..50aad705c4a9 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -316,6 +316,8 @@ int vgic_copy_lpi_list(struct kvm *kvm, struct kvm_vcpu *vcpu, u32 **intid_ptr);
 int vgic_its_resolve_lpi(struct kvm *kvm, struct vgic_its *its,
 			 u32 devid, u32 eventid, struct vgic_irq **irq);
 struct vgic_its *vgic_msi_to_its(struct kvm *kvm, struct kvm_msi *msi);
+void vgic_lpi_translation_cache_init(struct kvm *kvm);
+void vgic_lpi_translation_cache_destroy(struct kvm *kvm);
 
 bool vgic_supports_direct_msis(struct kvm *kvm);
 int vgic_v4_init(struct kvm *kvm);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
