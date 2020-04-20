Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CF41B1268
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:00:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uvw8PYGR89ktQ1Noz69J2DP1H80lgSPEnaLE726k3Sw=; b=Q9EsTny7e2/lUP+J6dl+O7Y0i
	qQwi5fhW35MO8SMthoV78TuUv5lbmCDFzTeRhBz1bvOvFqPLCUCrN008mapExS0h+Z8mawNzaqhnl
	YxbsBBhKxJiTKp29pBux/r3DGW48Fc3GyhnT/gD1ziN84L2pPo2Ip/xvOkgnMOQpKpe8qTXwI3idM
	CUQ/RzVo+1tuaOOBp7W5DocvqvS7gjv2Dkda80OyGx8LE4DHeCePmeikf3aKK0jxUDRPgTI+5CAhy
	j7HBlGiFL0H5d7lARFXFtzM4mC7UCrb2USL/hGmUHIo7Srka2iHU2FW5WI6WHtFQ8JkgMaD3KnDdb
	IIy4tQ7Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZmG-00044F-SX; Mon, 20 Apr 2020 17:00:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZlv-00043a-LM
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 16:59:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21D5831B;
 Mon, 20 Apr 2020 09:59:51 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EC623F73D;
 Mon, 20 Apr 2020 09:59:47 -0700 (PDT)
Subject: Re: [PATCHv3 3/6] iommu/arm-smmu: Implement
 iommu_ops->def_domain_type call-back
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
References: <cover.1587400573.git.saiprakash.ranjan@codeaurora.org>
 <d6be59d4f90d997e24dc4c496c0247626e46415f.1587400573.git.saiprakash.ranjan@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e68ad59e-d132-dd06-1ceb-30e37f95a19b@arm.com>
Date: Mon, 20 Apr 2020 17:59:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <d6be59d4f90d997e24dc4c496c0247626e46415f.1587400573.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_095951_743490_1CA8EED7 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-20 5:42 pm, Sai Prakash Ranjan wrote:
> Implement the new def_domain_type call-back for the ARM
> SMMU driver. We need this to support requesting the domain
> type by the client devices.

Modulo any further changes to the default domain rework,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/iommu/arm-smmu.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index e622f4e33379..b345a86085ce 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1609,6 +1609,17 @@ static void arm_smmu_get_resv_regions(struct device *dev,
>   	iommu_dma_get_resv_regions(dev, head);
>   }
>   
> +static int arm_smmu_def_domain_type(struct device *dev)
> +{
> +	struct arm_smmu_master_cfg *cfg = dev_iommu_priv_get(dev);
> +	const struct arm_smmu_impl *impl = cfg->smmu->impl;
> +
> +	if (impl && impl->def_domain_type)
> +		return impl->def_domain_type(dev);
> +
> +	return 0;
> +}
> +
>   static struct iommu_ops arm_smmu_ops = {
>   	.capable		= arm_smmu_capable,
>   	.domain_alloc		= arm_smmu_domain_alloc,
> @@ -1627,6 +1638,7 @@ static struct iommu_ops arm_smmu_ops = {
>   	.of_xlate		= arm_smmu_of_xlate,
>   	.get_resv_regions	= arm_smmu_get_resv_regions,
>   	.put_resv_regions	= generic_iommu_put_resv_regions,
> +	.def_domain_type	= arm_smmu_def_domain_type,
>   	.pgsize_bitmap		= -1UL, /* Restricted during device attach */
>   };
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
