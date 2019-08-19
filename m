Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B661694C84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:20:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTHAYMU8Bu4uaafMlztBeKNJesoCNJo0X2Nl7m+NSeU=; b=Mn1WmD0FLYt7OW
	NUI3agFUKsSPgRg0hL66tel2mUV3HSrWdEWXJtqHYBhr8w256uehyFfTs4jQs9/S0cBaLjxd6YuLg
	Samxn18svNOaRWRmBvbE2OgGt0GQ6l1IucshFmja8RwZG98q0hmw4Aea+cL3vEJDd7mD2hM7N1jab
	+2XipKCrU7f3hLw3HwWoHOAtT0B9cM4f2ZcRkDSMz91z8Z6wsYsanaZKsyi3d9m9Y7eT/etJeU/3M
	qcaACH2ZI/YjSOGmVuQ+WW6NxqJK0vzp2zAO2Jva/FPAHJ34P/lLvCDp16sQCYfyG7AAVboIxU685
	c8ZMDVYkl2jwPH8x28gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmGm-0005HU-QQ; Mon, 19 Aug 2019 18:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmFm-0003bE-EK
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:19:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 008DB1596;
 Mon, 19 Aug 2019 11:19:38 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 193E53F246;
 Mon, 19 Aug 2019 11:19:36 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 2/4] iommu/io-pgtable-arm: Rationalise TTBRn handling
Date: Mon, 19 Aug 2019 19:19:29 +0100
Message-Id: <dbb942070c2ef812e379414c236734931613d860.1566238530.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1566238530.git.robin.murphy@arm.com>
References: <cover.1566238530.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_111938_567487_8A31F802 
X-CRM114-Status: GOOD (  19.92  )
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

TTBR1 values have so far been redundant since no users implement any
support for split address spaces. Crucially, though, one of the main
reasons for wanting to do so is to be able to manage each half entirely
independently, e.g. context-switching one set of mappings without
disturbing the other. Thus it seems unlikely that tying two tables
together in a single io_pgtable_cfg would ever be particularly desirable
or useful.

Streamline the configs to just a single conceptual TTBR value
representing the allocated table. This paves the way for future users to
support split address spaces by simply allocating a table and dealing
with the detailed TTBRn logistics themselves.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-v3.c        |  2 +-
 drivers/iommu/arm-smmu.c           |  9 ++++-----
 drivers/iommu/io-pgtable-arm-v7s.c | 16 +++++++---------
 drivers/iommu/io-pgtable-arm.c     |  7 +++----
 drivers/iommu/ipmmu-vmsa.c         |  2 +-
 drivers/iommu/msm_iommu.c          |  4 ++--
 drivers/iommu/mtk_iommu.c          |  4 ++--
 drivers/iommu/qcom_iommu.c         |  3 +--
 include/linux/io-pgtable.h         |  4 ++--
 9 files changed, 23 insertions(+), 28 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 2a8db896d698..2e50cf49c3c4 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -1722,7 +1722,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	}
 
 	cfg->cd.asid	= (u16)asid;
-	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
+	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
 	return 0;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 184ca41e9de7..19030c4b5904 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -473,13 +473,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 	/* TTBRs */
 	if (stage1) {
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
-			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr[0];
-			cb->ttbr[1] = pgtbl_cfg->arm_v7s_cfg.ttbr[1];
+			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
+			cb->ttbr[1] = 0;
 		} else {
-			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
+			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
 			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
-			cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[1];
-			cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
+			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
 		}
 	} else {
 		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 0fc8dfab2abf..7c80e9d00f73 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -775,15 +775,13 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 	/* Ensure the empty pgd is visible before any actual TTBR write */
 	wmb();
 
-	/* TTBRs */
-	cfg->arm_v7s_cfg.ttbr[0] = virt_to_phys(data->pgd) |
-				   ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
-				   (cfg->coherent_walk ?
-				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
-				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
-				   (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
-				    ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
-	cfg->arm_v7s_cfg.ttbr[1] = 0;
+	/* TTBR */
+	cfg->arm_v7s_cfg.ttbr = virt_to_phys(data->pgd) | ARM_V7S_TTBR_S |
+				(cfg->coherent_walk ? (ARM_V7S_TTBR_NOS |
+				  ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
+				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
+				 (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
+				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
 	return &data->iop;
 
 out_free_data:
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index c588ba0dd4d1..56e0921331c3 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -869,9 +869,8 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 	/* Ensure the empty pgd is visible before any actual TTBR write */
 	wmb();
 
-	/* TTBRs */
-	cfg->arm_lpae_s1_cfg.ttbr[0] = virt_to_phys(data->pgd);
-	cfg->arm_lpae_s1_cfg.ttbr[1] = 0;
+	/* TTBR */
+	cfg->arm_lpae_s1_cfg.ttbr = virt_to_phys(data->pgd);
 	return &data->iop;
 
 out_free_data:
@@ -1024,7 +1023,7 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 
 		/* Copy values as union fields overlap */
 		mair = cfg->arm_lpae_s1_cfg.mair;
-		ttbr = cfg->arm_lpae_s1_cfg.ttbr[0];
+		ttbr = cfg->arm_lpae_s1_cfg.ttbr;
 
 		cfg->arm_mali_lpae_cfg.memattr = mair;
 		cfg->arm_mali_lpae_cfg.transtab = ttbr |
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 9075e53a748b..180ab71d8542 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -416,7 +416,7 @@ static void ipmmu_domain_setup_context(struct ipmmu_vmsa_domain *domain)
 	u32 tmp;
 
 	/* TTBR0 */
-	ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr[0];
+	ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr;
 	ipmmu_ctx_write_root(domain, IMTTLBR0, ttbr);
 	ipmmu_ctx_write_root(domain, IMTTUBR0, ttbr >> 32);
 
diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index b25e2eb9e038..fb6d406e0c52 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -270,8 +270,8 @@ static void __program_context(void __iomem *base, int ctx,
 	SET_V2PCFG(base, ctx, 0x3);
 
 	SET_TTBCR(base, ctx, priv->cfg.arm_v7s_cfg.tcr);
-	SET_TTBR0(base, ctx, priv->cfg.arm_v7s_cfg.ttbr[0]);
-	SET_TTBR1(base, ctx, priv->cfg.arm_v7s_cfg.ttbr[1]);
+	SET_TTBR0(base, ctx, priv->cfg.arm_v7s_cfg.ttbr);
+	SET_TTBR1(base, ctx, 0);
 
 	/* Set prrr and nmrr */
 	SET_PRRR(base, ctx, priv->cfg.arm_v7s_cfg.prrr);
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 82e4be4dfdaf..ad644631780d 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -336,7 +336,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 	/* Update the pgtable base address register of the M4U HW */
 	if (!data->m4u_dom) {
 		data->m4u_dom = dom;
-		writel(dom->cfg.arm_v7s_cfg.ttbr[0],
+		writel(dom->cfg.arm_v7s_cfg.ttbr,
 		       data->base + REG_MMU_PT_BASE_ADDR);
 	}
 
@@ -723,7 +723,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	writel_relaxed(reg->int_main_control, base + REG_MMU_INT_MAIN_CONTROL);
 	writel_relaxed(reg->ivrp_paddr, base + REG_MMU_IVRP_PADDR);
 	if (data->m4u_dom)
-		writel(data->m4u_dom->cfg.arm_v7s_cfg.ttbr[0],
+		writel(data->m4u_dom->cfg.arm_v7s_cfg.ttbr,
 		       base + REG_MMU_PT_BASE_ADDR);
 	return 0;
 }
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 34bb357b3cfa..de55b6d82ef1 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -247,10 +247,9 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 
 		/* TTBRs */
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
-				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[0] |
+				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
 				FIELD_PREP(TTBRn_ASID, ctx->asid));
 		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
-				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[1] |
 				FIELD_PREP(TTBRn_ASID, ctx->asid));
 
 		/* TCR */
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index a6c8aa204733..7a0905d7a006 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -90,7 +90,7 @@ struct io_pgtable_cfg {
 	/* Low-level data specific to the table format */
 	union {
 		struct {
-			u64	ttbr[2];
+			u64	ttbr;
 			u64	tcr;
 			u64	mair;
 		} arm_lpae_s1_cfg;
@@ -101,7 +101,7 @@ struct io_pgtable_cfg {
 		} arm_lpae_s2_cfg;
 
 		struct {
-			u32	ttbr[2];
+			u32	ttbr;
 			u32	tcr;
 			u32	nmrr;
 			u32	prrr;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
