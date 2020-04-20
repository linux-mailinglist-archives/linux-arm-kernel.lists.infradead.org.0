Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 764591B1197
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=db2F1DFIB8dgtAj8JiYD4EnFEzvLVbC8glXLVYlIbQg=; b=EnkjbVWFWXWRg5Wu3ZxPCIlfo
	6UyX2km5E6QHircX2nnlRRMLFcZdzRpBsfPMMvxpRXtKrOo5W7prQTxWNsv6g/dq1Gkq7hwgCHw4G
	DVnFxaWpBhHam4UcXFUbIumTGOa9uE+Wi8j+8Ez+dGS5Fm4sgQJxUt9FO6KQmpbpiQPUndZbHxnao
	/w4FMm1vSOo6z7JGodaNb1+xwo7lm3hWgOeIHWdU8AhXHHhCKuZZLwf5Oa8pqGaA5UvyPsdefh53Q
	ZiyLBCNS/a/0+5p1d0Kas5EREQsYMf0h/HcDtONldPu6w9YMshwTZo5gN+7eOJ/72I3XhYSRhrQP7
	gOuB8SVHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZHx-0000tA-BS; Mon, 20 Apr 2020 16:28:53 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZHd-0000ga-On
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:28:38 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587400116; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=QA9CZuPAM8s1GI09MkFEN/LL8wgIB+Q0f+qXwJ/VpWg=;
 b=O6RsVzYpwLJb5RvzPgFWTepVi3lbYdNgfuuZCb75HdsVy/SUm2rTIDpR1d6UAN48fQ7yzs9T
 +QpBm37COQOpJmN/kHqHMSKbPeH9azflz/5TmfTHEVGg4iavHhFqjctQ1Hhhw1efHc9dqzwO
 o1ydJgOquyIeNo96f7kVkKqCwUM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9dcdad.7f832c654d18-smtp-out-n01;
 Mon, 20 Apr 2020 16:28:29 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D9349C433D2; Mon, 20 Apr 2020 16:28:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 3245DC433D2;
 Mon, 20 Apr 2020 16:28:26 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 20 Apr 2020 21:58:26 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv2 2/6] iommu/arm-smmu: Allow client devices to select
 direct mapping
In-Reply-To: <e35b10dc-8e58-f201-8485-9543dafbadfe@arm.com>
References: <cover.1587392905.git.saiprakash.ranjan@codeaurora.org>
 <14539e787e6d8b7bd0a6d8f8a001baae6f691988.1587392905.git.saiprakash.ranjan@codeaurora.org>
 <e35b10dc-8e58-f201-8485-9543dafbadfe@arm.com>
Message-ID: <65f21f15b90f73e16c0bb5bb75e835e6@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092836_571074_587B73A0 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark <robdclark@gmail.com>,
 iommu@lists.linux-foundation.org, Sibi Sankar <sibis@codeaurora.org>,
 Stephen Boyd <swboyd@chromium.org>, Will Deacon <will@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-20 21:27, Robin Murphy wrote:
> On 2020-04-20 3:37 pm, Sai Prakash Ranjan wrote:
>> From: Jordan Crouse <jcrouse@codeaurora.org>
>> 
>> Some client devices want to directly map the IOMMU themselves instead
>> of using the DMA domain. Allow those devices to opt in to direct
>> mapping by way of a list of compatible strings.
>> 
>> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
>> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>   drivers/iommu/arm-smmu-qcom.c | 19 +++++++++++++++++++
>>   drivers/iommu/arm-smmu.h      |  1 +
>>   2 files changed, 20 insertions(+)
>> 
>> diff --git a/drivers/iommu/arm-smmu-qcom.c 
>> b/drivers/iommu/arm-smmu-qcom.c
>> index 64a4ab270ab7..0b3f159065aa 100644
>> --- a/drivers/iommu/arm-smmu-qcom.c
>> +++ b/drivers/iommu/arm-smmu-qcom.c
>> @@ -3,6 +3,7 @@
>>    * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>>    */
>>   +#include <linux/of_device.h>
>>   #include <linux/qcom_scm.h>
>>     #include "arm-smmu.h"
>> @@ -11,6 +12,23 @@ struct qcom_smmu {
>>   	struct arm_smmu_device smmu;
>>   };
>>   +static const struct of_device_id qcom_smmu_client_of_match[] = {
>> +	{ .compatible = "qcom,adreno" },
>> +	{ .compatible = "qcom,mdp4" },
>> +	{ .compatible = "qcom,mdss" },
>> +	{ .compatible = "qcom,sc7180-mdss" },
>> +	{ .compatible = "qcom,sdm845-mdss" },
>> +	{ }
>> +};
>> +
>> +static int qcom_smmu_request_domain(struct device *dev)
>> +{
>> +	const struct of_device_id *match =
>> +		of_match_device(qcom_smmu_client_of_match, dev);
>> +
>> +	return match ? IOMMU_DOMAIN_IDENTITY : 0;
>> +}
>> +
>>   static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>>   {
>>   	int ret;
>> @@ -41,6 +59,7 @@ static int qcom_smmu500_reset(struct arm_smmu_device 
>> *smmu)
>>   }
>>     static const struct arm_smmu_impl qcom_smmu_impl = {
>> +	.req_domain = qcom_smmu_request_domain,
>>   	.reset = qcom_smmu500_reset,
>>   };
>>   diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
>> index 8d1cd54d82a6..662fdb4dccd2 100644
>> --- a/drivers/iommu/arm-smmu.h
>> +++ b/drivers/iommu/arm-smmu.h
>> @@ -386,6 +386,7 @@ struct arm_smmu_impl {
>>   	int (*init_context)(struct arm_smmu_domain *smmu_domain);
>>   	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
>>   			 int status);
>> +	int (*req_domain)(struct device *dev);
> 
> Nit: since the point is to implement the full
> iommu_ops::def_domain_type interface, can we call it def_domain_type
> please?
> 

Sure, will send the next version shortly.

Thanks,
Sai

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a 
member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
