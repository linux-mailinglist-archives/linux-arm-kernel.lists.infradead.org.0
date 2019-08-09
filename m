Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CD5880F5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvasT0xwu0x2w10y+Vi6Z8b7gx+cbHrMPwria4Qjy5s=; b=o9VjtP5tIxYoIN
	DQuERzTfq1Mm1LHVyhk/50HHCTPSrRR7a0PYSjCV/eeXU27rTHIRlSbgDd5z6hne5u8zTgfSpDkQm
	ilSW3aDf96bTxk9kKWmc2lOVyK0YzCjRX0noOVEuSVcDXorMzNeeRKrdmSskSugfBPuAmnqkRBAv9
	qvSovYETIbBjenyMHbT0gMoepxSa8iCNpamxXt5IxpI41M/QIe11Z+9sIKa5C5z4hCyb3Ni4U43jn
	ymyzdU24VgvbyNjJoJPCn1L0kgHWFSo3G1UXIVXhEH3n0qCWqXeYT+FAAgB1k3xJCouwjU6GRI2gV
	Ahpn08zTHS86AMpOg9mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Pv-00059w-Un; Fri, 09 Aug 2019 17:11:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8NU-00012k-2N
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:08:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF3BA15AB;
 Fri,  9 Aug 2019 10:08:31 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A659A3F575;
 Fri,  9 Aug 2019 10:08:30 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
Subject: [PATCH 13/15] iommu/arm-smmu: Add configuration implementation hook
Date: Fri,  9 Aug 2019 18:07:50 +0100
Message-Id: <326db31d096f24b3ce7d9b98f05a5a9ba620f5b0.1565369764.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
References: <cover.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_100832_402800_FB088E98 
X-CRM114-Status: GOOD (  18.15  )
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

Probing the ID registers and setting up the SMMU configuration is an
area where overrides and workarounds may well be needed. Indeed, the
Cavium workaround detection lives there at the moment, so let's break
that out.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/arm-smmu-impl.c | 24 ++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 17 +++--------------
 drivers/iommu/arm-smmu.h      |  1 +
 3 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index f8b8895e1bbe..0b444e476525 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -47,11 +47,35 @@ const struct arm_smmu_impl calxeda_impl = {
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
+	/* The current quirks happen to be mutually-exclusive */
 	if (of_property_read_bool(smmu->dev->of_node,
 				  "calxeda,smmu-secure-config-access"))
 		smmu->impl = &calxeda_impl;
 
+	if (smmu->model == CAVIUM_SMMUV2)
+		smmu->impl = &cavium_impl;
+
 	return smmu;
 }
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 03159a1da4c9..80822d48f6c7 100644
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
index 0485ee7fd4c1..e79cb32802e9 100644
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
