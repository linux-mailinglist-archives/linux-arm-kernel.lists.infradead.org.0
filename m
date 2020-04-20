Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F6B1B1208
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXvRdZnQSDgZF2BioJEey7h4MliJI1njCLNrt/2XVUI=; b=FxUwJ9O6eDj5Fe
	t+fb9BaGELRepau9GA+hprjHaNgN+DowivDfG8PHhFBrYKPcSIPVMn8NTyjLI6vsJrf04em/3pKeM
	WPA5T3+wLp+Rd6NdNSJ4Jb8NVB3UYbUwVXfSBTZFr8O018a9rI3KvkRCbt6s02iF9D5CEc/BHazD5
	2QbHM/v0MwRtJeZIFgJ6nqoa5sCQKQzXEllTdTw3b5+mQjmUvbCreLN4cKJpEYfaj4Vcqb3xCcLIS
	7AuPpg3jI84GbzKymUpDV5orn3PbHBG30QHQuGfMK3+qMni71Y8PBFJ13LB1lRxIBT+/bU7Y/s+0u
	WcAdQ95Or/55kDgz0ynA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZVh-0004XK-HH; Mon, 20 Apr 2020 16:43:05 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZVI-00047E-5S
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:42:44 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587400962; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=hAz7orf8YhqI4ylP5WQE2UZPdzgI72tZj+3XavXhxuM=;
 b=FMAVje/9TF1940xj4Pt60sSl8viKTKe8rZxwFkzDLDDvrmhJ2kFbCLHnes7BKb+9b1aBOuzi
 A4kj6j0CmnEiH07kZQ2AC5xPVV7/v3T5t1AOB4NIERzbop/e1IryZ8wfBQKfelM0P0/z3UKR
 BsyzkJIeeekPT0a2j+3o3XYZMoY=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9dd0fa.7fb14ddab458-smtp-out-n02;
 Mon, 20 Apr 2020 16:42:34 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3B05FC433BA; Mon, 20 Apr 2020 16:42:33 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 75D86C44792;
 Mon, 20 Apr 2020 16:42:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 75D86C44792
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
Subject: [PATCHv3 2/6] iommu/arm-smmu: Allow client devices to select direct
 mapping
Date: Mon, 20 Apr 2020 22:12:00 +0530
Message-Id: <d36f9c9ef3ef8dc84da02dfb160cd6846d2869fc.1587400573.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094242_647857_E2949B71 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jordan Crouse <jcrouse@codeaurora.org>

Some client devices want to directly map the IOMMU themselves instead
of using the DMA domain. Allow those devices to opt in to direct
mapping by way of a list of compatible strings.

Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/iommu/arm-smmu-qcom.c | 19 +++++++++++++++++++
 drivers/iommu/arm-smmu.h      |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 64a4ab270ab7..5bedf21587a5 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2019, The Linux Foundation. All rights reserved.
  */
 
+#include <linux/of_device.h>
 #include <linux/qcom_scm.h>
 
 #include "arm-smmu.h"
@@ -11,6 +12,23 @@ struct qcom_smmu {
 	struct arm_smmu_device smmu;
 };
 
+static const struct of_device_id qcom_smmu_client_of_match[] = {
+	{ .compatible = "qcom,adreno" },
+	{ .compatible = "qcom,mdp4" },
+	{ .compatible = "qcom,mdss" },
+	{ .compatible = "qcom,sc7180-mdss" },
+	{ .compatible = "qcom,sdm845-mdss" },
+	{ }
+};
+
+static int qcom_smmu_def_domain_type(struct device *dev)
+{
+	const struct of_device_id *match =
+		of_match_device(qcom_smmu_client_of_match, dev);
+
+	return match ? IOMMU_DOMAIN_IDENTITY : 0;
+}
+
 static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
 {
 	int ret;
@@ -41,6 +59,7 @@ static int qcom_smmu500_reset(struct arm_smmu_device *smmu)
 }
 
 static const struct arm_smmu_impl qcom_smmu_impl = {
+	.def_domain_type = qcom_smmu_def_domain_type,
 	.reset = qcom_smmu500_reset,
 };
 
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 8d1cd54d82a6..d172c024be61 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -386,6 +386,7 @@ struct arm_smmu_impl {
 	int (*init_context)(struct arm_smmu_domain *smmu_domain);
 	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
 			 int status);
+	int (*def_domain_type)(struct device *dev);
 };
 
 static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
