Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB1A4A97C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 20:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBkrch8AK/GtmDsSvmoXj+9meNsN58ymjqZa8Xbz4bY=; b=GobFdmzzxbJINI
	VoNKNPxavBrARiKztJxR59LqfiAxRCZVP0/eYHvvfBaz+hycqTnlqwnKZemettkxjo7oxZhDMgOFp
	W6v4ppbgVeWchGCL68opIy3YyLWiPDBziMVurEB3VK0FGRB9O+7EcBe2tgsU/BdLjDBPH1F9v1OIu
	T+aRGGUGxJILTKMHvTLeueiq9fQReq/dDkJRbXSjAvOLVLTv+/KWrP7S5y+mdSXtNCkfFL9wBi7Je
	CzI0PvyDyeMckeWNZJ8h+nOoshYnrr5sQoBGSiMavDCk4rURDwywhK06OCCPHUNTbdUjNrt9oinp4
	C2ri0B021CAskR1mrPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdIXb-0005H4-4Z; Tue, 18 Jun 2019 18:09:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdIXP-0005GB-PA
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 18:08:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91FB9344;
 Tue, 18 Jun 2019 11:08:54 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2194F3F738;
 Tue, 18 Jun 2019 11:08:53 -0700 (PDT)
Date: Tue, 18 Jun 2019 19:08:51 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
Subject: Re: [PATCH 3/8] iommu/arm-smmu-v3: Support platform SSID
Message-ID: <20190618180851.GK4270@fuggles.cambridge.arm.com>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-4-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610184714.6786-4-jean-philippe.brucker@arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_110855_856698_D50BC51C 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 07:47:09PM +0100, Jean-Philippe Brucker wrote:
> For platform devices that support SubstreamID (SSID), firmware provides
> the number of supported SSID bits. Restrict it to what the SMMU supports
> and cache it into master->ssid_bits.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 11 +++++++++++
>  drivers/iommu/of_iommu.c    |  6 +++++-
>  include/linux/iommu.h       |  1 +
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 4d5a694f02c2..3254f473e681 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -604,6 +604,7 @@ struct arm_smmu_master {
>  	struct list_head		domain_head;
>  	u32				*sids;
>  	unsigned int			num_sids;
> +	unsigned int			ssid_bits;
>  	bool				ats_enabled		:1;
>  };
>  
> @@ -2097,6 +2098,16 @@ static int arm_smmu_add_device(struct device *dev)
>  		}
>  	}
>  
> +	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> +
> +	/*
> +	 * If the SMMU doesn't support 2-stage CD, limit the linear
> +	 * tables to a reasonable number of contexts, let's say
> +	 * 64kB / sizeof(ctx_desc) = 1024 = 2^10
> +	 */
> +	if (!(smmu->features & ARM_SMMU_FEAT_2_LVL_CDTAB))
> +		master->ssid_bits = min(master->ssid_bits, 10U);

Please introduce a #define for the 10, so that it is computed in the way
you describe in the comment (a bit like we do for things like queue sizes).

> +
>  	group = iommu_group_get_for_dev(dev);
>  	if (!IS_ERR(group)) {
>  		iommu_group_put(group);
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index f04a6df65eb8..04f4f6b95d82 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -206,8 +206,12 @@ const struct iommu_ops *of_iommu_configure(struct device *dev,
>  			if (err)
>  				break;
>  		}
> -	}
>  
> +		fwspec = dev_iommu_fwspec_get(dev);
> +		if (!err && fwspec)
> +			of_property_read_u32(master_np, "pasid-num-bits",
> +					     &fwspec->num_pasid_bits);
> +	}

Hmm. Do you know if there's anything in ACPI for this?

Otherwise, patch looks fine. Thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
