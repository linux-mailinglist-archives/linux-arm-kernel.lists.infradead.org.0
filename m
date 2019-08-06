Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A5A8369C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:24:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGifAADSmi6ODvNunY/T5tU0YZOVN7pWdtjkOJfuuXo=; b=DbJVgx8lmsx+KH
	Tpd8VC0QWjTG91qjmFuAJ+KBVq+u4TKEGPd6WzscihIG0V9B1C39I8XhOYbtcyCnvyF0e8KTnaDv2
	uHdipJsDNoC00qkoD9rK9cn32Lnnmc8n4SJDnM3vNDQp10y1TtJ0nsjccQpdvoow+4TFVGMH4un5W
	F8eglEcrTcRxAVZywukztulAqa3g/etYfGnpmxDuvWg81nngDLZxdnyYrziEtG5+TqvJO+XuNWo6L
	hQdnD3BusHbmclkPJMAmfX2vjrWSHjBwGNEs18qw38LLyNDT+82lhQvLH6jAMMTZZoLOvabClqemt
	3vgBJd6ZkEN+GuTuC3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Fw-0006GC-09; Tue, 06 Aug 2019 16:24:12 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2Fo-0006FU-FF
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:24:05 +0000
Received: by mail-oi1-x243.google.com with SMTP id g7so67430067oia.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 09:24:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fbj+u+KrqZW21/tW+cx/lMPBDdiJJVlER4tKrQPMhTU=;
 b=K34U5YzvYaD1O3TWt3DKuJv0E7xfxFYasGVJmvfC3bMJWdUxjUg+tT/VSSTZurCvVa
 iovFc4oxIYrAcjIw6g7JmWJGjsqZqOvT+JpgTMJo4I6dVtpKFZSjyxhtp719Ua7sfhOP
 MDgeCWp2jWMGu9BPGfva1iVe+gQRtEb8DMqWY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fbj+u+KrqZW21/tW+cx/lMPBDdiJJVlER4tKrQPMhTU=;
 b=p+LDdUDdjRIEdhOseqlRM1uSGf1wtiZAQSNAcKG8ZFVkx0aIzMRxxU74hFzYI53RdZ
 6qhbkflyvfxl5iPuWjwayZxQPfwsv6GiGL5PAjq3smh9y9izT4gjI36qNQmiivhRqGYi
 uLNsnhRz/s6ZcrAq49IosSZVnW8JeBCUMowo3x7pMIO0LP54VNJcNf9iIwv138LZY8pc
 7s4a1Dc8qy78iN2+DGcJ/80bUbd2bnHesi9N2MT+6WrCULXBmQ75Kwkc/ptrUtxAO7xJ
 7lez02cAwXSW4QXccB7gTSzQ0OCQJUOnbE2Ayjib1GgLzUz8L4zeU/Jz2TyMp2cmY8ld
 +aFA==
X-Gm-Message-State: APjAAAXx4meiFWxqyZJ1Qt1CRGS07HPn8XI3n7tXq4HwIMk8c2QX6DDt
 KCQNMjTk3D/xBzOCzfOasbpsc3+GHn/mBUfswdHWNg==
X-Google-Smtp-Source: APXvYqyfP29xHh3wHXQf3kayoVgPfPlXWuIwnV/InXQ1VuBpOGOPWgtJVmYL0bZSvY7/FfjsJEoRXu6p5LXQCNopOtE=
X-Received: by 2002:a02:c549:: with SMTP id g9mr5009331jaj.14.1565108641886;
 Tue, 06 Aug 2019 09:24:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
In-Reply-To: <20190806155044.GC25050@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Tue, 6 Aug 2019 09:23:51 -0700
Message-ID: <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092404_536634_5AF4C68C 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Aug 6, 2019 at 8:50 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > out to memory later, and so that I don't get a cache hit on
> > uncached/wc mmap'ing.
>
> So what is the use case here?  Allocate pages using the page allocator
> (or CMA for that matter), and then mmaping them to userspace and never
> touching them again from the kernel?

Currently, it is pages coming from tmpfs.  Ideally we want pages that
are swappable when unpinned.

CPU mappings are *mostly* just mapping to userspace.  There are a few
exceptions that are vmap'd (fbcon, and ringbuffer).

(Eventually I'd like to support pages passed in from userspace.. but
that is down the road.)

> > Tying it in w/ iommu seems a bit weird to me.. but maybe that is just
> > me, I'm certainly willing to consider proposals or to try things and
> > see how they work out.
>
> This was just my through as the fit seems easy.  But maybe you'll
> need to explain your use case(s) a bit more so that we can figure out
> what a good high level API is.

Tying it to iommu_map/unmap would be awkward, as we could need to
setup cpu mmap before it ends up mapped to iommu.  And the plan to
support per-process pagetables involved creating an iommu_domain per
userspace gl context.. some buffers would end up mapped into multiple
contexts/iommu_domains.

If the cache operation was detached from iommu_map/unmap, then it
would seem weird to be part of the iommu API.

I guess I'm not entirely sure what you had in mind, but this is why
iommu seemed to me like a bad fit.

> > Exposing the arch_sync_* API and using that directly (bypassing
> > drm_cflush_*) actually seems pretty reasonable and pragmatic.  I did
> > have one doubt, as phys_to_virt() is only valid for kernel direct
> > mapped memory (AFAIU), what happens for pages that are not in kernel
> > linear map?  Maybe it is ok to ignore those pages, since they won't
> > have an aliased mapping?
>
> They could have an aliased mapping in vmalloc/vmap space for example,
> if you created one.  We have the flush_kernel_vmap_range /
> invalidate_kernel_vmap_range APIs for those, that are implement
> on architectures with VIVT caches.

If I only have to worry about aliased mappings that I create myself,
that doesn't seem too bad..  I could track that myself easily enough.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
