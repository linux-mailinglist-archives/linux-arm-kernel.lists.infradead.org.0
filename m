Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A0AB67E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwi15/1lzGemJ8aS0jxRTTqm6Fm5qtIF57nlymtNKc0=; b=SXhF1mB/s5bc9j
	yRQx0CKZsLUL/Owg8Imvsy0OnQdP6fxg7Qtkt5foqzip1/2K7Dt7ZAdlgWGCxDc/KMwanmLKUY7SB
	m0yr1uSPWNLRw+0E85W0JM5fByHzVSy4y5Hq8gRibO41K+wOdumsAx6tZJ4EqPUlFHFWX8TX3PmIi
	auidK9/WzyxxfoAK1Mj+g/OdjgHKHkwUWH4YOJMJumoWnXOdIKWn/1se+Bkr+r+pBAyUx++2LpwxM
	STn9XopdSnshCgFVTza+RvS90kyiKNWp0ChEvaO4gzlkg/NgyweAzx1yHueACVED1mQOMFMgeoCCo
	/tUkxbZksRn90O/KFcKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcf2-0004r3-Ut; Wed, 18 Sep 2019 16:18:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAceY-0004g0-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:18:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B33F3142F;
 Wed, 18 Sep 2019 09:18:00 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E696C3F59C;
 Wed, 18 Sep 2019 09:17:59 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 1/4] iommu/arm-smmu: Remove .tlb_inv_range indirection
Date: Wed, 18 Sep 2019 17:17:48 +0100
Message-Id: <b53e35945c72bfeb6aab6b7bc8993ebff70c91cb.1568820087.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568820087.git.robin.murphy@arm.com>
References: <cover.1568820087.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_091803_018638_D98F0391 
X-CRM114-Status: GOOD (  15.32  )
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

Fill in 'native' iommu_flush_ops callbacks for all the
arm_smmu_flush_ops variants, and clear up the remains of the previous
.tlb_inv_range abstraction.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 110 ++++++++++++++++++++++-----------------
 drivers/iommu/arm-smmu.h |   2 -
 2 files changed, 63 insertions(+), 49 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index c3ef0cc8f764..f2b81b1ce224 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -312,7 +312,7 @@ static void arm_smmu_tlb_inv_context_s2(void *cookie)
 }
 
 static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
-				      size_t granule, bool leaf, void *cookie)
+				      size_t granule, void *cookie, bool leaf)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
@@ -342,7 +342,7 @@ static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
 }
 
 static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
-				      size_t granule, bool leaf, void *cookie)
+				      size_t granule, void *cookie, bool leaf)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
@@ -362,14 +362,63 @@ static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
 	} while (size -= granule);
 }
 
+static void arm_smmu_tlb_inv_walk_s1(unsigned long iova, size_t size,
+				     size_t granule, void *cookie)
+{
+	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie, false);
+	arm_smmu_tlb_sync_context(cookie);
+}
+
+static void arm_smmu_tlb_inv_leaf_s1(unsigned long iova, size_t size,
+				     size_t granule, void *cookie)
+{
+	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie, true);
+	arm_smmu_tlb_sync_context(cookie);
+}
+
+static void arm_smmu_tlb_add_page_s1(struct iommu_iotlb_gather *gather,
+				     unsigned long iova, size_t granule,
+				     void *cookie)
+{
+	arm_smmu_tlb_inv_range_s1(iova, granule, granule, cookie, true);
+}
+
+static void arm_smmu_tlb_inv_walk_s2(unsigned long iova, size_t size,
+				     size_t granule, void *cookie)
+{
+	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie, false);
+	arm_smmu_tlb_sync_context(cookie);
+}
+
+static void arm_smmu_tlb_inv_leaf_s2(unsigned long iova, size_t size,
+				     size_t granule, void *cookie)
+{
+	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie, true);
+	arm_smmu_tlb_sync_context(cookie);
+}
+
+static void arm_smmu_tlb_add_page_s2(struct iommu_iotlb_gather *gather,
+				     unsigned long iova, size_t granule,
+				     void *cookie)
+{
+	arm_smmu_tlb_inv_range_s2(iova, granule, granule, cookie, true);
+}
+
+static void arm_smmu_tlb_inv_any_s2_v1(unsigned long iova, size_t size,
+				       size_t granule, void *cookie)
+{
+	arm_smmu_tlb_inv_context_s2(cookie);
+}
 /*
  * On MMU-401 at least, the cost of firing off multiple TLBIVMIDs appears
  * almost negligible, but the benefit of getting the first one in as far ahead
  * of the sync as possible is significant, hence we don't just make this a
- * no-op and set .tlb_sync to arm_smmu_tlb_inv_context_s2() as you might think.
+ * no-op and call arm_smmu_tlb_inv_context_s2() from .iotlb_sync as you might
+ * think.
  */
-static void arm_smmu_tlb_inv_vmid_nosync(unsigned long iova, size_t size,
-					 size_t granule, bool leaf, void *cookie)
+static void arm_smmu_tlb_add_page_s2_v1(struct iommu_iotlb_gather *gather,
+					unsigned long iova, size_t granule,
+					void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
@@ -380,66 +429,33 @@ static void arm_smmu_tlb_inv_vmid_nosync(unsigned long iova, size_t size,
 	arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
 }
 
-static void arm_smmu_tlb_inv_walk(unsigned long iova, size_t size,
-				  size_t granule, void *cookie)
-{
-	struct arm_smmu_domain *smmu_domain = cookie;
-	const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;
-
-	ops->tlb_inv_range(iova, size, granule, false, cookie);
-	ops->tlb_sync(cookie);
-}
-
-static void arm_smmu_tlb_inv_leaf(unsigned long iova, size_t size,
-				  size_t granule, void *cookie)
-{
-	struct arm_smmu_domain *smmu_domain = cookie;
-	const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;
-
-	ops->tlb_inv_range(iova, size, granule, true, cookie);
-	ops->tlb_sync(cookie);
-}
-
-static void arm_smmu_tlb_add_page(struct iommu_iotlb_gather *gather,
-				  unsigned long iova, size_t granule,
-				  void *cookie)
-{
-	struct arm_smmu_domain *smmu_domain = cookie;
-	const struct arm_smmu_flush_ops *ops = smmu_domain->flush_ops;
-
-	ops->tlb_inv_range(iova, granule, granule, true, cookie);
-}
-
 static const struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s1,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf,
-		.tlb_add_page	= arm_smmu_tlb_add_page,
+		.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s1,
+		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s1,
+		.tlb_add_page	= arm_smmu_tlb_add_page_s1,
 	},
-	.tlb_inv_range		= arm_smmu_tlb_inv_range_s1,
 	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
 static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf,
-		.tlb_add_page	= arm_smmu_tlb_add_page,
+		.tlb_flush_walk	= arm_smmu_tlb_inv_walk_s2,
+		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s2,
+		.tlb_add_page	= arm_smmu_tlb_add_page_s2,
 	},
-	.tlb_inv_range		= arm_smmu_tlb_inv_range_s2,
 	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
 static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
 	.tlb = {
 		.tlb_flush_all	= arm_smmu_tlb_inv_context_s2,
-		.tlb_flush_walk	= arm_smmu_tlb_inv_walk,
-		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf,
-		.tlb_add_page	= arm_smmu_tlb_add_page,
+		.tlb_flush_walk	= arm_smmu_tlb_inv_any_s2_v1,
+		.tlb_flush_leaf	= arm_smmu_tlb_inv_any_s2_v1,
+		.tlb_add_page	= arm_smmu_tlb_add_page_s2_v1,
 	},
-	.tlb_inv_range		= arm_smmu_tlb_inv_vmid_nosync,
 	.tlb_sync		= arm_smmu_tlb_sync_vmid,
 };
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index b19b6cae9b5e..6edd35ca983c 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -306,8 +306,6 @@ enum arm_smmu_domain_stage {
 
 struct arm_smmu_flush_ops {
 	struct iommu_flush_ops		tlb;
-	void (*tlb_inv_range)(unsigned long iova, size_t size, size_t granule,
-			      bool leaf, void *cookie);
 	void (*tlb_sync)(void *cookie);
 };
 
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
