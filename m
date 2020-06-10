Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1AC1F5029
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3knivs/yXSaqDd/R3UXWmFplXiPQrFQjtiTwyIOTu8=; b=eNfShkL7sLx9ar
	Dpg+zTKQSPZimi5a+l8OQdhFcm6dDtMwls5s8r2G/1f1gv4RN+XOHBb0cg4ghvRH0UWzBNZ1V0vps
	jKMopIZ3HJd17UM2o08y2OpSqmHyqoooGpwIEn9bu+J64tKFVJnRyklrmsJb7W47619VtG+jki4zK
	X3e61ThKqQ4z6ai778q8H8hmt+7BrFGBk8126yBGTNAjoAb4FOfcAGN6pIC4OcAoPmHujJAqY//eR
	mkeMQHFZS22GHARgDxREKjLr/etVj9XY+wjd94Cp7i2veLZQXecgcB0AqCitbuykPMoLTJJCKAUDE
	RloCfqicK+JlKTtsA9cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivxn-0002C0-3v; Wed, 10 Jun 2020 08:19:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivxe-0002BO-DF
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:19:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A88C1F1;
 Wed, 10 Jun 2020 01:19:49 -0700 (PDT)
Received: from [10.57.43.21] (unknown [10.57.43.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E74FE3F6CF;
 Wed, 10 Jun 2020 01:19:46 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm-nommu: Add use_reserved_mem() to check if device
 support reserved memory
To: Christoph Hellwig <hch@infradead.org>
References: <1591605038-8682-1-git-send-email-dillon.minfei@gmail.com>
 <1591605038-8682-3-git-send-email-dillon.minfei@gmail.com>
 <90df5646-e0c4-fcac-d934-4cc922230dd2@arm.com>
 <20200610072444.GA6293@infradead.org>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <9c3a7b4e-0190-e9bb-91fe-6d5692559888@arm.com>
Date: Wed, 10 Jun 2020 09:19:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200610072444.GA6293@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_011950_540591_0A82E7D1 
X-CRM114-Status: GOOD (  19.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kstewart@linuxfoundation.org, devicetree@vger.kernel.org,
 alexandre.torgue@st.com, info@metux.net, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 tglx@linutronix.de, dillon.minfei@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/10/20 8:24 AM, Christoph Hellwig wrote:
> Ok, I finally found the original patch from Vladimir.  Comments below:
> 
>> +++ b/kernel/dma/direct.c
>> @@ -456,14 +456,14 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>>  #else /* CONFIG_MMU */
>>  bool dma_direct_can_mmap(struct device *dev)
>>  {
>> -	return false;
>> +	return true;
>>  }
>>  
>>  int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>>  		void *cpu_addr, dma_addr_t dma_addr, size_t size,
>>  		unsigned long attrs)
>>  {
>> -	return -ENXIO;
>> +	return vm_iomap_memory(vma, vma->vm_start, (vma->vm_end - vma->vm_start));;
> 
> I think we should try to reuse the mmu dma_direct_mmap implementation,
> which does about the same.  This version has been compile tested on
> arm-nommu only, let me know what you think: (btw, a nommu_defconfig of
> some kind for arm would be nice..)

Catch-all nommu_defconfig is not easy for ARM, AFAIK folk carry few hacks
for randconfig...

Meanwhile, known working NOMMU configs

$ git grep "# CONFIG_MMU is not set" arch/arm/configs/
arch/arm/configs/efm32_defconfig:# CONFIG_MMU is not set
arch/arm/configs/lpc18xx_defconfig:# CONFIG_MMU is not set
arch/arm/configs/mps2_defconfig:# CONFIG_MMU is not set
arch/arm/configs/stm32_defconfig:# CONFIG_MMU is not set
arch/arm/configs/vf610m4_defconfig:# CONFIG_MMU is not set

> 
> diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
> index d006668c0027d2..e0dae570a51530 100644
> --- a/kernel/dma/Kconfig
> +++ b/kernel/dma/Kconfig
> @@ -71,6 +71,7 @@ config SWIOTLB
>  # in the pagetables
>  #
>  config DMA_NONCOHERENT_MMAP
> +	default y if !MMU
>  	bool

Nit: def_bool !MMU

>  
>  config DMA_REMAP
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 0a4881e59aa7d6..9ec6a5c3fc578c 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -459,7 +459,6 @@ int dma_direct_get_sgtable(struct device *dev, struct sg_table *sgt,
>  	return ret;
>  }
>  
> -#ifdef CONFIG_MMU
>  bool dma_direct_can_mmap(struct device *dev)
>  {
>  	return dev_is_dma_coherent(dev) ||
> @@ -485,19 +484,6 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>  	return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
>  			user_count << PAGE_SHIFT, vma->vm_page_prot);
>  }
> -#else /* CONFIG_MMU */
> -bool dma_direct_can_mmap(struct device *dev)
> -{
> -	return false;
> -}
> -
> -int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> -		void *cpu_addr, dma_addr_t dma_addr, size_t size,
> -		unsigned long attrs)
> -{
> -	return -ENXIO;
> -}
> -#endif /* CONFIG_MMU */
>  
>  int dma_direct_supported(struct device *dev, u64 mask)
>  {
> 

LGTM. FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
