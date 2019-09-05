Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6FCAA9D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77dvE93xUT6ZcI2O1imBB2sBi5Xk+I9g8I8xzhlGWKo=; b=Jf1wqqriire1yY
	2fSwVW4jb7fkvZ+Tu8++x4E500r2BmJjtfTNqQhmo+3KfqbuHlgR1htrT21ILFrpy9IYStKuVCy6I
	CrFEcC326+YEpYdQL7mQtOrw0kvrn3HnbsvbC4aQyUwLw6ryfwxSo3bGmjhPWU3DB70W+t0WG9Ohw
	la2FJtZZuKOx8KBahxfb8djgnMQ5xGUlzapTfguRl/g5R8LdTM85i5vmGo5efFAHPXbTb4KYVAyhe
	1J1FWomYsu6Oy5kHX+k1v+VrmLJ8lzPwh4UN9JnKve7hWj3VEARrITZLs/p0f+4uYbSkor+ih/znw
	jED2UDKxu7U8h8aOzJvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5vQH-0001Om-Q4; Thu, 05 Sep 2019 17:19:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5vQ8-0001OC-Kb; Thu, 05 Sep 2019 17:19:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52F09337;
 Thu,  5 Sep 2019 10:19:43 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5215C3F718; Thu,  5 Sep 2019 10:19:41 -0700 (PDT)
Date: Thu, 5 Sep 2019 18:19:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20190905171939.GF31268@arrakis.emea.arm.com>
References: <20190902141043.27210-1-nsaenzjulienne@suse.de>
 <20190902141043.27210-4-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902141043.27210-4-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_101944_764327_8509D27C 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: f.fainelli@gmail.com, mbrugger@suse.com, marc.zyngier@arm.com,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 robh+dt@kernel.org, wahrenst@gmx.net, m.szyprowski@samsung.com,
 linux-riscv@lists.infradead.org, phill@raspberrypi.org,
 Will Deacon <will@kernel.org>, hch@lst.de,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 04:10:41PM +0200, Nicolas Saenz Julienne wrote:
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 8956c22634dd..f02a4945aeac 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -50,6 +50,13 @@
>  s64 memstart_addr __ro_after_init = -1;
>  EXPORT_SYMBOL(memstart_addr);
>  
> +/*
> + * We create both ZONE_DMA and ZONE_DMA32. ZONE_DMA covers the first 1G of
> + * memory as some devices, namely the Raspberry Pi 4, have peripherals with
> + * this limited view of the memory. ZONE_DMA32 will cover the rest of the 32
> + * bit addressable memory area.
> + */
> +phys_addr_t arm64_dma_phys_limit __ro_after_init;
>  phys_addr_t arm64_dma32_phys_limit __ro_after_init;
>  
>  #ifdef CONFIG_KEXEC_CORE
> @@ -164,9 +171,9 @@ static void __init reserve_elfcorehdr(void)
>  }
>  #endif /* CONFIG_CRASH_DUMP */
>  /*
> - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)). It
> - * currently assumes that for memory starting above 4G, 32-bit devices will
> - * use a DMA offset.
> + * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)) and
> + * ZONE_DMA (DMA_BIT_MASK(30)) respectively. It currently assumes that for
> + * memory starting above 4G, 32-bit devices will use a DMA offset.
>   */
>  static phys_addr_t __init max_zone_dma32_phys(void)
>  {
> @@ -174,12 +181,23 @@ static phys_addr_t __init max_zone_dma32_phys(void)
>  	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
>  }
>  
> +static phys_addr_t __init max_zone_dma_phys(void)
> +{
> +	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
> +
> +	return min(offset + (1ULL << ARCH_ZONE_DMA_BITS),
> +		   memblock_end_of_DRAM());
> +}

I think we could squash these two functions into a single one with a
"bits" argument that is either 32 or ARCH_ZONE_DMA_BITS.

> +
>  #ifdef CONFIG_NUMA
>  
>  static void __init zone_sizes_init(unsigned long min, unsigned long max)
>  {
>  	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
>  
> +#ifdef CONFIG_ZONE_DMA
> +	max_zone_pfns[ZONE_DMA] = PFN_DOWN(arm64_dma_phys_limit);
> +#endif
>  #ifdef CONFIG_ZONE_DMA32
>  	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma32_phys_limit);
>  #endif
> @@ -195,13 +213,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>  	struct memblock_region *reg;
>  	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
>  	unsigned long max_dma32 = min;
> +	unsigned long max_dma = min;
>  
>  	memset(zone_size, 0, sizeof(zone_size));
>  
> -	/* 4GB maximum for 32-bit only capable devices */
> +#ifdef CONFIG_ZONE_DMA
> +	max_dma = PFN_DOWN(arm64_dma_phys_limit);
> +	zone_size[ZONE_DMA] = max_dma - min;
> +#endif
>  #ifdef CONFIG_ZONE_DMA32
>  	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
> -	zone_size[ZONE_DMA32] = max_dma32 - min;
> +	zone_size[ZONE_DMA32] = max_dma32 - max_dma;
>  #endif
>  	zone_size[ZONE_NORMAL] = max - max_dma32;

Does this still work if we have ZONE_DMA32 disabled but ZONE_DMA
enabled? You could use a max(max_dma32, max_dma) or just update
max_dma32 to max_dma in the CONFIG_ZONE_DMA block.

> @@ -213,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
>  
>  		if (start >= max)
>  			continue;
> -
> +#ifdef CONFIG_ZONE_DMA
> +		if (start < max_dma) {
> +			unsigned long dma_end = min_not_zero(end, max_dma);
> +			zhole_size[ZONE_DMA] -= dma_end - start;
> +		}
> +#endif
>  #ifdef CONFIG_ZONE_DMA32
>  		if (start < max_dma32) {
> -			unsigned long dma_end = min(end, max_dma32);
> -			zhole_size[ZONE_DMA32] -= dma_end - start;
> +			unsigned long dma32_end = min(end, max_dma32);
> +			unsigned long dma32_start = max(start, max_dma);
> +			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
>  		}
>  #endif
>  		if (end > max_dma32) {

Similar comment here.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
