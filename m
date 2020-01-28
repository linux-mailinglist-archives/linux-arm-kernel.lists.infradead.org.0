Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA35614C28A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 23:02:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o4KumWSoOZdqCwccpoI72jfTSKp/w4gQ7+kOID6/zPM=; b=Htp3Q7ESPvpcl/ncknIAqJlVBT
	HBaW4M6/A6Q4cGYF7bkkAetn7D4898kwqOE7yVB4+MEJhvq3OTfit10LyUVQR51G1wryNieby4Efn
	MxdsVc+JP2KDP4ZlnV7Z8M4niv4kDUpCSes+iqug6UlCVvMT0L+MTdgXUXwyrq2xavFa88f8JwHBy
	8HimVNrht+bkS4FN9irx9YigNON5UxJZGtdZEud4Hz9XCbW71yCQ8vFicidDZdRGPRKfVfYrZPxz1
	n1ZdXNZ2krQQP5UdxL/Vse8hLSxt/35WvL7Bw8SYXX5/4K8pTT0iXGfddfAFvjqxaFKmOdeQyRL+t
	rQOOAlQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYwH-00055e-53; Tue, 28 Jan 2020 22:02:29 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYuo-0003qw-Gy
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 22:01:03 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580248860; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=rPF4tzcAbLZfGSsXc5G7KlwoPGCscl2Op3tDfOKNtgY=;
 b=hLxIOqXIdDFamqg+zzqnUFKZem9RE2UVtM6Sjv+fDvBC0ujlPxILTQ491j+mmH5cmWVMc5zV
 lGPE8G2qrSkQCA0z7PC3ZuKAVWLWa8uVGVynglqkjGAm326tI+H+0sJzp5tiY5eV/ZiYfN/J
 lZWt983YKTmXpjtPFeW4LhLGXpY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e30af05.7f2a0956d378-smtp-out-n02;
 Tue, 28 Jan 2020 22:00:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4DF35C43383; Tue, 28 Jan 2020 22:00:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A5EE8C447A4;
 Tue, 28 Jan 2020 22:00:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A5EE8C447A4
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v5 2/5] iommu/arm-smmu: Add support for TTBR1
Date: Tue, 28 Jan 2020 15:00:16 -0700
Message-Id: <1580248819-12644-3-git-send-email-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580248819-12644-1-git-send-email-jcrouse@codeaurora.org>
References: <1580248819-12644-1-git-send-email-jcrouse@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_140100_220766_14612E50 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: robin.murphy@arm.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to enable TTBR1 if the domain requests it via the
DOMAIN_ATTR_SPLIT_TABLES attribute. If enabled by the hardware
and pagetable configuration the driver will configure the TTBR1 region
and program the domain pagetable on TTBR1. TTBR0 will be disabled.

After attaching the device the value of he domain attribute can
be queried to see if the split pagetables were successfully programmed.
The domain geometry will be updated as well so that the caller can
determine the active region for the pagetable that was programmed.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu.c | 48 +++++++++++++++++++++++++++++++++++++++++-------
 drivers/iommu/arm-smmu.h | 22 ++++++++++++++++------
 2 files changed, 57 insertions(+), 13 deletions(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 16c4b87..23b22fa 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -557,11 +557,17 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
 			cb->ttbr[1] = 0;
 		} else {
-			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
-			cb->ttbr[0] |= FIELD_PREP(ARM_SMMU_TTBRn_ASID,
-						  cfg->asid);
-			cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
-						 cfg->asid);
+			if (pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
+				cb->ttbr[0] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
+							 cfg->asid);
+				cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
+			} else {
+				cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
+				cb->ttbr[0] |= FIELD_PREP(ARM_SMMU_TTBRn_ASID,
+							  cfg->asid);
+				cb->ttbr[1] = FIELD_PREP(ARM_SMMU_TTBRn_ASID,
+							 cfg->asid);
+			}
 		}
 	} else {
 		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
@@ -675,6 +681,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 	enum io_pgtable_fmt fmt;
 	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
+	unsigned long quirks = 0;
 
 	mutex_lock(&smmu_domain->init_mutex);
 	if (smmu_domain->smmu)
@@ -743,6 +750,14 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		oas = smmu->ipa_size;
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
 			fmt = ARM_64_LPAE_S1;
+
+			/*
+			 * We are assuming that split pagetables will always use
+			 * SEP_UPSTREAM so we don't need to reduce the size of
+			 * the ias to account for the sign extension bit
+			 */
+			if (smmu_domain->split_pagetables)
+				quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
 		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
 			fmt = ARM_32_LPAE_S1;
 			ias = min(ias, 32UL);
@@ -812,6 +827,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 		.coherent_walk	= smmu->features & ARM_SMMU_FEAT_COHERENT_WALK,
 		.tlb		= smmu_domain->flush_ops,
 		.iommu_dev	= smmu->dev,
+		.quirks		= quirks,
 	};
 
 	if (smmu_domain->non_strict)
@@ -825,8 +841,15 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 
 	/* Update the domain's page sizes to reflect the page table format */
 	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
-	domain->geometry.aperture_end = (1UL << ias) - 1;
-	domain->geometry.force_aperture = true;
+
+	if (pgtbl_cfg.quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
+		domain->geometry.aperture_start = ~0UL << ias;
+		domain->geometry.aperture_end = ~0UL;
+	} else {
+		domain->geometry.aperture_end = (1UL << ias) - 1;
+		domain->geometry.force_aperture = true;
+		smmu_domain->split_pagetables = false;
+	}
 
 	/* Initialise the context bank with our page table cfg */
 	arm_smmu_init_context_bank(smmu_domain, &pgtbl_cfg);
@@ -1523,6 +1546,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
 		case DOMAIN_ATTR_NESTING:
 			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
 			return 0;
+		case DOMAIN_ATTR_SPLIT_TABLES:
+			*(int *)data = smmu_domain->split_pagetables;
+			return 0;
 		default:
 			return -ENODEV;
 		}
@@ -1563,6 +1589,14 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
 			else
 				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
 			break;
+		case DOMAIN_ATTR_SPLIT_TABLES:
+			if (smmu_domain->smmu) {
+				ret = -EPERM;
+				goto out_unlock;
+			}
+			if (*(int *)data)
+				smmu_domain->split_pagetables = true;
+			break;
 		default:
 			ret = -ENODEV;
 		}
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 8d1cd54..53053fd 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -172,6 +172,7 @@ enum arm_smmu_cbar_type {
 #define ARM_SMMU_TCR_SH0		GENMASK(13, 12)
 #define ARM_SMMU_TCR_ORGN0		GENMASK(11, 10)
 #define ARM_SMMU_TCR_IRGN0		GENMASK(9, 8)
+#define ARM_SMMU_TCR_EPD0		BIT(7)
 #define ARM_SMMU_TCR_T0SZ		GENMASK(5, 0)
 
 #define ARM_SMMU_VTCR_RES1		BIT(31)
@@ -343,16 +344,25 @@ struct arm_smmu_domain {
 	struct mutex			init_mutex; /* Protects smmu pointer */
 	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
 	struct iommu_domain		domain;
+	bool				split_pagetables;
 };
 
 static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
 {
-	return ARM_SMMU_TCR_EPD1 |
-	       FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
-	       FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
-	       FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
-	       FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
-	       FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
+	u32 tcr = FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
+		FIELD_PREP(ARM_SMMU_TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
+		FIELD_PREP(ARM_SMMU_TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
+		FIELD_PREP(ARM_SMMU_TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
+		FIELD_PREP(ARM_SMMU_TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
+
+       /*
+	* When TTBR1 is selected shift the TCR fields by 16 bits and disable
+	* translation in TTBR0
+	*/
+	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1)
+		return (tcr << 16) | ARM_SMMU_TCR_EPD0;
+
+	return tcr | ARM_SMMU_TCR_EPD1;
 }
 
 static inline u32 arm_smmu_lpae_tcr2(struct io_pgtable_cfg *cfg)
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
