Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB148481A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mNtkjt1taBxWXdVm8kxnDiL6gguuNx/YBWTwXm2Zw0=; b=fcrOlRQ2RaiycZ
	CWAqdHkq27J7sUrb2k5tMAsNj4YPp8UdDP6nolSuE3PDTBP9kMGCIGr9vuX6S5xNQOe6R771U1LLc
	xbBjsi8SGMjB9/dut9aM9kB1uz11zIo+KUnLcUCaidbYpeEGo7KbHwCEKAMMiyI54HpQFB/wnga9t
	WTTovFyRC7S3xosWs+n0dBLEXSg6FDzAl7ENHbdJ1vpGCfWqKYsJPioTALE5xYtzCCCadHXFow5il
	QX8r++097QHIRQ2s2v4MV+MIi9cGD7EJcS0qW1FVRP9AwO+3jeN2XHa6VRHawTSLSoMEnT5TTTOEp
	Ioc+7ZU6+wtIIAJnvsZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHdO-00089P-BS; Wed, 07 Aug 2019 08:49:26 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHd8-00088e-7f
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:49:11 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so101357935oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 01:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T81jo3bu6m4G57eeMXxphqH+l+0vNlO7yTI3xodpqPI=;
 b=VzZ/k+WNyCuM2f1dJQ03+NI1UkAik3fFROb31bJVDnPPAZOSPcylhaCzalryzu9DPv
 YhKdlzglWiTsBwJ7cvfxH6+Mj/PGuIF+CuWeFKJxRfFHVq1h6EY5vqis+niVIuRIS5mk
 190cRetnRdel+ZI8AXXYLVx8KIwjJUrhBPvUk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T81jo3bu6m4G57eeMXxphqH+l+0vNlO7yTI3xodpqPI=;
 b=bZuZJdSBim0Lfs3B9ntOrQmKGwAKKrkTJt8/56kB8VCBRjRotAH2uKQVUfh5DgWROF
 X9LwKyNWRViBcAF+BZ1JqUxoidwzSsoX+Dnb2AmJ0McDfUfx57LqIhn7xf48KQbGMjkw
 H2ebBh/gczkzFlNZNWA3s/OLXwxy9humaTxFwnwQ2lHFSumidmTyhSPSd05Ik6Q/zNAB
 ICx7hsiX6dX1t0lmq8SdegkZ1OpD8xSDeAcRdz5tfQSG0cuWe+eKM9YgQV45eHnLufM9
 AT1WhnWYpIxVxqUxHTVJiq1NYOyf+M2urHA5VcXnKzpzuqIBR2WNONqaWfRp/5js5Fgb
 ztXw==
X-Gm-Message-State: APjAAAWdZwodGHcloVcvF+9IgLAuZIOoVTQ/XXb9pB6vO7NncJrIj2qc
 Jw9fy0PddbFMFU9tqekSrTqy/rcJuQKgRYWqfZD/Qw==
X-Google-Smtp-Source: APXvYqwVAPf2IGHO0oTry32QAj0SqfjmXrfGG+CXng41fJ63s62HG8IRd79JpZudl3h1OzpVmIpGS4CtyXSlXyxSzKs=
X-Received: by 2002:aca:b104:: with SMTP id a4mr5382980oif.14.1565167748729;
 Wed, 07 Aug 2019 01:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
In-Reply-To: <20190807062545.GF6627@lst.de>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 7 Aug 2019 10:48:56 +0200
Message-ID: <CAKMK7uH1O3q8VUftikipGH6ACPoT-8tbV1Zwo-8WL=wUHiqsoQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_014910_311280_46D70199 
X-CRM114-Status: GOOD (  33.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 8:25 AM Christoph Hellwig <hch@lst.de> wrote:
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
>
> > (Eventually I'd like to support pages passed in from userspace.. but
> > that is down the road.)
>
> Eww.  Please talk to the iommu list before starting on that.
>
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

Filling in a bunch more of the use-cases we have in drm. Don't need to
solve them all right away ofc, but whatever direction we're aiming for
should keep these in mind I think.

>  - you allocate pages from shmem (why shmem, btw?  if this is done by
>    other drm drivers how do they guarantee addressability without an
>    iommu?)

We use shmem to get at swappable pages. We generally just assume that
the gpu can get at those pages, but things fall apart in fun ways:
- some setups somehow inject bounce buffers. Some drivers just give
up, others try to allocate a pool of pages with dma_alloc_coherent.
- some devices are misdesigned and can't access as much as the cpu. We
allocate using GFP_DMA32 to fix that.

Also modern gpu apis pretty much assume you can malloc() and then use
that directly with the gpu.

>  - then the memory is either mapped to userspace or vmapped (or even
>    both, althrough the lack of aliasing you mentioned would speak
>    against it) as writecombine (aka arm v6+ normal uncached).  Does
>    the mapping live on until the memory is freed?

Generally we cache mappings forever. Some exceptions for 32bit
userspace excluded, where people expect to be able to use more than
4GB of textures somehow, so we have to recycle old mappings. Obviously
applies less to gpus on socs.

Also, at least i915 also has writeback userspace mmaps, and userspace
doing the cflushing. Also not sure I ever mentioned this, but at least
i915 userspace controls the coherency mode of the device dma directly,
on a per-op granularity. For buffers shared with other processes it
defers to the gpu pagetables, which the kernel controls.

>  - as you mention swapping - how do you guarantee there are no
>    aliases in the kernel direct mapping after the page has been swapped
>    in?

No idea personally, since we can ignore this on x86. I think atm
there's not a huge overlap of gpu drivers doing swapping and running
on something like arm where incompatible aliased mappings are bad.

>  - then the memory is potentially mapped to the iommu.  Is it using
>    a long-living mapping, or does get unmapped/remapped repeatedly?

Again, generally cached for as long as possible, until we run out of
space/memory somewhere.
-Daniel
--
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
