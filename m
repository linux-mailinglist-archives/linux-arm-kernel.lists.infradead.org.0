Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 192D7B67E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mb9AlonaDY81iq/ioCwnIB/NBE0kMLlJ+7EbgkPNeok=; b=qAWffO3WgF/11A
	9VftK+MjAQk4DRMJSuR3GowTCygbl/2veZtvO3BmkedeLzXsLuwD0ityviCjMHw6+AN6BrNdUNVgh
	oZ2V/gGqdDoj9+TmJRKAeiAIw/g14orojY6BgtkPeXy0ndgjEuVui2iY+W6R4Uc2Hk5G2Yw2r2tFS
	Toy6w66SoO+jCHYQ8Z65YqnF2O9MmrRPYnV+HueAjdW/GTQspjmS9/Ajyk0nd8eYUxnqDVAoaA+Az
	tqiKCes3QGSFOMg8ZwGrjWHiER2PuvId4+R4+ofVGCAbonBDT4aC0izd1xFVhYaHE2EHYYeGegBh6
	2JmomSZLWPhFkSjktBmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcfZ-0005Lv-E9; Wed, 18 Sep 2019 16:19:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcea-0004gi-51
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:18:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD13B15BF;
 Wed, 18 Sep 2019 09:18:03 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F102C3F59C;
 Wed, 18 Sep 2019 09:18:02 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 4/4] iommu/arm-smmu: Remove arm_smmu_flush_ops
Date: Wed, 18 Sep 2019 17:17:51 +0100
Message-Id: <ca7d7a393d3926b63e40dd2750478cf467887c31.1568820087.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568820087.git.robin.murphy@arm.com>
References: <cover.1568820087.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_091804_278997_44DDF499 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: iommu@lists.linux-foundation.org, joro@8bytes.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now it's just an empty wrapper.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 40 +++++++++++++++++-----------------------
 drivers/iommu/arm-smmu.h |  6 +-----
 2 files changed, 18 insertions(+), 28 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index cc3b7517458d..68e8d9d1902b 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -427,31 +427,25 @@ static void arm_smmu_tlb_add_page_s2_v1(struct iommu_iotlb_gather *gather,
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
 }
 
-static const struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
-	.tlb = {
-		.tlb_flush_all	= arm_smmu_tlb_inv_context_s1,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s1,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s1,
-		.tlb_add_page	= arm_smmu_tlb_add_page_s1,
-	},
+static const struct iommu_flush_ops arm_smmu_s1_tlb_ops = {
+	.tlb_flush_all	= arm_smmu_tlb_inv_context_s1,
+	.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s1,
+	.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s1,
+	.tlb_add_page	= arm_smmu_tlb_add_page_s1,
 };
 
-static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
-	.tlb = {
-		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s2,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s2,
-		.tlb_add_page	= arm_smmu_tlb_add_page_s2,
-	},
+static const struct iommu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
+	.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
+	.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s2,
+	.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s2,
+	.tlb_add_page	= arm_smmu_tlb_add_page_s2,
 };
 
-static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
-	.tlb = {
-		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_any_s2_v1,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_any_s2_v1,
-		.tlb_add_page	= arm_smmu_tlb_add_page_s2_v1,
-	},
+static const struct iommu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
+	.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
+	.tlb_flush_walk	= arm_smmu_tlb_inv_any_s2_v1,
+	.tlb_flush_leaf	= arm_smmu_tlb_inv_any_s2_v1,
+	.tlb_add_page	= arm_smmu_tlb_add_page_s2_v1,
 };
 
 static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
@@ -781,7 +775,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		.ias		= ias,
 		.oas		= oas,
 		.coherent_walk	= smmu->features & ARM_SMMU_FEAT_COHERENT_WALK,
-		.tlb		= &smmu_domain->flush_ops->tlb,
+		.tlb		= smmu_domain->flush_ops,
 		.iommu_dev	= smmu->dev,
 	};
 
@@ -1210,7 +1204,7 @@ static void arm_smmu_flush_iotlb_all(struct iommu_domain *domain)
 
 	if (smmu_domain->flush_ops) {
 		arm_smmu_rpm_get(smmu);
-		smmu_domain->flush_ops->tlb.tlb_flush_all(smmu_domain);
+		smmu_domain->flush_ops->tlb_flush_all(smmu_domain);
 		arm_smmu_rpm_put(smmu);
 	}
 }
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 5032102f05b7..ba0f05952dd9 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -304,14 +304,10 @@ enum arm_smmu_domain_stage {
 	ARM_SMMU_DOMAIN_BYPASS,
 };
 
-struct arm_smmu_flush_ops {
-	struct iommu_flush_ops		tlb;
-};
-
 struct arm_smmu_domain {
 	struct arm_smmu_device		*smmu;
 	struct io_pgtable_ops		*pgtbl_ops;
-	const struct arm_smmu_flush_ops	*flush_ops;
+	const struct iommu_flush_ops	*flush_ops;
 	struct arm_smmu_cfg		cfg;
 	enum arm_smmu_domain_stage	stage;
 	bool				non_strict;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
