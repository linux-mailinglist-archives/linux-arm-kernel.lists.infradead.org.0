Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1001794C85
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:21:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z6ootzh2PaKbcD/SznSeRUZqOIPkUeGuN2WrlhFkMIw=; b=JVoHaXA3lahskT
	ECWTX4JCbDjsKye3oQjB+8KW3OAHt8VMqs83uZiRgvNsPkFP6xb/WEhwgkdjgclRHIXcF0jOsTE0G
	ssvSCQuu7OZ20NVnVTVyePm6fCcIZwRKifokNZ6b0hrHscp6JCgGYQoBQC2Cqk9m1RxggMmrA4xtV
	hIfv1MS8h2bdj3PDXyRhXZ7c9oA8AeKtYBHqGiWVLytKoT0hXKC5M1wf/HMc1UhNDrPQBCt57bLbv
	VzEq9QUAR30Ju51npAVjRn39l7R6WMz8j29cE7lt7TYv3YdxpehWq+5cGqbPrvL1LCGXQXdFr3kIo
	uWRNT2jFrtcmc2RvI2tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmHB-0005XA-A8; Mon, 19 Aug 2019 18:21:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmFn-0003bk-HE
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:19:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BE89360;
 Mon, 19 Aug 2019 11:19:39 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3505A3F246;
 Mon, 19 Aug 2019 11:19:38 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 3/4] iommu/io-pgtable-arm: Rationalise TCR handling
Date: Mon, 19 Aug 2019 19:19:30 +0100
Message-Id: <78df4f8e2510e88f3ded59eb385f79b4442ed4f2.1566238530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1566238530.git.robin.murphy@arm.com>
References: <cover.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_111939_666917_8E4DC663 
X-CRM114-Status: GOOD (  16.39  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although it's conceptually nice for the io_pgtable_cfg to provide a
standard VMSA TCR value, the reality is that no VMSA-compliant IOMMU
looks exactly like an Arm CPU, and they all have various other TCR
controls which io-pgtable can't be expected to understand. Thus since
there is an expectation that drivers will have to add to the given TCR
value anyway, let's strip it down to just the essentials that are
directly relevant to io-pgatble's inner workings - namely the address
sizes, walk attributes, and where appropriate, format selection.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-v3.c        | 7 +------
 drivers/iommu/arm-smmu.c           | 1 +
 drivers/iommu/arm-smmu.h           | 2 ++
 drivers/iommu/io-pgtable-arm-v7s.c | 6 ++----
 drivers/iommu/io-pgtable-arm.c     | 4 ----
 drivers/iommu/qcom_iommu.c         | 2 +-
 6 files changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 2e50cf49c3c4..c8e83f72893f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -270,9 +270,7 @@
 #define CTXDESC_CD_0_TCR_SH0		GENMASK_ULL(13, 12)
 #define ARM64_TCR_SH0			GENMASK_ULL(13, 12)
 #define CTXDESC_CD_0_TCR_EPD0		(1ULL << 14)
-#define ARM64_TCR_EPD0			(1ULL << 7)
 #define CTXDESC_CD_0_TCR_EPD1		(1ULL << 30)
-#define ARM64_TCR_EPD1			(1ULL << 23)
 
 #define CTXDESC_CD_0_ENDI		(1UL << 15)
 #define CTXDESC_CD_0_V			(1UL << 31)
@@ -280,7 +278,6 @@
 #define CTXDESC_CD_0_TCR_IPS		GENMASK_ULL(34, 32)
 #define ARM64_TCR_IPS			GENMASK_ULL(34, 32)
 #define CTXDESC_CD_0_TCR_TBI0		(1ULL << 38)
-#define ARM64_TCR_TBI0			(1ULL << 37)
 
 #define CTXDESC_CD_0_AA64		(1UL << 41)
 #define CTXDESC_CD_0_S			(1UL << 44)
@@ -1064,8 +1061,6 @@ static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
 	val |= ARM_SMMU_TCR2CD(tcr, IRGN0);
 	val |= ARM_SMMU_TCR2CD(tcr, ORGN0);
 	val |= ARM_SMMU_TCR2CD(tcr, SH0);
-	val |= ARM_SMMU_TCR2CD(tcr, EPD0);
-	val |= ARM_SMMU_TCR2CD(tcr, EPD1);
 	val |= ARM_SMMU_TCR2CD(tcr, IPS);
 
 	return val;
@@ -1086,7 +1081,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 #endif
 	      CTXDESC_CD_0_R | CTXDESC_CD_0_A | CTXDESC_CD_0_ASET |
 	      CTXDESC_CD_0_AA64 | FIELD_PREP(CTXDESC_CD_0_ASID, cfg->cd.asid) |
-	      CTXDESC_CD_0_V;
+	      CTXDESC_CD_0_V | CTXDESC_CD_0_TCR_EPD1;
 
 	/* STALL_MODEL==0b10 && CD.S==0 is ILLEGAL */
 	if (smmu->features & ARM_SMMU_FEAT_STALL_FORCE)
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 19030c4b5904..49c734a3814b 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -461,6 +461,7 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->tcr[0] = pgtbl_cfg->arm_v7s_cfg.tcr;
 		} else {
 			cb->tcr[0] = pgtbl_cfg->arm_lpae_s1_cfg.tcr;
+			cb->tcr[0] |= TCR_EPD1;
 			cb->tcr[1] = pgtbl_cfg->arm_lpae_s1_cfg.tcr >> 32;
 			cb->tcr[1] |= FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
 			if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index ac9eac966cf5..7b0e4d238558 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -162,6 +162,8 @@ enum arm_smmu_cbar_type {
 #define TTBRn_ASID			GENMASK_ULL(63, 48)
 
 #define ARM_SMMU_CB_TCR			0x30
+#define TCR_EPD1			BIT(23)
+
 #define ARM_SMMU_CB_CONTEXTIDR		0x34
 #define ARM_SMMU_CB_S1_MAIR0		0x38
 #define ARM_SMMU_CB_S1_MAIR1		0x3c
diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 7c80e9d00f73..a53f8d904f66 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -147,8 +147,6 @@
 #define ARM_V7S_TTBR_IRGN_ATTR(attr)					\
 	((((attr) & 0x1) << 6) | (((attr) & 0x2) >> 1))
 
-#define ARM_V7S_TCR_PD1			BIT(5)
-
 #ifdef CONFIG_ZONE_DMA32
 #define ARM_V7S_TABLE_GFP_DMA GFP_DMA32
 #define ARM_V7S_TABLE_SLAB_FLAGS SLAB_CACHE_DMA32
@@ -751,8 +749,8 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 	 */
 	cfg->pgsize_bitmap &= SZ_4K | SZ_64K | SZ_1M | SZ_16M;
 
-	/* TCR: T0SZ=0, disable TTBR1 */
-	cfg->arm_v7s_cfg.tcr = ARM_V7S_TCR_PD1;
+	/* TCR: T0SZ=0, EAE=0 (if applicable) */
+	cfg->arm_v7s_cfg.tcr = 0;
 
 	/*
 	 * TEX remap: the indices used map to the closest equivalent types
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 56e0921331c3..09cb20671fbb 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -112,8 +112,6 @@
 #define ARM_32_LPAE_TCR_EAE		(1 << 31)
 #define ARM_64_LPAE_S2_TCR_RES1		(1 << 31)
 
-#define ARM_LPAE_TCR_EPD1		(1 << 23)
-
 #define ARM_LPAE_TCR_TG0_4K		(0 << 14)
 #define ARM_LPAE_TCR_TG0_64K		(1 << 14)
 #define ARM_LPAE_TCR_TG0_16K		(2 << 14)
@@ -845,8 +843,6 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 
 	reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;
 
-	/* Disable speculative walks through TTBR1 */
-	reg |= ARM_LPAE_TCR_EPD1;
 	cfg->arm_lpae_s1_cfg.tcr = reg;
 
 	/* MAIRs */
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index de55b6d82ef1..c58237bb2a86 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -257,7 +257,7 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 				(pgtbl_cfg.arm_lpae_s1_cfg.tcr >> 32) |
 				FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM));
 		iommu_writel(ctx, ARM_SMMU_CB_TCR,
-				pgtbl_cfg.arm_lpae_s1_cfg.tcr);
+				pgtbl_cfg.arm_lpae_s1_cfg.tcr | TCR_EPD1);
 
 		/* MAIRs (stage-1 only) */
 		iommu_writel(ctx, ARM_SMMU_CB_S1_MAIR0,
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
