Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E285D37A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xR7K4x/KRVCDXO983OFdA4vWQawr7Y1TeAhaJ7xUqnc=; b=eLaUCu0yBfFB9Z3k819njXxcI
	MRo0EhhurHCGwBKrV9S+rv0iLufWiSkNkQa2trXP4EMt3OeedVkSBJ83UGGrSSLkzkqDJhQqT5U9V
	LefpKPXZoUZ5VwN0UafQgJeanfx5WFGxWbGOO3dnJg5DyHBrl9+g+FnslLNiKg814dvf5wDU1YfEa
	6T8cYntI0YrpMk1kByDWsn2CSSYi8o424CbFKasUwj0mAXdTM3IaUBbWz7NLZvrevFbMOOlXX9GPQ
	lwtrxvfZOMm2Ao8gZmdOIFMwe9ce5RKGVCUAFWMIbNf+3LSM0q8mW8JHm5BK1sQabirILUeU50Y6l
	Ugc2/FIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiL2Y-00024f-9k; Tue, 02 Jul 2019 15:49:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiL2K-00023g-U2
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:49:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22AF128;
 Tue,  2 Jul 2019 08:49:38 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFEAD3F246;
 Tue,  2 Jul 2019 08:49:35 -0700 (PDT)
Subject: Re: [RFC PATCH 0/2] Support for TI Page-based Address Translator
To: "Andrew F. Davis" <afd@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Santosh Shilimkar
 <ssantosh@kernel.org>, Will Deacon <will.deacon@arm.com>,
 Joerg Roedel <joro@8bytes.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Tero Kristo <t-kristo@ti.com>,
 William Mills <wmills@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, John Stultz <john.stultz@linaro.org>
References: <20190607193523.25700-1-afd@ti.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f706bfe0-fdf6-afdd-fea7-13b78b16cdee@arm.com>
Date: Tue, 2 Jul 2019 16:49:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190607193523.25700-1-afd@ti.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_084941_056514_D7DD691F 
X-CRM114-Status: GOOD (  45.78  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/06/2019 20:35, Andrew F. Davis wrote:
> Hello all,
> 
> So I've got a new IP on our new SoC I'm looking to make use of and would
> like some help figuring out what framework best matches its function. The
> IP is called a "Page-based Address Translator" or PAT. A PAT instance
> (there are 5 of these things on our J721e device[0]) is basically a
> really simple IOMMU sitting on the interconnect between the device bus
> and what is effectively our northbridge called
> MSMC (DRAM/SRAM/L3-Cache/Coherency controller).
> 
> Simplified it looks about like this:
> 
>           CPUs
>            |
> DRAM --- MSMC --- SRAM/L3
>            |
>          NAVSS - (PATs)
>            |
>    --- Device Bus ---------
>   |      |      |          |
> Device  Device  Device   etc..
> 
> Each PAT has a set a window in high memory (about 0x48_0000_0000 area)
> for which any transaction with an address targeting its window will be
> routed into that PAT. The PAT then does a simple calculation based on
> the how far into the window the address is and the current page size,
> does a lookup to an internally held table of translations, then sends the
> transaction back out on the interconnect with a new address. Usually this
> address should be towards somewhere in DRAM, but can be some other device
> or even back into PAT (I'm not sure there is a valid use-case for this
> but just a point of interest).
> 
> My gut reaction is that this is an IOMMU which belongs in the IOMMU
> subsystem. But there are a couple oddities that make me less sure it is
> really suitable for the IOMMU framework. First it doesn't sit in front of
> any devices, it sits in front of *all* devices, this means we would have
> every device claim it as an IOMMU parent, even though many devices also
> have a traditional IOMMU connected. Second, there is only a limited
> window of address space per PAT, this means we will get fragmentation and
> allocation failures on occasion, in this way it looks to me more like AGP
> GART. Third, the window is in high-memory, so unlike some IOMMU devices
> which can be used to allow DMA to high-mem from low-mem only devices, PAT
> can't be used for that. Lastly it doesn't provide any isolation, if the
> access does not target the PAT window it is not used (that is not to say
> we don't have isolation, just that it is taken care of by other parts of
> the interconnect).
> 
> This means, to me, that PAT has one main purpose: making
> physically-contiguous views of scattered pages in system memory for DMA.
> But it does that really well, the whole translation table is held in a
> PAT-internal SRAM giving 1 bus cycle latency and at full bus bandwidth.
> 
> So what are my options here, is IOMMU the right way to go or not?

FWIW, that sounds almost exactly like my (vague) understanding of other 
GARTs, and as such should be pretty well manageable via the IOMMU API - 
we already have tegra-gart, for example. The aperture contention issue 
could certainly be mitigated by letting the firmware claim it's only 
associated with the display and any other devices which really need it.

A further interesting avenue of investigation - now that Christoph's 
recent work has made it much more possible - would be a second set of 
IOMMU DMA ops tailored for "GART-like" domains where force_aperture=0, 
which could behave as dma-direct wherever possible and only use IOMMU 
remaps when absolutely necessary.

Robin.

> Looking around the kernel I also see the char dev ARP/GART interface
> which looks like a good fit, but also looks quite dated and my guess
> deprecated at this point. Moving right along..
> 
> Another thing I saw is we have the support upstream of the DMM device[1]
> available in some OMAPx/AM57x SoCs. I'm a little more familiar with this
> device. The DMM is a bundle of IPs and in fact one of them is called
> "PAT" and it even does basically the same thing this incarnation of "PAT"
> does. It's upstream integration design is a bit questionable
> unfortunately, the DMM support was integrated into the OMAPDRM display
> driver, which does make some sense then given its support for rotation
> (using TILER IP contained in DMM). The issue with this was that the
> DMM/TILER/PAT IP was not part of the our display IP, but instead out at
> the end of the shared device bus, inside the external memory controller.
> Like this new PAT this meant that any IP that could make use of it, but
> only the display framework could actually provide buffers backed by it.
> This meant, for instance, if we wanted to decode some video buffer using
> our video decoder we would have to allocate from DRM framework then pass
> that over to the V4L2 system. This doesn't make much sense and required
> the user-space to know about this odd situation and allocate from the
> right spot or else have to use up valuable CMA space or waste memory with
> dedicated carveouts.
> 
> Another idea would be to have this as a special central allocator
> (exposed through DMA-BUF heaps[2] or ION) that would give out normal
> system memory as a DMA-BUF but remap it with PAT if a device that only
> supports contiguous memory tries to attach/map that DMA-BUF.
> 
> One last option would be to allow user-space to choose to make the buffer
> contiguous when it needs. That's what the driver in this series allows.
> We expose a remapping device, user-space passes it a non-contiguous
> DMA-BUF handle and it passes a contiguous one back. Simple as that.
> 
> So how do we use this, lets take Android for example, we don't know at
> allocation time if a rendering buffer will end up going back into the GPU
> for further processing, or if it will be consumed directly by the display.
> This is a problem for us as our GPU can work with non-contiguous buffers
> but our display cannot, so any buffers that could possibly go to the
> display at some point currently needs to be allocated as contiguous from
> the start, this leads to a lot of unneeded use of carveout/CMA memory.
> With this driver on the other hand, we allocate regular non-contiguous
> system memory (again using DMA-BUF heaps, but ION could work here too),
> then only when a buffer is about to be sent to the display we pass the
> handle to this DMA-BUF to our driver here and take the handle it gives
> back and pass that to the display instead.
> 
> As said, it is probably not the ideal solution but it does work and was
> used for some early testing of the IP.
> 
> Well, sorry for the wall of text.
> Any and all suggestions very welcome and appreciated.
> 
> Thanks,
> Andrew
> 
> [0] http://www.ti.com/lit/pdf/spruil1
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
> [2] https://lkml.org/lkml/2019/6/6/1211
> 
> Andrew F. Davis (2):
>    dt-bindings: soc: ti: Add TI PAT bindings
>    soc: ti: Add Support for the TI Page-based Address Translator (PAT)
> 
>   .../devicetree/bindings/misc/ti,pat.txt       |  34 ++
>   drivers/soc/ti/Kconfig                        |   9 +
>   drivers/soc/ti/Makefile                       |   1 +
>   drivers/soc/ti/ti-pat.c                       | 569 ++++++++++++++++++
>   include/uapi/linux/ti-pat.h                   |  44 ++
>   5 files changed, 657 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/misc/ti,pat.txt
>   create mode 100644 drivers/soc/ti/ti-pat.c
>   create mode 100644 include/uapi/linux/ti-pat.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
