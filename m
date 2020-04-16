Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5021ACD98
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 18:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WTUkdmgOvh9zfNDQ1Vz8o4ou2BdFssbkxVXSfMHlGOs=; b=AN969IySfHwqQeRSF17Fsu2XC
	6H65fEMUS6kkkRM9mZYjCRji6jzbHmt7C8++h0hBtheoSL682CKkn1D4XTYvPPc+S+iMuzosdKm58
	vitc4FjRweNIstX4qaEEw1v2MltSdpvKsFq3Fpo1hikdBE/LS5hFrR+p1JZJ24kQpyAp/4CURVmeP
	bWGhvbzOdorkVlc4ffoqZvCFzOspFzzj42Xx3KQmHcckewFeQOw94ZE3IPZ8x9Q8dsnvuptEanhFE
	3rILWysKq7edc2I13HqO0QMdpryWnPNDOhfVuF5cGygkUbLdm2GU0JVJ1cdZ3NmrirYk76cYE8YZx
	2PewzJtHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP7JC-00067S-Fi; Thu, 16 Apr 2020 16:24:10 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP7J3-000679-9u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 16:24:02 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587054241; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=bwde/P04Uj3GTzNnCbAcH3UyrPWOeOqsIWQwb1Jxqqc=;
 b=IKu6V5IuuazSR9BpaMw46eUu60cXGw7jQA/t0KpkP2X7qUKugLQZZA6Tr/+DqM4bGdW73y4O
 BzvSTEHW/ACMQ4O65Z/TZ27UiM2SOpYdaWZcO+53uy4sjg3NgpHjSSRNO28ZmYimy2Y/Q2vB
 YgZn8C9KlaX6Pw5ned5bQEEHlDw=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9886a0.7ff1f3a07ab0-smtp-out-n05;
 Thu, 16 Apr 2020 16:24:00 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 95FBAC4478F; Thu, 16 Apr 2020 16:23:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8065AC433BA;
 Thu, 16 Apr 2020 16:23:58 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 16 Apr 2020 21:53:58 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
In-Reply-To: <3f12cefb-3887-859c-ddf5-c7a0fc755152@arm.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <3f12cefb-3887-859c-ddf5-c7a0fc755152@arm.com>
Message-ID: <540fc55811d0a60a929ff1f694d6d271@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_092401_401065_76E539A0 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajendra Nayak <rnayak@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Tomasz Figa <tfiga@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 2020-04-16 19:28, Robin Murphy wrote:
> On 2020-01-22 11:48 am, Sai Prakash Ranjan wrote:
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
>>   drivers/iommu/arm-smmu-qcom.c | 39 
>> +++++++++++++++++++++++++++++++++++
>>   drivers/iommu/arm-smmu.c      |  3 +++
>>   drivers/iommu/arm-smmu.h      |  5 +++++
>>   3 files changed, 47 insertions(+)
>> 
>> diff --git a/drivers/iommu/arm-smmu-qcom.c 
>> b/drivers/iommu/arm-smmu-qcom.c
>> index 64a4ab270ab7..ff746acd1c81 100644
>> --- a/drivers/iommu/arm-smmu-qcom.c
>> +++ b/drivers/iommu/arm-smmu-qcom.c
>> @@ -3,6 +3,7 @@
>>    * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>>    */
>>   +#include <linux/of_device.h>
>>   #include <linux/qcom_scm.h>
>>     #include "arm-smmu.h"
>> @@ -11,6 +12,43 @@ struct qcom_smmu {
>>   	struct arm_smmu_device smmu;
>>   };
>>   +static const struct arm_smmu_client_match_data qcom_adreno = {
>> +	.direct_mapping = true,
>> +};
>> +
>> +static const struct arm_smmu_client_match_data qcom_mdss = {
>> +	.direct_mapping = true,
>> +};
> 
> Might it make sense to group these by the desired SMMU behaviour
> rather than (apparently) what kind of device the client happens to be,
> which seems like a completely arbitrary distinction from the SMMU
> driver's PoV?
> 

Sorry, I did not get the "grouping by the desired SMMU behaviour" thing.
Could you please give some more details?

>> +
>> +static const struct of_device_id qcom_smmu_client_of_match[] = {
>> +	{ .compatible = "qcom,adreno", .data = &qcom_adreno },
>> +	{ .compatible = "qcom,mdp4", .data = &qcom_mdss },
>> +	{ .compatible = "qcom,mdss", .data = &qcom_mdss },
>> +	{ .compatible = "qcom,sc7180-mdss", .data = &qcom_mdss },
>> +	{ .compatible = "qcom,sdm845-mdss", .data = &qcom_mdss },
>> +	{},
>> +};
>> +
>> +static const struct arm_smmu_client_match_data *
>> +qcom_smmu_client_data(struct device *dev)
>> +{
>> +	const struct of_device_id *match =
>> +		of_match_device(qcom_smmu_client_of_match, dev);
>> +
>> +	return match ? match->data : NULL;
> 
> of_device_get_match_data() is your friend.
> 

Ok will use it.

>> +}
>> +
>> +static int qcom_smmu_request_domain(struct device *dev)
>> +{
>> +	const struct arm_smmu_client_match_data *client;
>> +
>> +	client = qcom_smmu_client_data(dev);
>> +	if (client)
>> +		iommu_request_dm_for_dev(dev);
>> +
>> +	return 0;
>> +}
>> +
>>   static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>>   {
>>   	int ret;
>> @@ -41,6 +79,7 @@ static int qcom_smmu500_reset(struct arm_smmu_device 
>> *smmu)
>>   }
>>     static const struct arm_smmu_impl qcom_smmu_impl = {
>> +	.req_domain = qcom_smmu_request_domain,
>>   	.reset = qcom_smmu500_reset,
>>   };
>>   diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index 16c4b87af42b..67dd9326247a 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -1448,6 +1448,9 @@ static int arm_smmu_add_device(struct device 
>> *dev)
>>   	device_link_add(dev, smmu->dev,
>>   			DL_FLAG_PM_RUNTIME | DL_FLAG_AUTOREMOVE_SUPPLIER);
>>   +	if (smmu->impl && smmu->impl->req_domain)
>> +		return smmu->impl->req_domain(dev);
>> +
> 
> There are about 5 different patchsets flying around at the moment that
> all touch default domain allocation, so this is a fast-moving target,
> but I think where the dust should settle is with arm_smmu_ops
> forwarding .def_domain_type (or whatever it ends up as) calls to
> arm_smmu_impl as appropriate.
> 

I'll wait till the dust settles down and then post the next version.

>>   	return 0;
>>     out_cfg_free:
>> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
>> index 8d1cd54d82a6..059dc9c39f64 100644
>> --- a/drivers/iommu/arm-smmu.h
>> +++ b/drivers/iommu/arm-smmu.h
>> @@ -244,6 +244,10 @@ enum arm_smmu_arch_version {
>>   	ARM_SMMU_V2,
>>   };
>>   +struct arm_smmu_client_match_data {
>> +	bool direct_mapping;
>> +};
> 
> Does this need to be public? I don't see the other users...
> 

Will move this out.

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
