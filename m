Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFA51A31FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 11:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vF9vVux7UFNkuvZkk+LWEmuDXqkMSvTuOH6rG0auXro=; b=aaIESKxZPAP7L0
	vAiZqpTUekWmgXyybQ3pITy3ks3EKGW3XFhuGl05jjkE/QG87GFE0cI9Pt/Osz0ClHnx9EFBKWBVD
	W3TjnwgzJJ0wNey/1m2z/yPzP7atTAsemIH3zxFIBr8+TltPurI2NKqmOfCQZ7sZ76QzIh4eUv9nC
	Gxp3PdmGK1iCDpmk1/K7anUbj+s9KFK+s3kST3aTzb98F6b1e1Ud4jwSzK+w54s9izl8Hd3lCPbRD
	Vl02Y1FcOr7J8/6zr7fKgt7sAUFcr69Vy0gjEUosPWjD52Nfs/1vGdnbdTqnaCOQPz5nS1MBXOlQC
	vuhpSSe+qT9TmFU73/dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMTgq-0001oo-I1; Thu, 09 Apr 2020 09:41:40 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMTgj-0001mx-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 09:41:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id f52so9834443otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 02:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AAmPcakirZ+49aStGKItq0c+j+VEsXqfcBH/BMyGspk=;
 b=WXfJC2xvujS1NMEJmo8auNqU+zz3KoHNnFI/ZwIoQGqsenIlj1/rLp7i8g0wrHhNMA
 tB4UaPYqL8fo1FBLJD1QspR85zqLl/OHQQ2XW2wZhxbVmnvXaj4OEg2HGRtpK4xkfIA5
 QryyOXVdb1eBXsQfmBlDoe7W6QRuDag4YOw+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AAmPcakirZ+49aStGKItq0c+j+VEsXqfcBH/BMyGspk=;
 b=m/hUhEbufVKBhEtWPCmMIJjjiE4wqhNtjaqHPj/arewOLitsHsrax+wsM3qmbAqeqH
 dhocmRWOKqP3FDiOE7RC88CkIaIg9UJ89Y8UAfTi+UvjEOoezTURpl68flt5+PavPSTL
 92goliZhwYzabJm22AIFf6FYAlb/4DBRLpkGvgC97cyAXLaXeYvVVjOSfmNik5CCU8lE
 isrDnCse9FpHsOAbrX7e2hbQKxMJK5peUS5HcGbi37fIsTn/im/Kk0+FyeiLLQUTvfID
 tGIsWR1Xn4VU5oy8Z86GGRHdT7tkud7Rxwg/inpr5dmVZB4U4PK4mK0VRzn7f14GaFnI
 zdgw==
X-Gm-Message-State: AGi0Pubb6W+cXgbPsnEIJ9SLMr81jKwEwa7Vn1kWYf512EMb+JlW7dqm
 HAwXam16hNOOhQN8jLz/8wjJdbzuAC9X8fXp/dpQsw==
X-Google-Smtp-Source: APiQypLHBVJAv55CZxyRjUHHZPFErxI7m2EAB+edMw28HekqHKAMU8pcbynFySqYUgFQY0OpR/l48dylQu4jTtXwGxw=
X-Received: by 2002:a4a:4190:: with SMTP id x138mr9186341ooa.35.1586425291875; 
 Thu, 09 Apr 2020 02:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-20-hch@lst.de>
 <20200408122504.GO3456981@phenom.ffwll.local>
 <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
In-Reply-To: <eb48f7b6327e482ea9911b129210c0417ab48345.camel@kernel.crashing.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 9 Apr 2020 11:41:20 +0200
Message-ID: <CAKMK7uHtkLvdsWFGiAtkzVa5mpnDvXkn3CHZQ6bgJ_enbyAc8A@mail.gmail.com>
Subject: Re: [PATCH 19/28] gpu/drm: remove the powerpc hack in
 drm_legacy_sg_alloc
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_024133_233297_E6A23A94 
X-CRM114-Status: GOOD (  25.12  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dri-devel <dri-devel@lists.freedesktop.org>, Linux MM <linux-mm@kvack.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 "open list:GENERIC INCLUDE/A..." <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, X86 ML <x86@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 bpf <bpf@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Minchan Kim <minchan@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 10:54 AM Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Wed, 2020-04-08 at 14:25 +0200, Daniel Vetter wrote:
> > On Wed, Apr 08, 2020 at 01:59:17PM +0200, Christoph Hellwig wrote:
> > > If this code was broken for non-coherent caches a crude powerpc hack
> > > isn't going to help anyone else.  Remove the hack as it is the last
> > > user of __vmalloc passing a page protection flag other than PAGE_KERNEL.
> >
> > Well Ben added this to make stuff work on ppc, ofc the home grown dma
> > layer in drm from back then isn't going to work in other places. I guess
> > should have at least an ack from him, in case anyone still cares about
> > this on ppc. Adding Ben to cc.
>
> This was due to some drivers (radeon ?) trying to use vmalloc pages for
> coherent DMA, which means on those 4xx powerpc's need to be non-cached.
>
> There were machines using that (440 based iirc), though I honestly
> can't tell if anybody still uses any of it.

agp subsystem still seems to happily do that (vmalloc memory for
device access), never having been ported to dma apis (or well
converted to iommu drivers, which they kinda are really). So I think
this all still works exactly as back then, even with the kms radeon
drivers. Question really is whether we have users left, and I have no
clue about that either.

Now if these boxes didn't ever have agp then I think we can get away
with deleting this, since we've already deleted the legacy radeon
driver. And that one used vmalloc for everything. The new kms one does
use the dma-api if the gpu isn't connected through agp.
-Daniel

> Cheers,
> Ben.
>
> > -Daniel
> >
> > >
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > > ---
> > >  drivers/gpu/drm/drm_scatter.c | 11 +----------
> > >  1 file changed, 1 insertion(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/drm_scatter.c b/drivers/gpu/drm/drm_scatter.c
> > > index ca520028b2cb..f4e6184d1877 100644
> > > --- a/drivers/gpu/drm/drm_scatter.c
> > > +++ b/drivers/gpu/drm/drm_scatter.c
> > > @@ -43,15 +43,6 @@
> > >
> > >  #define DEBUG_SCATTER 0
> > >
> > > -static inline void *drm_vmalloc_dma(unsigned long size)
> > > -{
> > > -#if defined(__powerpc__) && defined(CONFIG_NOT_COHERENT_CACHE)
> > > -   return __vmalloc(size, GFP_KERNEL, pgprot_noncached_wc(PAGE_KERNEL));
> > > -#else
> > > -   return vmalloc_32(size);
> > > -#endif
> > > -}
> > > -
> > >  static void drm_sg_cleanup(struct drm_sg_mem * entry)
> > >  {
> > >     struct page *page;
> > > @@ -126,7 +117,7 @@ int drm_legacy_sg_alloc(struct drm_device *dev, void *data,
> > >             return -ENOMEM;
> > >     }
> > >
> > > -   entry->virtual = drm_vmalloc_dma(pages << PAGE_SHIFT);
> > > +   entry->virtual = vmalloc_32(pages << PAGE_SHIFT);
> > >     if (!entry->virtual) {
> > >             kfree(entry->busaddr);
> > >             kfree(entry->pagelist);
> > > --
> > > 2.25.1
> > >
> >
> >
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
