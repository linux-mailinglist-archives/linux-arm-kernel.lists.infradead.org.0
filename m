Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C631EB432
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 16:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frvIeJCX9JRkldo2dbDcxVNt5OMfQkf7+CC4RwT2kng=; b=tX5M1clC3npTAH
	qKsYhyNLGeaYdXAQN01mjUmYF1LqDEg+eSXIlBeb2Qt6zUaT3/yT1TGSXqH59sjUQzV12fQt6C4Jv
	1Q6BCpy6Od+Q6tDwRpSVDRzRvOurGdz1caqpIqcqaq7q137mcADstiQqMKW9vpDqqL354aJHbXkXt
	fS/ciUi0eiY5Ks/RXFC7Mj9yksyaLUoHOBn2vBRAhQulLKXaW6yLePncyH5armqarDFrhYn+eMbOX
	X5PC68NpQqI15mdvwonlPtR3BZZGj0gCXBZI2jeiK4YRAP/04YXbviFNfUMxhvqIgBTw07YsZZrXb
	w/ImhAaOKuHR8NLnQk1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCgJ-00074v-JI; Thu, 31 Oct 2019 15:48:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCgA-00074Q-1B
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 15:48:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4190F68BE1; Thu, 31 Oct 2019 16:48:00 +0100 (CET)
Date: Thu, 31 Oct 2019 16:47:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
Message-ID: <20191031154759.GA7162@lst.de>
References: <20191031152837.15253-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031152837.15253-1-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_084806_226020_9E34D4E2 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev@lists.ozlabs.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org, Christian Borntraeger <borntraeger@de.ibm.com>,
 iommu@lists.linux-foundation.org, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 04:28:37PM +0100, Nicolas Saenz Julienne wrote:
> Some architectures, notably ARM, are interested in tweaking this
> depending on their runtime DMA addressing limitations.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
> 
> Changes since RFC:
>  - Rebased to v5.4-rc6, fixed arm64 code.
> 
> NOTE: This will only apply to linux-next, where 

missing end of the sentence.  But only applying to linux-next isn't
going to help anyone..

> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 45c00a54909c..f716ea634804 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -20,6 +20,7 @@
>  #include <linux/sort.h>
>  #include <linux/of.h>
>  #include <linux/of_fdt.h>
> +#include <linux/dma-direct.h>
>  #include <linux/dma-mapping.h>
>  #include <linux/dma-contiguous.h>
>  #include <linux/efi.h>
> @@ -41,6 +42,8 @@
>  #include <asm/tlb.h>
>  #include <asm/alternative.h>
>  
> +#define ARM64_ZONE_DMA_BITS	30
> +
>  /*
>   * We need to be able to catch inadvertent references to memstart_addr
>   * that occur (potentially in generic code) before arm64_memblock_init()
> @@ -424,6 +427,8 @@ void __init arm64_memblock_init(void)
>  	else
>  		arm64_dma_phys_limit = PHYS_MASK + 1;
>  
> +	zone_dma_bits = ARM64_ZONE_DMA_BITS;
> +
>  	reserve_crashkernel();

This actually adds a new limit, as there wasn't one before for arm64.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
