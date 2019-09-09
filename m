Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BF9ADA63
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGXKd3B4j3OFjyRh0apRQRdNfC4WTzx9GgLhlX1vzts=; b=musAKTakzENlTr
	qxKkxAdWiT9+ud6KIp8t/YDuSjz7ZdDziGcSBQGsxi0l8CTaq4uEmgOoP9WFLxHb8cxb93dEh9R5Z
	um4GAk6uBosN0ivsd85h36ZVJ6XiUQ3DPhVQdbXG4dCjOa1misurCG2VJyF2dJTaE5NR0X1MQGgvD
	8OAf6tmM0JqX5BTdB4uBHsyJ3YILTCYHak401KW2KOiWfOce7Wn6vvlswEtk+sga50uJQSgT+ygQW
	6VQ7imXmWTmFnJ4jnu/vfP3GE0RHubOjS/HDz6hWvVrCIMynR1Q1bBpL4S6bmRimWltgFsjoFY6Zn
	Wz8Iirz/tzq1xtMdjCEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7K2m-0002Ra-LC; Mon, 09 Sep 2019 13:49:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7K2H-0002DQ-U1
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:48:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21E221570;
 Mon,  9 Sep 2019 06:48:53 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFB6F3F59C;
 Mon,  9 Sep 2019 06:48:50 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 01/17] KVM: arm/arm64: vgic: Add LPI translation cache
 definition
Date: Mon,  9 Sep 2019 14:47:51 +0100
Message-Id: <20190909134807.27978-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190909134807.27978-1-maz@kernel.org>
References: <20190909134807.27978-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064854_085093_EFF502ED 
X-CRM114-Status: GOOD (  13.59  )
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

Add the basic data structure that expresses an MSI to LPI
translation as well as the allocation/release hooks.

The size of the cache is arbitrarily defined as 16*nr_vcpus.

Tested-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Eric Auger <eric.auger@redhat.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 include/kvm/arm_vgic.h        |  3 +++
 virt/kvm/arm/vgic/vgic-init.c |  5 ++++
 virt/kvm/arm/vgic/vgic-its.c  | 49 +++++++++++++++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic.h      |  2 ++
 4 files changed, 59 insertions(+)

diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 7a30524a80ee..ded50a30e2d5 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -249,6 +249,9 @@ struct vgic_dist {
 	struct list_head	lpi_list_head;
 	int			lpi_list_count;
 
+	/* LPI translation cache */
+	struct list_head	lpi_translation_cache;
+
 	/* used by vgic-debug */
 	struct vgic_state_iter *iter;
 
diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
index bdbc297d06fb..80127ca9269f 100644
--- a/virt/kvm/arm/vgic/vgic-init.c
+++ b/virt/kvm/arm/vgic/vgic-init.c
@@ -53,6 +53,7 @@ void kvm_vgic_early_init(struct kvm *kvm)
 	struct vgic_dist *dist = &kvm->arch.vgic;
 
 	INIT_LIST_HEAD(&dist->lpi_list_head);
+	INIT_LIST_HEAD(&dist->lpi_translation_cache);
 	raw_spin_lock_init(&dist->lpi_list_lock);
 }
 
@@ -294,6 +295,7 @@ int vgic_init(struct kvm *kvm)
 	}
 
 	if (vgic_has_its(kvm)) {
+		vgic_lpi_translation_cache_init(kvm);
 		ret = vgic_v4_init(kvm);
 		if (ret)
 			goto out;
@@ -335,6 +337,9 @@ static void kvm_vgic_dist_destroy(struct kvm *kvm)
 		INIT_LIST_HEAD(&dist->rd_regions);
 	}
 
+	if (vgic_has_its(kvm))
+		vgic_lpi_translation_cache_destroy(kvm);
+
 	if (vgic_supports_direct_msis(kvm))
 		vgic_v4_teardown(kvm);
 }
diff --git a/virt/kvm/arm/vgic/vgic-its.c b/virt/kvm/arm/vgic/vgic-its.c
index 482036612adf..0e5c1519bbe2 100644
--- a/virt/kvm/arm/vgic/vgic-its.c
+++ b/virt/kvm/arm/vgic/vgic-its.c
@@ -138,6 +138,14 @@ struct its_ite {
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
@@ -1657,6 +1665,45 @@ static int vgic_register_its_iodev(struct kvm *kvm, struct vgic_its *its,
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
@@ -1685,6 +1732,8 @@ static int vgic_its_create(struct kvm_device *dev, u32 type)
 			kfree(its);
 			return ret;
 		}
+
+		vgic_lpi_translation_cache_init(dev->kvm);
 	}
 
 	mutex_init(&its->its_lock);
diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
index 797e05004d80..a25b790ffa4e 100644
--- a/virt/kvm/arm/vgic/vgic.h
+++ b/virt/kvm/arm/vgic/vgic.h
@@ -307,6 +307,8 @@ int vgic_copy_lpi_list(struct kvm *kvm, struct kvm_vcpu *vcpu, u32 **intid_ptr);
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
