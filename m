Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9870B1A3663
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eehhv5YqUXy6cTZZl5qZTG4RrZSfBvH1As+scIcu2VE=; b=YRzSUGULu+wlRf
	cZi/XTM+De/MmSNG8uchzVcYxVwhXToIqZlazRvaYHMEOvbITDeetQ8pe4edRkoQzP96/Wbuu4zyS
	pdjBR5XjUw+5ROrxNKhZeu44lBWZMqY5xMgwh7L5jVu4dh4FGLN4EHLADcmcGKEgzRbJWuyvXZlEY
	eEyw8HS+fn7rO2KvklsgGASgG9Cwf3LNNFUehFW7Xxs4S2OMkkMfq+Ri+7SRvgQMqEjYNI41n5K48
	Nkw/ZZw0aTjRgXUsD3jo6pkt1AS05NvB0GrjY/DiVfsmaKRENbQXtvEOYwBP+plU5XKzYwNyvR18V
	TijdYM0zvbchuzehWILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYcY-0008Jx-Kv; Thu, 09 Apr 2020 14:57:34 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYcS-0008JP-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:57:30 +0000
Received: by mail-ot1-x342.google.com with SMTP id a49so10709312otc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MvCVAZWSVpElREbfXb1mt2g3VRvFUkKvrzFHvdRqvkg=;
 b=ebEd4FdYNO+7wzGFzjBvQDg8mK2wrpjmDjuCBjAH9tAbCCg4zgABTbGAxKzQ49JMxn
 kqTYGut6ohJDRAdHangRN4hffUJ4MvJUmXVqHcdUYuhWsOAAhFmddn4uDDLAgZuSwUyx
 in2+ZqI2XFwOOnx/68F1aBghe4TTCvi2K8Jb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MvCVAZWSVpElREbfXb1mt2g3VRvFUkKvrzFHvdRqvkg=;
 b=ETVDciy77n9hTA7yvUabTNLHRVKNGIOJplc9JYJRQBiob38Cte4FanDxx2S+H7tAfV
 A/mS+SNvSzs4u/F8Jt+Z5zqGMbQzHTpSCNHoNGnO3ZbU+aOvtdZe5Ff1+32FBogdFCBs
 5ShC3aWxG8uQwNnOFyEwR0MHq5qVv8+wn1ppG0MeDeUrYm+oSHOd2+kWvxzsDY6GbVGn
 GBaAIL7sbypbuxt7AFeypc2CJkToOp/3azxHqCMk+EU2LeoCijYBk2X0uavYkxi4Ks10
 9DMiaqnDNoaOV7Ze6jK8cdPIQ0WJXj6NX33FJzRBuqM9ki751mcbUgo4DLdQtVUpGJtu
 obBw==
X-Gm-Message-State: AGi0Pubre9PATe4W3JNgkeEkxuzMTfczOrEOPjzMeZT8m/2a4PnX2SAD
 h/+HPSPOdEzWdONv/MkdAR/qsIlBJBKVl9Yj75mHMg==
X-Google-Smtp-Source: APiQypIfaMneOW4AjWTG+JPErLig8zTku8dFSxJeBsmrgUZhaXvkSx7h0yWmBa2juZ12CNXUTDblTNSgeRCuieJep64=
X-Received: by 2002:a9d:6e8f:: with SMTP id a15mr251186otr.188.1586444244321; 
 Thu, 09 Apr 2020 07:57:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
 <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
 <CADnq5_MjTSm6j=_8huVQ854H6jXY5Rg36wc31QDfOpfjfscWxA@mail.gmail.com>
In-Reply-To: <CADnq5_MjTSm6j=_8huVQ854H6jXY5Rg36wc31QDfOpfjfscWxA@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 Apr 2020 16:57:12 +0200
Message-ID: <CAKMK7uESDf446FsdA2KC9sybSKxf5OdXvHZ-d4G3PAt-vvP8zg@mail.gmail.com>
Subject: Re: [PATCH 19/28] gpu/drm: remove the powerpc hack in
 drm_legacy_sg_alloc
To: Alex Deucher <alexdeucher@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_075728_512754_16BBB802 
X-CRM114-Status: GOOD (  29.92  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Christoph Hellwig <hch@lst.de>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, X86 ML <x86@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Haiyang Zhang <haiyangz@microsoft.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, bpf <bpf@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 4:19 PM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Thu, Apr 9, 2020 at 5:41 AM Daniel Vetter <daniel@ffwll.ch> wrote:
> >
> > On Thu, Apr 9, 2020 at 10:54 AM Benjamin Herrenschmidt
> > <benh@kernel.crashing.org> wrote:
> > >
> > > On Wed, 2020-04-08 at 14:25 +0200, Daniel Vetter wrote:
> > > > On Wed, Apr 08, 2020 at 01:59:17PM +0200, Christoph Hellwig wrote:
> > > > > If this code was broken for non-coherent caches a crude powerpc hack
> > > > > isn't going to help anyone else.  Remove the hack as it is the last
> > > > > user of __vmalloc passing a page protection flag other than PAGE_KERNEL.
> > > >
> > > > Well Ben added this to make stuff work on ppc, ofc the home grown dma
> > > > layer in drm from back then isn't going to work in other places. I guess
> > > > should have at least an ack from him, in case anyone still cares about
> > > > this on ppc. Adding Ben to cc.
> > >
> > > This was due to some drivers (radeon ?) trying to use vmalloc pages for
> > > coherent DMA, which means on those 4xx powerpc's need to be non-cached.
> > >
> > > There were machines using that (440 based iirc), though I honestly
> > > can't tell if anybody still uses any of it.
> >
> > agp subsystem still seems to happily do that (vmalloc memory for
> > device access), never having been ported to dma apis (or well
> > converted to iommu drivers, which they kinda are really). So I think
> > this all still works exactly as back then, even with the kms radeon
> > drivers. Question really is whether we have users left, and I have no
> > clue about that either.
> >
> > Now if these boxes didn't ever have agp then I think we can get away
> > with deleting this, since we've already deleted the legacy radeon
> > driver. And that one used vmalloc for everything. The new kms one does
> > use the dma-api if the gpu isn't connected through agp.
>
> All radeons have a built in remapping table to handle non-AGP systems.
> On the earlier radeons it wasn't quite as performant as AGP, but it
> was always more reliable because AGP is AGP.  Maybe it's time to let
> AGP go?

I'd be very much in favour of that, if we can just use the integrated
gart and drop agp fast writes wobbliness on the floor. I think the
only other modern driver using agp would be nouveau at that point.
-Daniel

>
> Alex
>
> > -Daniel
> >
> > > Cheers,
> > > Ben.
> > >
> > > > -Daniel
> > > >
> > > > >
> > > > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > > > ---
> > > > >  drivers/gpu/drm/drm_scatter.c | 11 +----------
> > > > >  1 file changed, 1 insertion(+), 10 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/drm_scatter.c b/drivers/gpu/drm/drm_scatter.c
> > > > > index ca520028b2cb..f4e6184d1877 100644
> > > > > --- a/drivers/gpu/drm/drm_scatter.c
> > > > > +++ b/drivers/gpu/drm/drm_scatter.c
> > > > > @@ -43,15 +43,6 @@
> > > > >
> > > > >  #define DEBUG_SCATTER 0
> > > > >
> > > > > -static inline void *drm_vmalloc_dma(unsigned long size)
> > > > > -{
> > > > > -#if defined(__powerpc__) && defined(CONFIG_NOT_COHERENT_CACHE)
> > > > > -   return __vmalloc(size, GFP_KERNEL, pgprot_noncached_wc(PAGE_KERNEL));
> > > > > -#else
> > > > > -   return vmalloc_32(size);
> > > > > -#endif
> > > > > -}
> > > > > -
> > > > >  static void drm_sg_cleanup(struct drm_sg_mem * entry)
> > > > >  {
> > > > >     struct page *page;
> > > > > @@ -126,7 +117,7 @@ int drm_legacy_sg_alloc(struct drm_device *dev, void *data,
> > > > >             return -ENOMEM;
> > > > >     }
> > > > >
> > > > > -   entry->virtual = drm_vmalloc_dma(pages << PAGE_SHIFT);
> > > > > +   entry->virtual = vmalloc_32(pages << PAGE_SHIFT);
> > > > >     if (!entry->virtual) {
> > > > >             kfree(entry->busaddr);
> > > > >             kfree(entry->pagelist);
> > > > > --
> > > > > 2.25.1
> > > > >
> > > >
> > > >
> > >
> >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
