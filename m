Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8667F8F3C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8uSS49Yp2x7/TS6Gvf3OmhewvzUi31YLHzKe/oGiWHU=; b=oKoe67eqP3FeR6
	QrBdNG9KmmjPTJxkIC/1HIEOioVRRPrxgV/AupIpGcjmSk00gzhbGqx1SeZ5ENOIXg/ctTYVyPfWh
	5eOWWs+U4i674OhRxr1WVjAgKruqGzFF5Wa5S5uU4c5jkWRzSWoQybrc0Vd2OK+wzK8HiGhRjaGY8
	gZYEIyyEzX8KIfXHSY2ZETm4r39f6t3xvdilD66EQ4kChaSHsfWKpj3tLechktpleXTzDzTNkvg22
	1wgrK4w0k588+ZVppiJQi2RmWLXoQ0dkMz1Sw75FsMlhK5XY2pCcx5+kdfFTObi+zZTm/T0L6S1nE
	6oqqOrnxB+Qx07h8rQFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKhE-0001NY-SN; Thu, 15 Aug 2019 18:42:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdT-00053d-IK
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51380344;
 Thu, 15 Aug 2019 11:38:07 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F22223F694;
 Thu, 15 Aug 2019 11:38:05 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 16/17] iommu/arm-smmu: Add reset implementation hook
Date: Thu, 15 Aug 2019 19:37:36 +0100
Message-Id: <9a050064bc835dc68e18937a4e6e502acff8fa3e.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113807_828431_1A063C5A 
X-CRM114-Status: GOOD (  19.25  )
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

Reset is an activity rife with implementation-defined poking. Add a
corresponding hook, and use it to encapsulate the existing MMU-500
details.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 49 +++++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 39 +++-------------------------
 drivers/iommu/arm-smmu.h      |  1 +
 3 files changed, 54 insertions(+), 35 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 696417908793..4dc8b1c4befb 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -4,6 +4,7 @@
 
 #define pr_fmt(fmt) "arm-smmu: " fmt
 
+#include <linux/bitfield.h>
 #include <linux/of.h>
 
 #include "arm-smmu.h"
@@ -67,6 +68,51 @@ const struct arm_smmu_impl cavium_impl = {
 };
 
 
+#define ARM_MMU500_ACTLR_CPRE		(1 << 1)
+
+#define ARM_MMU500_ACR_CACHE_LOCK	(1 << 26)
+#define ARM_MMU500_ACR_S2CRB_TLBEN	(1 << 10)
+#define ARM_MMU500_ACR_SMTNMB_TLBEN	(1 << 8)
+
+static int arm_mmu500_reset(struct arm_smmu_device *smmu)
+{
+	u32 reg, major;
+	int i;
+	/*
+	 * On MMU-500 r2p0 onwards we need to clear ACR.CACHE_LOCK before
+	 * writes to the context bank ACTLRs will stick. And we just hope that
+	 * Secure has also cleared SACR.CACHE_LOCK for this to take effect...
+	 */
+	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID7);
+	major = FIELD_GET(ID7_MAJOR, reg);
+	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sACR);
+	if (major >= 2)
+		reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
+	/*
+	 * Allow unmatched Stream IDs to allocate bypass
+	 * TLB entries for reduced latency.
+	 */
+	reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
+	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sACR, reg);
+
+	/*
+	 * Disable MMU-500's not-particularly-beneficial next-page
+	 * prefetcher for the sake of errata #841119 and #826419.
+	 */
+	for (i = 0; i < smmu->num_context_banks; ++i) {
+		reg = arm_smmu_cb_read(smmu, i, ARM_SMMU_CB_ACTLR);
+		reg &= ~ARM_MMU500_ACTLR_CPRE;
+		arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_ACTLR, reg);
+	}
+
+	return 0;
+}
+
+const struct arm_smmu_impl arm_mmu500_impl = {
+	.reset = arm_mmu500_reset,
+};
+
+
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
 	/*
@@ -76,6 +122,9 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 	 * mutually-exclusive assignments.
 	 */
 	switch (smmu->model) {
+	case ARM_MMU500:
+		smmu->impl = &arm_mmu500_impl;
+		break;
 	case CAVIUM_SMMUV2:
 		smmu->impl = &cavium_impl;
 		break;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 362b6b5a28ee..fc98992d120d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -54,12 +54,6 @@
  */
 #define QCOM_DUMMY_VAL -1
 
-#define ARM_MMU500_ACTLR_CPRE		(1 << 1)
-
-#define ARM_MMU500_ACR_CACHE_LOCK	(1 << 26)
-#define ARM_MMU500_ACR_S2CRB_TLBEN	(1 << 10)
-#define ARM_MMU500_ACR_SMTNMB_TLBEN	(1 << 8)
-
 #define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
 #define TLB_SPIN_COUNT			10
 
@@ -1574,7 +1568,7 @@ static struct iommu_ops arm_smmu_ops = {
 static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 {
 	int i;
-	u32 reg, major;
+	u32 reg;
 
 	/* clear global FSR */
 	reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
@@ -1587,38 +1581,10 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	for (i = 0; i < smmu->num_mapping_groups; ++i)
 		arm_smmu_write_sme(smmu, i);
 
-	if (smmu->model == ARM_MMU500) {
-		/*
-		 * Before clearing ARM_MMU500_ACTLR_CPRE, need to
-		 * clear CACHE_LOCK bit of ACR first. And, CACHE_LOCK
-		 * bit is only present in MMU-500r2 onwards.
-		 */
-		reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID7);
-		major = FIELD_GET(ID7_MAJOR, reg);
-		reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sACR);
-		if (major >= 2)
-			reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
-		/*
-		 * Allow unmatched Stream IDs to allocate bypass
-		 * TLB entries for reduced latency.
-		 */
-		reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
-		arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sACR, reg);
-	}
-
 	/* Make sure all context banks are disabled and clear CB_FSR  */
 	for (i = 0; i < smmu->num_context_banks; ++i) {
 		arm_smmu_write_context_bank(smmu, i);
 		arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, FSR_FAULT);
-		/*
-		 * Disable MMU-500's not-particularly-beneficial next-page
-		 * prefetcher for the sake of errata #841119 and #826419.
-		 */
-		if (smmu->model == ARM_MMU500) {
-			reg = arm_smmu_cb_read(smmu, i, ARM_SMMU_CB_ACTLR);
-			reg &= ~ARM_MMU500_ACTLR_CPRE;
-			arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_ACTLR, reg);
-		}
 	}
 
 	/* Invalidate the TLB, just in case */
@@ -1652,6 +1618,9 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	if (smmu->features & ARM_SMMU_FEAT_EXIDS)
 		reg |= sCR0_EXIDENABLE;
 
+	if (smmu->impl && smmu->impl->reset)
+		smmu->impl->reset(smmu);
+
 	/* Push the button */
 	arm_smmu_tlb_sync_global(smmu);
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, reg);
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index f4e90f33fce2..ddafe872a396 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -288,6 +288,7 @@ struct arm_smmu_impl {
 	void (*write_reg64)(struct arm_smmu_device *smmu, int page, int offset,
 			    u64 val);
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
+	int (*reset)(struct arm_smmu_device *smmu);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
