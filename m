Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621D185F20
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 12:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqEw7u4ofmw8RlVnLu5IHtGs71ETV7e2zu0GqTGjznA=; b=OyBdZRsmaGx3t+
	Iilr3IdhecCRJ9TQHIzAtJFc36GsQsYAuZjQbFPYHsxZgByqE+hauQcJlX05bP9x4KAHRUg7Y18vh
	lAluGG9QFyDlOb+oj7NrUym3ZuloofoIsNJdO5pu33Tyzr/CMDM+JuuenNg9jjXVchUe0D3h/yUe9
	IJzkJfIAt32vRs52WLHwiicOmat0KpiGBn6Jk15jIKLc6xvkieqjBLCfmEvszW6xKGOLYgUv9pDJS
	d1yjYK5zAKjXQ58DU1xfHPyM8nvuWj+Nk53d/Y5bIV36Q7ZMgsH9viPFzUO8CkG6L84dit1WSGDOO
	qWBMmfAtmmVvWg+TM87Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvfE5-0007wq-1I; Thu, 08 Aug 2019 10:00:53 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvfDo-0007wK-SQ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 10:00:38 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DE187227A81; Thu,  8 Aug 2019 12:00:31 +0200 (CEST)
Date: Thu, 8 Aug 2019 12:00:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190808100031.GA32658@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
 <CAJs_Fx7tqbr_gqRdqJEwOcRFReP0DqZzOu11Dxhxkp8+PygUQw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx7tqbr_gqRdqJEwOcRFReP0DqZzOu11Dxhxkp8+PygUQw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_030037_075273_8A029B0B 
X-CRM114-Status: GOOD (  22.47  )
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
Cc: Sean Paul <sean@poorly.run>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:09:53AM -0700, Rob Clark wrote:
> > > (Eventually I'd like to support pages passed in from userspace.. but
> > > that is down the road.)
> >
> > Eww.  Please talk to the iommu list before starting on that.
> 
> This is more of a long term goal, we can't do it until we have
> per-context/process pagetables, ofc.
> 
> Getting a bit off topic, but I'm curious about what problems you are
> concerned about.  Userspace can shoot it's own foot, but if it is not
> sharing GPU pagetables with other processes, it can't shoot other's
> feet.  (I'm guessing you are concerned about non-page-aligned
> mappings?)

Maybe I misunderstood what you mean above, I though you mean messing
with page cachability attributes for userspace pages.  If what you are
looking into is just "standard" SVM I only hope that our APIs for that
which currently are a mess are in shape by then, as all users currently
have their own crufty and at least slightly buggy versions of that.  But
at least it is an issue that is being worked on.

> > So back to the question, I'd like to understand your use case (and
> > maybe hear from the other drm folks if that is common):
> >
> >  - you allocate pages from shmem (why shmem, btw?  if this is done by
> >    other drm drivers how do they guarantee addressability without an
> >    iommu?)
> 
> shmem for swappable pages.  I don't unpin and let things get swapped
> out yet, but I'm told it starts to become important when you have 50
> browser tabs open ;-)

Yes,  but at that point the swapping can use the kernel linear mapping
and we are going into aliasing problems that can disturb the cache.  So
as-is this is going to problematic without new hooks into shmemfs.

> >  - then the memory is either mapped to userspace or vmapped (or even
> >    both, althrough the lack of aliasing you mentioned would speak
> >    against it) as writecombine (aka arm v6+ normal uncached).  Does
> >    the mapping live on until the memory is freed?
> 
> (side note, *most* of the drm/msm supported devices are armv8, the
> exceptions are 8060 and 8064 which are armv7.. I don't think drm/msm
> will ever have to deal w/ armv6)

Well, the point was that starting from v6 the kernels dma uncached
really is write combine.  So that applied to v7 and v8 as well.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
