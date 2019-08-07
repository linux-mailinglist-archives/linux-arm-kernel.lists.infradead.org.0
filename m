Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC917850BA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:10:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lahqRq/OOzk6zVZgvZYu0mj+/1oLu0G7kzMIbkjV2D4=; b=Bp3SCRQE1WmAMy
	IvKDQlK4fxGgH1H/Ja0GEjfT96IPgdV5Mbltoo8eZ+Rhahbf+Xvb5eiIML2vaUjodvnpv8g+CHQzR
	Ms+ciKssaPNFCffjEMhOKtc3GFnJwG3osONy4WzUysfDcPMgnzV8ck93jseXpETCE858E8jADyPCx
	tn5VaWTOnVfmLOTzMkKLciG50OZ4P3GfSzM8bhUPSiNE6bEc4tTwYoRNqaDZxh2pHl0xxXvdjqf/k
	JIZtFVFZ9KPrJNFInhoTgONlrS5I5qyAHM+7xsAYs2fwQ9riJCOa0tV/RX/CZ1KEZOIzweHbazMs/
	Qs54TvForuk7MP37Cydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOW1-0008Gz-As; Wed, 07 Aug 2019 16:10:17 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOVq-0007jm-0u
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:10:07 +0000
Received: by mail-ot1-x342.google.com with SMTP id j19so29780328otq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 09:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wsthQu2QfAQEyfTgzCODadqkB3TT/99Z+5eL+7UiyVQ=;
 b=BXAaSO0gMR6cIg4Fgcqgz5JRNjU0CWl9D7rFFlMWR9fYSw3fx70pTWQmqBu/TXrO/O
 +2f67Q6wQjoZuqWpkqedEoIquPJYIU006KqDEvmmgFPiMRuCBxOUbVH+AjSnZeB10F58
 nGsCwcW3m2h6lU6Ei6/vgorIrgyZLVvE29N2g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wsthQu2QfAQEyfTgzCODadqkB3TT/99Z+5eL+7UiyVQ=;
 b=i6+qXGfKgHxZ7xobi2pUa/1KmzdH83m2orKm3R7rE+IydLZ/JiNtd3laYmNPB+tJA1
 D/1XBavck1ko4TyfII/55krZz102YDet2jY8K5URdvKI84baAD50FoFwhmQBSQYP6JQl
 n16VK+m0AwrMU5xuF/nOxd+H1dw2WbKn63l0u498WuZttYyTcV8hpEZp1qbndM2ModQK
 Kk3MJe6qyeepTFBKJ9V5IezIyRn2C0NFSeWIhAvaGhAliHkSwj8LFMRvPByv0iJ2o6gE
 mi0FdpWO13VqGpyQ9plcjzSiNeRHJUgmylcb0Pphu+3u0oBq06Gab3f92IujBckhjXXd
 MAxw==
X-Gm-Message-State: APjAAAVv5u24kcHyNJ7Fq+dpbXvVoRAktvR2Ye1vzRd6f+jOCLlrjXUu
 +3ZAZzZenkPF9BWHhYRf5ueXA6aiRAVYs+HRicak1Q==
X-Google-Smtp-Source: APXvYqwojz9eSov1PXUTI/zpOp1ExSls/bfkUhbDuFqllq8EBa7KKJoLrr+LBs09AKnPc4X1TsiBh9hb7d2Dqng/bck=
X-Received: by 2002:a02:c487:: with SMTP id t7mr10812421jam.99.1565194204750; 
 Wed, 07 Aug 2019 09:10:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
In-Reply-To: <20190807062545.GF6627@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Wed, 7 Aug 2019 09:09:53 -0700
Message-ID: <CAJs_Fx7tqbr_gqRdqJEwOcRFReP0DqZzOu11Dxhxkp8+PygUQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091006_099635_69D77309 
X-CRM114-Status: GOOD (  34.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 11:25 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Aug 06, 2019 at 09:23:51AM -0700, Rob Clark wrote:
> > On Tue, Aug 6, 2019 at 8:50 AM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > > out to memory later, and so that I don't get a cache hit on
> > > > uncached/wc mmap'ing.
> > >
> > > So what is the use case here?  Allocate pages using the page allocator
> > > (or CMA for that matter), and then mmaping them to userspace and never
> > > touching them again from the kernel?
> >
> > Currently, it is pages coming from tmpfs.  Ideally we want pages that
> > are swappable when unpinned.
>
> tmpfs is basically a (complicated) frontend for alloc pages as far
> as page allocation is concerned.
>
> > CPU mappings are *mostly* just mapping to userspace.  There are a few
> > exceptions that are vmap'd (fbcon, and ringbuffer).
>
> And those use the same backend?

yes

> > (Eventually I'd like to support pages passed in from userspace.. but
> > that is down the road.)
>
> Eww.  Please talk to the iommu list before starting on that.

This is more of a long term goal, we can't do it until we have
per-context/process pagetables, ofc.

Getting a bit off topic, but I'm curious about what problems you are
concerned about.  Userspace can shoot it's own foot, but if it is not
sharing GPU pagetables with other processes, it can't shoot other's
feet.  (I'm guessing you are concerned about non-page-aligned
mappings?)

> > > > Tying it in w/ iommu seems a bit weird to me.. but maybe that is just
> > > > me, I'm certainly willing to consider proposals or to try things and
> > > > see how they work out.
> > >
> > > This was just my through as the fit seems easy.  But maybe you'll
> > > need to explain your use case(s) a bit more so that we can figure out
> > > what a good high level API is.
> >
> > Tying it to iommu_map/unmap would be awkward, as we could need to
> > setup cpu mmap before it ends up mapped to iommu.  And the plan to
> > support per-process pagetables involved creating an iommu_domain per
> > userspace gl context.. some buffers would end up mapped into multiple
> > contexts/iommu_domains.
> >
> > If the cache operation was detached from iommu_map/unmap, then it
> > would seem weird to be part of the iommu API.
> >
> > I guess I'm not entirely sure what you had in mind, but this is why
> > iommu seemed to me like a bad fit.
>
> So back to the question, I'd like to understand your use case (and
> maybe hear from the other drm folks if that is common):
>
>  - you allocate pages from shmem (why shmem, btw?  if this is done by
>    other drm drivers how do they guarantee addressability without an
>    iommu?)

shmem for swappable pages.  I don't unpin and let things get swapped
out yet, but I'm told it starts to become important when you have 50
browser tabs open ;-)

There are some display-only drm drivers with no IOMMU, which use CMA
rather than shmem.  Basically every real GPU has some form of MMU or
IOMMU for memory protection.  (The couple exceptions do expensive
kernel side cmdstream validation.)

>  - then the memory is either mapped to userspace or vmapped (or even
>    both, althrough the lack of aliasing you mentioned would speak
>    against it) as writecombine (aka arm v6+ normal uncached).  Does
>    the mapping live on until the memory is freed?

(side note, *most* of the drm/msm supported devices are armv8, the
exceptions are 8060 and 8064 which are armv7.. I don't think drm/msm
will ever have to deal w/ armv6)

Userspace keeps the userspace mmap around opportunistically (once it
is mmap'd, not all buffers will be accessed from CPU).  In fact there
is a userspace buffer cache, where we try to re-use buffers that are
already allocated and possibly mmap'd, since allocation and setting up
mmap is expensive.

(There is an MADVISE ioctl so userspace can tell kernel about buffers
in the cache, which are available to be purged by shrinker..  if a
buffer is purged, it's userspace mmap is torn down... along with it's
IOMMU map, ofc)

>  - as you mention swapping - how do you guarantee there are no
>    aliases in the kernel direct mapping after the page has been swapped
>    in?

Before unpinning and allowing pages to be swapped out, CPU and IOMMU
maps would be torn down.  (I don't think we could unpin buffers w/ a
vmap, but those are just a drop in the bucket.)

Currently, the kernel always knows buffers associated w/ a submit
(job) queued to the GPU, so it could bring pages back in and re-store
iommu map.. the fault handler can be used to bring things back in for
CPU access.  (For more free-form HMM style access to userspace memory,
we'd need to be able to sleep in IOMMU fault handler before the IOMMU
resumes translation.)

As far as cache is concerned, it would be basically the same as newly
allocated pages, ie. need to wb+inv the new pages.

>  - then the memory is potentially mapped to the iommu.  Is it using
>    a long-living mapping, or does get unmapped/remapped repeatedly?

Similar to CPU maps, we keep the IOMMU map around as long as possible.

(Side note, I was thinking batching unmaps could be useful to reduce
IOMMU TLB inv overhead.. usually when we are freeing a buffer, we are
freeing multiple, so we could unmap them all, then TLB inv, then free
pages.)

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
