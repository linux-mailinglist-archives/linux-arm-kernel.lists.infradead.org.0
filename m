Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B6E14DF52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 17:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5UPQN6yTB0Ny94BgDkC2drT7AVfza2zgwHvVI3MHjk=; b=CusCoP94fuOMGr
	qs8zlNPwbw7gLsVIwlMiMVUOFSHTpMKarJDm/4K2q0vcL2nHS69ckUwfm6IdWhLtyXDNFWtokUxRl
	falxg8YO5fcZY+efzojnKHFL7z9AboUdqHqxFHoERmUJOX3hN7duMV2LjxQ88i/okPhdqekrpb7Tq
	QKLM/4c3VKVaJ6ZVlsx/2pcdYaL1bl8f9aey+gclyr5Rd747ziPAVB3jfVJNYYj34j9Bz9lpA27L+
	6Ni2LmicGXIi2FYHTd4vZd3FniHS4NEyGmsDLmmnFKdpmpWCCW509IJAWyOzdB0zFOCNJHYKNjulE
	LesLXXPaCBtk3mlgPrlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixCrg-00082d-G5; Thu, 30 Jan 2020 16:40:24 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixCrX-00081r-LL
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 16:40:17 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AF3F568B20; Thu, 30 Jan 2020 17:40:10 +0100 (CET)
Date: Thu, 30 Jan 2020 17:40:10 +0100
From: Christoph Hellwig <hch@lst.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when
 it is valid
Message-ID: <20200130164010.GA6472@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
 <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com> <20200130075332.GA30735@lst.de>
 <b2b1cb21-3aae-2181-fd79-f63701f283c0@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2b1cb21-3aae-2181-fd79-f63701f283c0@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_084015_846986_AB1EDF5D 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 03:04:37PM +0200, Peter Ujfalusi via iommu wrote:
> On 30/01/2020 9.53, Christoph Hellwig wrote:
> > [skipping the DT bits, as I'm everything but an expert on that..]
> > 
> > On Mon, Jan 27, 2020 at 04:00:30PM +0200, Peter Ujfalusi wrote:
> >> I agree on the phys_to_dma(). It should fail for addresses which does
> >> not fall into any of the ranges.
> >> It is just a that we in Linux don't have the concept atm for ranges, we
> >> have only _one_ range which applies to every memory address.
> > 
> > what does atm here mean?
> 
> struct device have only single dma_pfn_offset, one can not have multiple
> ranges defined. If we have then only the first is taken and the physical
> address and dma address is discarded, only the dma_pfn_offset is stored
> and used.
> 
> > We have needed multi-range support for quite a while, as common broadcom
> > SOCs do need it.  So patches for that are welcome at least from the
> > DMA layer perspective (kinda similar to your pseudo code earlier)
> 
> But do they have dma_pfn_offset != 0?

Well, with that I mean multiple ranges with different offsets.  Take
a look at arch/mips/bmips/dma.c:__phys_to_dma() and friends.  This
is an existing implementation for mips, but there are arm and arm64
SOCs using the same logic on the market as well, and we'll want to
support them eventually.

> The dma_pfn_offset is _still_ applied to the mask we are trying to set
> (and validate) via dma-direct.

And for the general case that is exactly the right thing to do, we
just need to deal with really odd ZONE_DMA placements like yours.

> > We'll need to find the minimum change to make it work
> > for now without switching ops, even if it isn't the correct one, and
> > then work from there.
> 
> Sure, but can we fix the regression by reverting to arm_ops for now only
> if dma_pfn_offset is not 0? It used to work fine in the past at least it
> appeared to work on K2 platforms.

But that will cause yet another regression in what we have just fixed
with using the generic direct ops, at which points it turns into who
screams louder.

For now I'm tempted to throw something like this in, which is a bit
of a hack, but actually 100% matches what various architectures have
historically done:


diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 6af7ae83c4ad..6ba9ee6e20bd 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -482,6 +482,9 @@ int dma_direct_supported(struct device *dev, u64 mask)
 {
 	u64 min_mask;
 
+	if (mask >= DMA_BIT_MASK(32))
+		return 1;
+
 	if (IS_ENABLED(CONFIG_ZONE_DMA))
 		min_mask = DMA_BIT_MASK(zone_dma_bits);
 	else

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
