Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A28F3BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCyLMfqSAg7T8p75oDRYJgsEXI+0p36FpkDvgiDJ6z8=; b=IzIimyyEmbVcqf
	LFudiYWJYZuddZ9SjSz670mfaegWgY3oaTPYonU6h2C35qt3I/CHGJmiMQWhtgEKeFTA6bRUlOsdH
	nslfJo5tpJcCOcvJi8lzv0mPHHN68BarbtsPYHoI9Lc9aUovioDrsTEK1FfvNDrQ77e3ITxAYz27c
	epZYrW4CJukqd3aryZtes2cQcm6KchCiI0ULCgg6eO4DYwHwA9BibLLFajSzHs70hz/+CiR+geC7S
	JSkio3x77nLGs8EvaLt7wSurHomTrtaS7c1nd6rNoG97rPwfbulGBBraIADVre5G56DrSne5oC4uc
	hD46yJ3LUoR0aVfZTAWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKh1-00019s-Od; Thu, 15 Aug 2019 18:41:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKdS-00052E-0f
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:38:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD47E1570;
 Thu, 15 Aug 2019 11:38:05 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 695D83F694;
 Thu, 15 Aug 2019 11:38:04 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH v2 15/17] iommu/arm-smmu: Add configuration implementation hook
Date: Thu, 15 Aug 2019 19:37:35 +0100
Message-Id: <73f4b0bf9cf6478917c618011363b6cf06566a65.1565892337.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
References: <cover.1565892337.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_113806_198878_6C5467B1 
X-CRM114-Status: GOOD (  18.56  )
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

Probing the ID registers and setting up the SMMU configuration is an
area where overrides and workarounds may well be needed. Indeed, the
Cavium workaround detection lives there at the moment, so let's break
that out.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 34 ++++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 17 +++--------------
 drivers/iommu/arm-smmu.h      |  1 +
 3 files changed, 38 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 0657c85580cb..696417908793 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -47,8 +47,42 @@ const struct arm_smmu_impl calxeda_impl = {
 };
 
 
+static int cavium_cfg_probe(struct arm_smmu_device *smmu)
+{
+	static atomic_t context_count = ATOMIC_INIT(0);
+	/*
+	 * Cavium CN88xx erratum #27704.
+	 * Ensure ASID and VMID allocation is unique across all SMMUs in
+	 * the system.
+	 */
+	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
+						   &context_count);
+	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
+
+	return 0;
+}
+
+const struct arm_smmu_impl cavium_impl = {
+	.cfg_probe = cavium_cfg_probe,
+};
+
+
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 {
+	/*
+	 * We will inevitably have to combine model-specific implementation
+	 * quirks with platform-specific integration quirks, but everything
+	 * we currently support happens to work out as straightforward
+	 * mutually-exclusive assignments.
+	 */
+	switch (smmu->model) {
+	case CAVIUM_SMMUV2:
+		smmu->impl = &cavium_impl;
+		break;
+	default:
+		break;
+	}
+
 	if (of_property_read_bool(smmu->dev->of_node,
 				  "calxeda,smmu-secure-config-access"))
 		smmu->impl = &calxeda_impl;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 432d781f05f3..362b6b5a28ee 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -155,8 +155,6 @@ struct arm_smmu_domain {
 	struct iommu_domain		domain;
 };
 
-static atomic_t cavium_smmu_context_count = ATOMIC_INIT(0);
-
 static bool using_legacy_binding, using_generic_binding;
 
 static inline int arm_smmu_rpm_get(struct arm_smmu_device *smmu)
@@ -1804,18 +1802,6 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	}
 	dev_notice(smmu->dev, "\t%u context banks (%u stage-2 only)\n",
 		   smmu->num_context_banks, smmu->num_s2_context_banks);
-	/*
-	 * Cavium CN88xx erratum #27704.
-	 * Ensure ASID and VMID allocation is unique across all SMMUs in
-	 * the system.
-	 */
-	if (smmu->model == CAVIUM_SMMUV2) {
-		smmu->cavium_id_base =
-			atomic_add_return(smmu->num_context_banks,
-					  &cavium_smmu_context_count);
-		smmu->cavium_id_base -= smmu->num_context_banks;
-		dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
-	}
 	smmu->cbs = devm_kcalloc(smmu->dev, smmu->num_context_banks,
 				 sizeof(*smmu->cbs), GFP_KERNEL);
 	if (!smmu->cbs)
@@ -1884,6 +1870,9 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 		dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
 			   smmu->ipa_size, smmu->pa_size);
 
+	if (smmu->impl && smmu->impl->cfg_probe)
+		return smmu->impl->cfg_probe(smmu);
+
 	return 0;
 }
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index d4fd29d70705..f4e90f33fce2 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -287,6 +287,7 @@ struct arm_smmu_impl {
 	u64 (*read_reg64)(struct arm_smmu_device *smmu, int page, int offset);
 	void (*write_reg64)(struct arm_smmu_device *smmu, int page, int offset,
 			    u64 val);
+	int (*cfg_probe)(struct arm_smmu_device *smmu);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
