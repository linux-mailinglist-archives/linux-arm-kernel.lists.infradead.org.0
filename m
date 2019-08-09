Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3129F880F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:11:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otAH0ozOaHDI7KqfblM6/y0HK1+HjfCtKmUsnisy4JI=; b=jtR8iNi8okCBUu
	swBdnoELeLXC1W3+fSshMcxSJezTrVAAKSXh8hzVFMKAZONcbRWJHBPrp7cVdfTmJ52OkX7APfn/b
	whZXmq3Rq9FVERKCfFKBSki1peCYe2E0DRRMsjcyT+JjbIG8c+4jqdavy/7DfAvXGIL4M9Od2S0ra
	jciWB3AmtJhVGWqbW6wbZbIIyPLn1+Z4zyEVH5WV6SL7rduLLU8tMu0pHm/W8W5FKJ/SjwkPG1FIs
	ApHYHR48J8xhNgVzk8N3osIV/MqIfPtC13/astJaULHyw+Ksw0fZZ3qQ8N0LePetqPnF0c8/Uyftp
	f1Dj5SiT8siIJnWi4LQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8QU-00060q-AE; Fri, 09 Aug 2019 17:11:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NX-00012k-5f
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C613D15AB;
 Fri,  9 Aug 2019 10:08:34 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8DDDA3F575;
 Fri,  9 Aug 2019 10:08:33 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook
Date: Fri,  9 Aug 2019 18:07:52 +0100
Message-Id: <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100835_320467_919512FD 
X-CRM114-Status: GOOD (  18.01  )
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
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
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
 drivers/iommu/arm-smmu-impl.c | 39 +++++++++++++++++++++++++--
 drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
 drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
 3 files changed, 86 insertions(+), 46 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index c8904da08354..7a657d47b6ec 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -48,6 +48,12 @@ const struct arm_smmu_impl calxeda_impl = {
 };
 
 
+struct cavium_smmu {
+	struct arm_smmu_device smmu;
+	u32 id_base;
+};
+#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
+
 static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 {
 	static atomic_t context_count = ATOMIC_INIT(0);
@@ -56,17 +62,46 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
 	 * Ensure ASID and VMID allocation is unique across all SMMUs in
 	 * the system.
 	 */
-	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
+	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
 						   &context_count);
 	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
 
 	return 0;
 }
 
+int cavium_init_context(struct arm_smmu_domain *smmu_domain)
+{
+	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
+
+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
+		smmu_domain->cfg.vmid += id_base;
+	else
+		smmu_domain->cfg.asid += id_base;
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
+	struct cavium_smmu *csmmu;
+
+	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
+	if (!csmmu)
+		return ERR_PTR(-ENOMEM);
+
+	csmmu->smmu = *smmu;
+	csmmu->smmu.impl = &cavium_impl;
+
+	devm_kfree(smmu->dev, smmu);
+
+	return &csmmu->smmu;
+}
+
 
 #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
 
@@ -121,7 +156,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 		smmu->impl = &calxeda_impl;
 
 	if (smmu->model == CAVIUM_SMMUV2)
-		smmu->impl = &cavium_impl;
+		return cavium_smmu_impl_init(smmu);
 
 	if (smmu->model == ARM_MMU500)
 		smmu->impl = &arm_mmu500_impl;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 298ab9e6a6cd..1c1c9ef91d7b 100644
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
index 616cc87a05e3..a18b5925b43c 100644
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
