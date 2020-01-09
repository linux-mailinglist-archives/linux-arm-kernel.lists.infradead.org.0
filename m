Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4E9135BAC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:49:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/QJ+VWF7HeFydMRCMmKDly8wK8uwqo1t0+2MTBXgMk=; b=JcH+JnTA7LKeD3
	v1wuIVyWYP9WkUEUpePS13Zv0PrbwBHHP38jHOWsVIqJH1HI5IU1t+uoseOGBjZaqO23XP1ypWtYo
	Bl52sPq6aiKTv2f95z3U1z+lSugVitnUsMun3f2gdh5tv295qNVEjSg5ZVkZUaLqsxcodEX21rTvG
	OnVfmwRwa97hvM4mpmUnFCVzdJE2fKBCOTzUI0hCUfCpiO/ebov8WIZnPjjQQ3dYkeSX2+WD/NOVc
	mezy5ZVqL5/PYgsPeUwbQryLSj5JkvOL/q/YhpMVrLy73amoEyPHcI2cmtkE/QmY8qoIV4q6xNOu1
	0vlq8NdKXHlA8KT7JlXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZ7r-00022U-8f; Thu, 09 Jan 2020 14:49:31 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZ7j-00021m-5l
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:49:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9ECB268BFE; Thu,  9 Jan 2020 15:49:20 +0100 (CET)
Date: Thu, 9 Jan 2020 15:49:20 +0100
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] arm: use swiotlb for bounce buffer on LPAE configs
Message-ID: <20200109144920.GB22907@lst.de>
References: <20190709142011.24984-1-hch@lst.de>
 <20190709142011.24984-3-hch@lst.de>
 <9bbd87c2-5b6c-069c-dd22-5105dc827428@ti.com> <20191219150259.GA3003@lst.de>
 <20106a84-8247-fa78-2381-2c94fad9cb6a@ti.com>
 <eca457b6-c685-59ac-1dec-5b28e4430e1d@ti.com>
 <d3921764-840c-4d1c-f240-b974b9b83ec8@arm.com>
 <27450c0e-c8aa-d59b-aa32-37f23c232eb7@ti.com>
 <0e6decce-c54e-9791-473e-0aef05650f39@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0e6decce-c54e-9791-473e-0aef05650f39@arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_064923_363393_E0048DCD 
X-CRM114-Status: GOOD (  21.46  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 iommu@lists.linux-foundation.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 03:20:07PM +0000, Robin Murphy wrote:
>> The problem - I think - is that the DMA_BIT_MASK(32) from
>> dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32)) is treated as physical
>> address along the call path so the dma_pfn_offset is applied to it and
>> the check will fail, saying that DMA_BIT_MASK(32) can not be supported.
>
> But that's the thing - in isolation, that is entirely correct. Considering 
> ZONE_DMA32 for simplicity, in general the zone is expected to cover the 
> physical address range 0x0000_0000 - 0xffff_ffff (because DMA offsets are 
> relatively rare), and a device with a dma_pfn_offset of more than 
> (0x1_0000_0000 >> PAGE_SHIFT) *cannot* support that range with any mask, 
> because the DMA address itself would have to be negative.

Note that ZONE_DMA32 is irrelevant in this particular case, as we are
talking about arm32.  But with ZONE_DMA instead this roughly makes sense.

> The problem is that platforms with esoteric memory maps have no right thing 
> to do. If the base of RAM is at at 0x1_0000_0000 or higher, the "correct" 
> ZONE_DMA32 would be empty while ZONE_NORMAL above it would not, and last 
> time I looked that makes the page allocator break badly. So the standard 
> bodge on such platforms is to make ZONE_DMA32 cover not the first 4GB of 
> *PA space*, but the first 4GB of *RAM*, wherever that happens to be. That 
> then brings different problems - now the page allocator is happy and 
> successfully returns GFP_DMA32 allocations from the range 0x8_0000_0000 - 
> 0x8_ffff_ffff that are utterly useless to 32-bit devices with zero 
> dma_pfn_offset - see the AMD Seattle SoC for the prime example of that. If 
> on the other hand all devices are guaranteed to have a dma_pfn_offset that 
> puts the base of RAM at DMA address 0 then GFP_DMA32 allocations do end up 
> working as expected, but now the original assumption of where ZONE_DMA32 
> actually is is broken, so generic code unaware of the 
> platform/architecture-specific bodge will be misled - that's the case 
> you're running into.
>
> Having thought this far, if there's a non-hacky way to reach in and grab 
> ZONE_DMA{32} such that dma_direct_supported() could use zone_end_pfn() 
> instead of trying to assume either way, that might be the most robust 
> general solution.

zone_dma_bits is our somewhat ugly way to try to poke into this
information, although the way it is done right now sucks pretty badly.

The patch I sent to Peter in December was trying to convey that
information in a way similar to what the arm32 legacy dma code does, but
it didn't work, so I'll need to find some time to sit down and figure out
why.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
