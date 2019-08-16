Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E1F909F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 23:05:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GH+Z7gnY7gWzkEQCtDaWr+BGm77NWF4WhRPXVz+wf0c=; b=J9D7Xq2NAoco61
	UT7DGLv3V191viVw3C/LHZD0qOaucOKC7dgzqOI4UH+hPUj/K99jTAqhzMScAKNndGzeKSs8Eik5H
	DLjvp4NbQzQPzFaL/dRkXfNBMflnsmNbWNxruEv+SVfnKjCTCAPf6ecXMCpqbskIJ8/W5Urr8vkm4
	bNDNgIWNg13lmiAdQ+KynJgIpEq3akkHmJ5yHbRjIjYq4hPqUkjCjezFjZXrhEuQFmfEqwLwlH6HI
	WD5RLRsCBtrKINmk+BQ5xLOvY0Nd9gxNxZFhs9G591kN4qU2cpXcm/RTEUhWVth0iOkvHI7lktDlH
	Ay4gMsdzxbDXKlmhlbWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyjPA-0004N5-EB; Fri, 16 Aug 2019 21:05:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyjOx-0004Mj-VM
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 21:04:49 +0000
Received: by mail-io1-xd43.google.com with SMTP id i22so8921154ioh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 14:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s2ZBxhaoOWF4XzyIdX2Kvd1IcJ2ogm2WPdSG/NZ+cHk=;
 b=VV8Vh+knqRuk7GUG0+3pbm/YBPF2frCSqVFkN4P+uFmixSZ6gHA3fDaN4RsFw9h5CW
 2TmqnBG2qqz370eAeG53IhA7Zzjk6eSYUhoNdAdlHGWLJQfz3owLOgHbX3JGmMIO8WW+
 LJGMhINHoWDCJY1O7+5wM6fUKA1BZS+Jvfs3w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s2ZBxhaoOWF4XzyIdX2Kvd1IcJ2ogm2WPdSG/NZ+cHk=;
 b=V5HZGeUPh97ZgjhQzPOcCrcIXKt7BFdrOEGKSsYoAKb16tY6CkR9sBQ2uHGGP4OS7t
 FXFf9Qx2S1fBMVkzcrIPVKiI44rrAr1GIfrsDZbpjieWe3S8EPSUc/IamUyuKR5hIThY
 yHnV+uIwSQj5TS0XSjHCvgmGNsO6vAZ2SZh+X/hQx3tDEJ/dNUtxymgG5L4a3Ag8Pv2v
 2YHpw0XOGaCVxYyPaItARVc1qJQr5d09Y+4Tp5aeiqp0mgB4/LSUj7LvOZ6df1A5k83E
 Z68ZwL2dil3kXwaw0vn7paspz0CWO5rH6JNcfvK9dFewtFxXWd/X58IFRIBMY4L7EdV/
 LW5g==
X-Gm-Message-State: APjAAAXEL2i5sPivp927IKUCIxTs4qQTh2h6f0WmNeI08UrFDspalTza
 UnE9lHxXJWqXk7x8WvcTgr3x4ofpIQ9dJCtxaAarhA==
X-Google-Smtp-Source: APXvYqwts082qPcfW8wQcKhac77m+kiLOKGgwLXDG/PpCvgImNQcMwgioRdTR9BSptcdU3ElXfdZLAB34kkoF2ZHZKA=
X-Received: by 2002:a5e:924d:: with SMTP id z13mr12554582iop.247.1565989486594; 
 Fri, 16 Aug 2019 14:04:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190814220011.26934-1-robdclark@gmail.com>
 <20190815065117.GA23761@lst.de>
 <CAJs_Fx4bS64s7+xQqsead3N80ZQpofqegFQu+tT=b3wcGd_2pA@mail.gmail.com>
 <20190815175346.GA19839@lst.de>
In-Reply-To: <20190815175346.GA19839@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Fri, 16 Aug 2019 14:04:35 -0700
Message-ID: <CAJs_Fx6am7TeDFSG=CcTT=4KwhqrZX_jnn56NaWcDkGVizuakg@mail.gmail.com>
Subject: Re: [PATCH 0/6] drm+dma: cache support for arm, etc
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_140448_039862_A03D1957 
X-CRM114-Status: GOOD (  36.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Eric Biggers <ebiggers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Imre Deak <imre.deak@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Will Deacon <will@kernel.org>, Emil Velikov <emil.velikov@collabora.com>,
 Deepak Sharma <deepak.sharma@amd.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Robin Murphy <robin.murphy@arm.com>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <jroedel@suse.de>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Jesper Dangaard Brouer <brouer@redhat.com>,
 "Wolfram Sang \(Renesas\)" <wsa+renesas@sang-engineering.com>,
 "open list:LINUX FOR POWERPC \(32-BIT AND 64-BIT\)"
 <linuxppc-dev@lists.ozlabs.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Doug Anderson <armlinux@m.disordat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Sean Paul <sean@poorly.run>, Allison Randal <allison@lohutok.net>,
 Christophe Leroy <christophe.leroy@c-s.fr>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 christian.koenig@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 10:53 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Thu, Aug 15, 2019 at 06:54:39AM -0700, Rob Clark wrote:
> > On Wed, Aug 14, 2019 at 11:51 PM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > As said before I don't think these low-level helpers are the
> > > right API to export, but even if they did you'd just cover a tiny
> > > subset of the architectures.
> >
> > Are you thinking instead something like:
> >
> > void dma_sync_sg_for_{cpu,device}(struct device *dev, struct scatterlist *sgl,
> >                                   int nents, enum dma_data_direction dir)
> > {
> >     for_each_sg(sgl, sg, nents, i) {
> >         arch_sync_dma_for_..(dev, sg_phys(sg), sg->length, dir);
> >     }
> > }
> > EXPORT_SYMBOL_GPL(dma_sync_sg_for_..)
> >
> > or did you have something else in mind?
>
> No.  We really need an interface thay says please give me uncached
> memory (for some definition of uncached that includes that grapics
> drivers call write combine), and then let the architecture do the right
> thing.  Basically dma_alloc_coherent with DMA_ATTR_NO_KERNEL_MAPPING
> is superficially close to what you want, except that the way the drm
> drivers work you can't actually use it.

I don't disagree about needing an API to get uncached memory (or
ideally just something outside of the linear map).  But I think this
is a separate problem.

What I was hoping for, for v5.4, is a way to stop abusing dma_map/sync
for cache ops to get rid of the hack I had to make for v5.3.  And also
to fix vgem on non-x86.  (Unfortunately changing vgem to used cached
mappings breaks x86 CI, but fixes CI on arm/arm64..)  We can do that
without any changes in allocation.  There is still the possibility for
problems due to cached alias, but that has been a problem this whole
time, it isn't something new.

BR,
-R

> The reason for that is if we can we really need to not create another
> uncachable alias, but instead change the page attributes in place.
> On x86 we can and must do that for example, and based on the
> conversation with Will arm64 could do that fairly easily.  arm32 can
> right now only do that for CMA, though.
>
> The big question is what API do we want.  I had a pretty similar
> discussion with Christian on doing such an allocation for amdgpu,
> where the device normally is cache coherent, but they actually want
> to turn it into non-coherent by using PCIe unsnooped transactions.
>
> Here is my high level plan, which still has a few lose end:
>
>  (1) provide a new API:
>
>         struct page *dma_alloc_pages(struct device *dev, unsigned nr_pages,
>                         gfp_t gfp, unsigned long flags);
>         void dma_free_pages(struct device *dev, unsigned nr_pages,
>                         unsigned long flags);
>
>      These give you back page backed memory that is guaranteed to be
>      addressable by the device (no swiotlb or similar).  The memory can
>      then be mapped using dma_map*, including unmap and dma_sync to
>      bounce ownership around.  This is the replacement for the current
>      dma_alloc_attrs with DMA_ATTR_NON_CONSISTENT API, that is rather
>      badly defined.
>
>  (2) Add support for DMA_ATTR_NO_KERNEL_MAPPING to this new API instead
>      of dma_alloc_attrs.  The initial difference with that flag is just
>      that we allow highmem, but in the future we could also unmap this
>      memory from the kernel linear mapping entirely on architectures
>      where we can easily do that.
>
>  (3) Add a dma_pages_map/dma_pages_unmap or similar API that allows you
>      to get a kernel mapping for parts or all of a
>      DMA_ATTR_NO_KERNEL_MAPPING allocation.  This is to replace things
>      like your open-coded vmap in msm (or similarly elsewhere in dma-buf
>      providers).
>
>  (4) Add support for a DMA_ATTR_UNCACHABLE flags (or similar) to the new
>      API, that maps the pages as uncachable iff they have a kernel
>      mapping, including invalidating the caches at time of this page
>      attribute change (or creation of a new mapping).  This API will fail
>      if the architecture does not allow in-place remapping.  Note that for
>      arm32 we could always dip into the CMA pool if one is present to not
>      fail.  We'll also need some helper to map from the DMA_ATTR_* flags
>      to a pgprot for mapping the page to userspace.  There is also a few
>      other weird bits here, e.g. on architectures like mips that use an
>      uncached segment we'll have to fail use with the plain
>      DMA_ATTR_UNCACHABLE flag, but it could be supported with
>      DMA_ATTR_UNCACHABLE | DMA_ATTR_NO_KERNEL_MAPPING.
>
> I was hoping to get most of this done for this merge window, but I'm
> probably lucky if I get at least parts done.  Too much distraction.
>
> > Hmm, not entirely sure why.. you should be on the cc list for each
> > individual patch.
>
> They finally made it, although even with the delay they only ended up
> in the spam mailbox.  I still can't see them on the various mailing
> lists.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
