Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA9EB67EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 18:19:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QChRqc6X6IBFmz0cxLWfVV3ZKhgIHeqSpVUhkJvITeY=; b=O5LInOIrR4OIer
	6QgoFVv5VnKeJSjHlkSK/sloezymaMGQ835RPQFLVvhwpCF0Ck9ff07sz9Qx2p0inI/GL1Ah1j/L2
	Zm8+ImlGnovgbTbdZV6RMn70IdfvyKOpHziQyHzn+f2kYfU1XmYH8bgO9BARWbTcu8kdRFvqryfpP
	61QACsZ3RaNTFSN/skJDj2P5VUlN/qrkoU1YP2pxlHCZ38/H1pq77w9PjIgGTJJJ7gWJzKpUZQnNU
	fTpgIL92bbEoWifYZ38avatJjQLk2Yf7GFn687ImSWRYuNz2dIgycW6RFlynTZf8fTXcN6WEclTGv
	5nvTDhXmTkbSIop5yttw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAcfn-0005eu-Ll; Wed, 18 Sep 2019 16:19:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAcea-0004h3-Gk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 16:18:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCA731596;
 Wed, 18 Sep 2019 09:18:02 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F05893F59C;
 Wed, 18 Sep 2019 09:18:01 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 3/4] iommu/arm-smmu: Move .tlb_sync method to implementation
Date: Wed, 18 Sep 2019 17:17:50 +0100
Message-Id: <0cb3380f9a6d60b3301acf977fd4455208c9035b.1568820087.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568820087.git.robin.murphy@arm.com>
References: <cover.1568820087.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_091804_643355_DD84B36D 
X-CRM114-Status: GOOD (  15.64  )
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

With the .tlb_sync interface no longer exposed directly to io-pgtable,
strip away the remains of that abstraction layer. Retain the callback
in spirit, though, by transforming it into an implementation override
for the low-level sync routine itself, for which we will have at least
one user.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 33 +++++++++++++++------------------
 drivers/iommu/arm-smmu.h |  3 ++-
 2 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index b5b4cd4cae19..cc3b7517458d 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -244,6 +244,9 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
 	unsigned int spin_cnt, delay;
 	u32 reg;
 
+	if (smmu->impl && unlikely(smmu->impl->tlb_sync))
+		return smmu->impl->tlb_sync(smmu, page, sync, status);
+
 	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
 	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
 		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
@@ -268,9 +271,8 @@ static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
 	spin_unlock_irqrestore(&smmu->global_sync_lock, flags);
 }
 
-static void arm_smmu_tlb_sync_context(void *cookie)
+static void arm_smmu_tlb_sync_context(struct arm_smmu_domain *smmu_domain)
 {
-	struct arm_smmu_domain *smmu_domain = cookie;
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	unsigned long flags;
 
@@ -280,13 +282,6 @@ static void arm_smmu_tlb_sync_context(void *cookie)
 	spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
 }
 
-static void arm_smmu_tlb_sync_vmid(void *cookie)
-{
-	struct arm_smmu_domain *smmu_domain = cookie;
-
-	arm_smmu_tlb_sync_global(smmu_domain->smmu);
-}
-
 static void arm_smmu_tlb_inv_context_s1(void *cookie)
 {
 	struct arm_smmu_domain *smmu_domain = cookie;
@@ -297,7 +292,7 @@ static void arm_smmu_tlb_inv_context_s1(void *cookie)
 	wmb();
 	arm_smmu_cb_write(smmu_domain->smmu, smmu_domain->cfg.cbndx,
 			  ARM_SMMU_CB_S1_TLBIASID, smmu_domain->cfg.asid);
-	arm_smmu_tlb_sync_context(cookie);
+	arm_smmu_tlb_sync_context(smmu_domain);
 }
 
 static void arm_smmu_tlb_inv_context_s2(void *cookie)
@@ -439,7 +434,6 @@ static const struct arm_smmu_flush_ops arm_smmu_s1_tlb_ops = {
 		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s1,
 		.tlb_add_page	= arm_smmu_tlb_add_page_s1,
 	},
-	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
 static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
@@ -449,7 +443,6 @@ static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v2 = {
 		.tlb_flush_leaf	= arm_smmu_tlb_inv_leaf_s2,
 		.tlb_add_page	= arm_smmu_tlb_add_page_s2,
 	},
-	.tlb_sync		= arm_smmu_tlb_sync_context,
 };
 
 static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
@@ -459,7 +452,6 @@ static const struct arm_smmu_flush_ops arm_smmu_s2_tlb_ops_v1 = {
 		.tlb_flush_leaf	= arm_smmu_tlb_inv_any_s2_v1,
 		.tlb_add_page	= arm_smmu_tlb_add_page_s2_v1,
 	},
-	.tlb_sync		= arm_smmu_tlb_sync_vmid,
 };
 
 static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
@@ -1229,11 +1221,16 @@ static void arm_smmu_iotlb_sync(struct iommu_domain *domain,
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_device *smmu = smmu_domain->smmu;
 
-	if (smmu_domain->flush_ops) {
-		arm_smmu_rpm_get(smmu);
-		smmu_domain->flush_ops->tlb_sync(smmu_domain);
-		arm_smmu_rpm_put(smmu);
-	}
+	if (!smmu)
+		return;
+
+	arm_smmu_rpm_get(smmu);
+	if (smmu->version == ARM_SMMU_V2 ||
+	    smmu_domain->stage == ARM_SMMU_DOMAIN_S1)
+		arm_smmu_tlb_sync_context(smmu_domain);
+	else
+		arm_smmu_tlb_sync_global(smmu);
+	arm_smmu_rpm_put(smmu);
 }
 
 static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 6edd35ca983c..5032102f05b7 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -306,7 +306,6 @@ enum arm_smmu_domain_stage {
 
 struct arm_smmu_flush_ops {
 	struct iommu_flush_ops		tlb;
-	void (*tlb_sync)(void *cookie);
 };
 
 struct arm_smmu_domain {
@@ -333,6 +332,8 @@ struct arm_smmu_impl {
 	int (*cfg_probe)(struct arm_smmu_device *smmu);
 	int (*reset)(struct arm_smmu_device *smmu);
 	int (*init_context)(struct arm_smmu_domain *smmu_domain);
+	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
+			 int status);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
