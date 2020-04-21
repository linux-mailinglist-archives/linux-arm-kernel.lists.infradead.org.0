Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D952F1B3116
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 22:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9fauRYeehRX+w9r/unx62nX9moYXYc5lb++0wIgrQe4=; b=ThyUqIewbCaAAQ
	1tJouOPgaQE6IPRxH0lAai11m0M9cDYkqfKIzpD7DenKIA0UwoMsapYSEolz2sZfXaP1Ib3rR8K4G
	VFPvA/CjOSyrffH1zINuYWZJitf9fl/NBaJgOUUx9IKDn06YMcQgIaSCRwuM2psd5nmmWrCFcNjRx
	wFgegxrdLyLY4Q0JMQMbhdztj91b6CyszDAVpcwQa/CSiNLdJau9IMCuOXB3O91dEGDAqqxKKSY28
	GaYaN1MUTY0GiE5uAZ13m5r/LKF4qW3xbPfvISIB/eSC2lRsjPiSTWml+GwHKL0wPwt8mizxqog67
	pq/xf0QZJpfGhD/pnCwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQzO2-0002q1-L8; Tue, 21 Apr 2020 20:20:54 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQzNt-0002o3-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 20:20:47 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587500441; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=8Z/altQqTKdjp/pVqayBVEKEPSRCz4KgGRuB1EudGTI=;
 b=g/fbQztADErFUblXb2JsEjSCo7wsHvFEWoyornUTGJQqsdHXsyEFGabR5xJCYbf6fDdNpBDV
 n3hOD7ZhYzJFZSwDrpeb3S5heyg0Q4SJjBznzLyvwtOG7s8E55peRFIDCFaVYPG11Kx6BOHB
 vKkwl532SW/u9CjvngQLGO0uttM=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9f5583.7f5905202618-smtp-out-n03;
 Tue, 21 Apr 2020 20:20:19 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6DF1EC4478F; Tue, 21 Apr 2020 20:20:17 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 609F3C432C2;
 Tue, 21 Apr 2020 20:20:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 609F3C432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Rob Clark <robdclark@gmail.com>,
 Jordan Crouse <jcrouse@codeaurora.org>
Subject: [PATCH] iomm/arm-smmu: Add stall implementation hook
Date: Wed, 22 Apr 2020 01:50:04 +0530
Message-Id: <20200421202004.11686-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_132045_605375_9FA111B1 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-msm@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add stall implementation hook to enable stalling
faults on QCOM platforms which supports it without
causing any kind of hardware mishaps. Without this
on QCOM platforms, GPU faults can cause unrelated
GPU memory accesses to return zeroes. This has the
unfortunate result of command-stream reads from CP
getting invalid data, causing a cascade of fail.

Suggested-by: Rob Clark <robdclark@gmail.com>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
This has been attempted previously by Rob Clark in 2017, 2018.
Hopefully we can get something concluded in 2020.
 * https://patchwork.kernel.org/patch/9953803/
 * https://patchwork.kernel.org/patch/10618713/
---
 drivers/iommu/arm-smmu-qcom.c | 1 +
 drivers/iommu/arm-smmu.c      | 7 +++++++
 drivers/iommu/arm-smmu.h      | 1 +
 3 files changed, 9 insertions(+)

diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 24c071c1d8b0..a13b229389d4 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -32,6 +32,7 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 
 static const struct arm_smmu_impl qcom_smmu_impl = {
 	.reset = qcom_sdm845_smmu500_reset,
+	.stall = true,
 };
 
 struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device *smmu)
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e622f4e33379..16b03fca9966 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -488,6 +488,11 @@ static irqreturn_t arm_smmu_context_fault(int irq, void *dev)
 			    fsr, iova, fsynr, cbfrsynra, idx);
 
 	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_FSR, fsr);
+
+	if (smmu->impl && smmu->impl->stall && (fsr & ARM_SMMU_FSR_SS))
+		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_RESUME,
+				  ARM_SMMU_RESUME_TERMINATE);
+
 	return IRQ_HANDLED;
 }
 
@@ -659,6 +664,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
 		reg |= ARM_SMMU_SCTLR_S1_ASIDPNE;
 	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
 		reg |= ARM_SMMU_SCTLR_E;
+	if (smmu->impl && smmu->impl->stall)
+		reg |= ARM_SMMU_SCTLR_CFCFG;
 
 	arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, reg);
 }
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 8d1cd54d82a6..d5134e0d5cce 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -386,6 +386,7 @@ struct arm_smmu_impl {
 	int (*init_context)(struct arm_smmu_domain *smmu_domain);
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
 			 int status);
+	bool stall;
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
