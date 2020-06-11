Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E3A1F705B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 00:37:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2GfCZaWFBoj/F+eYeC61b8vvKOcYVLLMT5mN50/her0=; b=j1Z
	qiTUejP/vIHE7l3Q8ZbRJs1zB/IGLS6UHPTDG3Y3zKir9g8ygaAkkcldDU2k1Yz70kufLhG20CUDI
	k86F9Houc7iprIc3cXDS1qANli1nLVPhEEn3swIraTbs0pRKChJbB0BpGL+KQyEBK1MHW1IPsCb35
	kAsuW5N4zD3CKeCg+bbN2CKpG3R73MaDzhRBHuHyprVG1ha6UOe8e5KRFyVyoZ72TtUv2mTLmHAI+
	zkAecSulckhlU/f6c3XYs79PUhrq7d46VSAYTP2YDrNvER+P4vNWSsepv2dEqfJ+cyCm1mysZHK7v
	O+LJDldi7lKcQrS/1x2xXNTXepVc1Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjVov-0001kJ-Vy; Thu, 11 Jun 2020 22:37:13 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjVon-0001ji-5o
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 22:37:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591915024; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=6xUaMfKJXxXcIBGJIgKiTLhHa7NBz100vUpvyY8Yq5A=;
 b=kt6sea9sgFt3VabzAXlSKL7x/Tjjp8RdX3vs8hfDjQUtjAaJqW1B9uEM3iOVEQUpCv+/jlm0
 fnoS4xPX1CMe6M5spf47SOvVZ1tMRkgYJhgE7m70X6fiU9ErN/qILf79yCeq+qIrJzeZCaIa
 jJ2ndmkAS/HPDal8YgA0SYDiha8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n14.prod.us-east-1.postgun.com with SMTP id
 5ee2b21086de6ccd441cb65f (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 11 Jun 2020 22:37:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 7134EC433CA; Thu, 11 Jun 2020 22:37:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from jordan-laptop.qualcomm.com (Global_NAT1.qualcomm.com
 [129.46.96.20])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: jcrouse)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B01C4C433C8;
 Thu, 11 Jun 2020 22:37:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B01C4C433C8
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
From: Jordan Crouse <jcrouse@codeaurora.org>
To: linux-arm-msm@vger.kernel.org
Subject: [PATCH] iommu/arm-smmu: Add a init_context_bank implementation hook
Date: Thu, 11 Jun 2020 16:36:56 -0600
Message-Id: <20200611223656.4724-1-jcrouse@codeaurora.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_153705_278709_A79CACA9 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: freedreno@lists.freedesktop.org, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a new implementation hook to allow the implementation specific code
to tweek the context bank configuration just before it gets written.
The first user will be the Adreno GPU implementation to turn on
SCTLR.HUPCF to ensure that a page fault doesn't terminating pending
transactions. Doing so could hang the GPU if one of the terminated
transactions is a CP read.

This depends on the arm-smmu adreno SMMU implementation [1].

[1] https://patchwork.kernel.org/patch/11600943/

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
---

 drivers/iommu/arm-smmu-qcom.c | 13 +++++++++++++
 drivers/iommu/arm-smmu.c      | 28 +++++++++++++---------------
 drivers/iommu/arm-smmu.h      | 11 +++++++++++
 3 files changed, 37 insertions(+), 15 deletions(-)

diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 6d0ab4865fc7..e5c6345da6fc 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -17,6 +17,18 @@ static bool qcom_adreno_smmu_is_gpu_device(struct arm_smmu_domain *smmu_domain)
 	return of_device_is_compatible(smmu_domain->dev.of_node, "qcom,adreno");
 }
 
+static void qcom_adreno_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
+		struct arm_smmu_cb *cb)
+{
+	/*
+	 * On the GPU device we want to process subsequent transactions after a
+	 * fault to keep the GPU from hanging
+	 */
+
+	if (qcom_adreno_smmu_is_gpu_device(smmu_domain))
+		cb->sctlr |= ARM_SMMU_SCTLR_HUPCF;
+}
+
 static int qcom_adreno_smmu_init_context(struct arm_smmu_domain *smmu_domain,
 		struct io_pgtable_cfg *pgtbl_cfg)
 {
@@ -92,6 +104,7 @@ static const struct arm_smmu_impl qcom_adreno_smmu_impl = {
 	.init_context = qcom_adreno_smmu_init_context,
 	.def_domain_type = qcom_smmu_def_domain_type,
 	.reset = qcom_smmu500_reset,
+	.init_context_bank = qcom_adreno_smmu_init_context_bank,
 };
 
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index a06cbcaec247..f0f201ece3a0 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -86,13 +86,6 @@ struct arm_smmu_smr {
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
@@ -579,6 +572,18 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
 			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
 		}
 	}
+
+	cb->sctlr = ARM_SMMU_SCTLR_CFIE | ARM_SMMU_SCTLR_CFRE | ARM_SMMU_SCTLR_AFE |
+		ARM_SMMU_SCTLR_TRE | ARM_SMMU_SCTLR_M;
+
+	if (stage1)
+		cb->sctlr |= ARM_SMMU_SCTLR_S1_ASIDPNE;
+	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
+		cb->sctlr |= ARM_SMMU_SCTLR_E;
+
+	/* Give the implementation a chance to adjust the configuration */
+	if (smmu_domain->smmu->impl && smmu_domain->smmu->impl->init_context_bank)
+		smmu_domain->smmu->impl->init_context_bank(smmu_domain, cb);
 }
 
 static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
@@ -657,14 +662,7 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 	}
 
 	/* SCTLR */
-	reg = ARM_SMMU_SCTLR_CFIE | ARM_SMMU_SCTLR_CFRE | ARM_SMMU_SCTLR_AFE |
-	      ARM_SMMU_SCTLR_TRE | ARM_SMMU_SCTLR_M;
-	if (stage1)
-		reg |= ARM_SMMU_SCTLR_S1_ASIDPNE;
-	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
-		reg |= ARM_SMMU_SCTLR_E;
-
-	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, reg);
+	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, cb->sctlr);
 }
 
 /*
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 79d441024043..9b539820997b 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -142,6 +142,7 @@ enum arm_smmu_cbar_type {
 
 #define ARM_SMMU_CB_SCTLR		0x0
 #define ARM_SMMU_SCTLR_S1_ASIDPNE	BIT(12)
+#define ARM_SMMU_SCTLR_HUPCF		BIT(8)
 #define ARM_SMMU_SCTLR_CFCFG		BIT(7)
 #define ARM_SMMU_SCTLR_CFIE		BIT(6)
 #define ARM_SMMU_SCTLR_CFRE		BIT(5)
@@ -349,6 +350,14 @@ struct arm_smmu_domain {
 	bool				aux;
 };
 
+struct arm_smmu_cb {
+	u64			ttbr[2];
+	u32			tcr[2];
+	u32			mair[2];
+	u32			sctlr;
+	struct arm_smmu_cfg	*cfg;
+};
+
 static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
 {
 	u32 tcr = FIELD_PREP(ARM_SMMU_TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
@@ -403,6 +412,8 @@ struct arm_smmu_impl {
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
 			 int status);
 	int (*def_domain_type)(struct device *dev);
+	void (*init_context_bank)(struct arm_smmu_domain *smmu_domain,
+			struct arm_smmu_cb *cb);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
