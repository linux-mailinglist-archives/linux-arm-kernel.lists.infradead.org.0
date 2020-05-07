Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764D41C9AEC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 21:22:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qly+swIrTo/UFxrq/iKwQtnx/V4G3gLfJ/gyvCGsNIU=; b=jMdVHnllnwelJM
	EXDEppitf/mpIiLG3daoFxAj/S27AHXDCpNJldZHEL4ooY3Uqy8hNPI8aOdL/31z2ODcznNztZ7vp
	d0RL+AqHfbhFACiKRXvr21EUS+9z4/EwoR6tBfpsCpkZCGj6Pa3UQP7H9/mVXZvw0C2px3OiZHAQa
	rOR2NcVoosxAcUjnd8t74gII9pcX+jwklhZa/6MHYckR3uD/729s+gUZnuWDCSjbXR4bSRHCN6dsl
	lWxNu299zbYi0me0yt/s0JL45x/v3Y0shy0x83fSFcl5+L1GOI6z2FPTuhMj0mRgT1LdiFobafkQX
	GvrzEkmOnmlvJU7NXNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWm6S-00045I-U2; Thu, 07 May 2020 19:22:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWm6L-00044H-Mb
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 19:22:35 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1588879353; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=iv2+rEkcFZZMHapobHQ0seNnq8crBV2GyQlsMOGPnhc=;
 b=hqGP++sz8g9J8kxWpBiFewhYNppp27tLdOUZBnBwEA1ERyfdAQUIHab7yONAFMnTLOYybwcl
 Jdzm1y7x5Yg8EmzISMnwTgt8VfMdstB68JB39QgwuQetQCgHFfPuJLG8RbBTFrh/bpx691QP
 L18tleW/9oCYs97utFwIFPG0avI=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb45ff8.7fc768d1c228-smtp-out-n03;
 Thu, 07 May 2020 19:22:32 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 230F3C433D2; Thu,  7 May 2020 19:22:32 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-87.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sibis)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 38DF2C433BA;
 Thu,  7 May 2020 19:22:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 38DF2C433BA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sibis@codeaurora.org
From: Sibi Sankar <sibis@codeaurora.org>
To: will@kernel.org,
	robin.murphy@arm.com,
	joro@8bytes.org
Subject: [PATCH v5] iommu/arm-smmu-qcom: Request direct mapping for modem
 device
Date: Fri,  8 May 2020 00:51:57 +0530
Message-Id: <20200507192157.6831-1-sibis@codeaurora.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_122233_799048_641C2CA7 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-arm-msm@vger.kernel.org, swboyd@chromium.org, dianders@chromium.org,
 evgreen@chromium.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, mka@chromium.org,
 Sibi Sankar <sibis@codeaurora.org>, bjorn.andersson@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The modem remote processor has two modes of access to the DDR, a direct
mode and through a SMMU which requires direct mapping. The configuration
of the modem SIDs is handled in TrustZone. On platforms where TrustZone
is absent this needs to be explicitly done from kernel. Add compatibles
for modem to opt in for direct mapping on such platforms.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
---

V5
 * Reword commit message and drop unnecessary details

 drivers/iommu/arm-smmu-qcom.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
index 5bedf21587a56..cf01d0215a397 100644
--- a/drivers/iommu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm-smmu-qcom.c
@@ -17,7 +17,9 @@ static const struct of_device_id qcom_smmu_client_of_match[] = {
 	{ .compatible = "qcom,mdp4" },
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,sc7180-mdss" },
+	{ .compatible = "qcom,sc7180-mss-pil" },
 	{ .compatible = "qcom,sdm845-mdss" },
+	{ .compatible = "qcom,sdm845-mss-pil" },
 	{ }
 };
 
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
