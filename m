Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DA32E6C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 22:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lg+vIpnOVGHWJS52vs69Q10teq6wQrs9QVGrPP7algM=; b=lNcjqEs1KGItapjOgxkxXfZS90
	Q69HOUN2PZhGLuSPxl021DY9SgJPmHOoGje750k0CJZ7yyIFK8xq9wa0lVJZqTHtpgRDve+nBUVXv
	KS3xojJ9uYI3jVfrEy71hE1kkf0jBMbboy/WE/FwArKa3SDuaCE/frsPXmLYGOHJm0ZK0Q6RAETtr
	yZucvjQv1HjHx1gP9DWLI/t7mK5ey1l/M3slJJxnWcf+ZbTHtqbDrL1IWQhuCcj3ltkpvscnPX8tF
	ayWT0Wn+92VsEeNBA8wE6nz2qy0wysnD6zxaejHgX42GfMpFXblSnAcHz7n/Xv7n7tGdDbfXd+6yx
	2RQqpFAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5cF-000896-BE; Wed, 29 May 2019 20:56:07 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5bY-0007Y2-Ff
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 20:55:30 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 1407761577; Wed, 29 May 2019 20:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163324;
 bh=6chReSEkevyOEDtSRSepdc5qrnqGOGKdxjwcEABL24Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FvcMAh/1Firmuvzj0ZCSwVjKCTArjYqcV0qHQj6XFLbMsDJlledodozqOrTqMi4HK
 HOxuZgpZV49FlCoulRdEUKEIuqrSIGy1DWjTnNwgKjNlEDA6CWt+btIxyQ+qbX5xIb
 lccFF7e0eBPpznfqvN+mAresPQiZqrzLpMhm6JWc=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 947D961515;
 Wed, 29 May 2019 20:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1559163322;
 bh=6chReSEkevyOEDtSRSepdc5qrnqGOGKdxjwcEABL24Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d5USjgZhLsCu/CcIgjmqin6bnpyeIQFXMMljimY56jQ7H7qj2YZRAIw/Lnv85+jJY
 2WoD4QHTW2j80L9WeDMgPLIlYYbh5DI/IIUcOA+AHS7G8yw/ybq0ppdQY19XEFXM2S
 LUk0LmwpVHVqHBqYR++VLy3rFH5sljYo37kFdnas=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 947D961515
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: freedreno@lists.freedesktop.org
Subject: [PATCH v3 06/16] iommu/arm-smmu: Add auxiliary domain support for
 arm-smmuv2
Date: Wed, 29 May 2019 14:54:42 -0600
Message-Id: <1559163292-4792-7-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559163292-4792-1-git-send-email-jcrouse@codeaurora.org>
References: <1559163292-4792-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_135525_438327_08BE928A 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: jean-philippe.brucker@arm.com, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 dianders@chromium.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, hoegsberg@google.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support auxiliary domains for arm-smmu-v2 to initialize and support multiple
pagetables for a single SMMU context bank. Since the smmu-v2 hardware
doesn't have any built in support for switching the pagetable base it is
left as an exercise to the caller to actually use the pagetable; aux
domains in the IOMMU driver are only preoccupied with creating and managing
the pagetable memory.

Following is a pseudo code example of how a domain can be created

 /* Check to see if aux domains are supported */
 if (iommu_dev_has_feature(dev, IOMMU_DEV_FEAT_AUX)) {
	 iommu = iommu_domain_alloc(...);

	 if (iommu_aux_attach_device(domain, dev))
		 return FAIL;

	/* Save the base address of the pagetable for use by the driver
	iommu_domain_get_attr(domain, DOMAIN_ATTR_PTBASE, &ptbase);
 }

Then 'domain' can be used like any other iommu domain to map and
unmap iova addresses in the pagetable. The driver/hardware is used
to switch the pagetable according to its own specific implementation.

v3: Trivial update to reflect new pgtable ops situation

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 125 +++++++++++++++++++++++++++++++++++++++++------
 1 file changed, 110 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 33e6928..589da47 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -262,6 +262,8 @@ struct arm_smmu_domain {
 	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
 	u32 attributes;
 	struct iommu_domain		domain;
+	bool				is_aux;
+	u64				ttbr0;
 };
 
 struct arm_smmu_option_prop {
@@ -803,6 +805,12 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	if (!(smmu->features & ARM_SMMU_FEAT_TRANS_S2))
 		smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
 
+	/* Aux domains can only be created for stage-1 tables */
+	if (smmu_domain->is_aux && smmu_domain->stage != ARM_SMMU_DOMAIN_S1) {
+		ret = -EINVAL;
+		goto out_unlock;
+	}
+
 	/*
 	 * Choosing a suitable context format is even more fiddly. Until we
 	 * grow some way for the caller to express a preference, and/or move
@@ -850,6 +858,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 			ias = min(ias, 32UL);
 			oas = min(oas, 32UL);
 		}
+
 		smmu_domain->tlb_ops = &arm_smmu_s1_tlb_ops;
 		break;
 	case ARM_SMMU_DOMAIN_NESTED:
@@ -869,6 +878,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 			ias = min(ias, 40UL);
 			oas = min(oas, 40UL);
 		}
+
 		if (smmu->version == ARM_SMMU_V2)
 			smmu_domain->tlb_ops = &arm_smmu_s2_tlb_ops_v2;
 		else
@@ -878,23 +888,30 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		ret = -EINVAL;
 		goto out_unlock;
 	}
-	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
-				      smmu->num_context_banks);
-	if (ret < 0)
-		goto out_unlock;
 
-	cfg->cbndx = ret;
-	if (smmu->version < ARM_SMMU_V2) {
-		cfg->irptndx = atomic_inc_return(&smmu->irptndx);
-		cfg->irptndx %= smmu->num_context_irqs;
-	} else {
-		cfg->irptndx = cfg->cbndx;
-	}
+	/*
+	 * Aux domains will use the same context bank assigned to the master
+	 * domain for the device
+	 */
+	if (!smmu_domain->is_aux) {
+		ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
+					      smmu->num_context_banks);
+		if (ret < 0)
+			goto out_unlock;
 
-	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
-		cfg->vmid = cfg->cbndx + 1 + smmu->cavium_id_base;
-	else
-		cfg->asid = cfg->cbndx + smmu->cavium_id_base;
+		cfg->cbndx = ret;
+		if (smmu->version < ARM_SMMU_V2) {
+			cfg->irptndx = atomic_inc_return(&smmu->irptndx);
+			cfg->irptndx %= smmu->num_context_irqs;
+		} else {
+			cfg->irptndx = cfg->cbndx;
+		}
+
+		if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
+			cfg->vmid = cfg->cbndx + 1 + smmu->cavium_id_base;
+		else
+			cfg->asid = cfg->cbndx + smmu->cavium_id_base;
+	}
 
 	pgtbl_cfg = (struct io_pgtable_cfg) {
 		.pgsize_bitmap	= smmu->pgsize_bitmap,
@@ -917,11 +934,21 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		goto out_clear_smmu;
 	}
 
+	/* Cache the TTBR0 for the aux domain */
+	smmu_domain->ttbr0 = pgtbl_cfg.arm_lpae_s1_cfg.ttbr[0];
+
 	/* Update the domain's page sizes to reflect the page table format */
 	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
 	domain->geometry.aperture_end = (1UL << ias) - 1;
 	domain->geometry.force_aperture = true;
 
+	/*
+	 * aux domains don't use split tables or program the hardware so we're
+	 * done setting it up
+	 */
+	if (smmu_domain->is_aux)
+		goto out;
+
 	/* Initialise the context bank with our page table cfg */
 	arm_smmu_init_context_bank(smmu_domain, &pgtbl_cfg);
 	arm_smmu_write_context_bank(smmu, cfg->cbndx);
@@ -939,6 +966,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		cfg->irptndx = INVALID_IRPTNDX;
 	}
 
+out:
 	mutex_unlock(&smmu_domain->init_mutex);
 
 	/* Publish page table ops for map/unmap */
@@ -962,6 +990,12 @@ static void arm_smmu_destroy_domain_context(struct iommu_domain *domain)
 	if (!smmu || domain->type == IOMMU_DOMAIN_IDENTITY)
 		return;
 
+	/* All we need to do for aux devices is destroy the pagetable */
+	if (smmu_domain->is_aux) {
+		free_io_pgtable_ops(smmu_domain->pgtbl_ops);
+		return;
+	}
+
 	ret = arm_smmu_rpm_get(smmu);
 	if (ret < 0)
 		return;
@@ -1242,14 +1276,17 @@ static int arm_smmu_domain_add_master(struct arm_smmu_domain *smmu_domain,
 
 struct arm_smmu_client_match_data {
 	bool direct_mapping;
+	bool allow_aux_domain;
 };
 
 static const struct arm_smmu_client_match_data qcom_adreno = {
 	.direct_mapping = true,
+	.allow_aux_domain = true,
 };
 
 static const struct arm_smmu_client_match_data qcom_mdss = {
 	.direct_mapping = true,
+	.allow_aux_domain = false,
 };
 
 static const struct of_device_id arm_smmu_client_of_match[] = {
@@ -1269,6 +1306,55 @@ arm_smmu_client_data(struct device *dev)
 	return match ? match->data : NULL;
 }
 
+static bool arm_smmu_supports_aux(struct device *dev)
+{
+	const struct arm_smmu_client_match_data *data =
+		arm_smmu_client_data(dev);
+
+	return (data && data->allow_aux_domain);
+}
+
+static bool arm_smmu_dev_has_feat(struct device *dev,
+		enum iommu_dev_features feat)
+{
+	if (feat != IOMMU_DEV_FEAT_AUX)
+		return false;
+
+	return arm_smmu_supports_aux(dev);
+}
+
+static int arm_smmu_dev_enable_feat(struct device *dev,
+		enum iommu_dev_features feat)
+{
+	/* If supported aux domain support is always "on" */
+	if (feat == IOMMU_DEV_FEAT_AUX && arm_smmu_supports_aux(dev))
+		return 0;
+
+	return -ENODEV;
+}
+
+static int arm_smmu_dev_disable_feat(struct device *dev,
+		enum iommu_dev_features feat)
+{
+	return -EBUSY;
+}
+
+/* Set up a new aux domain and create a new pagetable with the same
+ * characteristics as the master
+ */
+static int arm_smmu_aux_attach_dev(struct iommu_domain *domain,
+		struct device *dev)
+{
+	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
+	struct arm_smmu_device *smmu = fwspec_smmu(fwspec);
+	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
+
+	smmu_domain->is_aux = true;
+
+	/* No power is needed because aux domain doesn't touch the hardware */
+	return arm_smmu_init_domain_context(domain, smmu);
+}
+
 static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
 	int ret;
@@ -1631,6 +1717,11 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
 			*(int *)data = !!(smmu_domain->attributes &
 				(1 << DOMAIN_ATTR_SPLIT_TABLES));
 			return 0;
+		case DOMAIN_ATTR_PTBASE:
+			if (!smmu_domain->is_aux)
+				return -ENODEV;
+			*((u64 *)data) = smmu_domain->ttbr0;
+			return 0;
 		default:
 			return -ENODEV;
 		}
@@ -1741,7 +1832,11 @@ static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
 	.domain_free		= arm_smmu_domain_free,
+	.dev_has_feat		= arm_smmu_dev_has_feat,
+	.dev_enable_feat	= arm_smmu_dev_enable_feat,
+	.dev_disable_feat	= arm_smmu_dev_disable_feat,
 	.attach_dev		= arm_smmu_attach_dev,
+	.aux_attach_dev		= arm_smmu_aux_attach_dev,
 	.map			= arm_smmu_map,
 	.unmap			= arm_smmu_unmap,
 	.flush_iotlb_all	= arm_smmu_flush_iotlb_all,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
