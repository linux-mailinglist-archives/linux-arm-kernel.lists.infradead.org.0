Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CAAB67E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCQUO6qzgsXu2ovq68YxGXcdl8mP9DFYl6bODCWADc8=; b=k4CIntEx88FxVU
	IX/xCUzEJXuz5PoqvfKCjP1q5is1Jwli9f/Q22u3SgvEXvb5Ofn65KulKJ8OQr7vxjRLXJI0z1zOl
	4WCmCxgz3Iv5ZbomAMctJylfyqLn89P1q9zZx9/lcSYc++WGfOdonTXkCKTW/kDjxgVPAaHYw+dMJ
	bPZX6rN4ohb7OqF8emDnqyfs4zF2rfw7z3x6Wzfh02G/CwQrKswQNEZP7qFNezPBhdX1IRib+n5be
	B85c7tucy7DvO+Y54fmOvuLuDCJtRAyMlz7QYIP+LhoOZnhABR03ZHTs0EUCDYQPqbTV4YGPF7lLr
	+EA9Oud0fPpRyPMi65eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcfH-00057u-TD; Wed, 18 Sep 2019 16:18:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAceZ-0004g2-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:18:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BBCC71576;
 Wed, 18 Sep 2019 09:18:01 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E7C043F59C;
 Wed, 18 Sep 2019 09:18:00 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 2/4] iommu/arm-smmu: Remove "leaf" indirection
Date: Wed, 18 Sep 2019 17:17:49 +0100
Message-Id: <4d401834469adc87283a173143fa5c6ede2a960a.1568820087.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568820087.git.robin.murphy@arm.com>
References: <cover.1568820087.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_091803_964685_80D8D969 
X-CRM114-Status: GOOD (  14.56  )
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

Now that the "leaf" flag is no longer part of an external interface,
there's no need to use it to infer a register offset at runtime when
we can just as easily encode the offset directly in its place.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 29 ++++++++++++++++-------------
 1 file changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index f2b81b1ce224..b5b4cd4cae19 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -312,18 +312,16 @@ static void arm_smmu_tlb_inv_context_s2(void *cookie)
 }
 
 static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
-				      size_t granule, void *cookie, bool leaf)
+				      size_t granule, void *cookie, int reg)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
-	int reg, idx = cfg->cbndx;
+	int idx = cfg->cbndx;
 
 	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
 		wmb();
 
-	reg = leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;
-
 	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
 		iova = (iova >> 12) << 12;
 		iova |= cfg->asid;
@@ -342,16 +340,15 @@ static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
 }
 
 static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
-				      size_t granule, void *cookie, bool leaf)
+				      size_t granule, void *cookie, int reg)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
-	int reg, idx = smmu_domain->cfg.cbndx;
+	int idx = smmu_domain->cfg.cbndx;
 
 	if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
 		wmb();
 
-	reg = leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L : ARM_SMMU_CB_S2_TLBIIPAS2;
 	iova >>= 12;
 	do {
 		if (smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64)
@@ -365,14 +362,16 @@ static void arm_smmu_tlb_inv_range_s2(unsigned long iova, size_t size,
 static void arm_smmu_tlb_inv_walk_s1(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
-	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie, false);
+	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie,
+				  ARM_SMMU_CB_S1_TLBIVA);
 	arm_smmu_tlb_sync_context(cookie);
 }
 
 static void arm_smmu_tlb_inv_leaf_s1(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
-	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie, true);
+	arm_smmu_tlb_inv_range_s1(iova, size, granule, cookie,
+				  ARM_SMMU_CB_S1_TLBIVAL);
 	arm_smmu_tlb_sync_context(cookie);
 }
 
@@ -380,20 +379,23 @@ static void arm_smmu_tlb_add_page_s1(struct iommu_iotlb_gather *gather,
 				     unsigned long iova, size_t granule,
 				     void *cookie)
 {
-	arm_smmu_tlb_inv_range_s1(iova, granule, granule, cookie, true);
+	arm_smmu_tlb_inv_range_s1(iova, granule, granule, cookie,
+				  ARM_SMMU_CB_S1_TLBIVAL);
 }
 
 static void arm_smmu_tlb_inv_walk_s2(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
-	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie, false);
+	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie,
+				  ARM_SMMU_CB_S2_TLBIIPAS2);
 	arm_smmu_tlb_sync_context(cookie);
 }
 
 static void arm_smmu_tlb_inv_leaf_s2(unsigned long iova, size_t size,
 				     size_t granule, void *cookie)
 {
-	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie, true);
+	arm_smmu_tlb_inv_range_s2(iova, size, granule, cookie,
+				  ARM_SMMU_CB_S2_TLBIIPAS2L);
 	arm_smmu_tlb_sync_context(cookie);
 }
 
@@ -401,7 +403,8 @@ static void arm_smmu_tlb_add_page_s2(struct iommu_iotlb_gather *gather,
 				     unsigned long iova, size_t granule,
 				     void *cookie)
 {
-	arm_smmu_tlb_inv_range_s2(iova, granule, granule, cookie, true);
+	arm_smmu_tlb_inv_range_s2(iova, granule, granule, cookie,
+				  ARM_SMMU_CB_S2_TLBIIPAS2L);
 }
 
 static void arm_smmu_tlb_inv_any_s2_v1(unsigned long iova, size_t size,
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
