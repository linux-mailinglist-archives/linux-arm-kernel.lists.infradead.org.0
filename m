Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 214B41F0ADB
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jun 2020 13:10:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9RFOQF8X154aqgdjX8IBomCoE7f9oFAqAvrnm42ARPs=; b=i2hhsP9o3B0M7j
	iLcdnySQnyn4L3/35j/kiWXgLshHzeDt1EfUs6ftjCw+Uq2U8rux2hGZWJoWAoMiNulPSM0pPIujE
	tl5iWvpBjkK6TUH8tXPhnEtY2v/jxV5oE9krDKgUsha5jMV9a0AJLm0rsxorxMVUvLg1/9wco9ADM
	b156S9Je0AFJ3WFqCsqI9NZ1eEwRNwb0B8Lu41le/CJgcOo6CsaSZo7evJFBNvCa5mBAG7H4/AcoX
	XOlR1BBIQ1ZC4dF5BFQ+aEuQ0kP5mZGIWZBolcb0MrrgISu1MEkTvHlnmUYP8VpQUQOZjspj8OSmQ
	tluFS/3Y3Iy83l8/zChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhtBd-0007EE-15; Sun, 07 Jun 2020 11:09:57 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhtBU-0007Df-6H
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jun 2020 11:09:50 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1591528188; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=/hsbFOuqSBY+VZzRO8uUfNPtY30KTsN27zx5uQIR8g0=;
 b=SZxAq9JH7+cwkCpuOi2FWH0+u6iE/fhNGhXqUzJFFqZCIAFGSDLGozkio/114RvWe1E93cEI
 h6DaUkZREPy9T9D5kQaetnzwlyhkhHKqQ/HBDYw4y4BEPTlko9pbol05jbxm+FcJa5diuU5P
 bcMnhvDR0w3sZW6IDBr7OOenxOE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 5edccae860667f2e2f72ad38 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Sun, 07 Jun 2020 11:09:28
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AC578C433C6; Sun,  7 Jun 2020 11:09:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id BEA0BC433CA;
 Sun,  7 Jun 2020 11:09:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org BEA0BC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>
Subject: [RFC PATCH] iommu/arm-smmu: Remove shutdown callback
Date: Sun,  7 Jun 2020 16:39:18 +0530
Message-Id: <20200607110918.1733-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_040948_951064_4F21813D 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Remove SMMU shutdown callback since it seems to cause more
problems than benefits. With this callback, we need to make
sure that all clients/consumers of SMMU do not perform any
DMA activity once the SMMU is shutdown and translation is
disabled. In other words we need to add shutdown callbacks
for all those clients to make sure they do not perform any
DMA or else we see all kinds of weird crashes during reboot
or shutdown. This is clearly not scalable as the number of
clients of SMMU would vary across SoCs and we would need to
add shutdown callbacks to almost all drivers eventually.
This callback was added for kexec usecase where it was known
to cause memory corruptions when SMMU was not shutdown but
that does not directly relate to SMMU because the memory
corruption could be because of the client of SMMU which is
not shutdown properly before booting into new kernel. So in
that case, we need to identify the client of SMMU causing
the memory corruption and add appropriate shutdown callback
to the client rather than to the SMMU.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/iommu/arm-smmu-v3.c | 6 ------
 drivers/iommu/arm-smmu.c    | 6 ------
 2 files changed, 12 deletions(-)

diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
index 8a908c50c306..634da02fef78 100644
--- a/drivers/iommu/arm-smmu-v3.c
+++ b/drivers/iommu/arm-smmu-v3.c
@@ -4142,11 +4142,6 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static void arm_smmu_device_shutdown(struct platform_device *pdev)
-{
-	arm_smmu_device_remove(pdev);
-}
-
 static const struct of_device_id arm_smmu_of_match[] = {
 	{ .compatible = "arm,smmu-v3", },
 	{ },
@@ -4161,7 +4156,6 @@ static struct platform_driver arm_smmu_driver = {
 	},
 	.probe	= arm_smmu_device_probe,
 	.remove	= arm_smmu_device_remove,
-	.shutdown = arm_smmu_device_shutdown,
 };
 module_platform_driver(arm_smmu_driver);
 
diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 243bc4cb2705..4d80516c789f 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -2276,11 +2276,6 @@ static int arm_smmu_device_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static void arm_smmu_device_shutdown(struct platform_device *pdev)
-{
-	arm_smmu_device_remove(pdev);
-}
-
 static int __maybe_unused arm_smmu_runtime_resume(struct device *dev)
 {
 	struct arm_smmu_device *smmu = dev_get_drvdata(dev);
@@ -2335,7 +2330,6 @@ static struct platform_driver arm_smmu_driver = {
 	},
 	.probe	= arm_smmu_device_probe,
 	.remove	= arm_smmu_device_remove,
-	.shutdown = arm_smmu_device_shutdown,
 };
 module_platform_driver(arm_smmu_driver);
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
