Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4275CE539D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AOnGHI9JVQJJZN7o56Y+OvJy9e91sMTxAVSNiObq+k=; b=euSUa5O70TJd/i
	gIKJ9/IJfO0dvm4BUCsS/FGA7Kc5zFzaHTMwOVRkkPE2jSP7XToYWakSCFVuk/KTvjyeE1mNS0egG
	0LrARBtd/e8VS64VeBFZ9qvqOScuEjHv8m8CIiM+P2HZ/jycMOSZo5vdNr3nEQL6UhGUeiE9/ll1n
	OBCl8yelJq7014vyLEvenv/3JSfQDQgTyufrQnCptc0lZhBaX2ZWZ/knEQOQxLvmLroMSMr4fx3L5
	JSbweLcZeoWTml1Moy48x/tryYn27H+CFntoMMVeeSH7sm5G5uVbFy575kx/JcWWqdoaUx95SkLSw
	/8E0CcPKu4qjjcxBC99w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO43i-0007hR-C5; Fri, 25 Oct 2019 18:11:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO416-0003ya-2P
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74E48493;
 Fri, 25 Oct 2019 11:08:51 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A8C9D3F6C4;
 Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 09/10] iommu/io-pgtable-arm: Rationalise TCR handling
Date: Fri, 25 Oct 2019 19:08:38 +0100
Message-Id: <84e56eb993fff3660376ffad3e915b972d29b008.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110852_384228_19E7BE55 
X-CRM114-Status: GOOD (  21.15  )
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
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
directly relevant to io-pgatble's inner workings - namely the various
sizes and the walk attributes.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-v3.c        | 41 +++----------
 drivers/iommu/arm-smmu.c           |  7 ++-
 drivers/iommu/arm-smmu.h           | 27 ++++++++
 drivers/iommu/io-pgtable-arm-v7s.c |  6 +-
 drivers/iommu/io-pgtable-arm.c     | 98 ++++++++++++------------------
 drivers/iommu/io-pgtable.c         |  2 +-
 drivers/iommu/qcom_iommu.c         |  8 +--
 include/linux/io-pgtable.h         |  9 ++-
 8 files changed, 94 insertions(+), 104 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index da31e607698f..ca72cd777955 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -261,27 +261,18 @@
 /* Context descriptor (stage-1 only) */
 #define CTXDESC_CD_DWORDS		8
 #define CTXDESC_CD_0_TCR_T0SZ		GENMASK_ULL(5, 0)
-#define ARM64_TCR_T0SZ			GENMASK_ULL(5, 0)
 #define CTXDESC_CD_0_TCR_TG0		GENMASK_ULL(7, 6)
-#define ARM64_TCR_TG0			GENMASK_ULL(15, 14)
 #define CTXDESC_CD_0_TCR_IRGN0		GENMASK_ULL(9, 8)
-#define ARM64_TCR_IRGN0			GENMASK_ULL(9, 8)
 #define CTXDESC_CD_0_TCR_ORGN0		GENMASK_ULL(11, 10)
-#define ARM64_TCR_ORGN0			GENMASK_ULL(11, 10)
 #define CTXDESC_CD_0_TCR_SH0		GENMASK_ULL(13, 12)
-#define ARM64_TCR_SH0			GENMASK_ULL(13, 12)
 #define CTXDESC_CD_0_TCR_EPD0		(1ULL << 14)
-#define ARM64_TCR_EPD0			(1ULL << 7)
 #define CTXDESC_CD_0_TCR_EPD1		(1ULL << 30)
-#define ARM64_TCR_EPD1			(1ULL << 23)
 
 #define CTXDESC_CD_0_ENDI		(1UL << 15)
 #define CTXDESC_CD_0_V			(1UL << 31)
 
 #define CTXDESC_CD_0_TCR_IPS		GENMASK_ULL(34, 32)
-#define ARM64_TCR_IPS			GENMASK_ULL(34, 32)
 #define CTXDESC_CD_0_TCR_TBI0		(1ULL << 38)
-#define ARM64_TCR_TBI0			(1ULL << 37)
 
 #define CTXDESC_CD_0_AA64		(1UL << 41)
 #define CTXDESC_CD_0_S			(1UL << 44)
@@ -292,10 +283,6 @@
 
 #define CTXDESC_CD_1_TTB0_MASK		GENMASK_ULL(51, 4)
 
-/* Convert between AArch64 (CPU) TCR format and SMMU CD format */
-#define ARM_SMMU_TCR2CD(tcr, fld)	FIELD_PREP(CTXDESC_CD_0_TCR_##fld, \
-					FIELD_GET(ARM64_TCR_##fld, tcr))
-
 /* Command queue */
 #define CMDQ_ENT_SZ_SHIFT		4
 #define CMDQ_ENT_DWORDS			((1 << CMDQ_ENT_SZ_SHIFT) >> 3)
@@ -1443,23 +1430,6 @@ static int arm_smmu_cmdq_issue_sync(struct arm_smmu_device *smmu)
 }
 
 /* Context descriptor manipulation functions */
-static u64 arm_smmu_cpu_tcr_to_cd(u64 tcr)
-{
-	u64 val = 0;
-
-	/* Repack the TCR. Just care about TTBR0 for now */
-	val |= ARM_SMMU_TCR2CD(tcr, T0SZ);
-	val |= ARM_SMMU_TCR2CD(tcr, TG0);
-	val |= ARM_SMMU_TCR2CD(tcr, IRGN0);
-	val |= ARM_SMMU_TCR2CD(tcr, ORGN0);
-	val |= ARM_SMMU_TCR2CD(tcr, SH0);
-	val |= ARM_SMMU_TCR2CD(tcr, EPD0);
-	val |= ARM_SMMU_TCR2CD(tcr, EPD1);
-	val |= ARM_SMMU_TCR2CD(tcr, IPS);
-
-	return val;
-}
-
 static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 				    struct arm_smmu_s1_cfg *cfg)
 {
@@ -1469,7 +1439,7 @@ static void arm_smmu_write_ctx_desc(struct arm_smmu_device *smmu,
 	 * We don't need to issue any invalidation here, as we'll invalidate
 	 * the STE when installing the new entry anyway.
 	 */
-	val = arm_smmu_cpu_tcr_to_cd(cfg->cd.tcr) |
+	val = cfg->cd.tcr |
 #ifdef __BIG_ENDIAN
 	      CTXDESC_CD_0_ENDI |
 #endif
@@ -2155,6 +2125,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	int asid;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;
+	typeof(&pgtbl_cfg->arm_lpae_s1_cfg.tcr) tcr = &pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 
 	asid = arm_smmu_bitmap_alloc(smmu->asid_map, smmu->asid_bits);
 	if (asid < 0)
@@ -2171,7 +2142,13 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 
 	cfg->cd.asid	= (u16)asid;
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
-	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
+	cfg->cd.tcr	= FIELD_PREP(CTXDESC_CD_0_TCR_T0SZ, tcr->tsz) |
+			  FIELD_PREP(CTXDESC_CD_0_TCR_TG0, tcr->tg) |
+			  FIELD_PREP(CTXDESC_CD_0_TCR_IRGN0, tcr->irgn) |
+			  FIELD_PREP(CTXDESC_CD_0_TCR_ORGN0, tcr->orgn) |
+			  FIELD_PREP(CTXDESC_CD_0_TCR_SH0, tcr->sh) |
+			  FIELD_PREP(CTXDESC_CD_0_TCR_IPS, tcr->ips) |
+			  CTXDESC_CD_0_TCR_EPD1 | CTXDESC_CD_0_AA64;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
 	return 0;
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a249e4e49ead..ade323ab0484 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -521,11 +521,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
 			cb->tcr[0] = pgtbl_cfg->arm_v7s_cfg.tcr;
 		} else {
-			cb->tcr[0] = pgtbl_cfg->arm_lpae_s1_cfg.tcr;
-			cb->tcr[1] = pgtbl_cfg->arm_lpae_s1_cfg.tcr >> 32;
-			cb->tcr[1] |= FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
+			cb->tcr[0] = arm_smmu_lpae_tcr(pgtbl_cfg);
+			cb->tcr[1] = arm_smmu_lpae_tcr2(pgtbl_cfg);
 			if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
 				cb->tcr[1] |= TCR2_AS;
+			else
+				cb->tcr[0] |= TCR_EAE;
 		}
 	} else {
 		cb->tcr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vtcr;
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 409716410b0d..98db074281ac 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -158,12 +158,24 @@ enum arm_smmu_cbar_type {
 #define TCR2_SEP			GENMASK(17, 15)
 #define TCR2_SEP_UPSTREAM		0x7
 #define TCR2_AS				BIT(4)
+#define TCR2_PASIZE			GENMASK(3, 0)
 
 #define ARM_SMMU_CB_TTBR0		0x20
 #define ARM_SMMU_CB_TTBR1		0x28
 #define TTBRn_ASID			GENMASK_ULL(63, 48)
 
+/* arm64 headers leak this somehow :( */
+#undef TCR_T0SZ
+
 #define ARM_SMMU_CB_TCR			0x30
+#define TCR_EAE				BIT(31)
+#define TCR_EPD1			BIT(23)
+#define TCR_TG0				GENMASK(15, 14)
+#define TCR_SH0				GENMASK(13, 12)
+#define TCR_ORGN0			GENMASK(11, 10)
+#define TCR_IRGN0			GENMASK(9, 8)
+#define TCR_T0SZ			GENMASK(5, 0)
+
 #define ARM_SMMU_CB_CONTEXTIDR		0x34
 #define ARM_SMMU_CB_S1_MAIR0		0x38
 #define ARM_SMMU_CB_S1_MAIR1		0x3c
@@ -318,6 +330,21 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 };
 
+static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
+{
+	return TCR_EPD1 |
+	       FIELD_PREP(TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
+	       FIELD_PREP(TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
+	       FIELD_PREP(TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
+	       FIELD_PREP(TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
+	       FIELD_PREP(TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
+}
+
+static inline u32 arm_smmu_lpae_tcr2(struct io_pgtable_cfg *cfg)
+{
+	return FIELD_PREP(TCR2_PASIZE, cfg->arm_lpae_s1_cfg.tcr.ips) |
+	       FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM);
+}
 
 /* Implementation details, yay! */
 struct arm_smmu_impl {
diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 4d2c1e7f67c4..d8e4562ce478 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -149,8 +149,6 @@
 #define ARM_V7S_TTBR_IRGN_ATTR(attr)					\
 	((((attr) & 0x1) << 6) | (((attr) & 0x2) >> 1))
 
-#define ARM_V7S_TCR_PD1			BIT(5)
-
 #ifdef CONFIG_ZONE_DMA32
 #define ARM_V7S_TABLE_GFP_DMA GFP_DMA32
 #define ARM_V7S_TABLE_SLAB_FLAGS SLAB_CACHE_DMA32
@@ -798,8 +796,8 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 	 */
 	cfg->pgsize_bitmap &= SZ_4K | SZ_64K | SZ_1M | SZ_16M;
 
-	/* TCR: T0SZ=0, disable TTBR1 */
-	cfg->arm_v7s_cfg.tcr = ARM_V7S_TCR_PD1;
+	/* TCR: T0SZ=0, EAE=0 (if applicable) */
+	cfg->arm_v7s_cfg.tcr = 0;
 
 	/*
 	 * TEX remap: the indices used map to the closest equivalent types
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index bc0841040ebe..9b1912ede000 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -100,40 +100,32 @@
 #define ARM_LPAE_PTE_MEMATTR_DEV	(((arm_lpae_iopte)0x1) << 2)
 
 /* Register bits */
-#define ARM_32_LPAE_TCR_EAE		(1 << 31)
-#define ARM_64_LPAE_S2_TCR_RES1		(1 << 31)
+#define ARM_64_LPAE_VTCR_RES1		(1 << 31)
 
-#define ARM_LPAE_TCR_EPD1		(1 << 23)
-
-#define ARM_LPAE_TCR_TG0_4K		(0 << 14)
-#define ARM_LPAE_TCR_TG0_64K		(1 << 14)
-#define ARM_LPAE_TCR_TG0_16K		(2 << 14)
+#define ARM_LPAE_VTCR_TG0_SHIFT		14
+#define ARM_LPAE_TCR_TG0_4K		0
+#define ARM_LPAE_TCR_TG0_64K		1
+#define ARM_LPAE_TCR_TG0_16K		2
 
 #define ARM_LPAE_TCR_SH0_SHIFT		12
-#define ARM_LPAE_TCR_SH0_MASK		0x3
 #define ARM_LPAE_TCR_SH_NS		0
 #define ARM_LPAE_TCR_SH_OS		2
 #define ARM_LPAE_TCR_SH_IS		3
 
 #define ARM_LPAE_TCR_ORGN0_SHIFT	10
 #define ARM_LPAE_TCR_IRGN0_SHIFT	8
-#define ARM_LPAE_TCR_RGN_MASK		0x3
 #define ARM_LPAE_TCR_RGN_NC		0
 #define ARM_LPAE_TCR_RGN_WBWA		1
 #define ARM_LPAE_TCR_RGN_WT		2
 #define ARM_LPAE_TCR_RGN_WB		3
 
-#define ARM_LPAE_TCR_SL0_SHIFT		6
-#define ARM_LPAE_TCR_SL0_MASK		0x3
+#define ARM_LPAE_VTCR_SL0_SHIFT		6
+#define ARM_LPAE_VTCR_SL0_MASK		0x3
 
 #define ARM_LPAE_TCR_T0SZ_SHIFT		0
-#define ARM_LPAE_TCR_SZ_MASK		0xf
 
-#define ARM_LPAE_TCR_PS_SHIFT		16
-#define ARM_LPAE_TCR_PS_MASK		0x7
-
-#define ARM_LPAE_TCR_IPS_SHIFT		32
-#define ARM_LPAE_TCR_IPS_MASK		0x7
+#define ARM_LPAE_VTCR_PS_SHIFT		16
+#define ARM_LPAE_VTCR_PS_MASK		0x7
 
 #define ARM_LPAE_TCR_PS_32_BIT		0x0ULL
 #define ARM_LPAE_TCR_PS_36_BIT		0x1ULL
@@ -787,6 +779,7 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 {
 	u64 reg;
 	struct arm_lpae_io_pgtable *data;
+	typeof(&cfg->arm_lpae_s1_cfg.tcr) tcr = &cfg->arm_lpae_s1_cfg.tcr;
 
 	if (cfg->quirks & ~(IO_PGTABLE_QUIRK_ARM_NS |
 			    IO_PGTABLE_QUIRK_NON_STRICT))
@@ -798,58 +791,54 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 
 	/* TCR */
 	if (cfg->coherent_walk) {
-		reg = (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
-		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
-		      (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
+		tcr->sh = ARM_LPAE_TCR_SH_IS;
+		tcr->irgn = ARM_LPAE_TCR_RGN_WBWA;
+		tcr->orgn = ARM_LPAE_TCR_RGN_WBWA;
 	} else {
-		reg = (ARM_LPAE_TCR_SH_OS << ARM_LPAE_TCR_SH0_SHIFT) |
-		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_IRGN0_SHIFT) |
-		      (ARM_LPAE_TCR_RGN_NC << ARM_LPAE_TCR_ORGN0_SHIFT);
+		tcr->sh = ARM_LPAE_TCR_SH_OS;
+		tcr->irgn = ARM_LPAE_TCR_RGN_NC;
+		tcr->orgn = ARM_LPAE_TCR_RGN_NC;
 	}
 
 	switch (ARM_LPAE_GRANULE(data)) {
 	case SZ_4K:
-		reg |= ARM_LPAE_TCR_TG0_4K;
+		tcr->tg = ARM_LPAE_TCR_TG0_4K;
 		break;
 	case SZ_16K:
-		reg |= ARM_LPAE_TCR_TG0_16K;
+		tcr->tg = ARM_LPAE_TCR_TG0_16K;
 		break;
 	case SZ_64K:
-		reg |= ARM_LPAE_TCR_TG0_64K;
+		tcr->tg = ARM_LPAE_TCR_TG0_64K;
 		break;
 	}
 
 	switch (cfg->oas) {
 	case 32:
-		reg |= (ARM_LPAE_TCR_PS_32_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_32_BIT;
 		break;
 	case 36:
-		reg |= (ARM_LPAE_TCR_PS_36_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_36_BIT;
 		break;
 	case 40:
-		reg |= (ARM_LPAE_TCR_PS_40_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_40_BIT;
 		break;
 	case 42:
-		reg |= (ARM_LPAE_TCR_PS_42_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_42_BIT;
 		break;
 	case 44:
-		reg |= (ARM_LPAE_TCR_PS_44_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_44_BIT;
 		break;
 	case 48:
-		reg |= (ARM_LPAE_TCR_PS_48_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_48_BIT;
 		break;
 	case 52:
-		reg |= (ARM_LPAE_TCR_PS_52_BIT << ARM_LPAE_TCR_IPS_SHIFT);
+		tcr->ips = ARM_LPAE_TCR_PS_52_BIT;
 		break;
 	default:
 		goto out_free_data;
 	}
 
-	reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;
-
-	/* Disable speculative walks through TTBR1 */
-	reg |= ARM_LPAE_TCR_EPD1;
-	cfg->arm_lpae_s1_cfg.tcr = reg;
+	tcr->tsz = 64ULL - cfg->ias;
 
 	/* MAIRs */
 	reg = (ARM_LPAE_MAIR_ATTR_NC
@@ -910,7 +899,7 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 	}
 
 	/* VTCR */
-	reg = ARM_64_LPAE_S2_TCR_RES1 |
+	reg = ARM_64_LPAE_VTCR_RES1 |
 	     (ARM_LPAE_TCR_SH_IS << ARM_LPAE_TCR_SH0_SHIFT) |
 	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_IRGN0_SHIFT) |
 	     (ARM_LPAE_TCR_RGN_WBWA << ARM_LPAE_TCR_ORGN0_SHIFT);
@@ -919,45 +908,45 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 
 	switch (ARM_LPAE_GRANULE(data)) {
 	case SZ_4K:
-		reg |= ARM_LPAE_TCR_TG0_4K;
+		reg |= (ARM_LPAE_TCR_TG0_4K << ARM_LPAE_VTCR_TG0_SHIFT);
 		sl++; /* SL0 format is different for 4K granule size */
 		break;
 	case SZ_16K:
-		reg |= ARM_LPAE_TCR_TG0_16K;
+		reg |= (ARM_LPAE_TCR_TG0_16K << ARM_LPAE_VTCR_TG0_SHIFT);
 		break;
 	case SZ_64K:
-		reg |= ARM_LPAE_TCR_TG0_64K;
+		reg |= (ARM_LPAE_TCR_TG0_64K << ARM_LPAE_VTCR_TG0_SHIFT);
 		break;
 	}
 
 	switch (cfg->oas) {
 	case 32:
-		reg |= (ARM_LPAE_TCR_PS_32_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_32_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 36:
-		reg |= (ARM_LPAE_TCR_PS_36_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_36_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 40:
-		reg |= (ARM_LPAE_TCR_PS_40_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_40_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 42:
-		reg |= (ARM_LPAE_TCR_PS_42_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_42_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 44:
-		reg |= (ARM_LPAE_TCR_PS_44_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_44_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 48:
-		reg |= (ARM_LPAE_TCR_PS_48_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_48_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	case 52:
-		reg |= (ARM_LPAE_TCR_PS_52_BIT << ARM_LPAE_TCR_PS_SHIFT);
+		reg |= (ARM_LPAE_TCR_PS_52_BIT << ARM_LPAE_VTCR_PS_SHIFT);
 		break;
 	default:
 		goto out_free_data;
 	}
 
 	reg |= (64ULL - cfg->ias) << ARM_LPAE_TCR_T0SZ_SHIFT;
-	reg |= (~sl & ARM_LPAE_TCR_SL0_MASK) << ARM_LPAE_TCR_SL0_SHIFT;
+	reg |= (~sl & ARM_LPAE_VTCR_SL0_MASK) << ARM_LPAE_VTCR_SL0_SHIFT;
 	cfg->arm_lpae_s2_cfg.vtcr = reg;
 
 	/* Allocate pgd pages */
@@ -981,19 +970,12 @@ arm_64_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
 static struct io_pgtable *
 arm_32_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 {
-	struct io_pgtable *iop;
-
 	if (cfg->ias > 32 || cfg->oas > 40)
 		return NULL;
 
 	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);
-	iop = arm_64_lpae_alloc_pgtable_s1(cfg, cookie);
-	if (iop) {
-		cfg->arm_lpae_s1_cfg.tcr |= ARM_32_LPAE_TCR_EAE;
-		cfg->arm_lpae_s1_cfg.tcr &= 0xffffffff;
-	}
 
-	return iop;
+	return arm_64_lpae_alloc_pgtable_s1(cfg, cookie);
 }
 
 static struct io_pgtable *
diff --git a/drivers/iommu/io-pgtable.c b/drivers/iommu/io-pgtable.c
index ced53e5b72b5..94394c81468f 100644
--- a/drivers/iommu/io-pgtable.c
+++ b/drivers/iommu/io-pgtable.c
@@ -63,7 +63,7 @@ void free_io_pgtable_ops(struct io_pgtable_ops *ops)
 	if (!ops)
 		return;
 
-	iop = container_of(ops, struct io_pgtable, ops);
+	iop = io_pgtable_ops_to_pgtable(ops);
 	io_pgtable_tlb_flush_all(iop);
 	io_pgtable_init_table[iop->fmt]->free(iop);
 }
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 9a57eb6c253c..059be7e21030 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -271,15 +271,13 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
 				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
 				FIELD_PREP(TTBRn_ASID, ctx->asid));
-		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
-				FIELD_PREP(TTBRn_ASID, ctx->asid));
+		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1, 0);
 
 		/* TCR */
 		iommu_writel(ctx, ARM_SMMU_CB_TCR2,
-				(pgtbl_cfg.arm_lpae_s1_cfg.tcr >> 32) |
-				FIELD_PREP(TCR2_SEP, TCR2_SEP_UPSTREAM));
+				arm_smmu_lpae_tcr2(&pgtbl_cfg));
 		iommu_writel(ctx, ARM_SMMU_CB_TCR,
-				pgtbl_cfg.arm_lpae_s1_cfg.tcr);
+				arm_smmu_lpae_tcr(&pgtbl_cfg) | TCR_EAE);
 
 		/* MAIRs (stage-1 only) */
 		iommu_writel(ctx, ARM_SMMU_CB_S1_MAIR0,
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index 53bca5343f52..6ae104cedfd7 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -101,7 +101,14 @@ struct io_pgtable_cfg {
 	union {
 		struct {
 			u64	ttbr;
-			u64	tcr;
+			struct {
+				u32	ips:3;
+				u32	tg:2;
+				u32	sh:2;
+				u32	orgn:2;
+				u32	irgn:2;
+				u32	tsz:6;
+			}	tcr;
 			u64	mair;
 		} arm_lpae_s1_cfg;
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
