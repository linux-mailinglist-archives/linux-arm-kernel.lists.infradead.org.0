Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089ACB0D4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LCEdeQLq4eUG0FmEBCDNwGUrr0hcG9FPc2+TBIYKqc=; b=pDRzyWeY9zq5ib
	VtLXGXSp5IWUV3IzKtma8QSUaY/xECrtuMPQ38G3CbSQtWZO9Mjo4DXn254MIiOEGsW5X+EXD0JNM
	3kze+4GEAZ2UiO7drDjdEkVWHmXZdYejt3T+eLGOFkvZRYn+6IOgxi9DjSBXwI3sS6U7ffaGYCRGV
	1AIolZeLWLYxX5bbyapLFmgfc7tdtNC5eY9aV5hDTN+F5xZKsJtixIsIjbPcfjoFwKHRg6AD4iqGq
	FvXO4dzJk34KLpTfpFSWPlzMSOtXq0YO8GYKy7qPuMg/anfi1BIp/svtUexnjqViZxykKbH4NhoAj
	gmZZYMJ/8ZQYQI7AP7zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Mjy-0004oO-L2; Thu, 12 Sep 2019 10:54:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Mjb-0004Uy-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:53:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D01551000;
 Thu, 12 Sep 2019 03:53:54 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF10C3F59C;
 Thu, 12 Sep 2019 03:53:53 -0700 (PDT)
Subject: Re: [PATCH 3/3] iommu/io-pgtable-arm: Allow coherent walks for Mali
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org
References: <cover.1568211045.git.robin.murphy@arm.com>
 <8eb563978e7e872ddde45c0413e1a3f30b792658.1568211045.git.robin.murphy@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <5aee1c30-65ba-a608-6033-dedf004b24ea@arm.com>
Date: Thu, 12 Sep 2019 11:53:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8eb563978e7e872ddde45c0413e1a3f30b792658.1568211045.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_035356_015501_618D39CA 
X-CRM114-Status: GOOD (  18.07  )
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
Cc: robh@kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, tomeu.vizoso@collabora.com,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/09/2019 15:42, Robin Murphy wrote:
> Midgard GPUs have ACE-Lite master interfaces which allows systems to
> integrate them in an I/O-coherent manner. It seems that from the GPU's
> viewpoint, the rest of the system is its outer shareable domain, and it
> will only emit snoop signals for outer shareable accesses. As such,
> setting the TTBR_SHARE_OUTER bit does indeed get coherent pagetable
> walks working nicely.
> 
> Making data accesses coherent seems to be more of a challenge...
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Steven Price <steven.price@arm.com>

Note the terminology in the GPU is *very* confusing here. Midgard refers
to the system's inner shareable domain as "outer shareable", and uses
"inner shareable" to mean purely within the GPU.

For data access kbase sets up a different default MEMATTR if ACE is
available:

	/* Set to implementation defined, outer caching */
	#define AS_MEMATTR_LPAE_OUTER_IMPL_DEF        0x88ull
[...]
	#define AS_MEMATTR_INDEX_DEFAULT_ACE           3
[...]
	/* Outer coherent, inner implementation defined policy */
	#define AS_MEMATTR_INDEX_OUTER_IMPL_DEF        3

Steve

> ---
>  drivers/iommu/io-pgtable-arm.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 77f41c9dd9be..2794d4661339 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -1061,6 +1061,9 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
>  	cfg->arm_mali_lpae_cfg.transtab = virt_to_phys(data->pgd) |
>  					  ARM_MALI_LPAE_TTBR_READ_INNER |
>  					  ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
> +	if (cfg->coherent_walk)
> +		cfg->arm_mali_lpae_cfg.transtab |= ARM_MALI_LPAE_TTBR_SHARE_OUTER;
> +
>  	return &data->iop;
>  
>  out_free_data:
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
