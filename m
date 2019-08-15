Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEDE8F3AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMtugQG/au9D4a5jXtAmmQpcKVWE0izV5NI62FlVzuY=; b=cTnwqY5QohHWv0
	8Ky1cYfK17C+tU0N2BgZQn6NDGjY+n05ODqlSEvmlXP2dbw+77pcegQ1Emj/2bUn6tIYNNfthaEiz
	5JIXX06wvygERqF1lzLKLdrihyMUxJfF1d5Ro+wYxkCNjidRyJMyCStzet/AiX6kilPwK+Aq8/FQW
	II8IBNqptEfkgH6uEe5pesVw2IjO9wgM9rsdTp3lmTeQbNcQj+1ENCLlaAS6SWCj+kCzOg90RIEdp
	Ax8fxR3B2Sd+3HJijC3UHegPpF4YbMTXsvKTzXdx1ZbASY8lcspU7h7rKiibYtHVRLewGpRAFhNtb
	SVS45jhBMeKfaPTxVRyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKes-0006CC-Cr; Thu, 15 Aug 2019 18:39:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdE-0004rN-6b
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:37:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5C90344;
 Thu, 15 Aug 2019 11:37:51 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 629A23F694;
 Thu, 15 Aug 2019 11:37:50 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 06/17] iommu/arm-smmu: Rework cb_base handling
Date: Thu, 15 Aug 2019 19:37:26 +0100
Message-Id: <8856992662ff638e01fa7227cffb73fcff7bc5bb.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113752_357321_5E9F1C26 
X-CRM114-Status: GOOD (  16.29  )
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

To keep register-access quirks manageable, we want to structure things
to avoid needing too many individual overrides. It seems fairly clean to
have a single interface which handles both global and context registers
in terms of the architectural pages, so the first preparatory step is to
rework cb_base into a page number rather than an absolute address.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a877de006d02..19126230c780 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -95,7 +95,7 @@
 #endif
 
 /* Translation context bank */
-#define ARM_SMMU_CB(smmu, n)	((smmu)->cb_base + ((n) << (smmu)->pgshift))
+#define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->numpage + (n)) << (smmu)->pgshift))
 
 #define MSI_IOVA_BASE			0x8000000
 #define MSI_IOVA_LENGTH			0x100000
@@ -168,8 +168,8 @@ struct arm_smmu_device {
 	struct device			*dev;
 
 	void __iomem			*base;
-	void __iomem			*cb_base;
-	unsigned long			pgshift;
+	unsigned int			numpage;
+	unsigned int			pgshift;
 
 #define ARM_SMMU_FEAT_COHERENT_WALK	(1 << 0)
 #define ARM_SMMU_FEAT_STREAM_MATCH	(1 << 1)
@@ -1815,7 +1815,7 @@ static int arm_smmu_id_size_to_bits(int size)
 
 static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 {
-	unsigned long size;
+	unsigned int size;
 	void __iomem *gr0_base = ARM_SMMU_GR0(smmu);
 	u32 id;
 	bool cttw_reg, cttw_fw = smmu->features & ARM_SMMU_FEAT_COHERENT_WALK;
@@ -1899,7 +1899,7 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 			return -ENOMEM;
 
 		dev_notice(smmu->dev,
-			   "\tstream matching with %lu register groups", size);
+			   "\tstream matching with %u register groups", size);
 	}
 	/* s2cr->type == 0 means translation, so initialise explicitly */
 	smmu->s2crs = devm_kmalloc_array(smmu->dev, size, sizeof(*smmu->s2crs),
@@ -1925,11 +1925,12 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 
 	/* Check for size mismatch of SMMU address space from mapped region */
 	size = 1 << (FIELD_GET(ID1_NUMPAGENDXB, id) + 1);
-	size <<= smmu->pgshift;
-	if (smmu->cb_base != gr0_base + size)
+	if (smmu->numpage != 2 * size << smmu->pgshift)
 		dev_warn(smmu->dev,
-			"SMMU address space size (0x%lx) differs from mapped region size (0x%tx)!\n",
-			size * 2, (smmu->cb_base - gr0_base) * 2);
+			"SMMU address space size (0x%x) differs from mapped region size (0x%x)!\n",
+			2 * size << smmu->pgshift, smmu->numpage);
+	/* Now properly encode NUMPAGE to subsequently derive SMMU_CB_BASE */
+	smmu->numpage = size;
 
 	smmu->num_s2_context_banks = FIELD_GET(ID1_NUMS2CB, id);
 	smmu->num_context_banks = FIELD_GET(ID1_NUMCB, id);
@@ -2200,7 +2201,11 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	smmu->base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(smmu->base))
 		return PTR_ERR(smmu->base);
-	smmu->cb_base = smmu->base + resource_size(res) / 2;
+	/*
+	 * The resource size should effectively match the value of SMMU_TOP;
+	 * stash that temporarily until we know PAGESIZE to validate it with.
+	 */
+	smmu->numpage = resource_size(res);
 
 	num_irqs = 0;
 	while ((res = platform_get_resource(pdev, IORESOURCE_IRQ, num_irqs))) {
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
