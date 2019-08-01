Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64747DD4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5zY8+RYvVAGaXV9xm0wW5b1RyNl/Bu/x53tZscuoes=; b=DjQHXYz4kFR4Ob
	iUUsOMs/gzjnEsx81rU6P1pp/FMsspMfHrSNSqmA5D6lpWU5+ieYVJqgi7b56Ri3aet0aaZ6wVniM
	a2AxVSEBwje4DRRKaH1GmgRvT2lSBWjn1O/e5Gst7XE81cCTdd+KYXUZ491He4XXxa5G1zDHU12b/
	SuHieWO8cO5mPDfCz+J00326eqw2rS+V5tkQjAPJXEMgn0ctly/s9S3DmSrwTiMK+NmWvt630BUUu
	srNGCcUT02IPdeGACNr1Rs9NWZJjYGoL6kSXVnbxLSmClFow0WfSx5FT+pZyyxAk+Z0VfoamJvc+6
	uK2bUHW2+kC8AI8sO8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBhf-0006T0-DO; Thu, 01 Aug 2019 14:05:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBhU-0005yK-Ft; Thu, 01 Aug 2019 14:05:02 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5620168AFE; Thu,  1 Aug 2019 16:04:52 +0200 (CEST)
Date: Thu, 1 Aug 2019 16:04:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 6/8] dma-direct: turn ARCH_ZONE_DMA_BITS into a variable
Message-ID: <20190801140452.GB23435@lst.de>
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-7-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731154752.16557-7-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_070500_683309_468404EF 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, eric@anholt.net,
 Paul Mackerras <paulus@samba.org>, will@kernel.org, hch@lst.de,
 Marek Szyprowski <m.szyprowski@samsung.com>, phill@raspberryi.org,
 linux-s390@vger.kernel.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 Christian Borntraeger <borntraeger@de.ibm.com>, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 marc.zyngier@arm.com, robh+dt@kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, linux-mm@kvack.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, wahrenst@gmx.net,
 Michael Ellerman <mpe@ellerman.id.au>, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A few nitpicks, otherwise this looks great:

> @@ -201,7 +202,7 @@ static int __init mark_nonram_nosave(void)
>   * everything else. GFP_DMA32 page allocations automatically fall back to
>   * ZONE_DMA.
>   *
> - * By using 31-bit unconditionally, we can exploit ARCH_ZONE_DMA_BITS to
> + * By using 31-bit unconditionally, we can exploit arch_zone_dma_bits to
>   * inform the generic DMA mapping code.  32-bit only devices (if not handled
>   * by an IOMMU anyway) will take a first dip into ZONE_NORMAL and get
>   * otherwise served by ZONE_DMA.
> @@ -237,9 +238,18 @@ void __init paging_init(void)
>  	printk(KERN_DEBUG "Memory hole size: %ldMB\n",
>  	       (long int)((top_of_ram - total_ram) >> 20));
>  
> +	/*
> +	 * Allow 30-bit DMA for very limited Broadcom wifi chips on many
> +	 * powerbooks.
> +	 */
> +	if (IS_ENABLED(CONFIG_PPC32))
> +		arch_zone_dma_bits = 30;
> +	else
> +		arch_zone_dma_bits = 31;
> +

So the above unconditionally comment obviously isn't true any more, and
Ben also said for the recent ppc32 hack he'd prefer dynamic detection.

Maybe Ben and or other ppc folks can chime in an add a patch to the series
to sort this out now that we have a dynamic ZONE_DMA threshold?

> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 59bdceea3737..40dfc9b4ee4c 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -19,9 +19,7 @@
>   * Most architectures use ZONE_DMA for the first 16 Megabytes, but
>   * some use it for entirely different regions:
>   */
> -#ifndef ARCH_ZONE_DMA_BITS
> -#define ARCH_ZONE_DMA_BITS 24
> -#endif
> +unsigned int arch_zone_dma_bits __ro_after_init = 24;

I'd prefer to drop the arch_ prefix and just calls this zone_dma_bits.
In the long run we really need to find a way to just automatically set
this from the meminit code, but that is out of scope for this series.
For now can you please just update the comment above to say something
like:

/*
 * Most architectures use ZONE_DMA for the first 16 Megabytes, but some use it
 * it for entirely different regions.  In that case the arch code needs to
 * override the variable below for dma-direct to work properly.
 */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
