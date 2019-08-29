Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58328A29F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bE2RoE+yXHGtJluSooYWeYufX4YZsad2m5cavPNxMw=; b=T14q2A6ukF8lKY
	fVofFmneUGZIlM+2yPqTsEnG1cNu3XRwhOX2xVHbjX2aXNI3T7jl9ytjYrHExO2ovA0+R+Lg9MsUh
	db5Z/gikgAtIIomxStWDhMupd+YngddcalD+oesHuxMQXDIoEK33/qhMs374StDcE0uC4IB8//CQu
	Le3wjnv/xZDX3LKFFb6oXjXIRMcT7e4B1nL5A2G9EECaWaoVhcx1TEZzm9Acon655pgsuEXcjWy3V
	uOw+G1T/+cbGbccArnShkkIW9KzV2DsoWnQwqHNukhKvawD9VDxSpr5q+CWJfVPawyOtb3U5+MbqP
	N5u2U69KMZ2WNIja4xQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3T7s-0006gZ-Ct; Thu, 29 Aug 2019 22:42:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3T7L-0006Ns-Fn
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:42:13 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A39D32189D;
 Thu, 29 Aug 2019 22:42:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567118531;
 bh=xHkEUC70NyhQrdUtUwDNpqvFabXbH4FNTzDPXPE1tqY=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=LG+7fN41BbkQDRJj56NLA6759Otnvnf3nvVutDii10+eEzLBlDeRKXwPCpCclCsiA
 Cl7GH+XwZzjeaHNfXrbRV8R+5ceePqFPWCu9iGGxmTfFsCxbnOr/pXW9XZEEsWSbYn
 rrnwK2ejARhZqSJAQfOT6+NQJikZVzm+uVGT9078=
Date: Thu, 29 Aug 2019 15:42:10 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 04/11] xen/arm: remove xen_dma_ops
In-Reply-To: <20190826121944.515-5-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908281458070.8175@sstabellini-ThinkPad-T480s>
References: <20190826121944.515-1-hch@lst.de> <20190826121944.515-5-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_154211_685585_8F32AE53 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Julien Grall <julien.grall@arm.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 26 Aug 2019, Christoph Hellwig wrote:
> arm and arm64 can just use xen_swiotlb_dma_ops directly like x86, no
> need for a pointer indirection.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Julien Grall <julien.grall@arm.com>

Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>


> ---
>  arch/arm/mm/dma-mapping.c    | 3 ++-
>  arch/arm/xen/mm.c            | 4 ----
>  arch/arm64/mm/dma-mapping.c  | 3 ++-
>  include/xen/arm/hypervisor.h | 2 --
>  4 files changed, 4 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> index 738097396445..2661cad36359 100644
> --- a/arch/arm/mm/dma-mapping.c
> +++ b/arch/arm/mm/dma-mapping.c
> @@ -35,6 +35,7 @@
>  #include <asm/mach/map.h>
>  #include <asm/system_info.h>
>  #include <asm/dma-contiguous.h>
> +#include <xen/swiotlb-xen.h>
>  
>  #include "dma.h"
>  #include "mm.h"
> @@ -2360,7 +2361,7 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  
>  #ifdef CONFIG_XEN
>  	if (xen_initial_domain())
> -		dev->dma_ops = xen_dma_ops;
> +		dev->dma_ops = &xen_swiotlb_dma_ops;
>  #endif
>  	dev->archdata.dma_ops_setup = true;
>  }
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 14210ebdea1a..9b3a6c0ca681 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -163,16 +163,12 @@ void xen_destroy_contiguous_region(phys_addr_t pstart, unsigned int order)
>  }
>  EXPORT_SYMBOL_GPL(xen_destroy_contiguous_region);
>  
> -const struct dma_map_ops *xen_dma_ops;
> -EXPORT_SYMBOL(xen_dma_ops);
> -
>  int __init xen_mm_init(void)
>  {
>  	struct gnttab_cache_flush cflush;
>  	if (!xen_initial_domain())
>  		return 0;
>  	xen_swiotlb_init(1, false);
> -	xen_dma_ops = &xen_swiotlb_dma_ops;
>  
>  	cflush.op = 0;
>  	cflush.a.dev_bus_addr = 0;
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index bd2b039f43a6..4b244a037349 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -8,6 +8,7 @@
>  #include <linux/cache.h>
>  #include <linux/dma-noncoherent.h>
>  #include <linux/dma-iommu.h>
> +#include <xen/swiotlb-xen.h>
>  
>  #include <asm/cacheflush.h>
>  
> @@ -64,6 +65,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  
>  #ifdef CONFIG_XEN
>  	if (xen_initial_domain())
> -		dev->dma_ops = xen_dma_ops;
> +		dev->dma_ops = &xen_swiotlb_dma_ops;
>  #endif
>  }
> diff --git a/include/xen/arm/hypervisor.h b/include/xen/arm/hypervisor.h
> index 2982571f7cc1..43ef24dd030e 100644
> --- a/include/xen/arm/hypervisor.h
> +++ b/include/xen/arm/hypervisor.h
> @@ -19,8 +19,6 @@ static inline enum paravirt_lazy_mode paravirt_get_lazy_mode(void)
>  	return PARAVIRT_LAZY_NONE;
>  }
>  
> -extern const struct dma_map_ops *xen_dma_ops;
> -
>  #ifdef CONFIG_XEN
>  void __init xen_early_init(void);
>  #else
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
