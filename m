Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AD913713B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXf5CpJWRoWAE/RnFUJN4cI1jx1VRxo4x4CbU+cjR5M=; b=MlGNBRohXAzlnB
	+9Av2EOFO8EqF6guCWm3b55O7gy3SL/IPNXRKxBTJIXWZNWgJghSjNOqD5kRW1AIPmMevLYGjb84a
	fytC2wf+LXXHPcJfW+WV/Na66rMGzXRy6W0KNHTilVMaANSkwk853qb1voDUEul/32BDQGgZ/5iH+
	jinRgNT+11BkNle7MQj1lRxlkyO+HwIAekQLI1rnXLTd3/enyvNxWsh9MS5p/FTEeOJj+7Wkfd07G
	Xnk0EELy0ZhoEhm3ZSMuifFqm+ooUO7RAP3gixnMYaYtGEHcwcp/Aqeu4URG4yXNV3S0RvhVZkwcx
	pJ2mMUTohl26o2DrtUUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwE7-0001Tt-Ii; Fri, 10 Jan 2020 15:29:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwDb-0001EA-5E
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:29:00 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B8D222082E;
 Fri, 10 Jan 2020 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578670138;
 bh=8TcTOnRJS8p1qB3Pba0Qumd9/k4tcaw9TRVgGiMuEeQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DOpBagXdXl5BV5k9rDlNEYQpnTiukmt2Q3NPhR6wWVt9GsljQkJZ+rlfy0S7DR7L5
 BjzbwYOXdNRv0MWlyoreKN7+ccx/S0ExB8VRlEgGFlLWsDQWn1vceyrwtvd8yKuoCb
 ZoW43eSI+UULOUG7LuQQE7FnZoWZy30bsV3hqjv8=
From: Will Deacon <will@kernel.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 1/8] iommu/io-pgtable-arm: Rationalise TTBRn handling
Date: Fri, 10 Jan 2020 15:28:45 +0000
Message-Id: <20200110152852.24259-2-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200110152852.24259-1-will@kernel.org>
References: <20200110152852.24259-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_072859_251859_3ADA3DAD 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Will Deacon <will@kernel.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 kernel-team@android.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

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

Tested-by: Jordan Crouse <jcrouse@codeaurora.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[will: Keep v7s non-coherent mappings explicitly outer-shareable]
Signed-off-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/arm-smmu-v3.c        |  2 +-
 drivers/iommu/arm-smmu.c           |  9 ++++-----
 drivers/iommu/io-pgtable-arm-v7s.c | 17 ++++++++---------
 drivers/iommu/io-pgtable-arm.c     |  5 ++---
 drivers/iommu/ipmmu-vmsa.c         |  2 +-
 drivers/iommu/msm_iommu.c          |  4 ++--
 drivers/iommu/mtk_iommu.c          |  4 ++--
 drivers/iommu/qcom_iommu.c         |  3 +--
 include/linux/io-pgtable.h         |  4 ++--
 9 files changed, 23 insertions(+), 27 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index aa7e53023585..cf2ae065a6c2 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2166,7 +2166,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	}
 
 	cfg->cd.asid	= (u16)asid;
-	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
+	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
 	return 0;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 46b87740d708..72640e045268 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -553,13 +553,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
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
index 7c3bd2c3cdca..714cb406b0a8 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -822,15 +822,14 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
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
+	cfg->arm_v7s_cfg.ttbr = virt_to_phys(data->pgd) |
+				ARM_V7S_TTBR_S | ARM_V7S_TTBR_NOS |
+				(cfg->coherent_walk ?
+				 (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_WBWA) |
+				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_WBWA)) :
+				 (ARM_V7S_TTBR_IRGN_ATTR(ARM_V7S_RGN_NC) |
+				  ARM_V7S_TTBR_ORGN_ATTR(ARM_V7S_RGN_NC)));
 	return &data->iop;
 
 out_free_data:
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index bdf47f745268..7b422b9fe05b 100644
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
index d02edd2751f3..ecb3f9464dd5 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -374,7 +374,7 @@ static void ipmmu_domain_setup_context(struct ipmmu_vmsa_domain *domain)
 	u32 tmp;
 
 	/* TTBR0 */
-	ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr[0];
+	ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr;
 	ipmmu_ctx_write_root(domain, IMTTLBR0, ttbr);
 	ipmmu_ctx_write_root(domain, IMTTUBR0, ttbr >> 32);
 
diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 93f14bca26ee..94a6df1bddd6 100644
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
index 6fc1f5ecf91e..95945f467c03 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -367,7 +367,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 	/* Update the pgtable base address register of the M4U HW */
 	if (!data->m4u_dom) {
 		data->m4u_dom = dom;
-		writel(dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+		writel(dom->cfg.arm_v7s_cfg.ttbr & MMU_PT_ADDR_MASK,
 		       data->base + REG_MMU_PT_BASE_ADDR);
 	}
 
@@ -765,7 +765,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	writel_relaxed(reg->ivrp_paddr, base + REG_MMU_IVRP_PADDR);
 	writel_relaxed(reg->vld_pa_rng, base + REG_MMU_VLD_PA_RNG);
 	if (m4u_dom)
-		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr & MMU_PT_ADDR_MASK,
 		       base + REG_MMU_PT_BASE_ADDR);
 	return 0;
 }
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index 52f38292df5b..c200bc066257 100644
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
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
