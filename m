Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B4AA5AE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TW9kkIa8MtCH/A2h1vrAH4uk6TlCcuEPaQZmvfitjtk=; b=Tm+Cg4N2f0NVjI
	XoUNoRkP4MUr6NeR0BRFIKPQG5y2k8JYYaDSW/AS0yzhR3ALts29ausD1kdqOx+4yBvseSipeuLp5
	lX2BE42FyCDZuW4wSDQcKdcSzXq4o8m9V/C9hAWJZlbcXK3BrPdX+2KeD4dsMsjGlhanyw+vyWEa+
	VK0xvfdSXodrI/CrKEvp0KiK9wpfYq77e2vE+/GVlgT3+AAT+tTxBZaAUGrPIBZyRHCT2MTZcy7sE
	mDGGKB0KXY4/uEcjcnYZcQim6wjvQ0WD6nE2I4GeZEGPbrcl3o35U0wXj/BVDIFbDYB0wXOXDDK6v
	AShmKk1PTSL4RAZOIwWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oi4-0002Eh-E7; Mon, 02 Sep 2019 15:57:40 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i4ohw-0002EN-76; Mon, 02 Sep 2019 15:57:32 +0000
Date: Mon, 2 Sep 2019 08:57:32 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Stefano Stabellini <sstabellini@kernel.org>
Subject: Re: [PATCH V2] arm: xen: mm: use __GPF_DMA32 for arm64
Message-ID: <20190902155732.GA8311@infradead.org>
References: <1567175255-1798-1-git-send-email-peng.fan@nxp.com>
 <d7477406-a8a0-5c3c-13dc-2c84e27b8afa@arm.com>
 <20190830085807.GA15771@infradead.org>
 <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908301926500.21347@sstabellini-ThinkPad-T480s>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: jgross@suse.com, Peng Fan <peng.fan@nxp.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Christoph Hellwig <hch@infradead.org>, Julien Grall <Julien.Grall@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>,
 boris.ostrovsky@oracle.com, nd <nd@arm.com>,
 "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 07:40:42PM -0700, Stefano Stabellini wrote:
> + Juergen, Boris
> 
> On Fri, 30 Aug 2019, Christoph Hellwig wrote:
> > Can we take a step back and figure out what we want to do here?
> > 
> > AFAICS this function allocates memory for the swiotlb-xen buffer,
> > and that means it must be <= 32-bit addressable to satisfy the DMA API
> > guarantees.  That means we generally want to use GFP_DMA32 everywhere
> > that exists, but on systems with odd zones we might want to dip into
> > GFP_DMA.  This also means swiotlb-xen doesn't actually do the right
> > thing on x86 at the moment.  So shouldn't we just have one common
> > routine in swiotlb-xen.c that checks if we have CONFIG_ZONE_DMA32
> > set, then try GFP_DMA32, and if not check if CONFIG_ZONE_DMA is set
> > and then try that, else default to GFP_KERNEL?
> 
> Yes, for ARM/ARM64 it makes a lot of sense given that dom0 is 1:1 mapped
> (pseudo-physical == physical).  I'll let Juergen and Boris comment on
> the x86 side of things, but on x86 PV Dom0 is not 1:1 mapped so
> GFP_DMA32 is probably not meaningful.

But is it actually harmful?  If the GFP_DMA32 doesn't hurt we could
just use it there.  Or if that seems to ugly we can make the dma
flags dependents on a XEN_1TO1_MAPPED config option set by arm/arm64.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
