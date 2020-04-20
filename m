Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1731B1190
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 18:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mabm7tzX+n5dblSz4/4WuUfr7Nsd85sBydNnsdd/cio=; b=uTnz3foU1ijZO2sD1ztaqp3fX
	38fiaq6tRCb83M3Mst8SMdITc5iIfXdNumSY1emCk6/CiRoWyRl7WXnpoG3YOpmPygiCw9zXEbmhD
	HDXfuB+4yscKJ2C50pJvlj0QnBoNSsLTkjuWo8nZ6JIvGCJqUUL/A5nmfbypoL6PsceqjDm3RnpJj
	sruloqkdQzsrjdMFVFULHffg4Ho2kWOnmnpLQSv9ItqN/ub//O9p4C+T5tmaUM9lxUaCkwdZZCtE8
	4ybfKRKIKdL2zGaXWSQmrInRh1ibuDxM2P0Iy72GvrOmjz1t+3O0QAnhnbBMEHXd9tnDsMq0etvfu
	ltpZ3kikA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZH7-0008Oe-96; Mon, 20 Apr 2020 16:28:01 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZGw-0008N1-VX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:27:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1587400069; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=JmEUkT/HF+RFoziT0BX0UCsQ/PoZeQDMFSY5vkJTons=;
 b=ZtdkXgGUs9YiCzeAD/P4w/1/PabkApNwtgjTkKn+2s1u9uSkecVvrcZ5XzVBYOV1m3PEJDj2
 XoAoN9SJ0xUGnGznIR4vGdExhk7fZkyhiYOeVq6hbDeSfB7IHQ7Kof+kPTac0hbkp8suPpwc
 4dJYsIynLa864ld54pZclLyGm9E=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e9dcd84.7f51efac60a0-smtp-out-n02;
 Mon, 20 Apr 2020 16:27:48 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 222A4C4478C; Mon, 20 Apr 2020 16:27:47 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 50479C433CB;
 Mon, 20 Apr 2020 16:27:46 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 20 Apr 2020 21:57:46 +0530
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCHv2 3/6] iommu/arm-smmu: Implement
 iommu_ops->def_domain_type call-back
In-Reply-To: <6dd26176-448a-985c-90fc-7c47088015ff@arm.com>
References: <cover.1587392905.git.saiprakash.ranjan@codeaurora.org>
 <558b1aee4c699a0a5b14b325178d22a79958488f.1587392905.git.saiprakash.ranjan@codeaurora.org>
 <6dd26176-448a-985c-90fc-7c47088015ff@arm.com>
Message-ID: <10cac2a08ae90afc88cbadff53a41ec5@codeaurora.org>
X-Sender: saiprakash.ranjan@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_092751_080811_655825F8 
X-CRM114-Status: GOOD (  15.12  )
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

Hi Robin,

On 2020-04-20 20:56, Robin Murphy wrote:
> On 2020-04-20 3:37 pm, Sai Prakash Ranjan wrote:
>> Implement the new def_domain_type call-back for the ARM
>> SMMU driver. We need this to support requesting the domain
>> type by the client devices.
>> 
>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>> ---
>>   drivers/iommu/arm-smmu.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>> 
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index e622f4e33379..b5d1d52dfbb8 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -1609,6 +1609,25 @@ static void arm_smmu_get_resv_regions(struct 
>> device *dev,
>>   	iommu_dma_get_resv_regions(dev, head);
>>   }
>>   +static int arm_smmu_def_domain_type(struct device *dev)
>> +{
>> +	struct iommu_fwspec *fwspec;
>> +	struct arm_smmu_device *smmu;
>> +
>> +	fwspec = dev_iommu_fwspec_get(dev);
>> +	if (!fwspec || fwspec->ops != &arm_smmu_ops)
>> +		return -ENODEV;
>> +
>> +	smmu = arm_smmu_get_by_fwnode(fwspec->iommu_fwnode);
>> +	if (!smmu)
>> +		return -ENODEV;
>> +
> 
> AFAICS this should only ever be called for a device in a group, which
> means an initial ->probe_device has succeeded and rather than
> defensively going the long way round, we can safely assume this:
> 
> 	struct arm_smmu_master_cfg = dev_iommu_priv_get(dev);
> 	struct arm_smmu_impl *impl = cfg->smmu->impl;
> 
> 	if (impl && impl->req_domain)
> 		return impl->req_domain(dev);
> 

Yes you are right, will use this.

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
