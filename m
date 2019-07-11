Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651FB654FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 13:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtpHtecPE1Qv5aH5FcmkANn+1a4YoYLXNdafBqhchug=; b=kS1Ab10WdbnYVz
	xvWSVwrawfWHlf/uwnjPD7p5kjt545ZLW38/Beo5VTsTbM7shlbHArj2+msTK9zYxqg07z58ChRKY
	1eYob6mp+d5s7DN200c6DjtL5mfEVxC8RLNKNxjPJCHG0Uf0SsYX61if4I3xQM/uUmyByPxzF1CV5
	5FGnaxx9mPSKXKbDUP4PcF+sKceNMOG5BCLpWX5Ilj1NS3/JuQikKKSkRcSgsb8AhWRjPB0zoDLxK
	BW4XpX35y20envcK03wAQreepWDtsl8N6NmXGblvnXr/sWJkiiJ6pQzR5Nq12uFSAZ9HV6l1UD/o8
	Ec0utoBUeRgCnvrHKWvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWyV-0000Wf-4W; Thu, 11 Jul 2019 11:10:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWyN-0000Vv-DN
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 11:10:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A99A9B0EA;
 Thu, 11 Jul 2019 11:10:43 +0000 (UTC)
Message-ID: <ba2796eab34eb4ec4a25e7c137faac851776c778.camel@suse.de>
Subject: Re: Limiting the DMA zone in arm64
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Will Deacon <will@kernel.org>
Date: Thu, 11 Jul 2019 13:10:41 +0200
In-Reply-To: <20190711101717.meoyqu5h2zdptypf@willie-the-truck>
References: <0439cc08532849b1d0adb44a7b2cbc9ce5dceaf7.camel@suse.de>
 <20190711101717.meoyqu5h2zdptypf@willie-the-truck>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_041047_595506_F7C3C137 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, marc.zyngier@arm.com,
 andre.przywara@arm.com, phil@raspberrypi.org,
 Matthias Brugger <mbrugger@suse.com>,
 Catalin Marinas <catalin.marinas@arm.com>, robin.murphy@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, thanks for your response.

[+ Matthias and Phill who might be interested ]

On Thu, 2019-07-11 at 11:17 +0100, Will Deacon wrote:
> Hi Nicolas,
> 
> [+Robin, Andrew and Marc since we've been playing with getting arm64 Linux
>  up and running too]
> 
> On Thu, Jul 11, 2019 at 11:51:57AM +0200, Nicolas Saenz Julienne wrote:
> > I'm trying to bring up the new RPi4 on arm64, and running into issues with
> > DMA
> > allocations. The device has up to 4GB of ram, but AFAIK only the first GB of
> > ram can be used for DMA: the DMA address range is 0xc0000000-0xffffffff
> > which
> > is aliased to the first GB of memory 0x00000000-0x40000000.
> 
> Do you know for sure that these aliases are equivalant and so it's
> inconsequential if we use the lower addresses for DMA?

No, they are not exactly equivalent, see the 'dma-ranges' I posted on my other
reply. I was being overly generic to make the explanation simpler. The actual
size of the aliasing is smaller.

That said, I don't think using the lower addresses would work for DMA. I tested
some transfers and the offset is clearly being taken into account.

> Also, does this
> limitation apply to all DMA-capable peripherals, or just some of them?

I infer from '.dma_zone_size = SZ_1G' and dma-ranges that it's a device wide
limitation. Maybe Phill can contradict me.

> > This is solved in arm32 using a board file with '.dma_zone_size = SZ_1G'.
> > But I
> > haven't found any similar mechanism for arm64. Any suggestions?
> > 
> > Just it case it helps understand the issue, I managed to get things going by
> > doing the following:
> > 
> > diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> > index f3c795278def..ec3cb7b76a76 100644
> > --- a/arch/arm64/mm/init.c
> > +++ b/arch/arm64/mm/init.c
> > @@ -407,7 +407,8 @@ void __init arm64_memblock_init(void)
> >  
> >         /* 4GB maximum for 32-bit only capable devices */
> >         if (IS_ENABLED(CONFIG_ZONE_DMA32))
> > -               arm64_dma_phys_limit = max_zone_dma_phys();
> > +               arm64_dma_phys_limit = 0x40000000;
> >         else
> >                 arm64_dma_phys_limit = PHYS_MASK + 1;
> 
> My superficial understanding (mainly from talking to Robin, who actually
> knows how this works), is that we'd need to extend our support for
> dma-ranges in order to limit ZONE_DMA32 as you're proposing above.

Noted.

> However, this may not help for streaming DMA, where we need to force
everything
> above 1G through a bounce buffer and likely requires something weird like
> a 30-bit DMA mask.
>
> Do you know how streaming DMA is handled in the 32-bit port for rpi4?

Not really, I'll have a look and come back to you.

Regards,
Nicolas



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
