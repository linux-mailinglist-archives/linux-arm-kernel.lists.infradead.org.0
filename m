Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 237BF107B76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 00:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J13PpBvRpgHsYZOkZbj+RjgqSD/a2zSthGqQy6VaNMk=; b=iUwARP0sRZEiKGtem3dJnA/ZOk
	9cpAUfBJjxYhoZdG8+JmM7yHD4p5kwY3xWGAskdxYBpMWiORnh/gn5T/0ZfYMZKwdxMPnZvCaooj7
	nA+6FVdPVxv/Hv3raVvt9uothBuMbvoOu9yFCm+w5ZZAZOqUxQbp/8cdLKdruUZX4IUlR2AUmF3SG
	mWWvqWq6RnzBguyCNOE6jqN0lGZSCNn2ECMNB4uEf5gtyCWNf7AKEHS3EWh6++Egu7wMJjRm0te8Z
	YCLEYuhEBGvWbG86DIIv73/WIfg/+bnLiJDb0Ek4EHSC5A93uxOgqomYbodhIvp5Goc2QwYL3CoLq
	AFPUzbtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIQL-0003O8-Kv; Fri, 22 Nov 2019 23:33:13 +0000
Received: from a27-186.smtp-out.us-west-2.amazonses.com ([54.240.27.186])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIP6-0002QI-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 23:32:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1574465513;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References;
 bh=I+X6TUOM+if5qAyGJhvoW4dijbfNXbZbVRwK1j7KFjE=;
 b=WbXqxirCHEbQco6wVhpOW+hFogaEh44RTgE44c5Uk2lS6e1NagnqvXj1CED2STzc
 nw3FlFX5eLvlL+DprafwTWPCrccD6SQBVNTUEwdFr8FCloOZS/T2NrJCqgWPPFDko4Q
 NUj+IJw5GZH9cYBcqu9+5IDQf8Jw6tdMEP3a+Jls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1574465513;
 h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:Feedback-ID;
 bh=I+X6TUOM+if5qAyGJhvoW4dijbfNXbZbVRwK1j7KFjE=;
 b=NMeIRlUFZGFE4uuK7LHshFV0jUSQTiTxRp3Kzuh8jZl0Ync8EQjWG35rbftjPNG7
 iSjXWQPyEmM6Kqr647cl1iaJzzMCAvQMTGZfoBcGtbMkXqVNCizWQ2yy6RjAUahcI+T
 AcDIV9B9ZTpwiaxTRoYN5LSepOJoziLFvAMtPLu8=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6907FC76F44
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v2 4/8] iommu/arm-smmu: Add split pagetables for Adreno IOMMU
 implementations
Date: Fri, 22 Nov 2019 23:31:53 +0000
Message-ID: <0101016e95752742-4979b405-7340-4866-a603-51d058d76d08-000000@us-west-2.amazonses.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
X-SES-Outgoing: 2019.11.22-54.240.27.186
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_153157_021684_DB4505E0 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.186 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add implementation specific support to enable split pagetables for
SMMU implementations attached to Adreno GPUs on Qualcomm targets.

To enable split pagetables the driver will set an attribute on the domain.
if conditions are correct, set up the hardware to support equally sized
TTBR0 and TTBR1 regions and programs the domain pagetable to TTBR1 to make
it available for global buffers while allowing the GPU the chance to
switch the TTBR0 at runtime for per-context pagetables.

After programming the context, the value of the domain attribute can be
queried to see if split pagetables were successfully programmed. The
domain geometry will be updated so that the caller can determine the
start of the region to generate correct virtual addresses.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu-impl.c |  3 ++
 drivers/iommu/arm-smmu-qcom.c | 96 +++++++++++++++++++++++++++++++++++++++++++
 drivers/iommu/arm-smmu.c      | 41 ++++++++++++++----
 drivers/iommu/arm-smmu.h      | 11 +++++
 4 files changed, 143 insertions(+), 8 deletions(-)

diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
index 33ed682..1e91231 100644
--- a/drivers/iommu/arm-smmu-impl.c
+++ b/drivers/iommu/arm-smmu-impl.c
@@ -174,5 +174,8 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
 	if (of_device_is_compatible(smmu->dev->of_node, "qcom,sdm845-smmu-500"))
 		return qcom_smmu_impl_init(smmu);
 
+	if (of_device_is_compatible(smmu->dev->of_node, "qcom,adreno-smmu-v2"))
+		return adreno_smmu_impl_init(smmu);
+
 	return smmu;
 }
diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 24c071c..6591e49 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -11,6 +11,102 @@ struct qcom_smmu {
 	struct arm_smmu_device smmu;
 };
 
+#define TG0_4K  0
+#define TG0_64K 1
+#define TG0_16K 2
+
+#define TG1_16K 1
+#define TG1_4K  2
+#define TG1_64K 3
+
+/*
+ * Set up split pagetables for Adreno SMMUs that will keep a static TTBR1 for
+ * global buffers and dynamically switch TTBR0 from the GPU for context specific
+ * pagetables.
+ */
+static int adreno_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
+		struct io_pgtable_cfg *pgtbl_cfg)
+{
+	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
+	struct arm_smmu_cb *cb = &smmu_domain->smmu->cbs[cfg->cbndx];
+	u32 tcr, tg0;
+
+	/*
+	 * Return error if split pagetables are not enabled so that arm-smmu
+	 * do the default configuration
+	 */
+	if (!(pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1))
+		return -EINVAL;
+
+	/* Get the bank configuration from the pagetable config */
+	tcr = arm_smmu_lpae_tcr(pgtbl_cfg) & 0xffff;
+
+	/*
+	 * The TCR configuration for TTBR0 and TTBR1 is (almost) identical so
+	 * just duplicate the T0 configuration and shift it
+	 */
+	cb->tcr[0] = (tcr << 16) | tcr;
+
+	/*
+	 * The (almost) above refers to the granule size field which is
+	 * different for TTBR0 and TTBR1. With the TTBR1 quirk enabled,
+	 * io-pgtable-arm will write the T1 appropriate granule size for tg.
+	 * Translate the configuration from the T1 field to get the right value
+	 * for T0
+	 */
+	if (pgtbl_cfg->arm_lpae_s1_cfg.tcr.tg == TG1_4K)
+		tg0 = TG0_4K;
+	else if (pgtbl_cfg->arm_lpae_s1_cfg.tcr.tg == TG1_16K)
+		tg0 = TG0_16K;
+	else
+		tg0 = TG0_64K;
+
+	/* clear and set the correct value for TG0  */
+	cb->tcr[0] &= ~TCR_TG0;
+	cb->tcr[0] |= FIELD_PREP(TCR_TG0, tg0);
+
+	/*
+	 * arm_smmu_lape_tcr2 sets SEP_UPSTREAM which is always the appropriate
+	 * SEP for Adreno IOMMU
+	 */
+	cb->tcr[1] = arm_smmu_lpae_tcr2(pgtbl_cfg);
+	cb->tcr[1] |= TCR2_AS;
+
+	/* TTBRs */
+	cb->ttbr[0] = FIELD_PREP(TTBRn_ASID, cfg->asid);
+	cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
+	cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
+
+	/* MAIRs */
+	cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
+	cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
+
+	return 0;
+}
+
+static int adreno_smmu_init_context(struct arm_smmu_domain *smmu_domain,
+		struct io_pgtable_cfg *pgtbl_cfg)
+{
+	/* Enable split pagetables if the flag is set and the format matches */
+	if (smmu_domain->split_pagetables)
+		if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1 &&
+			smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64)
+			pgtbl_cfg->quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
+
+	return 0;
+}
+
+static const struct arm_smmu_impl adreno_smmu_impl = {
+	.init_context = adreno_smmu_init_context,
+	.init_context_bank = adreno_smmu_init_context_bank,
+};
+
+struct arm_smmu_device *adreno_smmu_impl_init(struct arm_smmu_device *smmu)
+{
+	smmu->impl = &adreno_smmu_impl;
+	return smmu;
+}
+
 static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 {
 	int ret;
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 5c7c32b..f5dc950 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -91,13 +91,6 @@ struct arm_smmu_smr {
 	bool				valid;
 };
 
-struct arm_smmu_cb {
-	u64				ttbr[2];
-	u32				tcr[2];
-	u32				mair[2];
-	struct arm_smmu_cfg		*cfg;
-};
-
 struct arm_smmu_master_cfg {
 	struct arm_smmu_device		*smmu;
 	s16				smendx[];
@@ -512,10 +505,20 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 {
 	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 	struct arm_smmu_cb *cb = &smmu_domain->smmu->cbs[cfg->cbndx];
+	struct arm_smmu_device *smmu = smmu_domain->smmu;
 	bool stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
 
 	cb->cfg = cfg;
 
+	if (smmu->impl && smmu->impl->init_context_bank) {
+		/*
+		 * If the implementation specific function returns non-zero then
+		 * fall back to the default configuration
+		 */
+		if (!smmu->impl->init_context_bank(smmu_domain, pgtbl_cfg))
+			return;
+	}
+
 	/* TCR */
 	if (stage1) {
 		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
@@ -802,7 +805,17 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
 
 	/* Update the domain's page sizes to reflect the page table format */
 	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
-	domain->geometry.aperture_end = (1UL << ias) - 1;
+
+	if (pgtbl_cfg.quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
+		domain->geometry.aperture_start = ~((1UL << ias) - 1);
+		domain->geometry.aperture_end = ~0UL;
+	} else {
+		domain->geometry.aperture_start = 0;
+		domain->geometry.aperture_end = (1UL << ias) - 1;
+
+		smmu_domain->split_pagetables = false;
+	}
+
 	domain->geometry.force_aperture = true;
 
 	/* Initialise the context bank with our page table cfg */
@@ -1485,6 +1498,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
 		case DOMAIN_ATTR_NESTING:
 			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
 			return 0;
+		case DOMAIN_ATTR_SPLIT_TABLES:
+			*(int *)data = smmu_domain->split_pagetables;
+			return 0;
 		default:
 			return -ENODEV;
 		}
@@ -1525,6 +1541,15 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
 			else
 				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
 			break;
+		case DOMAIN_ATTR_SPLIT_TABLES:
+			if (smmu_domain->smmu) {
+				return -EPERM;
+				goto out_unlock;
+			}
+
+			if (*(int *) data)
+				smmu_domain->split_pagetables = true;
+			break;
 		default:
 			ret = -ENODEV;
 		}
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 0eb498f..35158ee 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -329,6 +329,14 @@ struct arm_smmu_domain {
 	struct mutex			init_mutex; /* Protects smmu pointer */
 	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
 	struct iommu_domain		domain;
+	bool				split_pagetables;
+};
+
+struct arm_smmu_cb {
+	u64				ttbr[2];
+	u32				tcr[2];
+	u32				mair[2];
+	struct arm_smmu_cfg		*cfg;
 };
 
 static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
@@ -359,6 +367,8 @@ struct arm_smmu_impl {
 	int (*reset)(struct arm_smmu_device *smmu);
 	int (*init_context)(struct arm_smmu_domain *smmu_domain,
 			struct io_pgtable_cfg *pgtbl_cfg);
+	int (*init_context_bank)(struct arm_smmu_domain *smmu_domain,
+			struct io_pgtable_cfg *pgtable_cfg);
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
 			 int status);
 };
@@ -425,6 +435,7 @@ static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
 
 struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
 struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device *smmu);
+struct arm_smmu_device *adreno_smmu_impl_init(struct arm_smmu_device *smmu);
 
 int arm_mmu500_reset(struct arm_smmu_device *smmu);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
