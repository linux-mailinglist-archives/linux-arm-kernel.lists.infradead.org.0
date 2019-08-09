Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42161880E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5PM7xHNGBd7m53iu1zVFZ21MbGmtZe135aq1zXaflI=; b=BzANL1hXrRJsr/
	srOWAF872AykAmWtIVfFZ21CUozAOEw+9koYQeFIqaGRAiXBCg/3CNptU+vdLf2YU6AP/oQqVgvaj
	M+dcL3v1DJkfvyHXP3SFMZ69XEwbsYfGIyIXpga4QxXH5OCFTq6XwTZMCH08C2o9Wo8g50kfzHVvr
	TOLmALYmXaSYJILjkfiBmajyp3T2Szihfn8Xqwa8shXtDIc6jUMZpW+SIOW9+O1UDhrDzQ5qTm+JZ
	u2e/Ml9lO3oPnMVY5LAPfx4v8xRH3BMc22twBXDetoa1BafUYGIJeQsbqCubVREqDRFBa2B/f2EJv
	JTxSPhK9c5yEqHg1uCHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8OI-000277-HO; Fri, 09 Aug 2019 17:09:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NI-00012k-Ff
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C6391688;
 Fri,  9 Aug 2019 10:08:20 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 124E63F575;
 Fri,  9 Aug 2019 10:08:18 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 05/15] iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
Date: Fri,  9 Aug 2019 18:07:42 +0100
Message-Id: <33a49ca158509c95d50b0d3f9cba03bba2facdf3.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100820_669531_37457F21 
X-CRM114-Status: GOOD (  15.73  )
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

Since we now use separate iommu_gather_ops for stage 1 and stage 2
contexts, we may as well divide up the monolithic callback into its
respective stage 1 and stage 2 parts.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 66 ++++++++++++++++++++++------------------
 1 file changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 463bc8d98adb..a681e000e704 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -490,46 +490,54 @@ static void arm_smmu_tlb_inv_context_s2(void *cookie)
 	arm_smmu_tlb_sync_global(smmu);
 }
 
-static void arm_smmu_tlb_inv_range_nosync(unsigned long iova, size_t size,
-					  size_t granule, bool leaf, void *cookie)
+static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
+				      size_t granule, bool leaf, void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
-	bool stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
-	void __iomem *reg = ARM_SMMU_CB(smmu_domain->smmu, cfg->cbndx);
+	void __iomem *reg = ARM_SMMU_CB(smmu, cfg->cbndx);
 
-	if (smmu_domain->smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
+	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
 		wmb();
 
-	if (stage1) {
-		reg += leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;
+	reg += leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;
 
-		if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
-			iova &= ~12UL;
-			iova |= cfg->asid;
-			do {
-				writel_relaxed(iova, reg);
-				iova += granule;
-			} while (size -= granule);
-		} else {
-			iova >>= 12;
-			iova |= (u64)cfg->asid << 48;
-			do {
-				writeq_relaxed(iova, reg);
-				iova += granule >> 12;
-			} while (size -= granule);
-		}
-	} else {
-		reg += leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L :
-			      ARM_SMMU_CB_S2_TLBIIPAS2;
-		iova >>= 12;
+	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
+		iova &= ~12UL;
+		iova |= cfg->asid;
 		do {
-			smmu_write_atomic_lq(iova, reg);
+			writel_relaxed(iova, reg);
+			iova += granule;
+		} while (size -= granule);
+	} else {
+		iova >>= 12;
+		iova |= (u64)cfg->asid << 48;
+		do {
+			writeq_relaxed(iova, reg);
 			iova += granule >> 12;
 		} while (size -= granule);
 	}
 }
 
+static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
+				      size_t granule, bool leaf, void *cookie)
+{
+	struct arm_smmu_domain *smmu_domain = cookie;
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
+	void __iomem *reg = ARM_SMMU_CB(smmu, smmu_domain->cfg.cbndx);
+
+	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
+		wmb();
+
+	reg += leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L : ARM_SMMU_CB_S2_TLBIIPAS2;
+	iova >>= 12;
+	do {
+		smmu_write_atomic_lq(iova, reg);
+		iova += granule >> 12;
+	} while (size -= granule);
+}
+
 /*
  * On MMU-401 at least, the cost of firing off multiple TLBIVMIDs appears
  * almost negligible, but the benefit of getting the first one in as far ahead
@@ -550,13 +558,13 @@ static void arm_smmu_tlb_inv_vmid_nosync(unsigned long iova, size_t size,
 
 static const struct iommu_gather_ops arm_smmu_s1_tlb_ops = {
 	.tlb_flush_all	= arm_smmu_tlb_inv_context_s1,
-	.tlb_add_flush	= arm_smmu_tlb_inv_range_nosync,
+	.tlb_add_flush	= arm_smmu_tlb_inv_range_s1,
 	.tlb_sync	= arm_smmu_tlb_sync_context,
 };
 
 static const struct iommu_gather_ops arm_smmu_s2_tlb_ops_v2 = {
 	.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
-	.tlb_add_flush	= arm_smmu_tlb_inv_range_nosync,
+	.tlb_add_flush	= arm_smmu_tlb_inv_range_s2,
 	.tlb_sync	= arm_smmu_tlb_sync_context,
 };
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
