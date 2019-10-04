Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7994BCB32A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 03:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2u/5BusBqK8ALFSwoJAOHI9n2GS/cmg1vSbC+bcy0k=; b=UOJXjzXz6WJRJH
	nzNjgTHJshheCWoCJXwBxiCw147VX1qFhtK/hgMhzGtH8IbAJIJKaY+aVp3Mzzo+2Q37Hl9FoSoaQ
	pfW1g0hPGByafsVKy9GmZ/4/80mxg/Ow/wdrKlbbOtkpSuscOI0PMxEQeXru0Rlh0N2lDhrwxT/sw
	407wfTXlBjRaqY1uP+VG1M5mtmhdgS6a5kDazxdQw+CvEtbStLRSCPKHMXrwHr98A+HiLvkJIe3Hw
	CBhwQgYRgz7e6vff+DvYzrzBX5BF2gzyWrBvvpZYfT2sn5tDbDtM5MpUi9nQm+BouMOoNRoty+rU0
	WXNCTutLlKjwp6lFAEnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGCmg-0002fK-3U; Fri, 04 Oct 2019 01:53:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGCmY-0002es-F5
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 01:53:23 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67F7821D71
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  4 Oct 2019 01:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570154001;
 bh=6odMtoguJBjNIxmq0WvWcpWk1CrE1EvPomXzTsSYIrs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=AwYuS5MYR5UrpmjoK052xwB8qTp8H9UDlMezDdYyl1pA840CiRONdKV/9uIsNNUqR
 8lS/Fn/bEO6ooPXWi0TrohOTpOF3Ns2e31Xa3u0mQ1E/6uy2d7lmgYF3+oI2NEfjpu
 hqjRtZ6gUBLiJNLCfnIPomVdwPxetJaQRrPlwlY8=
Received: by mail-qk1-f180.google.com with SMTP id w2so4408409qkf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 18:53:21 -0700 (PDT)
X-Gm-Message-State: APjAAAXcOpy4JXZvevny1ox+OysZU7Wb22UK6ifOkYTKJ5EpUK6sJKra
 M1myjpcxipW43ZChc+CCEfpdDN46nAm2r43Czw==
X-Google-Smtp-Source: APXvYqy3/i1ov1ukyfSyJerD8h8tAJrCXAUbX0bSNjR5ZiZsqQGKwdIgHZwn3X3XEQRrLm3086Gb58Gtpxhh9D2C0Ws=
X-Received: by 2002:a05:620a:12d5:: with SMTP id
 e21mr7829021qkl.152.1570154000420; 
 Thu, 03 Oct 2019 18:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
 <20190930125752.GD12051@infradead.org>
 <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
 <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
 <0557c83bcb781724a284811fef7fdb122039f336.camel@suse.de>
In-Reply-To: <0557c83bcb781724a284811fef7fdb122039f336.camel@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Thu, 3 Oct 2019 20:53:09 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLo0jtDcCDf5VTc+_grO3fJ1MsDTE8Bj=B0J+eLk3hpZg@mail.gmail.com>
Message-ID: <CAL_JsqLo0jtDcCDf5VTc+_grO3fJ1MsDTE8Bj=B0J+eLk3hpZg@mail.gmail.com>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_185322_554083_61669BA1 
X-CRM114-Status: GOOD (  32.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 PCI <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Oza Pawandeep <oza.oza@broadcom.com>, Stefan Wahren <wahrenst@gmx.net>,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 10:43 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Mon, 2019-09-30 at 16:24 -0500, Rob Herring wrote:
> > On Mon, Sep 30, 2019 at 8:32 AM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > On Mon, 2019-09-30 at 05:57 -0700, Christoph Hellwig wrote:
> > > > On Thu, Sep 26, 2019 at 07:24:49PM -0500, Rob Herring wrote:
> > > > > -int of_dma_configure(struct device *dev, struct device_node *np, bool
> > > > > force_dma)
> > > > > +int of_dma_configure(struct device *dev, struct device_node *parent,
> > > > > bool
> > > > > force_dma)
> > > >
> > > > This creates a > 80 char line.
> > > >
> > > > >  {
> > > > >     u64 dma_addr, paddr, size = 0;
> > > > >     int ret;
> > > > >     bool coherent;
> > > > >     unsigned long offset;
> > > > >     const struct iommu_ops *iommu;
> > > > > +   struct device_node *np;
> > > > >     u64 mask;
> > > > >
> > > > > +   np = dev->of_node;
> > > > > +   if (!np)
> > > > > +           np = parent;
> > > > > +   if (!np)
> > > > > +           return -ENODEV;
> > > >
> > > > I have to say I find the older calling convention simpler to understand.
> > > > If we want to enforce the invariant I'd rather do that explicitly:
> > > >
> > > >       if (dev->of_node && np != dev->of_node)
> > > >               return -EINVAL;
> > >
> > > As is, this would break Freescale Layerscape fsl-mc bus' dma_configure():
> >
> > This may break PCI too for devices that have a DT node.
> >
> > > static int fsl_mc_dma_configure(struct device *dev)
> > > {
> > >         struct device *dma_dev = dev;
> > >
> > >         while (dev_is_fsl_mc(dma_dev))
> > >                 dma_dev = dma_dev->parent;
> > >
> > >         return of_dma_configure(dev, dma_dev->of_node, 0);
> > > }
> > >
> > > But I think that with this series, given the fact that we now treat the lack
> > > of
> > > dma-ranges as a 1:1 mapping instead of an error, we could rewrite the
> > > function
> > > like this:
> >
> > Now, I'm reconsidering allowing this abuse... It's better if the code
> > which understands the bus structure in DT for a specific bus passes in
> > the right thing. Maybe I should go back to Robin's version (below).
> > OTOH, the existing assumption that 'dma-ranges' was in the immediate
> > parent was an assumption on the bus structure which maybe doesn't
> > always apply.
> >
> > diff --git a/drivers/of/device.c b/drivers/of/device.c
> > index a45261e21144..6951450bb8f3 100644
> > --- a/drivers/of/device.c
> > +++ b/drivers/of/device.c
> > @@ -98,12 +98,15 @@ int of_dma_configure(struct device *dev, struct
> > device_node *parent, bool force_
> >         u64 mask;
> >
> >         np = dev->of_node;
> > -       if (!np)
> > -               np = parent;
> > +       if (np)
> > +               parent = of_get_dma_parent(np);
> > +       else
> > +               np = of_node_get(parent);
> >         if (!np)
> >                 return -ENODEV;
> >
> > -       ret = of_dma_get_range(np, &dma_addr, &paddr, &size);
> > +       ret = of_dma_get_range(parent, &dma_addr, &paddr, &size);
> > +       of_node_put(parent);
> >         if (ret < 0) {
> >                 /*
> >                  * For legacy reasons, we have to assume some devices need
>
> I spent some time thinking about your comments and researching. I came to the
> realization that both these solutions break the usage in
> drivers/gpu/drm/sun4i/sun4i_backend.c:805. In that specific case both
> 'dev->of_node' and 'parent' exist yet the device receiving the configuration
> and 'parent' aren't related in any way.

I knew there was some reason I didn't like those virtual DT nodes...

That does seem to be the oddest case. Several of the others are just
non-DT child platform devices. Perhaps we need a "copy the DMA config
from another struct device (or parent struct device)" function to
avoid using a DT function on a non-DT device.

> IOW we can't just use 'dev->of_node' as a starting point to walk upwards the
> tree. We always have to respect whatever DT node the bus provided, and start
> there. This clashes with the current solutions, as they are based on the fact
> that we can use dev->of_node when present.

Yes, you are right.

> My guess at this point, if we're forced to honor that behaviour, is that we
> have to create a new API for the PCI use case. Something the likes of
> of_dma_configure_parent().

I think of_dma_configure just has to work with the device_node of
either the device or the device parent and dev->of_node is never used
unless the caller sets it.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
