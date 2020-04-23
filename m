Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9051B58A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 11:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BeoCnSOEp+oelPBmF4U8EEVPxOUdxYk7y6QsHIBd8o8=; b=rYNuVAu1iRDkuE
	C8VKIF+KFTb14qYf5W59CLUaMcEjmdzyW3k4Dt1JzVDvievc8es7Kola8i0AC95Qnt5kEf1VUUpAd
	VFLVUMARD7KCW4E0oxr0ZAVR4qIlQqbTaOpArTjSwpbqkna6HzIXUC8brqwCYzHvLAxZX9jMd4DAM
	n1/pQMeQUj6RSnqSKwik0tfxxt6HVn5hDcEC7KO/2hdIDR4Szt6RTDjvTYy1+InHOxqnS87bCskQ5
	3WIg/Dj7/Z3XqCKAPuuobnMJh0rvqYrUgHPo686n7ijM/+eMROHkkjzNi941eRp1PdEgxLMgb6HhX
	IKi7Z6YeG0i6TVBrrbGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYai-0006qb-2n; Thu, 23 Apr 2020 09:56:20 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYaB-0006eo-Mn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 09:55:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587635751; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=b0UDRdHfNOuhrEon7XwEoQBrHlYrY/sQ4aQmMyDt9Z8=;
 b=IadWyFCX0teJtOVa3v4IL4Fmlf0ZUdKCLXfzU0nHziTM70GFsfNB0YNcz6PE/pjPAYcl6LS1
 u9MU6WmLqH4oqVAKKFdxb8KDkxl61Fl8TZSYGlXpeJqIw37i9P+ZYt32ivTRJsFecn9xgU13
 aJbbUxaOAUVZafyK4GZeQTyyWUA=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ea1661d.7fe3d05988b8-smtp-out-n01;
 Thu, 23 Apr 2020 09:55:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id B28B9C433F2; Thu, 23 Apr 2020 09:55:41 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 84A68C433CB;
 Thu, 23 Apr 2020 09:55:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 84A68C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Douglas Anderson <dianders@chromium.org>
Subject: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
Date: Thu, 23 Apr 2020 15:25:31 +0530
Message-Id: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_025551_585980_66950834 
X-CRM114-Status: GOOD (  12.95  )
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

Currently on reboot/shutdown, the following messages are
displayed on the console as error messages before the
system reboots/shutdown as part of remove callback.

On SC7180:

  arm-smmu 15000000.iommu: removing device with active domains!
  arm-smmu 5040000.iommu: removing device with active domains!

Make this error message more informative and less scary.

Reported-by: Douglas Anderson <dianders@chromium.org>
Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/iommu/arm-smmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e622f4e33379..8ea634876e6c 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2244,7 +2244,7 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 		return -ENODEV;
 
 	if (!bitmap_empty(smmu->context_map, ARM_SMMU_MAX_CBS))
-		dev_err(&pdev->dev, "removing device with active domains!\n");
+		dev_info(&pdev->dev, "disabling translation\n");
 
 	arm_smmu_bus_init(NULL);
 	iommu_device_unregister(&smmu->iommu);
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
