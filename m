Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5F146DE0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 04:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECI5Zj1X42PLyfhu6no097BJiNFxDaBwgDe+aogoe8o=; b=l+49wM6jakwrls
	AcZy6BEH+c07CVdhMuGmWMvneEmPBNvfFNIZTvDFn+hjPcwL/pWYagyZBuAS5u9SS9RYAYsFjB7aD
	qmo3RPEsiFGeTZXDLYyXurGBXS+wcIUWeGxFriicw6zdJhLdJTvl0nuHkbit1aKAfSwJv/veziy0A
	KqvjDBfeLfrM6xnUOTpWnJnC3KNwEKh/N9a0RI94QphO2bxI/r8IL95b13WHvsSswmGN/DiINYprV
	Oa2BkhQbrdVW43HYD3HEM++nN0Zrll0iOdhVEQp75h+zaFu0mROAsFd4eyDIucY8KJI2L+5ris6rT
	D55wbMaYqvq3zY5of4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbygb-0007uD-9a; Sat, 15 Jun 2019 02:44:57 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbygQ-0007tJ-FJ
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 02:44:49 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 43973BEF316C81FF7481;
 Sat, 15 Jun 2019 10:44:35 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Sat, 15 Jun 2019
 10:44:34 +0800
Subject: Re: [PATCH v2] arm64/mm: Correct the cache line size warning with non
 coherent device
To: Masayoshi Mizuma <msys.mizuma@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>, Will Deacon
 <will.deacon@arm.com>, <linux-arm-kernel@lists.infradead.org>
References: <20190614131141.4428-1-msys.mizuma@gmail.com>
From: Zhangshaokun <zhangshaokun@hisilicon.com>
Message-ID: <aa445f8f-2576-4f78-a64e-1cde6a2f9593@hisilicon.com>
Date: Sat, 15 Jun 2019 10:44:33 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190614131141.4428-1-msys.mizuma@gmail.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_194446_806168_7F577A27 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Masayoshi,

A few trivial comments inline.

On 2019/6/14 21:11, Masayoshi Mizuma wrote:
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> 
> If the cache line size is greater than ARCH_DMA_MINALIGN (128),
> the warning shows and it's tainted as TAINT_CPU_OUT_OF_SPEC.
> 
> However, it's not good because as discussed in the thread [1], the cpu
> cache line size will be problem only on non-coherent devices.
> 
> Since the coherent flag is already introduced to struct device,
> show the warning only if the device is non-coherent device and
> ARCH_DMA_MINALIGN is smaller than the cpu cache size.
> 
> [1] https://lore.kernel.org/linux-arm-kernel/20180514145703.celnlobzn3uh5tc2@localhost/
> 
> Signed-off-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Reviewed-by: Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>
> Tested-by: Zhang Lei <zhang.lei@jp.fujitsu.com>
> ---
>  arch/arm64/include/asm/cache.h |  7 +++++++
>  arch/arm64/kernel/cacheinfo.c  |  4 +---
>  arch/arm64/mm/dma-mapping.c    | 14 ++++++++++----
>  3 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
> index 758af6340314..d24b7c1ecd9b 100644
> --- a/arch/arm64/include/asm/cache.h
> +++ b/arch/arm64/include/asm/cache.h
> @@ -91,6 +91,13 @@ static inline u32 cache_type_cwg(void)
>  
>  #define __read_mostly __attribute__((__section__(".data..read_mostly")))
>  
> +static inline int cache_line_size_of_cpu(void)
> +{
> +	u32 cwg = cache_type_cwg();
> +
> +	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
> +}
> +
>  int cache_line_size(void);
>  
>  /*
> diff --git a/arch/arm64/kernel/cacheinfo.c b/arch/arm64/kernel/cacheinfo.c
> index 6eaf1c07aa4e..7fa6828bb488 100644
> --- a/arch/arm64/kernel/cacheinfo.c
> +++ b/arch/arm64/kernel/cacheinfo.c
> @@ -19,12 +19,10 @@
>  
>  int cache_line_size(void)
>  {
> -	u32 cwg = cache_type_cwg();
> -
>  	if (coherency_max_size != 0)
>  		return coherency_max_size;
>  
> -	return cwg ? 4 << cwg : ARCH_DMA_MINALIGN;
> +	return cache_line_size_of_cpu();
>  }

How about simplify it as this?

int cache_line_size(void)
{
        return coherency_max_size ? coherency_max_size :
                cache_line_size_of_cpu();
}

>  EXPORT_SYMBOL_GPL(cache_line_size);
>  
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index 1669618db08a..379589dc7113 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -38,10 +38,6 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
>  
>  static int __init arm64_dma_init(void)
>  {
> -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
> -		   TAINT_CPU_OUT_OF_SPEC,
> -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> -		   ARCH_DMA_MINALIGN, cache_line_size());
>  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
>  }
>  arch_initcall(arm64_dma_init);
> @@ -56,7 +52,17 @@ void arch_teardown_dma_ops(struct device *dev)
>  void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>  			const struct iommu_ops *iommu, bool coherent)
>  {
> +	int cls = cache_line_size_of_cpu();

whether we need this local variable, how about use cache_line_size_of_cpu
directly in WARN_TAINT just like before.

Thanks,
Shaokun

> +
>  	dev->dma_coherent = coherent;
> +
> +	if (!coherent)
> +		WARN_TAINT(cls > ARCH_DMA_MINALIGN,
> +			TAINT_CPU_OUT_OF_SPEC,
> +			"%s %s: ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> +			dev_driver_string(dev), dev_name(dev),
> +			ARCH_DMA_MINALIGN, cls);
> +
>  	if (iommu)
>  		iommu_setup_dma_ops(dev, dma_base, size);
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
