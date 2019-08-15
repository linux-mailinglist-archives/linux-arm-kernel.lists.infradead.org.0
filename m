Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1518F3C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:42:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkGazBCBy326LCYHOSbQtGD6zER9xfzLQURvu1Pe/l4=; b=ZEOuLaG8KV6nvE
	dxnhx8vb9dRKxkn6thytXicv7T7yWaX3YMjGxGDHmcMpGZzRVRyKw8wLUG5u/3xpsHk62GXJPAtIb
	XSdKKcQCPg1pzJUGgL/C5fnaFFR+nfLdW0vJgm6zsG+viI0BmzWwl49uGihWscqnw3l2NChHxRyeK
	ej6YUHrfq5eLVEBl1ZFKgy2/p3MJy7AJ+t3rB8TEFg1nRYfijasjFvxGnxfZK8ITxOXMCd2inevyT
	eOs3eGCT8ccReJ8zbV0Zd8jwQ7+gb7OCV/Nlt8CQnoQWfPekFAwRzIj6Ge+kIlWy9ffAIpW2N3sHH
	pSB89a9+v5ByKEjxg7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKhS-0001aj-L1; Thu, 15 Aug 2019 18:42:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdV-0005AD-7n
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D97E11596;
 Thu, 15 Aug 2019 11:38:08 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8603D3F694;
 Thu, 15 Aug 2019 11:38:07 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 17/17] iommu/arm-smmu: Add context init implementation hook
Date: Thu, 15 Aug 2019 19:37:37 +0100
Message-Id: <f50c14834bb7a4f0f7c765d433c2defdb03661c9.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113809_449458_3B1549AC 
X-CRM114-Status: GOOD (  18.72  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 jcrouse@codeaurora.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocating and initialising a context for a domain is another point
where certain implementations are known to want special behaviour.
Currently the other half of the Cavium workaround comes into play here,
so let's finish the job to get the whole thing right out of the way.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 42 ++++++++++++++++++++++++++---
 drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
 drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
 3 files changed, 87 insertions(+), 48 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 4dc8b1c4befb..e22e9004f449 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -48,25 +48,60 @@ const struct arm_smmu_impl calxeda_impl = {
 };
 
 
+struct cavium_smmu {
+	struct arm_smmu_device smmu;
+	u32 id_base;
+};
+
 static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 {
 	static atomic_t context_count = ATOMIC_INIT(0);
+	struct cavium_smmu *cs = container_of(smmu, struct cavium_smmu, smmu);
 	/*
 	 * Cavium CN88xx erratum #27704.
 	 * Ensure ASID and VMID allocation is unique across all SMMUs in
 	 * the system.
 	 */
-	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
-						   &context_count);
+	cs->id_base = atomic_fetch_add(smmu->num_context_banks, &context_count);
 	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
 
 	return 0;
 }
 
+int cavium_init_context(struct arm_smmu_domain *smmu_domain)
+{
+	struct cavium_smmu *cs = container_of(smmu_domain->smmu,
+					      struct cavium_smmu, smmu);
+
+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
+		smmu_domain->cfg.vmid += cs->id_base;
+	else
+		smmu_domain->cfg.asid += cs->id_base;
+
+	return 0;
+}
+
 const struct arm_smmu_impl cavium_impl = {
 	.cfg_probe = cavium_cfg_probe,
+	.init_context = cavium_init_context,
 };
 
+struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
+{
+	struct cavium_smmu *cs;
+
+	cs = devm_kzalloc(smmu->dev, sizeof(*cs), GFP_KERNEL);
+	if (!cs)
+		return ERR_PTR(-ENOMEM);
+
+	cs->smmu = *smmu;
+	cs->smmu.impl = &cavium_impl;
+
+	devm_kfree(smmu->dev, smmu);
+
+	return &cs->smmu;
+}
+
 
 #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
 
@@ -126,8 +161,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		smmu->impl = &arm_mmu500_impl;
 		break;
 	case CAVIUM_SMMUV2:
-		smmu->impl = &cavium_impl;
-		break;
+		return cavium_smmu_impl_init(smmu);
 	default:
 		break;
 	}
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index fc98992d120d..b8628e2ab579 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -27,7 +27,6 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/io-64-nonatomic-hi-lo.h>
-#include <linux/io-pgtable.h>
 #include <linux/iopoll.h>
 #include <linux/init.h>
 #include <linux/moduleparam.h>
@@ -111,44 +110,6 @@ struct arm_smmu_master_cfg {
 #define for_each_cfg_sme(fw, i, idx) \
 	for (i = 0; idx = fwspec_smendx(fw, i), i < fw->num_ids; ++i)
 
-enum arm_smmu_context_fmt {
-	ARM_SMMU_CTX_FMT_NONE,
-	ARM_SMMU_CTX_FMT_AARCH64,
-	ARM_SMMU_CTX_FMT_AARCH32_L,
-	ARM_SMMU_CTX_FMT_AARCH32_S,
-};
-
-struct arm_smmu_cfg {
-	u8				cbndx;
-	u8				irptndx;
-	union {
-		u16			asid;
-		u16			vmid;
-	};
-	enum arm_smmu_cbar_type		cbar;
-	enum arm_smmu_context_fmt	fmt;
-};
-#define INVALID_IRPTNDX			0xff
-
-enum arm_smmu_domain_stage {
-	ARM_SMMU_DOMAIN_S1 = 0,
-	ARM_SMMU_DOMAIN_S2,
-	ARM_SMMU_DOMAIN_NESTED,
-	ARM_SMMU_DOMAIN_BYPASS,
-};
-
-struct arm_smmu_domain {
-	struct arm_smmu_device		*smmu;
-	struct io_pgtable_ops		*pgtbl_ops;
-	const struct iommu_gather_ops	*tlb_ops;
-	struct arm_smmu_cfg		cfg;
-	enum arm_smmu_domain_stage	stage;
-	bool				non_strict;
-	struct mutex			init_mutex; /* Protects smmu pointer */
-	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
-	struct iommu_domain		domain;
-};
-
 static bool using_legacy_binding, using_generic_binding;
 
 static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
@@ -749,9 +710,16 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	}
 
 	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
-		cfg->vmid = cfg->cbndx + 1 + smmu->cavium_id_base;
+		cfg->vmid = cfg->cbndx + 1;
 	else
-		cfg->asid = cfg->cbndx + smmu->cavium_id_base;
+		cfg->asid = cfg->cbndx;
+
+	smmu_domain->smmu = smmu;
+	if (smmu->impl && smmu->impl->init_context) {
+		ret = smmu->impl->init_context(smmu_domain);
+		if (ret)
+			goto out_unlock;
+	}
 
 	pgtbl_cfg = (struct io_pgtable_cfg) {
 		.pgsize_bitmap	= smmu->pgsize_bitmap,
@@ -765,7 +733,6 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	if (smmu_domain->non_strict)
 		pgtbl_cfg.quirks |= IO_PGTABLE_QUIRK_NON_STRICT;
 
-	smmu_domain->smmu = smmu;
 	pgtbl_ops = alloc_io_pgtable_ops(fmt, &pgtbl_cfg, smmu_domain);
 	if (!pgtbl_ops) {
 		ret = -ENOMEM;
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index ddafe872a396..611ed742e56f 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -14,6 +14,7 @@
 #include <linux/bits.h>
 #include <linux/clk.h>
 #include <linux/device.h>
+#include <linux/io-pgtable.h>
 #include <linux/iommu.h>
 #include <linux/mutex.h>
 #include <linux/spinlock.h>
@@ -270,14 +271,50 @@ struct arm_smmu_device {
 	struct clk_bulk_data		*clks;
 	int				num_clks;
 
-	u32				cavium_id_base; /* Specific to Cavium */
-
 	spinlock_t			global_sync_lock;
 
 	/* IOMMU core code handle */
 	struct iommu_device		iommu;
 };
 
+enum arm_smmu_context_fmt {
+	ARM_SMMU_CTX_FMT_NONE,
+	ARM_SMMU_CTX_FMT_AARCH64,
+	ARM_SMMU_CTX_FMT_AARCH32_L,
+	ARM_SMMU_CTX_FMT_AARCH32_S,
+};
+
+struct arm_smmu_cfg {
+	u8				cbndx;
+	u8				irptndx;
+	union {
+		u16			asid;
+		u16			vmid;
+	};
+	enum arm_smmu_cbar_type		cbar;
+	enum arm_smmu_context_fmt	fmt;
+};
+#define INVALID_IRPTNDX			0xff
+
+enum arm_smmu_domain_stage {
+	ARM_SMMU_DOMAIN_S1 = 0,
+	ARM_SMMU_DOMAIN_S2,
+	ARM_SMMU_DOMAIN_NESTED,
+	ARM_SMMU_DOMAIN_BYPASS,
+};
+
+struct arm_smmu_domain {
+	struct arm_smmu_device		*smmu;
+	struct io_pgtable_ops		*pgtbl_ops;
+	const struct iommu_gather_ops	*tlb_ops;
+	struct arm_smmu_cfg		cfg;
+	enum arm_smmu_domain_stage	stage;
+	bool				non_strict;
+	struct mutex			init_mutex; /* Protects smmu pointer */
+	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
+	struct iommu_domain		domain;
+};
+
 
 /* Implementation details, yay! */
 struct arm_smmu_impl {
@@ -289,6 +326,7 @@ struct arm_smmu_impl {
 			    u64 val);
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
 	int (*reset)(struct arm_smmu_device *smmu);
+	int (*init_context)(struct arm_smmu_domain *smmu_domain);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
