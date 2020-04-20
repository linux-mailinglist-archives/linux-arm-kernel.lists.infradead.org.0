Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F47F1B1000
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p6URrvNyeMTse4lm9HpANTWuPYOEfQtjuUhGARBzcV8=; b=ECUy5hgSPXxUY5f+K1MDEKZxI
	IyU0AfM/U9wPMStLXIefsNew1iUklZvLXv1LMw33qw7V5O1E+AH1ZSv6Qxhjl1UM6FLLVZrfEspzU
	DA6/2i4QYP3S2CPWtyVqw2IVb1N2q8fCV0NrbLE9V3HHGcqXg4DMzcLEYCfixMipDlDahL4BuQlKv
	v4u8KbO7waDsZsjRqfZE94YqshkB9dvgwRbglBKTFlz1Mk7Czg2PO2LNtIjBD/l+y/NWwKkf599Rl
	kIIeJL+ztJnuWptUXtgRmmlHLYOvrcOqX7I7eGIi6Q1hmpOuZE0TJIIvWiFV9wBjUVI7q5ucajp4p
	E87j4pQ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYJu-0003of-O5; Mon, 20 Apr 2020 15:26:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYJY-0003bt-5x
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:26:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 99BAD31B;
 Mon, 20 Apr 2020 08:26:27 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F9483F73D;
 Mon, 20 Apr 2020 08:26:25 -0700 (PDT)
Subject: Re: [PATCHv2 3/6] iommu/arm-smmu: Implement
 iommu_ops->def_domain_type call-back
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Sibi Sankar <sibis@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Rob Clark <robdclark@gmail.com>
References: <cover.1587392905.git.saiprakash.ranjan@codeaurora.org>
 <558b1aee4c699a0a5b14b325178d22a79958488f.1587392905.git.saiprakash.ranjan@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6dd26176-448a-985c-90fc-7c47088015ff@arm.com>
Date: Mon, 20 Apr 2020 16:26:22 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <558b1aee4c699a0a5b14b325178d22a79958488f.1587392905.git.saiprakash.ranjan@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_082628_331791_29ED264D 
X-CRM114-Status: GOOD (  18.14  )
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

On 2020-04-20 3:37 pm, Sai Prakash Ranjan wrote:
> Implement the new def_domain_type call-back for the ARM
> SMMU driver. We need this to support requesting the domain
> type by the client devices.
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> ---
>   drivers/iommu/arm-smmu.c | 20 ++++++++++++++++++++
>   1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index e622f4e33379..b5d1d52dfbb8 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1609,6 +1609,25 @@ static void arm_smmu_get_resv_regions(struct device *dev,
>   	iommu_dma_get_resv_regions(dev, head);
>   }
>   
> +static int arm_smmu_def_domain_type(struct device *dev)
> +{
> +	struct iommu_fwspec *fwspec;
> +	struct arm_smmu_device *smmu;
> +
> +	fwspec = dev_iommu_fwspec_get(dev);
> +	if (!fwspec || fwspec->ops != &arm_smmu_ops)
> +		return -ENODEV;
> +
> +	smmu = arm_smmu_get_by_fwnode(fwspec->iommu_fwnode);
> +	if (!smmu)
> +		return -ENODEV;
> +

AFAICS this should only ever be called for a device in a group, which 
means an initial ->probe_device has succeeded and rather than 
defensively going the long way round, we can safely assume this:

	struct arm_smmu_master_cfg = dev_iommu_priv_get(dev);
	struct arm_smmu_impl *impl = cfg->smmu->impl;

	if (impl && impl->req_domain)
		return impl->req_domain(dev);

Or have I misunderstood the flow?

Robin.

> +	if (smmu->impl && smmu->impl->req_domain)
> +		return smmu->impl->req_domain(dev);
> +
> +	return 0;
> +}
> +
>   static struct iommu_ops arm_smmu_ops = {
>   	.capable		= arm_smmu_capable,
>   	.domain_alloc		= arm_smmu_domain_alloc,
> @@ -1627,6 +1646,7 @@ static struct iommu_ops arm_smmu_ops = {
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
