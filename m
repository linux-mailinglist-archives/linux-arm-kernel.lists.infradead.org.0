Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C4E8F3B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbzWvQC6FC4iHjJyRIbORZx/NCpUVMLg/Ylq/ZdouEY=; b=bJZbuWedk0AoMp
	jBN3hUgsBoBNTyPTJrdi3j26fnZf0AimfV+mVoS9en550IqdW2W5bjNqWMYNWr8lLi89a9r88RLT1
	ttj5cOamRY+YzmUcnw/KxfiLah+wTaXOzJQBS4lx66IY9iug3hKC47CG4OOkFSxIh5imCg8LnAJSe
	jwMEWHTZPb3cgkWtTDH/rxyn44DyyCf6xpjIP7J8XI9SZaCnRpD9v6c9dO7T5W77iSsfPGpr47DG/
	/qCUgz82B9fDVPmvKwFrSPnMlJVv6ulJbvVDGEcBO8kneRk+SOugLRFezr0F6ZKqdTOkcgcxnRVSC
	v83tvqmeAxG78PK0yWCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKf5-0006QH-Qw; Thu, 15 Aug 2019 18:39:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdF-0004oJ-K1
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B01D1596;
 Thu, 15 Aug 2019 11:37:53 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EAC843F694;
 Thu, 15 Aug 2019 11:37:51 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 07/17] iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
Date: Thu, 15 Aug 2019 19:37:27 +0100
Message-Id: <087400cdf15908066aa7813ecbdc57254529ad79.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113753_904262_73EBF7E1 
X-CRM114-Status: GOOD (  16.43  )
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

Since we now use separate iommu_gather_ops for stage 1 and stage 2
contexts, we may as well divide up the monolithic callback into its
respective stage 1 and stage 2 parts.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 66 ++++++++++++++++++++++------------------
 1 file changed, 37 insertions(+), 29 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 19126230c780..5b12e96d7878 100644
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
-			iova = (iova >> 12) << 12;
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
+		iova = (iova >> 12) << 12;
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
