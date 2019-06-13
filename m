Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B73743F29
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4QbfB1kbPI3PAtXZ3Z/BF2t8Tlk6f07F7MXLvV9Eb0=; b=TRt9724gw0TgL7
	FJeHlDym0HxoObuh+l5yj/W4UEhKm5Mq2uQh5Oqczb8/ghDFfcBWimlKC26Q7yeW1mtvrMlmY2Gtj
	TucYsbFKABQquVTORwoPji033UKv6D25rUyymshvN7OijelhHAmojP8oKnl0oa97xjXmxpjYmzbXn
	b63VYVqtIzGIIo3ejEfCUrdn+2Bha/G89+9T+tqGV4bTapN/XMX66zah7ZYMGlTTRj5L0oK4ZRVl0
	yLS7OVz8PFSUVOrIg8aZhV0V0Xk0thCvzk0sLdFA0+piyOx2is6MikGj+xzVTIyyJsB7FPDgxBLrS
	p7YEsi6htGlco4Iw5nmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbS4N-0003EY-M9; Thu, 13 Jun 2019 15:55:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbS3z-0003Cs-Hi
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:54:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E882367;
 Thu, 13 Jun 2019 08:54:54 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81AD83F246;
 Thu, 13 Jun 2019 08:54:50 -0700 (PDT)
Date: Thu, 13 Jun 2019 16:54:35 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH 1/2] arm64/mm: check cpu cache line size with
 non-coherent device
Message-ID: <20190613155434.GW28951@C02TF0J2HF1T.local>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-2-msys.mizuma@gmail.com>
 <20190611180007.him7md7gdcjs5cg6@mbp>
 <20190611220246.lyhcqahsxyxuhqjk@gabell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611220246.lyhcqahsxyxuhqjk@gabell>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_085455_693481_C836D7AB 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 06:02:47PM -0400, Masayoshi Mizuma wrote:
> On Tue, Jun 11, 2019 at 07:00:07PM +0100, Catalin Marinas wrote:
> > On Tue, Jun 11, 2019 at 11:17:30AM -0400, Masayoshi Mizuma wrote:
> > > --- a/arch/arm64/mm/dma-mapping.c
> > > +++ b/arch/arm64/mm/dma-mapping.c
> > > @@ -91,10 +91,6 @@ static int __swiotlb_mmap_pfn(struct vm_area_struct *vma,
> > >  
> > >  static int __init arm64_dma_init(void)
> > >  {
> > > -	WARN_TAINT(ARCH_DMA_MINALIGN < cache_line_size(),
> > > -		   TAINT_CPU_OUT_OF_SPEC,
> > > -		   "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> > > -		   ARCH_DMA_MINALIGN, cache_line_size());
> > >  	return dma_atomic_pool_init(GFP_DMA32, __pgprot(PROT_NORMAL_NC));
> > >  }
> > >  arch_initcall(arm64_dma_init);
> > > @@ -473,6 +469,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
> > >  			const struct iommu_ops *iommu, bool coherent)
> > >  {
> > >  	dev->dma_coherent = coherent;
> > > +
> > > +	if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
> > > +		dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> > > +				ARCH_DMA_MINALIGN, cache_line_size());
> > 
> > I'm ok in principle with this patch, with the minor issue that since
> > commit 7b8c87b297a7 ("arm64: cacheinfo: Update cache_line_size detected
> > from DT or PPTT") queued for 5.3 cache_line_size() gets the information
> > from DT or ACPI. The reason for this change is that the information is
> > used for performance tuning rather than DMA coherency.
> > 
> > You can go for a direct cache_type_cwg() check in here, unless Robin
> > (cc'ed) has a better idea.
> 
> Got it, thanks.
> I believe coherency_max_size is zero in case of coherent is false,
> so I'll modify the patch as following. Does it make sense?

The coherency_max_size gives you the largest cache line in the system,
independent of whether a device is coherent or not. You may have a
device that does not snoop L1/L2 but there is a transparent L3 (system
cache) with a larger cache line that the device may be able to snoop.
The coherency_max_size and therefore cache_line_size() would give you
this L3 value but the device would work fine since CWG <=
ARCH_DMA_MINALIGN.

> 
> @@ -57,6 +53,11 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
>                         const struct iommu_ops *iommu, bool coherent)
>  {
>         dev->dma_coherent = coherent;
> +
> +       if (!coherent && (cache_line_size() > ARCH_DMA_MINALIGN))
> +               dev_WARN(dev, "ARCH_DMA_MINALIGN smaller than CTR_EL0.CWG (%d < %d)",
> +                               ARCH_DMA_MINALIGN, (4 << cache_type_cwg()));
> +
>         if (iommu)
>                 iommu_setup_dma_ops(dev, dma_base, size);

I think the easiest here is to add a local variable:

	int cls = 4 << cache_type_cwg();

and check it against ARCH_DMA_MINALIGN.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
