Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509651B1214
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bvBQomA/dIGpcByHrYUIPL8slwiGBnkvgBhfx6KIPw=; b=qPe06KZl0D+sB3
	sJplUhTL5k1QIl6acfTAxSEniJ5dXEeCfch68PWrjMqT1s3rzOgDYajA75SCzN182RygPPIg+n3cx
	8OOrPopF7lf+GtJfKZCJRGKuB6bfSKbkLHZHvbgHhnEAdKzl0Zfz1ayxGSTrQXeICDuSf4bzrWEii
	38n/EO8sHObgAaEIH7wnDiy0LL1xKZD2KtXdigtKKw41SJ5xdrC2cL4+mHYO205FvYp+qK4e8ofYn
	x5cUpuQPIy/UCOWSYjlyeLjDf5p+1eIPF07HY2+zN32K36hSMNR0m27BajUMMjRWtSXX/8vh/tgZp
	64IOdjYriUWzUhLVn1Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZW1-0004q2-Vf; Mon, 20 Apr 2020 16:43:26 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZVc-00047E-A7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:43:04 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587400981; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=2jkj6FYS9Zrzsber60g6ftMlAkC4FKIMkrULV93BavQ=;
 b=I3NeplcCYQV/2r18sMNH6EDIQP3O6PFf1ZAl49pwawbH5MFbYVXePjB+0a43/yB16u+XUTAb
 /xEVOyPzOCzQf2uhXJzhlGYQR3ZfNqttLgOvL9marIAAMM1iw0sMyuDRL4egTqa24rXNlQPu
 4BuWzHoZGGR3FXZUl2jJkOWJcsE=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9dd101.7f4789794ae8-smtp-out-n01;
 Mon, 20 Apr 2020 16:42:41 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 83C13C44791; Mon, 20 Apr 2020 16:42:39 +0000 (UTC)
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
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 85681C43636;
 Mon, 20 Apr 2020 16:42:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 85681C43636
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
Subject: [PATCHv3 3/6] iommu/arm-smmu: Implement iommu_ops->def_domain_type
 call-back
Date: Mon, 20 Apr 2020 22:12:01 +0530
Message-Id: <d6be59d4f90d997e24dc4c496c0247626e46415f.1587400573.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094301_703151_16F7B49E 
X-CRM114-Status: GOOD (  13.45  )
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

Implement the new def_domain_type call-back for the ARM
SMMU driver. We need this to support requesting the domain
type by the client devices.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 drivers/iommu/arm-smmu.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index e622f4e33379..b345a86085ce 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1609,6 +1609,17 @@ static void arm_smmu_get_resv_regions(struct device *dev,
 	iommu_dma_get_resv_regions(dev, head);
 }
 
+static int arm_smmu_def_domain_type(struct device *dev)
+{
+	struct arm_smmu_master_cfg *cfg = dev_iommu_priv_get(dev);
+	const struct arm_smmu_impl *impl = cfg->smmu->impl;
+
+	if (impl && impl->def_domain_type)
+		return impl->def_domain_type(dev);
+
+	return 0;
+}
+
 static struct iommu_ops arm_smmu_ops = {
 	.capable		= arm_smmu_capable,
 	.domain_alloc		= arm_smmu_domain_alloc,
@@ -1627,6 +1638,7 @@ static struct iommu_ops arm_smmu_ops = {
 	.of_xlate		= arm_smmu_of_xlate,
 	.get_resv_regions	= arm_smmu_get_resv_regions,
 	.put_resv_regions	= generic_iommu_put_resv_regions,
+	.def_domain_type	= arm_smmu_def_domain_type,
 	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
 };
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
