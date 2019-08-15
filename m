Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A118F3BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSdtP3kHXXRNnnLsAG5HAnTN7UvBbSMiTNHCMFzximM=; b=BKfkDXhDgwAtSX
	Vc+8KXLcqK8rYtw8V+F1bBaMZO0T+HT0ZMhPU3RKpR5rgbuKDwyuJgNOW/Xqfs6KMVOAqvuTs/3VR
	YkTygqpF0y6ZZwZE30oBss6UDEvHBSR3JyDXfZCWw4puAwi2qMTvwu+ENRHObN25HEtHbRfZ+e1JH
	l03roXpNAF15qlYOIINilCSTsVNrP9D/HJaosNCIjad/hxUFPkLJ58HxTjAIruEcGUCcykpOVstjC
	vv+jklCjyNkGs6KIn4hzMqHh6lICKDEYFftlWsqWzHmarjN+9xptc/KkCGEULGCSFUPDLeVfH79YL
	nfsBgQNhnkvnI4NX4MfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKgZ-0000dr-KX; Thu, 15 Aug 2019 18:41:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdP-00053d-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DAA21596;
 Thu, 15 Aug 2019 11:38:02 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4A55A3F694;
 Thu, 15 Aug 2019 11:38:01 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 13/17] iommu/arm-smmu: Add implementation infrastructure
Date: Thu, 15 Aug 2019 19:37:33 +0100
Message-Id: <aa2303cbd2f059578230591d53a7e97a7aedf223.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113803_333155_B07E38A0 
X-CRM114-Status: GOOD (  19.78  )
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

Add some nascent infrastructure for handling implementation-specific
details outside the flow of the architectural code. This will allow us
to keep mutually-incompatible vendor-specific hooks in their own files
where the respective interested parties can maintain them with minimal
chance of conflicts. As somewhat of a template, we'll start with a
general place to collect the relatively trivial existing quirks.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 MAINTAINERS                   |  3 +-
 drivers/iommu/Makefile        |  2 +-
 drivers/iommu/arm-smmu-impl.c | 13 +++++
 drivers/iommu/arm-smmu.c      | 82 ++------------------------------
 drivers/iommu/arm-smmu.h      | 89 +++++++++++++++++++++++++++++++++++
 5 files changed, 108 insertions(+), 81 deletions(-)
 create mode 100644 drivers/iommu/arm-smmu-impl.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f0..35ff49ac303b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1350,8 +1350,7 @@ M:	Will Deacon <will@kernel.org>
 R:	Robin Murphy <robin.murphy@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
-F:	drivers/iommu/arm-smmu.c
-F:	drivers/iommu/arm-smmu-v3.c
+F:	drivers/iommu/arm-smmu*
 F:	drivers/iommu/io-pgtable-arm.c
 F:	drivers/iommu/io-pgtable-arm-v7s.c
 
diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
index f13f36ae1af6..a2729aadd300 100644
--- a/drivers/iommu/Makefile
+++ b/drivers/iommu/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_MSM_IOMMU) += msm_iommu.o
 obj-$(CONFIG_AMD_IOMMU) += amd_iommu.o amd_iommu_init.o
 obj-$(CONFIG_AMD_IOMMU_DEBUGFS) += amd_iommu_debugfs.o
 obj-$(CONFIG_AMD_IOMMU_V2) += amd_iommu_v2.o
-obj-$(CONFIG_ARM_SMMU) += arm-smmu.o
+obj-$(CONFIG_ARM_SMMU) += arm-smmu.o arm-smmu-impl.o
 obj-$(CONFIG_ARM_SMMU_V3) += arm-smmu-v3.o
 obj-$(CONFIG_DMAR_TABLE) += dmar.o
 obj-$(CONFIG_INTEL_IOMMU) += intel-iommu.o intel-pasid.o
diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
new file mode 100644
index 000000000000..efeb6d78da17
--- /dev/null
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Miscellaneous Arm SMMU implementation and integration quirks
+// Copyright (C) 2019 Arm Limited
+
+#define pr_fmt(fmt) "arm-smmu: " fmt
+
+#include "arm-smmu.h"
+
+
+struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
+{
+	return smmu;
+}
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index f3b8301a3059..1e8153182830 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -19,7 +19,6 @@
 
 #include <linux/acpi.h>
 #include <linux/acpi_iort.h>
-#include <linux/atomic.h>
 #include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/dma-iommu.h>
@@ -29,7 +28,6 @@
 #include <linux/io.h>
 #include <linux/io-64-nonatomic-hi-lo.h>
 #include <linux/io-pgtable.h>
-#include <linux/iommu.h>
 #include <linux/iopoll.h>
 #include <linux/init.h>
 #include <linux/moduleparam.h>
@@ -41,7 +39,6 @@
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
-#include <linux/spinlock.h>
 
 #include <linux/amba/bus.h>
 #include <linux/fsl/mc.h>
@@ -66,9 +63,6 @@
 #define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
 #define TLB_SPIN_COUNT			10
 
-/* Maximum number of context banks per SMMU */
-#define ARM_SMMU_MAX_CBS		128
-
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
 
@@ -86,19 +80,6 @@ module_param(disable_bypass, bool, S_IRUGO);
 MODULE_PARM_DESC(disable_bypass,
 	"Disable bypass streams such that incoming transactions from devices that are not attached to an iommu domain will report an abort back to the device and will not be allowed to pass through the SMMU.");
 
-enum arm_smmu_arch_version {
-	ARM_SMMU_V1,
-	ARM_SMMU_V1_64K,
-	ARM_SMMU_V2,
-};
-
-enum arm_smmu_implementation {
-	GENERIC_SMMU,
-	ARM_MMU500,
-	CAVIUM_SMMUV2,
-	QCOM_SMMUV2,
-};
-
 struct arm_smmu_s2cr {
 	struct iommu_group		*group;
 	int				count;
@@ -136,65 +117,6 @@ struct arm_smmu_master_cfg {
 #define for_each_cfg_sme(fw, i, idx) \
 	for (i = 0; idx = fwspec_smendx(fw, i), i < fw->num_ids; ++i)
 
-struct arm_smmu_device {
-	struct device			*dev;
-
-	void __iomem			*base;
-	unsigned int			numpage;
-	unsigned int			pgshift;
-
-#define ARM_SMMU_FEAT_COHERENT_WALK	(1 << 0)
-#define ARM_SMMU_FEAT_STREAM_MATCH	(1 << 1)
-#define ARM_SMMU_FEAT_TRANS_S1		(1 << 2)
-#define ARM_SMMU_FEAT_TRANS_S2		(1 << 3)
-#define ARM_SMMU_FEAT_TRANS_NESTED	(1 << 4)
-#define ARM_SMMU_FEAT_TRANS_OPS		(1 << 5)
-#define ARM_SMMU_FEAT_VMID16		(1 << 6)
-#define ARM_SMMU_FEAT_FMT_AARCH64_4K	(1 << 7)
-#define ARM_SMMU_FEAT_FMT_AARCH64_16K	(1 << 8)
-#define ARM_SMMU_FEAT_FMT_AARCH64_64K	(1 << 9)
-#define ARM_SMMU_FEAT_FMT_AARCH32_L	(1 << 10)
-#define ARM_SMMU_FEAT_FMT_AARCH32_S	(1 << 11)
-#define ARM_SMMU_FEAT_EXIDS		(1 << 12)
-	u32				features;
-
-#define ARM_SMMU_OPT_SECURE_CFG_ACCESS (1 << 0)
-	u32				options;
-	enum arm_smmu_arch_version	version;
-	enum arm_smmu_implementation	model;
-
-	u32				num_context_banks;
-	u32				num_s2_context_banks;
-	DECLARE_BITMAP(context_map, ARM_SMMU_MAX_CBS);
-	struct arm_smmu_cb		*cbs;
-	atomic_t			irptndx;
-
-	u32				num_mapping_groups;
-	u16				streamid_mask;
-	u16				smr_mask_mask;
-	struct arm_smmu_smr		*smrs;
-	struct arm_smmu_s2cr		*s2crs;
-	struct mutex			stream_map_mutex;
-
-	unsigned long			va_size;
-	unsigned long			ipa_size;
-	unsigned long			pa_size;
-	unsigned long			pgsize_bitmap;
-
-	u32				num_global_irqs;
-	u32				num_context_irqs;
-	unsigned int			*irqs;
-	struct clk_bulk_data		*clks;
-	int				num_clks;
-
-	u32				cavium_id_base; /* Specific to Cavium */
-
-	spinlock_t			global_sync_lock;
-
-	/* IOMMU core code handle */
-	struct iommu_device		iommu;
-};
-
 enum arm_smmu_context_fmt {
 	ARM_SMMU_CTX_FMT_NONE,
 	ARM_SMMU_CTX_FMT_AARCH64,
@@ -2233,6 +2155,10 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	smmu = arm_smmu_impl_init(smmu);
+	if (IS_ERR(smmu))
+		return PTR_ERR(smmu);
+
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ioaddr = res->start;
 	smmu->base = devm_ioremap_resource(dev, res);
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index ccc3097a4247..6fea0b0b7e51 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -10,7 +10,14 @@
 #ifndef _ARM_SMMU_H
 #define _ARM_SMMU_H
 
+#include <linux/atomic.h>
 #include <linux/bits.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/iommu.h>
+#include <linux/mutex.h>
+#include <linux/spinlock.h>
+#include <linux/types.h>
 
 /* Configuration registers */
 #define ARM_SMMU_GR0_sCR0		0x0
@@ -194,4 +201,86 @@ enum arm_smmu_cbar_type {
 #define ARM_SMMU_CB_ATSR		0x8f0
 #define ATSR_ACTIVE			BIT(0)
 
+
+/* Maximum number of context banks per SMMU */
+#define ARM_SMMU_MAX_CBS		128
+
+
+/* Shared driver definitions */
+enum arm_smmu_arch_version {
+	ARM_SMMU_V1,
+	ARM_SMMU_V1_64K,
+	ARM_SMMU_V2,
+};
+
+enum arm_smmu_implementation {
+	GENERIC_SMMU,
+	ARM_MMU500,
+	CAVIUM_SMMUV2,
+	QCOM_SMMUV2,
+};
+
+struct arm_smmu_device {
+	struct device			*dev;
+
+	void __iomem			*base;
+	unsigned int			numpage;
+	unsigned int			pgshift;
+
+#define ARM_SMMU_FEAT_COHERENT_WALK	(1 << 0)
+#define ARM_SMMU_FEAT_STREAM_MATCH	(1 << 1)
+#define ARM_SMMU_FEAT_TRANS_S1		(1 << 2)
+#define ARM_SMMU_FEAT_TRANS_S2		(1 << 3)
+#define ARM_SMMU_FEAT_TRANS_NESTED	(1 << 4)
+#define ARM_SMMU_FEAT_TRANS_OPS		(1 << 5)
+#define ARM_SMMU_FEAT_VMID16		(1 << 6)
+#define ARM_SMMU_FEAT_FMT_AARCH64_4K	(1 << 7)
+#define ARM_SMMU_FEAT_FMT_AARCH64_16K	(1 << 8)
+#define ARM_SMMU_FEAT_FMT_AARCH64_64K	(1 << 9)
+#define ARM_SMMU_FEAT_FMT_AARCH32_L	(1 << 10)
+#define ARM_SMMU_FEAT_FMT_AARCH32_S	(1 << 11)
+#define ARM_SMMU_FEAT_EXIDS		(1 << 12)
+	u32				features;
+
+#define ARM_SMMU_OPT_SECURE_CFG_ACCESS (1 << 0)
+	u32				options;
+	enum arm_smmu_arch_version	version;
+	enum arm_smmu_implementation	model;
+
+	u32				num_context_banks;
+	u32				num_s2_context_banks;
+	DECLARE_BITMAP(context_map, ARM_SMMU_MAX_CBS);
+	struct arm_smmu_cb		*cbs;
+	atomic_t			irptndx;
+
+	u32				num_mapping_groups;
+	u16				streamid_mask;
+	u16				smr_mask_mask;
+	struct arm_smmu_smr		*smrs;
+	struct arm_smmu_s2cr		*s2crs;
+	struct mutex			stream_map_mutex;
+
+	unsigned long			va_size;
+	unsigned long			ipa_size;
+	unsigned long			pa_size;
+	unsigned long			pgsize_bitmap;
+
+	u32				num_global_irqs;
+	u32				num_context_irqs;
+	unsigned int			*irqs;
+	struct clk_bulk_data		*clks;
+	int				num_clks;
+
+	u32				cavium_id_base; /* Specific to Cavium */
+
+	spinlock_t			global_sync_lock;
+
+	/* IOMMU core code handle */
+	struct iommu_device		iommu;
+};
+
+
+/* Implementation details, yay! */
+struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
+
 #endif /* _ARM_SMMU_H */
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
