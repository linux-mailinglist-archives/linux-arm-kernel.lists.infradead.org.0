Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB6984472
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 08:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVW00YoWwyED7RKAbmbNlA7pttc6obysYvV4ZPrOLmE=; b=E2qFAplPpkbhOo
	3hmdav550Y9TBxWjTVhw8zScQJcn6c5YybPHpIjrFPpI0I+A/TMZK/wvVhmT8ZIgZa/NqKEnWy19Y
	9lV+pJbQljntT/VWUgVK+WCeNWh4UQQEr/D6PVEHF5APeZzy3V4FWEfGbcJa7Fd6vHSEGA1+DE6Zu
	X5YF5QkXwbpil6u0l1TVnARf2ds1V9BvcFbItc/6SZQpw/9LuUlT/i2PkuqR3DKJxKUuyvgaanYDj
	CoOvLca1O0WmMFxeiskW1W/0N0D+T0xvmWx4mVKqvpbrp4SJpFB6aFThRlPO1FZPFHxQFM89UHWcS
	fRPWIhlzhpzJ23QUX5pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFOZ-0002wq-Rt; Wed, 07 Aug 2019 06:25:59 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFOQ-0002wT-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 06:25:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D947B68B05; Wed,  7 Aug 2019 08:25:45 +0200 (CEST)
Date: Wed, 7 Aug 2019 08:25:45 +0200
From: Christoph Hellwig <hch@lst.de>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190807062545.GF6627@lst.de>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_232550_423864_1834CBD5 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

On Tue, Aug 06, 2019 at 09:23:51AM -0700, Rob Clark wrote:
> On Tue, Aug 6, 2019 at 8:50 AM Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > out to memory later, and so that I don't get a cache hit on
> > > uncached/wc mmap'ing.
> >
> > So what is the use case here?  Allocate pages using the page allocator
> > (or CMA for that matter), and then mmaping them to userspace and never
> > touching them again from the kernel?
> 
> Currently, it is pages coming from tmpfs.  Ideally we want pages that
> are swappable when unpinned.

tmpfs is basically a (complicated) frontend for alloc pages as far
as page allocation is concerned.

> CPU mappings are *mostly* just mapping to userspace.  There are a few
> exceptions that are vmap'd (fbcon, and ringbuffer).

And those use the same backend?

> (Eventually I'd like to support pages passed in from userspace.. but
> that is down the road.)

Eww.  Please talk to the iommu list before starting on that.

> > > Tying it in w/ iommu seems a bit weird to me.. but maybe that is just
> > > me, I'm certainly willing to consider proposals or to try things and
> > > see how they work out.
> >
> > This was just my through as the fit seems easy.  But maybe you'll
> > need to explain your use case(s) a bit more so that we can figure out
> > what a good high level API is.
> 
> Tying it to iommu_map/unmap would be awkward, as we could need to
> setup cpu mmap before it ends up mapped to iommu.  And the plan to
> support per-process pagetables involved creating an iommu_domain per
> userspace gl context.. some buffers would end up mapped into multiple
> contexts/iommu_domains.
> 
> If the cache operation was detached from iommu_map/unmap, then it
> would seem weird to be part of the iommu API.
> 
> I guess I'm not entirely sure what you had in mind, but this is why
> iommu seemed to me like a bad fit.

So back to the question, I'd like to understand your use case (and
maybe hear from the other drm folks if that is common):

 - you allocate pages from shmem (why shmem, btw?  if this is done by
   other drm drivers how do they guarantee addressability without an
   iommu?)
 - then the memory is either mapped to userspace or vmapped (or even
   both, althrough the lack of aliasing you mentioned would speak
   against it) as writecombine (aka arm v6+ normal uncached).  Does
   the mapping live on until the memory is freed?
 - as you mention swapping - how do you guarantee there are no
   aliases in the kernel direct mapping after the page has been swapped
   in?
 - then the memory is potentially mapped to the iommu.  Is it using
   a long-living mapping, or does get unmapped/remapped repeatedly?
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
