Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB9FE537F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dh+9HmbQa5kZf86S18ZTuXUg3tBm34OtZwcv/GIdc5s=; b=emLGa/SG15esLx
	cMBlmbJWcw0KwcUE3HJ5AbJOq3kbTraR/NFc5mhBXze5ieWPx0OT/ObvSpk881eCfth4ERFl/YDgE
	Dwy6XVb/EbZPYWFXefMkumA/pthc0VLE69QJV7W77JfPU8w7y2+/I5kpgdKBJJXSgcMc2BEgalA6A
	RjNOp6j/OLSQ6w4NP/XEqoAZuhV2cKr769/zwkkXMkM/1kA44YIeo0RPbgzOY1+Z/p25HoeQSV35j
	iSjZZ+HoQ98t+myk3m24rbUPu7JXOgdRDwOCmVzBKZV0kRCRvjxfw5P1YJvCSP3hfhaVQzfpHi2Ir
	pz1nPcCPfAj1bVOhZiWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO42z-0006re-9o; Fri, 25 Oct 2019 18:10:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO413-0003wt-VF
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:08:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F749492;
 Fri, 25 Oct 2019 11:08:49 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DCE923F6C4;
 Fri, 25 Oct 2019 11:08:48 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 07/10] iommu/io-pgtable-arm: Rationalise MAIR handling
Date: Fri, 25 Oct 2019 19:08:36 +0100
Message-Id: <c6bee9e6de5e7f4aa2293ee5385ffa2dd95600d3.1572024120.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1572024119.git.robin.murphy@arm.com>
References: <cover.1572024119.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_110850_133208_7A9B02BC 
X-CRM114-Status: GOOD (  16.86  )
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

Between VMSAv8-64 and the various 32-bit formats, there is either one
64-bit MAIR or a pair of 32-bit MAIR0/MAIR1 or NMRR/PMRR registers.
As such, keeping two 64-bit values in io_pgtable_cfg has always been
overkill.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-v3.c    | 2 +-
 drivers/iommu/arm-smmu.c       | 4 ++--
 drivers/iommu/io-pgtable-arm.c | 3 +--
 drivers/iommu/ipmmu-vmsa.c     | 2 +-
 drivers/iommu/qcom_iommu.c     | 4 ++--
 include/linux/io-pgtable.h     | 2 +-
 6 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 8da93e730d6f..3f20e548f1ec 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -2172,7 +2172,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
 	cfg->cd.asid	= (u16)asid;
 	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
 	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
-	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
+	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
 	return 0;
 
 out_free_asid:
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 080af0326816..2bc3e93b11e6 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -552,8 +552,8 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->mair[0] = pgtbl_cfg->arm_v7s_cfg.prrr;
 			cb->mair[1] = pgtbl_cfg->arm_v7s_cfg.nmrr;
 		} else {
-			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
-			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair[1];
+			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
+			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
 		}
 	}
 }
diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 15b4927ce36b..1795df8f7a51 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -861,8 +861,7 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
 	      (ARM_LPAE_MAIR_ATTR_INC_OWBRWA
 	       << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE));
 
-	cfg->arm_lpae_s1_cfg.mair[0] = reg;
-	cfg->arm_lpae_s1_cfg.mair[1] = 0;
+	cfg->arm_lpae_s1_cfg.mair = reg;
 
 	/* Looking good; allocate a pgd */
 	data->pgd = __arm_lpae_alloc_pages(ARM_LPAE_PGD_SIZE(data),
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index 9da8309f7170..e4da6efbda49 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -438,7 +438,7 @@ static void ipmmu_domain_setup_context(struct ipmmu_vmsa_domain *domain)
 
 	/* MAIR0 */
 	ipmmu_ctx_write_root(domain, IMMAIR0,
-			     domain->cfg.arm_lpae_s1_cfg.mair[0]);
+			     domain->cfg.arm_lpae_s1_cfg.mair);
 
 	/* IMBUSCR */
 	if (domain->mmu->features->setup_imbuscr)
diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
index c31e7bc4ccbe..66e9b40e9275 100644
--- a/drivers/iommu/qcom_iommu.c
+++ b/drivers/iommu/qcom_iommu.c
@@ -284,9 +284,9 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
 
 		/* MAIRs (stage-1 only) */
 		iommu_writel(ctx, ARM_SMMU_CB_S1_MAIR0,
-				pgtbl_cfg.arm_lpae_s1_cfg.mair[0]);
+				pgtbl_cfg.arm_lpae_s1_cfg.mair);
 		iommu_writel(ctx, ARM_SMMU_CB_S1_MAIR1,
-				pgtbl_cfg.arm_lpae_s1_cfg.mair[1]);
+				pgtbl_cfg.arm_lpae_s1_cfg.mair >> 32);
 
 		/* SCTLR */
 		reg = SCTLR_CFIE | SCTLR_CFRE | SCTLR_AFE | SCTLR_TRE |
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index ec7a13405f10..ee21eedafe98 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -102,7 +102,7 @@ struct io_pgtable_cfg {
 		struct {
 			u64	ttbr[2];
 			u64	tcr;
-			u64	mair[2];
+			u64	mair;
 		} arm_lpae_s1_cfg;
 
 		struct {
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
