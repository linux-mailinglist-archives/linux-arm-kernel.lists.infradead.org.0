Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F0073041
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBeF5MRhmWhlOU8csOdyncV9jOP6HQ8e8Oyt4B7PiX0=; b=K+mhR2sMbgC4VV
	20eUNcJR50xObCxuT6FnOlnytqL7v6P413kXodijZd0mJyDzmk0jWJ2vgFDWVO8cILN7wEVd5R91O
	RkIYstgUzVNK99ZdJdOKYFDq6CiDoSiv1NrB6e63DFDYuX8E8fnberKyFOxGbyqnfJLBJud71yPrA
	C0EetMM4SWXhDQupiepCXoyUIcFluSFxjaHI4lSN43rb10mV6V+l6qajwNWiKagOEVaKgze2KDAyg
	fWiXc2BqOXe/JobAglMEByyPpuH2wBa97ubjubbfDYLzd+sSvwLiFFJ4X/z2PqDWybk0s/gjaEVlm
	jUqb+tnTUXO/VjU6nUdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHgC-000103-Lk; Wed, 24 Jul 2019 13:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHg2-0000z3-BM
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:51:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21F7B28;
 Wed, 24 Jul 2019 06:51:28 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 7116C3F71A; Wed, 24 Jul 2019 06:51:26 -0700 (PDT)
Date: Wed, 24 Jul 2019 14:51:24 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
Message-ID: <20190724135124.GA44864@arrakis.emea.arm.com>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
 <20190718091526.GA25321@lst.de>
 <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
 <58753252bd7964e3b9e9558b633bd325c4a898a1.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58753252bd7964e3b9e9558b633bd325c4a898a1.camel@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_065130_476583_841DF1D3 
X-CRM114-Status: GOOD (  24.53  )
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com,
 Robin Murphy <robin.murphy@arm.com>, phil@raspberrypi.org,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 Jisheng.Zhang@synaptics.com, mbrugger@suse.com, will@kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 03:08:52PM +0200, Nicolas Saenz Julienne wrote:
> On Thu, 2019-07-18 at 13:18 +0200, Nicolas Saenz Julienne wrote:
> > On Thu, 2019-07-18 at 11:15 +0200, Christoph Hellwig wrote:
> > > On Wed, Jul 17, 2019 at 05:31:34PM +0200, Nicolas Saenz Julienne wrote:
> > > > Historically devices with ZONE_DMA32 have been assumed to be able to
> > > > address at least the lower 4GB of ram for DMA. This is still the defualt
> > > > behavior yet the Raspberry Pi 4 is limited to the first GB of memory.
> > > > This has been observed to trigger failures in dma_direct_supported() as
> > > > the 'min_mask' isn't properly set.
> > > > 
> > > > We create 'dma_direct_min_mask' in order for the arch init code to be
> > > > able to fine-tune dma direct's 'min_dma' mask.
> > > 
> > > Normally we use ZONE_DMA for that case.
> > 
> > Fair enough, I didn't think of that possibility.
> > 
> > So would the arm64 maintainers be happy with something like this:
> > 
> > - ZONE_DMA: Follows standard definition, 16MB in size. ARCH_ZONE_DMA_BITS is
> > 	    left as is.
> > - ZONE_DMA32: Will honor the most constraining 'dma-ranges'. Which so far for
> > 	      most devices is 4G, except for RPi4.
> > - ZONE_NORMAL: The rest of the memory.
> 
> Never mind this suggestion, I don't think it makes any sense. If anything arm64
> seems to fit the ZONE_DMA usage pattern of arm and powerpc: where ZONE_DMA's
> size is decided based on ram size and/or board configuration. It was actually
> set-up like this until Christoph's ad67f5a6545f7 ("arm64: replace ZONE_DMA with
> ZONE_DMA32").
> 
> So the easy solution would be to simply revert that commit. On one hand I feel
> it would be a step backwards as most 64 bit architectures have been moving to
> use ZONE_DMA32. On the other, current ZONE_DMA32 usage seems to be heavily
> rooted on having a 32 bit DMA mask*, which will no longer be the case on arm64
> if we want to support the RPi 4.
> 
> So the way I see it and lacking a better solution, the argument is stronger on
> moving back arm64 to using ZONE_DMA. Any comments/opinions?

As it was suggested in this or the previous thread, I'm not keen on
limiting ZONE_DMA32 to the smalles RPi4 can cover, as the naming
implies this zone should cover 32-bit devices that can deal with a full
32-bit mask.

I think it may be better if we have both ZONE_DMA and ZONE_DMA32 on
arm64. ZONE_DMA would be based on the smallest dma-ranges as described
in the DT while DMA32 covers the first naturally aligned 4GB of RAM
(unchanged). When a smaller ZONE_DMA is not needed, it could be expanded
to cover what would normally be ZONE_DMA32 (or could we have ZONE_DMA as
0-bytes? I don't think GFP_DMA can still allocate memory in this case).

We'd probably have to define ARCH_ZONE_DMA_BITS for arm64 to something
smaller than 32-bit but sufficient to cover the known platforms like
RPi4 (the current 24 is too small, so maybe 30). AFAICT,
__dma_direct_optimal_gfp_mask() figures out whether GFP_DMA or GFP_DMA32
should be passed.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
