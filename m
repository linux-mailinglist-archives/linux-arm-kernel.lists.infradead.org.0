Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CAA10FC69
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 12:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+rbIe6N5Sap/RLAp3xCdVJm/Fn7oIpkwaevnVjFA/E4=; b=sNdEtWsuSgJUqF
	Tq6NvKOeyON3GnppsJSunJ7dhV1NxG4WWvvzpBNVvU3pb/Hn8lGAqHQpHmDQg//GaDJgLA8IRUq55
	xghW+gtTgsl3Y+Od389Bc7FbFBMpWEXFKGJf6QC+XFiDhra1N6AeJe7kfrtfvPAKP3sf5ZKdzpXMn
	lCXMXm93vBR4ZOHZymstjqP14Zs/rGItLOdvgWuq9alEXBqfX6talbSAyqIboHwGEuZKEXQfJrBgh
	QePPTU/c+yI7HNpdJriaB5yi1fAQLjVCGuL799Jvvfu3jD1aUiwm8vxCFEkptgKRwok/tyLsdlGL1
	Z8ozAa6PLds7MC7VquiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6D8-0007KA-9S; Tue, 03 Dec 2019 11:19:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6Cy-0007JA-1F; Tue, 03 Dec 2019 11:19:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C1D9430E;
 Tue,  3 Dec 2019 03:19:04 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 916673F68E; Tue,  3 Dec 2019 03:19:02 -0800 (PST)
Date: Tue, 3 Dec 2019 11:19:00 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
Message-ID: <20191203111900.GA23522@arrakis.emea.arm.com>
References: <20190911182546.17094-1-nsaenzjulienne@suse.de>
 <20190911182546.17094-4-nsaenzjulienne@suse.de>
 <CALAqxLVVcsmFrDKLRGRq7GewcW405yTOxG=KR3csVzQ6bXutkA@mail.gmail.com>
 <CALAqxLUkPNf9JYyt+_VOrxq=Zq03veb1y-7aDx+_Vw+fF9i82A@mail.gmail.com>
 <CALAqxLW7RTif_NPxFXnxfTm2_ST+6aNmE6X=3v4XsuojKH2mtg@mail.gmail.com>
 <20191203101249.GC6815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203101249.GC6815@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_031908_165760_B56EB2EE 
X-CRM114-Status: GOOD (  19.10  )
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Amit Pundir <amit.pundir@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>,
 mbrugger@suse.com, Marc Zyngier <marc.zyngier@arm.com>,
 lkml <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-mm <linux-mm@kvack.org>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 wahrenst@gmx.net, Nicolas Dechense <nicolas.dechesne@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 10:12:50AM +0000, Will Deacon wrote:
> On Mon, Dec 02, 2019 at 10:03:17PM -0800, John Stultz wrote:
> > Ok, narrowing it down further, it seems its the following bit from the
> > patch:
> > 
> > > @@ -201,13 +212,18 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> > >         struct memblock_region *reg;
> > >         unsigned long zone_size[MAX_NR_ZONES], zhole_size[MAX_NR_ZONES];
> > >         unsigned long max_dma32 = min;
> > > +       unsigned long max_dma = min;
> > >
> > >         memset(zone_size, 0, sizeof(zone_size));
> > >
> > > -       /* 4GB maximum for 32-bit only capable devices */
> > > +#ifdef CONFIG_ZONE_DMA
> > > +       max_dma = PFN_DOWN(arm64_dma_phys_limit);
> > > +       zone_size[ZONE_DMA] = max_dma - min;
> > > +       max_dma32 = max_dma;
> > > +#endif
> > >  #ifdef CONFIG_ZONE_DMA32
> > >         max_dma32 = PFN_DOWN(arm64_dma32_phys_limit);
> > > -       zone_size[ZONE_DMA32] = max_dma32 - min;
> > > +       zone_size[ZONE_DMA32] = max_dma32 - max_dma;
> > >  #endif
> > >         zone_size[ZONE_NORMAL] = max - max_dma32;
> > >
> > > @@ -219,11 +235,17 @@ static void __init zone_sizes_init(unsigned long min, unsigned long max)
> > >
> > >                 if (start >= max)
> > >                         continue;
> > > -
> > > +#ifdef CONFIG_ZONE_DMA
> > > +               if (start < max_dma) {
> > > +                       unsigned long dma_end = min_not_zero(end, max_dma);
> > > +                       zhole_size[ZONE_DMA] -= dma_end - start;
> > > +               }
> > > +#endif
> > >  #ifdef CONFIG_ZONE_DMA32
> > >                 if (start < max_dma32) {
> > > -                       unsigned long dma_end = min(end, max_dma32);
> > > -                       zhole_size[ZONE_DMA32] -= dma_end - start;
> > > +                       unsigned long dma32_end = min(end, max_dma32);
> > > +                       unsigned long dma32_start = max(start, max_dma);
> > > +                       zhole_size[ZONE_DMA32] -= dma32_end - dma32_start;
> > >                 }
> > >  #endif
> > >                 if (end > max_dma32) {
> > 
> > The zhole_sizes end up being:
> > zhole_size: DMA: 67671, DMA32: 1145664 NORMAL: 0
> > 
> > This seems to be due to dma32_start being calculated as 786432 each
> > time - I'm guessing that's the max_dma value.
> > Where dma32_end is around 548800, but changes each iteration (so we
> > end up subtracting a negative value each pass, growing the size).
[...]
> Anyway, I've had a go at fixing it below but it's 100% untested. I think
> the issue is that your SoC has memblocks contained entirely within the
> ZONE_DMA region and we don't cater for that at all when processing the
> ZONE_DMA32 region.

This seems to be issue, the SoC memory contained withing ZONE_DMA. I
managed to reproduce it under KVM/Qemu by reducing the amount of memory
given to the guest. You'd also need NUMA disabled to hit this code path.

Your proposed change fixes it but I'll send a tested-by on the full
patch when it hits the list.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
