Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1A4E5390
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcAUJrpQqt3MDscV9bOhYrErdNBdhTO3yW9n5ADUbG4=; b=Irk/8Q/3oIZKdB
	Iy10yg3G1KlLVS0It4ZrP8Dm1XNnncAtiBhzWm61Q0I7Lh1RPlSsKWU8+C1elJseIkTsyM0uIP90k
	bFSHBp8HyiqV/mGA961T/Kw0jUBMISNGouJ1NVOO5t+wVqduMVOOhm0mfMwyt9Q9ybiJitchbuyq8
	1cEhCtJbpua2hkzEO9LfQJ5xf/ao+iA3ZltF4DbHTcYBImDsgMi93Io12pSN5kJS6kvMhTETGBnGj
	RCfXz//gqNpUR7w0TgIVOZukdW7ZXM8D1FDguV88pZ2XCk0qXCoxAdLLKSHYU+go+cAuXp/zkb//Q
	+SDLVw2ctPsCYB9tCaGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO43S-0007Qo-MA; Fri, 25 Oct 2019 18:11:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO415-0003yR-NM
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73CDE28;
 Fri, 25 Oct 2019 11:08:50 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id C2A3A3F6C4;
 Fri, 25 Oct 2019 11:08:49 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 08/10] iommu/io-pgtable-arm: Rationalise TTBRn handling
Date: Fri, 25 Oct 2019 19:08:37 +0100
Message-Id: <74ada0e6c488a2310206a553eb108cc28fd52457.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110851_921325_42BD292C 
X-CRM114-Status: GOOD (  20.60  )
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
 drivers/iommu/io-pgtable-arm.c     |  5 ++---
 drivers/iommu/ipmmu-vmsa.c         |  2 +-
 drivers/iommu/msm_iommu.c          |  4 ++--
 drivers/iommu/mtk_iommu.c          |  4 ++--
 drivers/iommu/qcom_iommu.c         |  3 +--
 include/linux/io-pgtable.h         |  4 ++--
 9 files changed, 22 insertions(+), 27 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 3f20e548f1ec..da31e607698f 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2170,7 +2170,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	}
 
 	cfg->cd.asid	= (u16)asid;
-	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
+	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
 	return 0;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 2bc3e93b11e6..a249e4e49ead 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -534,13 +534,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
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
index 7c3bd2c3cdca..4d2c1e7f67c4 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -822,15 +822,13 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
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
index 1795df8f7a51..bc0841040ebe 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -872,9 +872,8 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 	/* Ensure the empty pgd is visible before any actual TTBR write */
 	wmb();
 
-	/* TTBRs */
-	cfg->arm_lpae_s1_cfg.ttbr[0] = virt_to_phys(data->pgd);
-	cfg->arm_lpae_s1_cfg.ttbr[1] = 0;
+	/* TTBR */
+	cfg->arm_lpae_s1_cfg.ttbr = virt_to_phys(data->pgd);
 	return &data->iop;
 
 out_free_data:
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index e4da6efbda49..4fe0ff3216ce 100644
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
index be99d408cf35..9ceec140fa67 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -279,8 +279,8 @@ static void __program_context(void __iomem *base, int ctx,
 	SET_V2PCFG(base, ctx, 0x3);
 
 	SET_TTBCR(base, ctx, priv->cfg.arm_v7s_cfg.tcr);
-	SET_TTBR0(base, ctx, priv->cfg.arm_v7s_cfg.ttbr[0]);
-	SET_TTBR1(base, ctx, priv->cfg.arm_v7s_cfg.ttbr[1]);
+	SET_TTBR0(base, ctx, priv->cfg.arm_v7s_cfg.ttbr);
+	SET_TTBR1(base, ctx, 0);
 
 	/* Set prrr and nmrr */
 	SET_PRRR(base, ctx, priv->cfg.arm_v7s_cfg.prrr);
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 67a483c1a935..ef0b36eeb83d 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -392,7 +392,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 	/* Update the pgtable base address register of the M4U HW */
 	if (!data->m4u_dom) {
 		data->m4u_dom = dom;
-		writel(dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+		writel(dom->cfg.arm_v7s_cfg.ttbr & MMU_PT_ADDR_MASK,
 		       data->base + REG_MMU_PT_BASE_ADDR);
 	}
 
@@ -797,7 +797,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	writel_relaxed(reg->ivrp_paddr, base + REG_MMU_IVRP_PADDR);
 	writel_relaxed(reg->vld_pa_rng, base + REG_MMU_VLD_PA_RNG);
 	if (m4u_dom)
-		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr & MMU_PT_ADDR_MASK,
 		       base + REG_MMU_PT_BASE_ADDR);
 	return 0;
 }
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 66e9b40e9275..9a57eb6c253c 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -269,10 +269,9 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 
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
index ee21eedafe98..53bca5343f52 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -100,7 +100,7 @@ struct io_pgtable_cfg {
 	/* Low-level data specific to the table format */
 	union {
 		struct {
-			u64	ttbr[2];
+			u64	ttbr;
 			u64	tcr;
 			u64	mair;
 		} arm_lpae_s1_cfg;
@@ -111,7 +111,7 @@ struct io_pgtable_cfg {
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
