Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E162913B1EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gi0qgl2fv2nK8GJVOLImL0otprl3ZNumN39CZ5yRF1M=; b=ee58fxpwpvyG46hPo70NMR68w
	O6054Vn/g0vMzBw+Msi8zTVTWD6vDc+YmPTIvQjlVZXq/DRhKyQ1BcOVa8rEiR9vUnaVIA+JA1Fta
	vH2isgiopr4+o/p67B/UNLiifeVpNIk7U5ml7TgKXbgI36DiLvLo7WM2IWS0ofUO2Q4rNr+vVvWAa
	u+xhxJfHmcRRfIfXBoqu9PKF/jNJ5V3/lQfmgRPLHyFl+/Ky4P+j8TbQ5LYTyj6rtez8mPyDE67xl
	2JCjUaKdg9tARQqtSNwHghBNjlShOFne5HjwJ422Oiog9GEAPidcuY5KfQLNUSdS12SSg5Qr2tTjW
	qmVvsHRMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQn9-0003XO-0B; Tue, 14 Jan 2020 18:19:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQmy-0003Wg-Hf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 18:19:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE0D51396;
 Tue, 14 Jan 2020 10:19:39 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FB073F68E;
 Tue, 14 Jan 2020 10:19:38 -0800 (PST)
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when it
 is valid
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, hch@lst.de
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
Date: Tue, 14 Jan 2020 18:19:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200114164332.3164-1-peter.ujfalusi@ti.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_101940_667623_6B201E5B 
X-CRM114-Status: GOOD (  33.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/01/2020 4:43 pm, Peter Ujfalusi wrote:
> The dma_pfn_offset should only be applied to an address which is within the
> dma-ranges range. Any address outside should have offset as 0.

No, that's wrong. If a non-empty dma-ranges is present, then addresses 
which do not fall within any specified range are invalid altogether.

The current long-term plan is indeed to try to move to some sort of 
internal "DMA range descriptor" in order to properly cope with the kind 
of esoteric integrations which have multiple disjoint windows, 
potentially even with different offsets, but as you point out there are 
still many hurdles between now and that becoming reality. So although 
this patch does represent the "right" thing, it's for entirely the wrong 
reason. AFAICT for your case it basically just works out as a very 
baroque way to hack dma_direct_supported() again - we shouldn't need a 
special case to map a bogus physical address to valid DMA address, we 
should be fixing the source of the bogus PA in the first place.

> This is a proof of concept patch which works on k2g where we have
> dma-ranges = <0x80000000 0x8 0x00000000 0x80000000>;
> for the SoC.

TBH it's probably extra-confusing that you're on Keystone 2, where 
technically this ends up closer-to-OK than most, since IIRC the 0-2GB 
MMIO region is the same on all 3(?) interconnect maps. Thus the 100% 
honest description would really be:

dma-ranges = <0x0 0x0 0x0 0x80000000>,
	     <0x80000000 0x8 0x00000000 0x80000000>;

but yeah, that would just go horribly wrong with Linux today. The 
subtelty that dma_map_resource() ignores the pfn_offset happens to be a 
"feature" in this regard ;)

Robin.

> Without this patch everything which tries to set DMA_BIT_MASK(32) or less
> fails -> DMA and peripherals with built in DMA (SD with ADMA) will not
> probe or fall back to PIO mode.
> 
> With this patch EDMA probes, SD's ADMA is working.
> Audio and dma-test is working just fine with EDMA, mmc accesses with ADMA
> also operational.
> 
> The patch does not tried to address the incomplete handling of dma-ranges
> from DT and it is not fixing/updating arch code or drivers which uses
> dma_pfn_offset.
> Neither provides fallback support for kernel setting only dma_pfn_offset to
> arbitrary number without paddr/dma_addr/size.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi Christoph, Robin,
> 
> I know it is a bit more complicated, but with this patch k2g is working fine...
> 
> I wanted to test the concept I was describing and a patch speaks better than
> words.
> 
> Kind regards,
> Peter
> 
>   arch/arm/include/asm/dma-mapping.h | 25 ++++++++++++++++++++--
>   drivers/of/device.c                |  7 ++++++-
>   include/linux/device.h             |  8 ++++++++
>   include/linux/dma-direct.h         | 33 ++++++++++++++++++++++++++++--
>   kernel/dma/coherent.c              |  9 +++++---
>   5 files changed, 74 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
> index bdd80ddbca34..9bff6ad2d8c8 100644
> --- a/arch/arm/include/asm/dma-mapping.h
> +++ b/arch/arm/include/asm/dma-mapping.h
> @@ -33,10 +33,31 @@ static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
>    * addresses. They must not be used by drivers.
>    */
>   #ifndef __arch_pfn_to_dma
> +
> +static inline unsigned long __phys_to_dma_pfn_offset(struct device *dev,
> +						     phys_addr_t paddr)
> +{
> +	if (paddr >= dev->dma_ranges.paddr &&
> +	    paddr <= (dev->dma_ranges.paddr + dev->dma_ranges.size))
> +		return dev->dma_ranges.pfn_offset;
> +
> +	return 0;
> +}
> +
> +static inline unsigned long __dma_to_phys_pfn_offset(struct device *dev,
> +						     dma_addr_t dma_addr)
> +{
> +	if (dma_addr >= dev->dma_ranges.dma_addr &&
> +	    dma_addr <= (dev->dma_ranges.dma_addr + dev->dma_ranges.size))
> +		return dev->dma_ranges.pfn_offset;
> +
> +	return 0;
> +}
> +
>   static inline dma_addr_t pfn_to_dma(struct device *dev, unsigned long pfn)
>   {
>   	if (dev)
> -		pfn -= dev->dma_pfn_offset;
> +		pfn -= __phys_to_dma_pfn_offset(dev, __pfn_to_phys(pfn));
>   	return (dma_addr_t)__pfn_to_bus(pfn);
>   }
>   
> @@ -45,7 +66,7 @@ static inline unsigned long dma_to_pfn(struct device *dev, dma_addr_t addr)
>   	unsigned long pfn = __bus_to_pfn(addr);
>   
>   	if (dev)
> -		pfn += dev->dma_pfn_offset;
> +		pfn += __dma_to_phys_pfn_offset(dev, addr);
>   
>   	return pfn;
>   }
> diff --git a/drivers/of/device.c b/drivers/of/device.c
> index 27203bfd0b22..07a8cc1a7d7f 100644
> --- a/drivers/of/device.c
> +++ b/drivers/of/device.c
> @@ -105,7 +105,7 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
>   		if (!force_dma)
>   			return ret == -ENODEV ? 0 : ret;
>   
> -		dma_addr = offset = 0;
> +		dma_addr = offset = paddr = 0;
>   	} else {
>   		offset = PFN_DOWN(paddr - dma_addr);
>   
> @@ -144,6 +144,11 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
>   
>   	dev->dma_pfn_offset = offset;
>   
> +	dev->dma_ranges.paddr = paddr;
> +	dev->dma_ranges.dma_addr = dma_addr;
> +	dev->dma_ranges.size = size;
> +	dev->dma_ranges.pfn_offset = offset;
> +
>   	/*
>   	 * Limit coherent and dma mask based on size and default mask
>   	 * set by the driver.
> diff --git a/include/linux/device.h b/include/linux/device.h
> index ce6db68c3f29..57006b51a989 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -293,6 +293,13 @@ struct device_dma_parameters {
>   	unsigned long segment_boundary_mask;
>   };
>   
> +struct dma_ranges {
> +	u64 paddr;
> +	u64 dma_addr;
> +	u64 size;
> +	unsigned long pfn_offset;
> +};
> +
>   /**
>    * struct device_connection - Device Connection Descriptor
>    * @fwnode: The device node of the connected device
> @@ -581,6 +588,7 @@ struct device {
>   					     allocations such descriptors. */
>   	u64		bus_dma_limit;	/* upstream dma constraint */
>   	unsigned long	dma_pfn_offset;
> +	struct dma_ranges dma_ranges;
>   
>   	struct device_dma_parameters *dma_parms;
>   
> diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
> index 24b8684aa21d..4a46a15945ea 100644
> --- a/include/linux/dma-direct.h
> +++ b/include/linux/dma-direct.h
> @@ -11,18 +11,47 @@ extern unsigned int zone_dma_bits;
>   #ifdef CONFIG_ARCH_HAS_PHYS_TO_DMA
>   #include <asm/dma-direct.h>
>   #else
> +
> +static inline unsigned long __phys_to_dma_pfn_offset(struct device *dev,
> +						     phys_addr_t paddr)
> +{
> +	if (!dev)
> +		return 0;
> +
> +	if (paddr >= dev->dma_ranges.paddr &&
> +	    paddr <= (dev->dma_ranges.paddr + dev->dma_ranges.size))
> +		return dev->dma_ranges.pfn_offset
> +
> +	return 0;
> +}
> +
> +static inline unsigned long __dma_to_phys_pfn_offset(struct device *dev,
> +						     dma_addr_t dma_addr)
> +{
> +	if (!dev)
> +		return 0;
> +
> +	if (dma_addr >= dev->dma_ranges.dma_addr &&
> +	    dma_addr <= (dev->dma_ranges.dma_addr + dev->dma_ranges.size))
> +		return dev->dma_ranges.pfn_offset
> +
> +	return 0;
> +}
> +
>   static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
>   {
>   	dma_addr_t dev_addr = (dma_addr_t)paddr;
> +	unsigned long offset = __phys_to_dma_pfn_offset(dev, paddr);
>   
> -	return dev_addr - ((dma_addr_t)dev->dma_pfn_offset << PAGE_SHIFT);
> +	return dev_addr - ((dma_addr_t)offset << PAGE_SHIFT);
>   }
>   
>   static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>   {
>   	phys_addr_t paddr = (phys_addr_t)dev_addr;
> +	unsigned long offset = __dma_to_phys_pfn_offset(dev, dev_addr);
>   
> -	return paddr + ((phys_addr_t)dev->dma_pfn_offset << PAGE_SHIFT);
> +	return paddr + ((phys_addr_t)offset << PAGE_SHIFT);
>   }
>   #endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
>   
> diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
> index 551b0eb7028a..7a68fd09f5d0 100644
> --- a/kernel/dma/coherent.c
> +++ b/kernel/dma/coherent.c
> @@ -31,10 +31,13 @@ static inline struct dma_coherent_mem *dev_get_coherent_memory(struct device *de
>   static inline dma_addr_t dma_get_device_base(struct device *dev,
>   					     struct dma_coherent_mem * mem)
>   {
> -	if (mem->use_dev_dma_pfn_offset)
> -		return (mem->pfn_base - dev->dma_pfn_offset) << PAGE_SHIFT;
> -	else
> +	if (mem->use_dev_dma_pfn_offset) {
> +		unsigned long offset = __phys_to_dma_pfn_offset(dev,
> +						__pfn_to_phys(mem->pfn_base));
> +		return (mem->pfn_base - offset) << PAGE_SHIFT;
> +	} else {
>   		return mem->device_base;
> +	}
>   }
>   
>   static int dma_init_coherent_memory(phys_addr_t phys_addr,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
