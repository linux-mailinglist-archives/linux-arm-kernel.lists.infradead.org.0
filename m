Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63D2DEF23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bby8WFcE6vrIYUSBZapH37JgNYKnTfEvQy6U38rnqo=; b=n+1K2FNDxvpXf7
	xp5McpPRmaTt5nIlJI2gIL8Wjp/4QBVq8S3g84O27+MHyqyKIRcRgWogZiFmTCIKlV6BsGUbyFqZU
	o1cAfI2D2gxUp3QIqSHrTXY9J53D8uWVvfVkvxcPQvgmq5Y4199RkkedEhdNW3/A8rpu0Q4ZtmqFt
	e19PnpDjgNbxyNd3ed5J239RhRtpJhB0XSC1QhSfv8tax7B+vZsucmUO3hqdZS17Z96JMnfrzk6un
	zRy+8KXriilFSp939QTro24x0o0pMihe/rx+MGYtM+quFDM8yh2btl/4mo6vB70DJgrLBaKuvsk1/
	XYRDi9CCuW1hKdyNXFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMYTh-0000oW-Cp; Mon, 21 Oct 2019 14:16:09 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMYTW-0000nP-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:16:00 +0000
Received: by mail-qt1-x842.google.com with SMTP id e14so1457130qto.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SR4XTutzmthc5d7HZlzvb9fPYpgDWiu5nZW7fLVerx8=;
 b=kCntxG+F1zGFLNKi29nV21oIr+oWcnNbXh3PUmsWE3G90Dm4KkfQgx0khoIx807KF/
 Fo1lr/49orQnWqqI6pseXkRQc0bPFDWZ4Yn+lX0tanl/fsf2aafO+az+wHWPEGEQcreU
 2jcEJTTZ93QcKji+Li9QyTYXDDmqIaVZJnOo+mss3C7COKX9swvfSC1+h5uEyv+bEs8X
 mzsdRItRKrn4AXS/tfSqpQmM9EA9WwUIVFffPwRHxfv8Ie6G5IWxpCNIQdCoEK0tTg9V
 0CvjLyXqcJIrNKdc3CDyG4fpx7bjYKzknXwgdyjwPaqpQz+K8iJcsEP7e0bNtwRXWPxF
 9PnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=SR4XTutzmthc5d7HZlzvb9fPYpgDWiu5nZW7fLVerx8=;
 b=EfcK3dPURyf2dRaDCc8tfihWrITDj8bxSFqbLerv60MmNtR5KufN97L9ULNCG/Qf83
 /ENHobRGLumNlu2ksA/EAO37T16jm5PrGc9kUe5S+BeUjgQ/QZGj+8Nr7oKEADjNOWFR
 1UHcIG7jcaMFF9fZ+0zPDa5rpuG3Dg+KvzvrpxvIK7NpDatgq9hxZ990D3MUeQ1sBZ1d
 x/DthjFtKiWQbPk2HqUmSS3fQUzaWP/ob6T/X58k0lcETiXRdDj0d+38janZup0d7+mI
 +7XAd5PwrIa7vaDPKJEBHn1qlDuT1u1bU99MwQdCVZ4mtapaikk5n813lEBHg2RimrFd
 9lag==
X-Gm-Message-State: APjAAAVQ73xAxofFddNXe1Te/Cq2QKx9z1w7d03Z+fN1FA6DjF69jL+q
 nXVOfxM1LKlUGxh/Ripf+3VZ7g==
X-Google-Smtp-Source: APXvYqx0A0iC7aDo3GjKGWsrUQLEpvuI2joDEdM2ghjsafGIxZjhcGWwTQP5TnIKoz1WBOGKbTUiiA==
X-Received: by 2002:a0c:c10d:: with SMTP id f13mr23889157qvh.88.1571667357222; 
 Mon, 21 Oct 2019 07:15:57 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id h184sm8536827qkf.89.2019.10.21.07.15.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Oct 2019 07:15:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Qian Cai <cai@lca.pw>
In-Reply-To: <20190911182546.17094-4-nsaenzjulienne@suse.de>
Date: Mon, 21 Oct 2019 10:15:55 -0400
Message-Id: <3956E54B-6C7A-4C47-B9B6-75F556EFD3F5@lca.pw>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_071558_965238_82EDEEDF 
X-CRM114-Status: GOOD (  24.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 catalin.marinas@arm.com, robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Rob Herring <robh+dt@kernel.org>, wahrenst@gmx.net,
 m.szyprowski@samsung.com, phill@raspberrypi.org, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> On Sep 11, 2019, at 2:25 PM, Nicolas Saenz Julienne <nsaenzjulienne@suse.de> wrote:
> 
> So far all arm64 devices have supported 32 bit DMA masks for their
> peripherals. This is not true anymore for the Raspberry Pi 4 as most of
> it's peripherals can only address the first GB of memory on a total of
> up to 4 GB.
> 
> This goes against ZONE_DMA32's intent, as it's expected for ZONE_DMA32
> to be addressable with a 32 bit mask. So it was decided to re-introduce
> ZONE_DMA in arm64.
> 
> ZONE_DMA will contain the lower 1G of memory, which is currently the
> memory area addressable by any peripheral on an arm64 device.
> ZONE_DMA32 will contain the rest of the 32 bit addressable memory.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> ---
> 
> I kept the Reviewed-by as the last bug solution was proposed by Catalin
> 
> Changes in v6:
> - Fixed bug in max_zone_phys
> 
> Changes in v5:
> - Fixed swiotlb initialization
> 
> Changes in v4:
> - Fixed issue when NUMA=n and ZONE_DMA=n
> - Merged two max_zone_dma*_phys() functions
> 
> Changes in v3:
> - Used fixed size ZONE_DMA
> - Fix check befor swiotlb_init()
> 
> Changes in v2:
> - Update comment to reflect new zones split
> - ZONE_DMA will never be left empty
> 
> arch/arm64/Kconfig            |  4 +++
> arch/arm64/include/asm/page.h |  2 ++
> arch/arm64/mm/init.c          | 54 +++++++++++++++++++++++++----------
> 3 files changed, 45 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 6b6362b83004..2dbe0165bd15 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -267,6 +267,10 @@ config GENERIC_CSUM
> config GENERIC_CALIBRATE_DELAY
> 	def_bool y
> 
> +config ZONE_DMA
> +	bool "Support DMA zone" if EXPERT
> +	default y
> +
> config ZONE_DMA32
> 	bool "Support DMA32 zone" if EXPERT
> 	default y
> diff --git a/arch/arm64/include/asm/page.h b/arch/arm64/include/asm/page.h
> index d39ddb258a04..7b8c98830101 100644
> --- a/arch/arm64/include/asm/page.h
> +++ b/arch/arm64/include/asm/page.h
> @@ -38,4 +38,6 @@ extern int pfn_valid(unsigned long);
> 
> #include <asm-generic/getorder.h>
> 
> +#define ARCH_ZONE_DMA_BITS 30
> +
> #endif
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 8e9bc64c5878..44f07fdf7a59 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -56,6 +56,13 @@ EXPORT_SYMBOL(physvirt_offset);
> struct page *vmemmap __ro_after_init;
> EXPORT_SYMBOL(vmemmap);
> 
> +/*
> + * We create both ZONE_DMA and ZONE_DMA32. ZONE_DMA covers the first 1G of
> + * memory as some devices, namely the Raspberry Pi 4, have peripherals with
> + * this limited view of the memory. ZONE_DMA32 will cover the rest of the 32
> + * bit addressable memory area.
> + */
> +phys_addr_t arm64_dma_phys_limit __ro_after_init;
> phys_addr_t arm64_dma32_phys_limit __ro_after_init;
> 
> #ifdef CONFIG_KEXEC_CORE
> @@ -169,15 +176,16 @@ static void __init reserve_elfcorehdr(void)
> {
> }
> #endif /* CONFIG_CRASH_DUMP */
> +
> /*
> - * Return the maximum physical address for ZONE_DMA32 (DMA_BIT_MASK(32)). It
> - * currently assumes that for memory starting above 4G, 32-bit devices will
> - * use a DMA offset.
> + * Return the maximum physical address for a zone with a given address size
> + * limit. It currently assumes that for memory starting above 4G, 32-bit
> + * devices will use a DMA offset.
>  */
> -static phys_addr_t __init max_zone_dma32_phys(void)
> +static phys_addr_t __init max_zone_phys(unsigned int zone_bits)
> {
> -	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, 32);
> -	return min(offset + (1ULL << 32), memblock_end_of_DRAM());
> +	phys_addr_t offset = memblock_start_of_DRAM() & GENMASK_ULL(63, zone_bits);
> +	return min(offset + (1ULL << zone_bits), memblock_end_of_DRAM());
> }
> 
> #ifdef CONFIG_NUMA
> @@ -186,6 +194,9 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> {
> 	unsigned long max_zone_pfns[MAX_NR_ZONES]  = {0};
> 
> +#ifdef CONFIG_ZONE_DMA
> +	max_zone_pfns[ZONE_DMA] = PFN_DOWN(arm64_dma_phys_limit);
> +#endif
> #ifdef CONFIG_ZONE_DMA32
> 	max_zone_pfns[ZONE_DMA32] = PFN_DOWN(arm64_dma32_phys_limit);
> #endif
> @@ -201,13 +212,18 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> 	struct memblock_region *reg;
> 	unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
> 	unsigned long max_dma32 = min;
> +	unsigned long max_dma = min;
> 
> 	memset(zone_size, 0, sizeof(zone_size));
> 
> -	/* 4GB maximum for 32-bit only capable devices */
> +#ifdef CONFIG_ZONE_DMA
> +	max_dma = PFN_DOWN(arm64_dma_phys_limit);
> +	zone_size[ZONE_DMA] = max_dma - min;
> +	max_dma32 = max_dma;
> +#endif
> #ifdef CONFIG_ZONE_DMA32
> 	max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
> -	zone_size[ZONE_DMA32] = max_dma32 - min;
> +	zone_size[ZONE_DMA32] = max_dma32 - max_dma;
> #endif
> 	zone_size[ZONE_NORMAL] = max - max_dma32;
> 
> @@ -219,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> 
> 		if (start >= max)
> 			continue;
> -
> +#ifdef CONFIG_ZONE_DMA
> +		if (start < max_dma) {
> +			unsigned long dma_end = min_not_zero(end, max_dma);
> +			zhole_size[ZONE_DMA] -= dma_end - start;
> +		}
> +#endif
> #ifdef CONFIG_ZONE_DMA32
> 		if (start < max_dma32) {
> -			unsigned long dma_end = min(end, max_dma32);
> -			zhole_size[ZONE_DMA32] -= dma_end - start;
> +			unsigned long dma32_end = min(end, max_dma32);
> +			unsigned long dma32_start = max(start, max_dma);
> +			zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
> 		}
> #endif
> 		if (end > max_dma32) {
> @@ -418,9 +440,11 @@ void __init arm64_memblock_init(void)
> 
> 	early_init_fdt_scan_reserved_mem();
> 
> -	/* 4GB maximum for 32-bit only capable devices */
> +	if (IS_ENABLED(CONFIG_ZONE_DMA))
> +		arm64_dma_phys_limit = max_zone_phys(ARCH_ZONE_DMA_BITS);
> +
> 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
> -		arm64_dma32_phys_limit = max_zone_dma32_phys();
> +		arm64_dma32_phys_limit = max_zone_phys(32);
> 	else
> 		arm64_dma32_phys_limit = PHYS_MASK + 1;
> 
> @@ -430,7 +454,7 @@ void __init arm64_memblock_init(void)
> 
> 	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
> 
> -	dma_contiguous_reserve(arm64_dma32_phys_limit);
> +	dma_contiguous_reserve(arm64_dma_phys_limit ? : arm64_dma32_phys_limit);
> }
> 
> void __init bootmem_init(void)
> @@ -534,7 +558,7 @@ static void __init free_unused_memmap(void)
> void __init mem_init(void)
> {
> 	if (swiotlb_force == SWIOTLB_FORCE ||
> -	    max_pfn > (arm64_dma32_phys_limit >> PAGE_SHIFT))
> +	    max_pfn > PFN_DOWN(arm64_dma_phys_limit ? : arm64_dma32_phys_limit))
> 		swiotlb_init(1);
> 	else
> 		swiotlb_force = SWIOTLB_NO_FORCE;
> -- 
> 2.23.0
> 
> 

With ZONE_DMA=y, this config will fail to reserve 512M CMA on a server,

https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config

CONFIG_DMA_CMA=y
CONFIG_CMA_SIZE_MBYTES=64
CONFIG_CMA_SIZE_SEL_MBYTES=y
CONFIG_CMA_ALIGNMENT=8
CONFIG_CMA=y
CONFIG_CMA_DEBUGFS=y
CONFIG_CMA_AREAS=7

Is this expected?
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
