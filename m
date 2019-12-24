Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C4D129CF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 03:57:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PUNi/pVNooM9FqIeO9KJQsys6rtYPLnesv/FS/l3MuU=; b=HzCYik3s8TLT4EiH1YfEmrPqd
	bsFnuV/dc66aaP48U3FZSYGcPHtDS+YvANZCNRDP2IV6qmmCSFd71QhZIRkK8zU10HBhgHisHQcRH
	bTI2uXw0it2GATbbFoub1EzLCGRD9hRtVQWIGUoY5mBZe+IQkvaVq2fm+0D8TB8PHrmFPWnJ6XhFP
	h278v7rFfydvJqd3vIy7opjVAAnJMHu8UQwz07AZK0WNVySKxvecc9keNv4BcwVFm1E669C+sUUeU
	Vbz/fD+sI2MMWzOTEJYpyidoz1KTS3MJVQCEv6W2EGObcsHvBCUIAxkOaWuylhC0/prYqTrdNovh5
	ylX366GyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijaOF-0003CR-3C; Tue, 24 Dec 2019 02:57:43 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijaO4-0003C5-Hh
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 02:57:34 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1577156251; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=mF5Yk5W/LFHhcmsl8A7AIYFZxAxJ+b22oU+U2E97r6g=;
 b=YWrQ/E8ynl3I0+ZGXzdNpqeBsC6J/Ckm9zm9rwGGeT/J4+gKhE0WDw63myqWnRgUAG1nB8nm
 vtBSuSLbYwB1nKlGWqTSMiOJoPWaWOcuftyRblEgMNXcC52ITqA+BICavB1fEnaOwHV48UQC
 iLAyqjFduAmPL6ACFScRkB8ZW3s=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e017e9a.7fc6d5df4ce0-smtp-out-n01;
 Tue, 24 Dec 2019 02:57:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 9B16CC447A0; Tue, 24 Dec 2019 02:57:29 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,URIBL_BLOCKED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: smasetty)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C5E8DC43383;
 Tue, 24 Dec 2019 02:57:28 +0000 (UTC)
MIME-Version: 1.0
Date: Tue, 24 Dec 2019 08:27:28 +0530
From: smasetty@codeaurora.org
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v3 5/5] drm/msm/a6xx: Support split pagetables
In-Reply-To: <1576514271-15687-6-git-send-email-jcrouse@codeaurora.org>
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-6-git-send-email-jcrouse@codeaurora.org>
Message-ID: <8aec2a4f74fede1cf616b9e2eece3e8e@codeaurora.org>
X-Sender: smasetty@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_185732_974351_050EEB6E 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 freedreno@lists.freedesktop.org, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-16 22:07, Jordan Crouse wrote:
> Attempt to enable split pagetables if the arm-smmu driver supports it.
> This will move the default address space from the default region to
> the address range assigned to TTBR1. The behavior should be transparent
> to the driver for now but it gets the default buffers out of the way
> when we want to start swapping TTBR0 for context-specific pagetables.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 52 
> ++++++++++++++++++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> index 5dc0b2c..1c6da93 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -811,6 +811,56 @@ static unsigned long a6xx_gpu_busy(struct msm_gpu 
> *gpu)
>  	return (unsigned long)busy_time;
>  }
> 
> +static struct msm_gem_address_space *
> +a6xx_create_address_space(struct msm_gpu *gpu, struct platform_device 
> *pdev)
> +{
> +	struct iommu_domain *iommu = iommu_domain_alloc(&platform_bus_type);
> +	struct msm_gem_address_space *aspace;
> +	struct msm_mmu *mmu;
> +	u64 start, size;
> +	u32 val = 1;
> +	int ret;
> +
> +	if (!iommu)
> +		return ERR_PTR(-ENOMEM);
> +
> +	/*
> +	 * Try to request split pagetables - the request has to be made 
> before
> +	 * the domian is attached
> +	 */
> +	iommu_domain_set_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> +
> +	mmu = msm_iommu_new(&pdev->dev, iommu);
> +	if (IS_ERR(mmu)) {
> +		iommu_domain_free(iommu);
> +		return ERR_CAST(mmu);
> +	}
> +
> +	/*
> +	 * After the domain is attached, see if the split tables were 
> actually
> +	 * successful.
> +	 */
> +	ret = iommu_domain_get_attr(iommu, DOMAIN_ATTR_SPLIT_TABLES, &val);
> +	if (!ret && val) {
> +		/*
> +		 * The aperture start will be at the beginning of the TTBR1
> +		 * space so use that as a base
> +		 */
> +		start = iommu->geometry.aperture_start;
> +		size = 0xffffffff;
This should be the va_end and not the size
> +	} else {
> +		/* Otherwise use the legacy 32 bit region */
> +		start = SZ_16M;
> +		size = 0xffffffff - SZ_16M;
same as above
> +	}
> +
> +	aspace = msm_gem_address_space_create(mmu, "gpu", start, size);
> +	if (IS_ERR(aspace))
> +		iommu_domain_free(iommu);
> +
> +	return aspace;
> +}
> +
>  static const struct adreno_gpu_funcs funcs = {
>  	.base = {
>  		.get_param = adreno_get_param,
> @@ -832,7 +882,7 @@ static const struct adreno_gpu_funcs funcs = {
>  #if defined(CONFIG_DRM_MSM_GPU_STATE)
>  		.gpu_state_get = a6xx_gpu_state_get,
>  		.gpu_state_put = a6xx_gpu_state_put,
> -		.create_address_space = adreno_iommu_create_address_space,
> +		.create_address_space = a6xx_create_address_space,
>  #endif
>  	},
>  	.get_timestamp = a6xx_get_timestamp,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
