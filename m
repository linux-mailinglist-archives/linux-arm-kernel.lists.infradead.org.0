Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B533C28C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 23:24:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkTYaoB/93pE4CrQtqFGPd2R79XM1RPeH9GK26j1jFI=; b=d2AkBKCp578Raq
	uQh7XYNoYPbC4Sp1t5Fc/wfEYqa22lAF6iSDDBtvioGumWgd5aXYu2j7tU2kQ6Tn+4TR8/0+SfsaZ
	7vDDp9iX50EDJqG4bwFlfc/w1Q3fcdonKmVM2AldeYUpOETIyviv0pvxtpzRNPBCGNkE4svAeVxXM
	hZ+Sy4fxjls5ALHTP0K+GKx9UsWhjctqjpS8ZDDCyEHa1hfcso/dhzijoXPOr3pTxWG0TXJ4KMZSO
	QBSfWJ6LQqFqN8uAw6vu5UDCjdtFAL0pyWJ9oIsYdQjDdT8bAIawJIiJjKsu793FHzvNYeY06mzo3
	Yxd5X+T5sRC9TCdRrZlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF39v-0001ys-Hk; Mon, 30 Sep 2019 21:24:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF39l-0001yP-Ff
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 21:24:34 +0000
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
 [209.85.160.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F31D21906
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 21:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569878672;
 bh=O0YTj2vhvn3cLJ9bXhjvMPrKFz9pub2mp+NyxMOgLgY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XbxRSBb5GzUwqvHLEh5933b2ncHabYYcy1H+PGoWAURC6L6OdvUSkMXSuI0Iao+qZ
 0/XMhv/X8S8fJpHTkfs7dgHQrJiQtHY7DLVpLSN5KbV0sqXQhr4XPG2Cj2rZnridY7
 w1jj9r+Rs3EGC9eEA/lZ15W3yzaU9R0022RF1Dto=
Received: by mail-qt1-f179.google.com with SMTP id n7so18948667qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 14:24:32 -0700 (PDT)
X-Gm-Message-State: APjAAAWFWQsyeS+Bp6BgK6GGrsliJoajNt+RX4WTC0QxMTWk4FWMkoEZ
 kErOSeXTM6siwcbO4CzFCZfypeqDAERkkHmVlA==
X-Google-Smtp-Source: APXvYqwkGA20wZuKhUgCITJW9BMQhvKkz+h0oBRgQSxYR0zNJnVmKMOzb61pAR/bwav/Kg6q4m9o5OuCzIMOKst9NO8=
X-Received: by 2002:ac8:31b3:: with SMTP id h48mr28091603qte.300.1569878671519; 
 Mon, 30 Sep 2019 14:24:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190927002455.13169-1-robh@kernel.org>
 <20190927002455.13169-6-robh@kernel.org>
 <20190930125752.GD12051@infradead.org>
 <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
In-Reply-To: <95f8dabea99f104336491281b88c04b58d462258.camel@suse.de>
From: Rob Herring <robh@kernel.org>
Date: Mon, 30 Sep 2019 16:24:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
Message-ID: <CAL_JsqLnKxuQRR3sGGtXF3nwwDx7DOONPPYz37ROk7u_+cxRug@mail.gmail.com>
Subject: Re: [PATCH 05/11] of: Ratify of_dma_configure() interface
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_142433_564405_67E70A28 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Sep 30, 2019 at 8:32 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Mon, 2019-09-30 at 05:57 -0700, Christoph Hellwig wrote:
> > On Thu, Sep 26, 2019 at 07:24:49PM -0500, Rob Herring wrote:
> > > -int of_dma_configure(struct device *dev, struct device_node *np, bool
> > > force_dma)
> > > +int of_dma_configure(struct device *dev, struct device_node *parent, bool
> > > force_dma)
> >
> > This creates a > 80 char line.
> >
> > >  {
> > >     u64 dma_addr, paddr, size = 0;
> > >     int ret;
> > >     bool coherent;
> > >     unsigned long offset;
> > >     const struct iommu_ops *iommu;
> > > +   struct device_node *np;
> > >     u64 mask;
> > >
> > > +   np = dev->of_node;
> > > +   if (!np)
> > > +           np = parent;
> > > +   if (!np)
> > > +           return -ENODEV;
> >
> > I have to say I find the older calling convention simpler to understand.
> > If we want to enforce the invariant I'd rather do that explicitly:
> >
> >       if (dev->of_node && np != dev->of_node)
> >               return -EINVAL;
>
> As is, this would break Freescale Layerscape fsl-mc bus' dma_configure():

This may break PCI too for devices that have a DT node.

> static int fsl_mc_dma_configure(struct device *dev)
> {
>         struct device *dma_dev = dev;
>
>         while (dev_is_fsl_mc(dma_dev))
>                 dma_dev = dma_dev->parent;
>
>         return of_dma_configure(dev, dma_dev->of_node, 0);
> }
>
> But I think that with this series, given the fact that we now treat the lack of
> dma-ranges as a 1:1 mapping instead of an error, we could rewrite the function
> like this:

Now, I'm reconsidering allowing this abuse... It's better if the code
which understands the bus structure in DT for a specific bus passes in
the right thing. Maybe I should go back to Robin's version (below).
OTOH, the existing assumption that 'dma-ranges' was in the immediate
parent was an assumption on the bus structure which maybe doesn't
always apply.

diff --git a/drivers/of/device.c b/drivers/of/device.c
index a45261e21144..6951450bb8f3 100644
--- a/drivers/of/device.c
+++ b/drivers/of/device.c
@@ -98,12 +98,15 @@ int of_dma_configure(struct device *dev, struct
device_node *parent, bool force_
        u64 mask;

        np = dev->of_node;
-       if (!np)
-               np = parent;
+       if (np)
+               parent = of_get_dma_parent(np);
+       else
+               np = of_node_get(parent);
        if (!np)
                return -ENODEV;

-       ret = of_dma_get_range(np, &dma_addr, &paddr, &size);
+       ret = of_dma_get_range(parent, &dma_addr, &paddr, &size);
+       of_node_put(parent);
        if (ret < 0) {
                /*
                 * For legacy reasons, we have to assume some devices need

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
