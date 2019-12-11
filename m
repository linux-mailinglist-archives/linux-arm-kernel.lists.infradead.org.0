Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AF611AC48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:41:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J4elADjU7tpfC7MteCFumAngiHeEz+rEdGIrn6TTdOI=; b=Gg/p8C2QjrFvzdAiJykai/yiP
	Ffj6ffRSI1M6Lut+S9Ja3fKdZ3hdgf0xQUk54fcp6YnXeFd06+0OCYMZfk2w2MkZK2vdgIjoBLINX
	ANEtjaK0S0TJipkJfg5YulUrk+rZ/8K3LzwHxLxehj7qeLNHDeADIQgGTzOIa0ftswMFbUiXyVpaT
	aMnmqNqYHGv8y33Ri15oGIL8Z4KIv8lH9b1QlDvRDN+CsDyEi3uKQtl2RykmNAZtmu3SYXnEG80xw
	4f9PPCRQ0a1FwkXr3PfAUt9eVswOcO5nwa3vhs2tltUCCUOmN34dL4vKrvYBrY02PkBc+T0hpp1DP
	mix96iBjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2Ew-0005ZD-7E; Wed, 11 Dec 2019 13:41:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2Eo-0005YS-Vz
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 13:41:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 089E01FB;
 Wed, 11 Dec 2019 05:41:07 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 142BA3F6CF;
 Wed, 11 Dec 2019 05:41:02 -0800 (PST)
Subject: Re: [PATCH] ARM: dma-api: fix max_pfn off-by-one error in
 __dma_supported()
To: Chen-Yu Tsai <wens@kernel.org>, Russell King <linux@armlinux.org.uk>
References: <20191211104152.26496-1-wens@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <28dfaeab-73cd-041b-9894-776064d13245@arm.com>
Date: Wed, 11 Dec 2019 13:40:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191211104152.26496-1-wens@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_054111_112280_5593E057 
X-CRM114-Status: GOOD (  28.54  )
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
Cc: linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Christoph Hellwig <hch@lst.de>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/12/2019 10:41 am, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> max_pfn, as set in arch/arm/mm/init.c:
> 
>      static void __init find_limits(unsigned long *min,
> 				   unsigned long *max_low,
> 				   unsigned long *max_high)
>      {
> 	    *max_low = PFN_DOWN(memblock_get_current_limit());
> 	    *min = PFN_UP(memblock_start_of_DRAM());
> 	    *max_high = PFN_DOWN(memblock_end_of_DRAM());
>      }
> 
> with memblock_end_of_DRAM() pointing to the next byte after DRAM. As
> such, max_pfn points to the PFN after the end of DRAM.
> 
> Thus when using max_pfn to check DMA masks, we should subtract one
> when checking DMA ranges against it.
> 
> Commit 8bf1268f48ad ("ARM: dma-api: fix off-by-one error in
> __dma_supported()") fixed the same issue, but missed this spot.
> 
> This issue was found while working on the sun4i-csi v4l2 driver on the
> Allwinner R40 SoC. On Allwinner SoCs, DRAM is offset at 0x40000000,
> and we are starting to use of_dma_configure() with the "dma-ranges"
> property in the device tree to have the DMA API handle the offset.
> 
> In this particular instance, dma-ranges was set to the same range as
> the actual available (2 GiB) DRAM. The following error appeared when
> the driver attempted to allocate a buffer:
> 
>      sun4i-csi 1c09000.csi: Coherent DMA mask 0x7fffffff (pfn 0x40000-0xc0000)
>      covers a smaller range of system memory than the DMA zone pfn 0x0-0xc0001
>      sun4i-csi 1c09000.csi: dma_alloc_coherent of size 307200 failed
> 
> Fixing the off-by-one error makes things work.
> 
> Fixes: 11a5aa32562e ("ARM: dma-mapping: check DMA mask against available memory")
> Fixes: 9f28cde0bc64 ("ARM: another fix for the DMA mapping checks")
> Fixes: ab746573c405 ("ARM: dma-mapping: allow larger DMA mask than supported")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>   arch/arm/mm/dma-mapping.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
> index e822af0d9219..f4daafdbac56 100644
> --- a/arch/arm/mm/dma-mapping.c
> +++ b/arch/arm/mm/dma-mapping.c
> @@ -227,12 +227,12 @@ static int __dma_supported(struct device *dev, u64 mask, bool warn)
>   	 * Translate the device's DMA mask to a PFN limit.  This
>   	 * PFN number includes the page which we can DMA to.
>   	 */
> -	if (dma_to_pfn(dev, mask) < max_dma_pfn) {
> +	if (dma_to_pfn(dev, mask) < max_dma_pfn - 1) {

I think this correction actually wants to happen a couple of lines up in 
the definition:

	unsigned long max_dma_pfn = min(max_pfn, arm_dma_pfn_limit);

max_pfn is indeed an exclusive limit, but AFAICS arm_dma_pfn_limit is 
inclusive, so none of these "+1"s and "-1"s can be entirely right for 
both cases.

Robin.

>   		if (warn)
>   			dev_warn(dev, "Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\n",
>   				 mask,
>   				 dma_to_pfn(dev, 0), dma_to_pfn(dev, mask) + 1,
> -				 max_dma_pfn + 1);
> +				 max_dma_pfn);
>   		return 0;
>   	}
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
