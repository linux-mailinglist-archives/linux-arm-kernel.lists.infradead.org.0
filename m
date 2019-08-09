Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0202D880E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnGQtVtEmzSD1xeoMWb5NhmfXrPqQscwiJZLMUqTEgA=; b=IHn12ceNO9E0Cp
	lDkEvrh6e4WHdFgYh/tF1bHo0IS6Pxxi1wna/nblmLY7YHOE27X3l8ys/8vKEI7F8x5lH7AdKNcOx
	zxZveFIIMTKs59TV+5Z1y19W/eaerxolAxu7rg3dmzmLNLm7BFGMrqXl+MoZMCe/Ajnq9e0Q+FfvZ
	ZsMR0IAmosHvLU8rixljPg/0xP/kHJAlMW42oQAHFovM+7hpSBvjjaGZtke4SkQIag33fhJilxDJy
	nbqWlMdeQKpobsYIaJ8hs1BnyhLrIyTfNut4OU8S+9njdv7tVOxYwjWxJPMcvrxjEH2ck/9Qzw6AT
	EvGilsjYxAiPcZr22PaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8O6-0001sG-HW; Fri, 09 Aug 2019 17:09:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NF-00012k-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 633EE15A2;
 Fri,  9 Aug 2019 10:08:17 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2B0A13F575;
 Fri,  9 Aug 2019 10:08:16 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 03/15] iommu/arm-smmu: Convert context bank registers to
 bitfields
Date: Fri,  9 Aug 2019 18:07:40 +0100
Message-Id: <11e2193e21d8a411e2cbc540fae43c1a0eb477bb.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100817_902703_B952E45C 
X-CRM114-Status: GOOD (  15.01  )
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

Finish the final part of the job, once again updating some names to
match the current spec.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-regs.h | 86 ++++++++++++++++++-----------------
 drivers/iommu/arm-smmu.c      | 16 +++----
 drivers/iommu/qcom_iommu.c    | 13 +++---
 3 files changed, 59 insertions(+), 56 deletions(-)

diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
index 671c2d98c9da..75056edad31d 100644
--- a/drivers/iommu/arm-smmu-regs.h
+++ b/drivers/iommu/arm-smmu-regs.h
@@ -129,19 +129,59 @@ enum arm_smmu_cbar_type {
 #define CBA2R_VA64			BIT(0)
 
 #define ARM_SMMU_CB_SCTLR		0x0
+#define SCTLR_S1_ASIDPNE		BIT(12)
+#define SCTLR_CFCFG			BIT(7)
+#define SCTLR_CFIE			BIT(6)
+#define SCTLR_CFRE			BIT(5)
+#define SCTLR_E				BIT(4)
+#define SCTLR_AFE			BIT(2)
+#define SCTLR_TRE			BIT(1)
+#define SCTLR_M				BIT(0)
+
 #define ARM_SMMU_CB_ACTLR		0x4
+
 #define ARM_SMMU_CB_RESUME		0x8
-#define ARM_SMMU_CB_TTBCR2		0x10
+#define RESUME_TERMINATE		BIT(0)
+
+#define ARM_SMMU_CB_TCR2		0x10
+#define TCR2_SEP			GENMASK(17, 15)
+#define TCR2_SEP_UPSTREAM		0x7
+#define TCR2_AS				BIT(4)
+
 #define ARM_SMMU_CB_TTBR0		0x20
 #define ARM_SMMU_CB_TTBR1		0x28
-#define ARM_SMMU_CB_TTBCR		0x30
+#define TTBRn_ASID			GENMASK_ULL(63, 48)
+
+#define ARM_SMMU_CB_TCR			0x30
 #define ARM_SMMU_CB_CONTEXTIDR		0x34
 #define ARM_SMMU_CB_S1_MAIR0		0x38
 #define ARM_SMMU_CB_S1_MAIR1		0x3c
+
 #define ARM_SMMU_CB_PAR			0x50
+#define CB_PAR_F			BIT(0)
+
 #define ARM_SMMU_CB_FSR			0x58
+#define FSR_MULTI			BIT(31)
+#define FSR_SS				BIT(30)
+#define FSR_UUT				BIT(8)
+#define FSR_ASF				BIT(7)
+#define FSR_TLBLKF			BIT(6)
+#define FSR_TLBMCF			BIT(5)
+#define FSR_EF				BIT(4)
+#define FSR_PF				BIT(3)
+#define FSR_AFF				BIT(2)
+#define FSR_TF				BIT(1)
+
+#define FSR_IGN				(FSR_AFF | FSR_ASF | \
+					 FSR_TLBMCF | FSR_TLBLKF)
+#define FSR_FAULT			(FSR_MULTI | FSR_SS | FSR_UUT | \
+					 FSR_EF | FSR_PF | FSR_TF | FSR_IGN)
+
 #define ARM_SMMU_CB_FAR			0x60
+
 #define ARM_SMMU_CB_FSYNR0		0x68
+#define FSYNR0_WNR			BIT(4)
+
 #define ARM_SMMU_CB_S1_TLBIVA		0x600
 #define ARM_SMMU_CB_S1_TLBIASID		0x610
 #define ARM_SMMU_CB_S1_TLBIVAL		0x620
@@ -150,46 +190,8 @@ enum arm_smmu_cbar_type {
 #define ARM_SMMU_CB_TLBSYNC		0x7f0
 #define ARM_SMMU_CB_TLBSTATUS		0x7f4
 #define ARM_SMMU_CB_ATS1PR		0x800
+
 #define ARM_SMMU_CB_ATSR		0x8f0
-
-#define SCTLR_S1_ASIDPNE		(1 << 12)
-#define SCTLR_CFCFG			(1 << 7)
-#define SCTLR_CFIE			(1 << 6)
-#define SCTLR_CFRE			(1 << 5)
-#define SCTLR_E				(1 << 4)
-#define SCTLR_AFE			(1 << 2)
-#define SCTLR_TRE			(1 << 1)
-#define SCTLR_M				(1 << 0)
-
-#define CB_PAR_F			(1 << 0)
-
-#define ATSR_ACTIVE			(1 << 0)
-
-#define RESUME_RETRY			(0 << 0)
-#define RESUME_TERMINATE		(1 << 0)
-
-#define TTBCR2_SEP_SHIFT		15
-#define TTBCR2_SEP_UPSTREAM		(0x7 << TTBCR2_SEP_SHIFT)
-#define TTBCR2_AS			(1 << 4)
-
-#define TTBRn_ASID_SHIFT		48
-
-#define FSR_MULTI			(1 << 31)
-#define FSR_SS				(1 << 30)
-#define FSR_UUT				(1 << 8)
-#define FSR_ASF				(1 << 7)
-#define FSR_TLBLKF			(1 << 6)
-#define FSR_TLBMCF			(1 << 5)
-#define FSR_EF				(1 << 4)
-#define FSR_PF				(1 << 3)
-#define FSR_AFF				(1 << 2)
-#define FSR_TF				(1 << 1)
-
-#define FSR_IGN				(FSR_AFF | FSR_ASF | \
-					 FSR_TLBMCF | FSR_TLBLKF)
-#define FSR_FAULT			(FSR_MULTI | FSR_SS | FSR_UUT | \
-					 FSR_EF | FSR_PF | FSR_TF | FSR_IGN)
-
-#define FSYNR0_WNR			(1 << 4)
+#define ATSR_ACTIVE			BIT(0)
 
 #endif /* _ARM_SMMU_REGS_H */
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 515fb1ce39ed..d9a93e5f422f 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -628,16 +628,16 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 
 	cb->cfg = cfg;
 
-	/* TTBCR */
+	/* TCR */
 	if (stage1) {
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
 			cb->tcr[0] = pgtbl_cfg->arm_v7s_cfg.tcr;
 		} else {
 			cb->tcr[0] = pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 			cb->tcr[1] = pgtbl_cfg->arm_lpae_s1_cfg.tcr >> 32;
-			cb->tcr[1] |= TTBCR2_SEP_UPSTREAM;
+			cb->tcr[1] |= FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
 			if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
-				cb->tcr[1] |= TTBCR2_AS;
+				cb->tcr[1] |= TCR2_AS;
 		}
 	} else {
 		cb->tcr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vtcr;
@@ -650,9 +650,9 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->ttbr[1] = pgtbl_cfg->arm_v7s_cfg.ttbr[1];
 		} else {
 			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
-			cb->ttbr[0] |= (u64)cfg->asid << TTBRn_ASID_SHIFT;
+			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
 			cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[1];
-			cb->ttbr[1] |= (u64)cfg->asid << TTBRn_ASID_SHIFT;
+			cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
 		}
 	} else {
 		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
@@ -721,13 +721,13 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	writel_relaxed(reg, gr1_base + ARM_SMMU_GR1_CBAR(idx));
 
 	/*
-	 * TTBCR
+	 * TCR
 	 * We must write this before the TTBRs, since it determines the
 	 * access behaviour of some fields (in particular, ASID[15:8]).
 	 */
 	if (stage1 && smmu->version > ARM_SMMU_V1)
-		writel_relaxed(cb->tcr[1], cb_base + ARM_SMMU_CB_TTBCR2);
-	writel_relaxed(cb->tcr[0], cb_base + ARM_SMMU_CB_TTBCR);
+		writel_relaxed(cb->tcr[1], cb_base + ARM_SMMU_CB_TCR2);
+	writel_relaxed(cb->tcr[0], cb_base + ARM_SMMU_CB_TCR);
 
 	/* TTBRs */
 	if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 34d0b9783b3e..746bf2a7df05 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/atomic.h>
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/dma-iommu.h>
@@ -247,16 +248,16 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 		/* TTBRs */
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
 				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[0] |
-				((u64)ctx->asid << TTBRn_ASID_SHIFT));
+				FIELD_PREP(TTBRn_ASID, ctx->asid));
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
 				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[1] |
-				((u64)ctx->asid << TTBRn_ASID_SHIFT));
+				FIELD_PREP(TTBRn_ASID, ctx->asid));
 
-		/* TTBCR */
-		iommu_writel(ctx, ARM_SMMU_CB_TTBCR2,
+		/* TCR */
+		iommu_writel(ctx, ARM_SMMU_CB_TCR2,
 				(pgtbl_cfg.arm_lpae_s1_cfg.tcr >> 32) |
-				TTBCR2_SEP_UPSTREAM);
-		iommu_writel(ctx, ARM_SMMU_CB_TTBCR,
+				FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM));
+		iommu_writel(ctx, ARM_SMMU_CB_TCR,
 				pgtbl_cfg.arm_lpae_s1_cfg.tcr);
 
 		/* MAIRs (stage-1 only) */
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
