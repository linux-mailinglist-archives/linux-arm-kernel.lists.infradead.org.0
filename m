Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FC31AC45A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vaHPfy0H790i7QDOwr46WEao+e8qzsuI1HlHCrLCI7M=; b=ejP1ydh9yeZOHuo2rT1pzxqLY
	gz2196vQ7v6Soei3k79+PpJwsnJ2417jtGkm9idC4GJtp4u5tdECvriMSTZ/KtZfNm6jAot/fsyEG
	tell6BkhH+M++kdaGo6xpQ/btkLDzBbZ9K7p2c1yi9EFxiWwucPpHsufGKqgyqoRZUe81fTgtDCys
	7Nxtsi4g7nptXBpRrFMbaEHaI1aTRlWF4qEiDFEoj/kVHyEQd9/7v9KJFvWTlnXUrDxTlrx/JUf0F
	U2g2Yd1YKJKsumVabDoTkKCdbw8uETVYBMAdT53ISz3yGCV9a1iuGHyzE/kr5Dt9h/+L3StfZU73W
	gwCpevKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP52O-0004bJ-GX; Thu, 16 Apr 2020 13:58:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP52F-0004Zd-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:58:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95ABD1FB;
 Thu, 16 Apr 2020 06:58:30 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4786A3F237;
 Thu, 16 Apr 2020 06:58:27 -0700 (PDT)
Subject: Re: [PATCH 2/2] iommu/arm-smmu: Allow client devices to select direct
 mapping
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3f12cefb-3887-859c-ddf5-c7a0fc755152@arm.com>
Date: Thu, 16 Apr 2020 14:58:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <813cc5b2da10c27db982254b274bf26008a9e6da.1579692800.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_065831_734442_E6B6BDD8 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tomasz Figa <tfiga@chromium.org>, Rajendra Nayak <rnayak@codeaurora.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-22 11:48 am, Sai Prakash Ranjan wrote:
> From: Jordan Crouse <jcrouse@codeaurora.org>
> 
> Some client devices want to directly map the IOMMU themselves instead
> of using the DMA domain. Allow those devices to opt in to direct
> mapping by way of a list of compatible strings.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/iommu/arm-smmu-qcom.c | 39 +++++++++++++++++++++++++++++++++++
>   drivers/iommu/arm-smmu.c      |  3 +++
>   drivers/iommu/arm-smmu.h      |  5 +++++
>   3 files changed, 47 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 64a4ab270ab7..ff746acd1c81 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -3,6 +3,7 @@
>    * Copyright (c) 2019, The Linux Foundation. All rights reserved.
>    */
>   
> +#include <linux/of_device.h>
>   #include <linux/qcom_scm.h>
>   
>   #include "arm-smmu.h"
> @@ -11,6 +12,43 @@ struct qcom_smmu {
>   	struct arm_smmu_device smmu;
>   };
>   
> +static const struct arm_smmu_client_match_data qcom_adreno = {
> +	.direct_mapping = true,
> +};
> +
> +static const struct arm_smmu_client_match_data qcom_mdss = {
> +	.direct_mapping = true,
> +};

Might it make sense to group these by the desired SMMU behaviour rather 
than (apparently) what kind of device the client happens to be, which 
seems like a completely arbitrary distinction from the SMMU driver's PoV?

> +
> +static const struct of_device_id qcom_smmu_client_of_match[] = {
> +	{ .compatible = "qcom,adreno", .data = &qcom_adreno },
> +	{ .compatible = "qcom,mdp4", .data = &qcom_mdss },
> +	{ .compatible = "qcom,mdss", .data = &qcom_mdss },
> +	{ .compatible = "qcom,sc7180-mdss", .data = &qcom_mdss },
> +	{ .compatible = "qcom,sdm845-mdss", .data = &qcom_mdss },
> +	{},
> +};
> +
> +static const struct arm_smmu_client_match_data *
> +qcom_smmu_client_data(struct device *dev)
> +{
> +	const struct of_device_id *match =
> +		of_match_device(qcom_smmu_client_of_match, dev);
> +
> +	return match ? match->data : NULL;

of_device_get_match_data() is your friend.

> +}
> +
> +static int qcom_smmu_request_domain(struct device *dev)
> +{
> +	const struct arm_smmu_client_match_data *client;
> +
> +	client = qcom_smmu_client_data(dev);
> +	if (client)
> +		iommu_request_dm_for_dev(dev);
> +
> +	return 0;
> +}
> +
>   static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>   {
>   	int ret;
> @@ -41,6 +79,7 @@ static int qcom_smmu500_reset(struct arm_smmu_device *smmu)
>   }
>   
>   static const struct arm_smmu_impl qcom_smmu_impl = {
> +	.req_domain = qcom_smmu_request_domain,
>   	.reset = qcom_smmu500_reset,
>   };
>   
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 16c4b87af42b..67dd9326247a 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1448,6 +1448,9 @@ static int arm_smmu_add_device(struct device *dev)
>   	device_link_add(dev, smmu->dev,
>   			DL_FLAG_PM_RUNTIME | DL_FLAG_AUTOREMOVE_SUPPLIER);
>   
> +	if (smmu->impl && smmu->impl->req_domain)
> +		return smmu->impl->req_domain(dev);
> +

There are about 5 different patchsets flying around at the moment that 
all touch default domain allocation, so this is a fast-moving target, 
but I think where the dust should settle is with arm_smmu_ops forwarding 
.def_domain_type (or whatever it ends up as) calls to arm_smmu_impl as 
appropriate.

>   	return 0;
>   
>   out_cfg_free:
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 8d1cd54d82a6..059dc9c39f64 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -244,6 +244,10 @@ enum arm_smmu_arch_version {
>   	ARM_SMMU_V2,
>   };
>   
> +struct arm_smmu_client_match_data {
> +	bool direct_mapping;
> +};

Does this need to be public? I don't see the other users...

Robin.

> +
>   enum arm_smmu_implementation {
>   	GENERIC_SMMU,
>   	ARM_MMU500,
> @@ -386,6 +390,7 @@ struct arm_smmu_impl {
>   	int (*init_context)(struct arm_smmu_domain *smmu_domain);
>   	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
>   			 int status);
> +	int (*req_domain)(struct device *dev);
>   };
>   
>   static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
