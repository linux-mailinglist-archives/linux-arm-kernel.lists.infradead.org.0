Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8874F880F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfO6Pw9Ho7hqSzesNUjuwHPglHenit7bJrCogF/ZJGg=; b=GKfJgm0ecvlXp/
	pTR4+n0J7CYhIvaYcVhYkbe30Ly27CKrJvLUI0QKwSq7yAO+NUoIj6hq5QBhMKRNRArt8cNWqTszT
	MA1T5DwwsPCKcQLtBVCyzWTlqeKGwnYy5raoWCfO8CyEv+pFXDRgdumrA1ZkhsWEPyHkW3hReJ4gA
	FIPsv8ZtPCWpATXG/3nvB1REagQ40lX+3bRn+R9oJNcDUfcxurA+8+HtQMtPTkhYShZLC46QFuiZH
	uhW4YLFti0GDrczoThhPwkodvXjZMHyY7NFyCo3rQH1QunaM+Sg4AekBfinGxQAvnJUbNMJxf0ETL
	k965JidTlBje5wDnwBCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Q5-0005Zo-TV; Fri, 09 Aug 2019 17:11:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NW-0001RL-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 583701688;
 Fri,  9 Aug 2019 10:08:33 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1FF6B3F575;
 Fri,  9 Aug 2019 10:08:32 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 14/15] iommu/arm-smmu: Add reset implementation hook
Date: Fri,  9 Aug 2019 18:07:51 +0100
Message-Id: <c4cd836312c7ca255fdf42107e78c41f73243b19.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100834_233354_C5DB942B 
X-CRM114-Status: GOOD (  18.98  )
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
index 0b444e476525..c8904da08354 100644
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
+	reg = arm_smmu_read_gr0(smmu, ARM_SMMU_GR0_ID7);
+	major = FIELD_GET(ID7_MAJOR, reg);
+	reg = arm_smmu_read_gr0(smmu, ARM_SMMU_GR0_sACR);
+	if (major >= 2)
+		reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
+	/*
+	 * Allow unmatched Stream IDs to allocate bypass
+	 * TLB entries for reduced latency.
+	 */
+	reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
+	arm_smmu_write_gr0(smmu, ARM_SMMU_GR0_sACR, reg);
+
+	/*
+	 * Disable MMU-500's not-particularly-beneficial next-page
+	 * prefetcher for the sake of errata #841119 and #826419.
+	 */
+	for (i = 0; i < smmu->num_context_banks; ++i) {
+		reg = arm_smmu_read_cb(smmu, i, ARM_SMMU_CB_ACTLR);
+		reg &= ~ARM_MMU500_ACTLR_CPRE;
+		arm_smmu_write_cb(smmu, i, ARM_SMMU_CB_ACTLR, reg);
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
 	/* The current quirks happen to be mutually-exclusive */
@@ -77,5 +123,8 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 	if (smmu->model == CAVIUM_SMMUV2)
 		smmu->impl = &cavium_impl;
 
+	if (smmu->model == ARM_MMU500)
+		smmu->impl = &arm_mmu500_impl;
+
 	return smmu;
 }
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 80822d48f6c7..298ab9e6a6cd 100644
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
 	reg = arm_smmu_read_gr0(smmu, ARM_SMMU_GR0_sGFSR);
@@ -1587,38 +1581,10 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
 	for (i = 0; i < smmu->num_mapping_groups; ++i)
 		arm_smmu_write_sme(smmu, i);
 
-	if (smmu->model == ARM_MMU500) {
-		/*
-		 * Before clearing ARM_MMU500_ACTLR_CPRE, need to
-		 * clear CACHE_LOCK bit of ACR first. And, CACHE_LOCK
-		 * bit is only present in MMU-500r2 onwards.
-		 */
-		reg = arm_smmu_read_gr0(smmu, ARM_SMMU_GR0_ID7);
-		major = FIELD_GET(ID7_MAJOR, reg);
-		reg = arm_smmu_read_gr0(smmu, ARM_SMMU_GR0_sACR);
-		if (major >= 2)
-			reg &= ~ARM_MMU500_ACR_CACHE_LOCK;
-		/*
-		 * Allow unmatched Stream IDs to allocate bypass
-		 * TLB entries for reduced latency.
-		 */
-		reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
-		arm_smmu_write_gr0(smmu, ARM_SMMU_GR0_sACR, reg);
-	}
-
 	/* Make sure all context banks are disabled and clear CB_FSR  */
 	for (i = 0; i < smmu->num_context_banks; ++i) {
 		arm_smmu_write_context_bank(smmu, i);
 		arm_smmu_write_cb(smmu, i, ARM_SMMU_CB_FSR, FSR_FAULT);
-		/*
-		 * Disable MMU-500's not-particularly-beneficial next-page
-		 * prefetcher for the sake of errata #841119 and #826419.
-		 */
-		if (smmu->model == ARM_MMU500) {
-			reg = arm_smmu_read_cb(smmu, i, ARM_SMMU_CB_ACTLR);
-			reg &= ~ARM_MMU500_ACTLR_CPRE;
-			arm_smmu_write_cb(smmu, i, ARM_SMMU_CB_ACTLR, reg);
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
 	arm_smmu_write_gr0(smmu, ARM_SMMU_GR0_sCR0, reg);
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index e79cb32802e9..616cc87a05e3 100644
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
