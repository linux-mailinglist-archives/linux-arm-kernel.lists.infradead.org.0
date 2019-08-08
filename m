Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7A685F13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIu5xD86HXqp2bzssP5Us1fL8a/X/XS5DR+/dLp9bc8=; b=Wgzxv4adcIeHZH
	6INDEYbpccTq3aUxyWZejltoL8dQk21x++PNFXTNgMiXWViPqoVOt8zR7opvXcmFB8u5vhDS7inUI
	XZN2GuB7DK4E07P6+5otD5aiQ1RWa/F9/7ubvjnm/CTnxXRFH2NI7EPKD69wRD0FvA6N98jnm1oZJ
	faj/Whe7UHe+l/aVYhM/KA8hdbhkBZ/XoDzGlZwXgHNxN/IJWqBPD9fvK7Bu5F3Zg2aVWT5XzyJxZ
	NMa50teCDqoFUz/udkLO5NxNPGUDCXZhkGrX8S3zwbFnfG1llmGYfu3266ba5iWgbK4Mu2EgODt02
	vTuaZWYyyjKBDHbqN14w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvf9C-00061d-4j; Thu, 08 Aug 2019 09:55:50 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvf8a-0005zn-Lz
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:55:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2AB2168AFE; Thu,  8 Aug 2019 11:55:07 +0200 (CEST)
Date: Thu, 8 Aug 2019 11:55:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808095506.GA32621@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
 <CAKMK7uH1O3q8VUftikipGH6ACPoT-8tbV1Zwo-8WL=wUHiqsoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uH1O3q8VUftikipGH6ACPoT-8tbV1Zwo-8WL=wUHiqsoQ@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_025512_869209_F90901B7 
X-CRM114-Status: GOOD (  11.11  )
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sean Paul <sean@poorly.run>,
 Rob Clark <robdclark@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:48:56AM +0200, Daniel Vetter wrote:
> >    other drm drivers how do they guarantee addressability without an
> >    iommu?)
> 
> We use shmem to get at swappable pages. We generally just assume that
> the gpu can get at those pages, but things fall apart in fun ways:
> - some setups somehow inject bounce buffers. Some drivers just give
> up, others try to allocate a pool of pages with dma_alloc_coherent.
> - some devices are misdesigned and can't access as much as the cpu. We
> allocate using GFP_DMA32 to fix that.

Well, for shmem you can't really call allocators directly, right?

One thing I have in my pipeline is a dma_alloc_pages API that allocates
pages that are guaranteed to be addressably by the device or otherwise
fail.  But that doesn't really help with the shmem fs.

> Also modern gpu apis pretty much assume you can malloc() and then use
> that directly with the gpu.

Which is fine as long as the GPU itself supports full 64-bit addressing
(or always sits behind an iommu), and the platform doesn't impose
addressing limit, which unfortunately some that are shipped right now
still do :(

But userspace malloc really means dma_map_* anyway, so not really
relevant for memory allocations.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
