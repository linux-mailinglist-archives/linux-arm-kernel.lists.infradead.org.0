Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054337E014
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2xrGigdmWDEdPhWMtyxhi5r3NRlawN6opCk1OPVNO8=; b=AaMyLPDD4zEw1N
	Xk2cQETN6HjyiTAyEu+6kmBerYxsdOir5pgFourIHlK2EfYv1Crh8N56CFGg7avVrYbDv8S8VHQbk
	KM1cW6vqyn6srtibjVqHKfGzIIEgl8RMFvF+KU1YQ1QQGCR2FHYqCPoEeuvCd8IOJR6L+RDAP8fcd
	GVcbKx/jwNyiyOgKzCRcS4EbsF1teNpwPaUWm1D7kS6KWOS4YhCmeNucgu4W/dEcMv6rOWBe93Dk9
	E45IHkFb4tHsyRlLqSfdgEtZwOh0EAUVGNiBdrSOpvzvuFW+PsCMcW16XzZs43zKbJif23kKwUWyq
	gTSgGAbdAO/qWImzkyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDrM-0005SU-Kb; Thu, 01 Aug 2019 16:23:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htDrE-0005S2-FW
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:23:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33E2020657;
 Thu,  1 Aug 2019 16:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564676591;
 bh=7da4WGXGd4/Wm+MdwfjAwCtbHk3H9DFKOpK9DR+Fht0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NlsTVycC6RXe/dgCwWd0yYSJfb8YeCiUu4zifaD8JdKhyXRQTW1pzp0LcMzGgmEBg
 QZCwX8Em2Vs+vL9ck1KaRJh77jzgQPBim5716wcV2Y8/BFTUSSWnLL9IcDN97Reomr
 hrleDNREQR24xnudRIyOq6iVo4vpwfSZhGR5aMfc=
Date: Thu, 1 Aug 2019 17:23:06 +0100
From: Will Deacon <will@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] dma-mapping: fix page attributes for dma_mmap_*
Message-ID: <20190801162305.3m32chycsdjmdejk@willie-the-truck>
References: <20190801142118.21225-1-hch@lst.de>
 <20190801142118.21225-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801142118.21225-2-hch@lst.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_092312_556075_09764E3B 
X-CRM114-Status: GOOD (  20.76  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Anastasio <shawn@anastas.io>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Catalin Marinas <catalin.marinas@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 05:21:18PM +0300, Christoph Hellwig wrote:
> All the way back to introducing dma_common_mmap we've defaulyed to mark
> the pages as uncached.  But this is wrong for DMA coherent devices or
> if using DMA_ATTR_NON_CONSISTENT.  Later on DMA_ATTR_WRITE_COMBINE
> also got incorrect treatment as that flag is only treated special on
> the alloc side for non-coherent devices.
> 
> Introduce a new dma_mmap_pgprot helper that deals with the check
> for coherent devices and DMA_ATTR_NON_CONSISTENT so that only the
> remapping cases even reach arch_dma_mmap_pgprot and we thus ensure
> no aliasing of page attributes happens.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/mm/dma-mapping.c        |  4 +---
>  arch/arm64/mm/dma-mapping.c      |  4 +---
>  arch/powerpc/kernel/Makefile     |  3 +--
>  arch/powerpc/kernel/dma-common.c | 17 -----------------
>  drivers/iommu/dma-iommu.c        |  6 +++---
>  include/linux/dma-mapping.h      |  1 +
>  include/linux/dma-noncoherent.h  |  5 -----
>  kernel/dma/mapping.c             | 11 ++++++++++-
>  kernel/dma/remap.c               |  2 +-
>  9 files changed, 18 insertions(+), 35 deletions(-)
>  delete mode 100644 arch/powerpc/kernel/dma-common.c
> 
> diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> index 9c9a23e5600d..cfe44df169c5 100644
> --- a/arch/arm/mm/dma-mapping.c
> +++ b/arch/arm/mm/dma-mapping.c
> @@ -2397,9 +2397,7 @@ long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
>  pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
>  		unsigned long attrs)
>  {
> -	if (!dev_is_dma_coherent(dev))
> -		return __get_dma_pgprot(attrs, prot);
> -	return prot;
> +	return __get_dma_pgprot(attrs, prot);
>  }
>  
>  void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
> diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
> index 1d3f0b5a9940..bd2b039f43a6 100644
> --- a/arch/arm64/mm/dma-mapping.c
> +++ b/arch/arm64/mm/dma-mapping.c
> @@ -14,9 +14,7 @@
>  pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
>  		unsigned long attrs)
>  {
> -	if (!dev_is_dma_coherent(dev) || (attrs & DMA_ATTR_WRITE_COMBINE))
> -		return pgprot_writecombine(prot);
> -	return prot;
> +	return pgprot_writecombine(prot);
>  }

Seems like a sensible cleanup to me:

Acked-by: Will Deacon <will@kernel.org>

Although arch_dma_mmap_pgprot() is a bit of a misnomer now that it only
gets involved in the non-coherent case.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
