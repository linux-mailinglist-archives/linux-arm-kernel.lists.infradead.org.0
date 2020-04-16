Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FD31AC2CA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=910sKcRUi9xnhdSRFh5n0dQniW635agQpfzJFQ+QfvU=; b=Feo/WJMc6A2GC4w+WFway3uED
	+dw9klEQM9cB7sFVeG1iuDp30SwSWpF4QuYnF/OB9XWv/9EdCcnN9fVB25cPfGLfYnwtAZ9kNN5IX
	9ltAiGXnhQxLC9wwWTdsIYkhUP1OtfkmswWvrSoVmrlO/8gITpq8rtqWPUzUb7RXgbf/OEGhuXGC9
	oRJ63/lY6r2clKu3G/jUjf0NJrm96xj3OPYL31CnOoE/GNyciz7v1igDd+jHMyvf43L88uzGLEGge
	n+BtseVdZZeaaiUUE9c2HWfsumpF+zpEwXouBHjfptM2936cYihIqXkpS871Zpx1rEanq9wz9WNn7
	o7ADyEsEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4eO-00049L-SU; Thu, 16 Apr 2020 13:33:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4eF-000490-2Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:33:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 544F11FB;
 Thu, 16 Apr 2020 06:33:42 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 243AF3F68F;
 Thu, 16 Apr 2020 06:33:40 -0700 (PDT)
Subject: Re: [PATCH 1/2] iommu: arm-smmu-impl: Convert to a generic reset
 implementation
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
References: <cover.1579692800.git.saiprakash.ranjan@codeaurora.org>
 <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cc3e3ed5-b187-c4a1-8229-974821a9e1ad@arm.com>
Date: Thu, 16 Apr 2020 14:33:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <e7ba4dbd8e9c8aedd6f5db1b3453d9782b7943cd.1579692800.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_063343_203189_5EDC36AC 
X-CRM114-Status: GOOD (  22.42  )
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
> Currently the QCOM specific smmu reset implementation is very
> specific to SDM845 SoC and has a wait-for-safe logic which
> may not be required for other SoCs. So move the SDM845 specific
> logic to its specific reset function. Also add SC7180 SMMU
> compatible for calling into QCOM specific implementation.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/iommu/arm-smmu-impl.c |  8 +++++---
>   drivers/iommu/arm-smmu-qcom.c | 16 +++++++++++++---
>   2 files changed, 18 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 74d97a886e93..c75b9d957b70 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -150,6 +150,8 @@ static const struct arm_smmu_impl arm_mmu500_impl = {
>   
>   struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   {
> +	const struct device_node *np = smmu->dev->of_node;
> +
>   	/*
>   	 * We will inevitably have to combine model-specific implementation
>   	 * quirks with platform-specific integration quirks, but everything
> @@ -166,11 +168,11 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   		break;
>   	}
>   
> -	if (of_property_read_bool(smmu->dev->of_node,
> -				  "calxeda,smmu-secure-config-access"))
> +	if (of_property_read_bool(np, "calxeda,smmu-secure-config-access"))
>   		smmu->impl = &calxeda_impl;
>   
> -	if (of_device_is_compatible(smmu->dev->of_node, "qcom,sdm845-smmu-500"))
> +	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500") ||
> +	    of_device_is_compatible(np, "qcom,sc7180-smmu-500"))
>   		return qcom_smmu_impl_init(smmu);
>   
>   	return smmu;
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 24c071c1d8b0..64a4ab270ab7 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -15,8 +15,6 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>   {
>   	int ret;
>   
> -	arm_mmu500_reset(smmu);
> -
>   	/*
>   	 * To address performance degradation in non-real time clients,
>   	 * such as USB and UFS, turn off wait-for-safe on sdm845 based boards,
> @@ -30,8 +28,20 @@ static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>   	return ret;
>   }
>   
> +static int qcom_smmu500_reset(struct arm_smmu_device *smmu)
> +{
> +	const struct device_node *np = smmu->dev->of_node;
> +
> +	arm_mmu500_reset(smmu);
> +
> +	if (of_device_is_compatible(np, "qcom,sdm845-smmu-500"))
> +		return qcom_sdm845_smmu500_reset(smmu);
> +
> +	return 0;
> +}
> +
>   static const struct arm_smmu_impl qcom_smmu_impl = {
> -	.reset = qcom_sdm845_smmu500_reset,
> +	.reset = qcom_smmu500_reset,
>   };

It might be logical to have a separate SDM845 impl rather than 
indirecting within the callback itself, but I'm not too concerned either 
way. For the arm-smmu-impl.c changes,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Thanks,
Robin.

>   
>   struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device *smmu)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
