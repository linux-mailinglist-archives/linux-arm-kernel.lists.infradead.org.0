Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344B5BE1FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZpmbuMqgBQor1y3UG58W+kJCJvGFlqxqyheF44yOYI=; b=ggHA3x77WyQ4bp
	4Zr9p86mTYmbF8MmBSREH1Z0tbQqCmBdqjcQIywGqi6Rj1W5r5UxWf8AJzg3qNvcS2gA8O/H9bf9H
	ZgT1vaOQTjabDDq8N4ixjLV9CTByJd8AZ1OUWFz2y3lYLl6LR/A/wGOa3gK0hG9qqzu+GMFhy9lV6
	VdJwL11fnbFf04BbP6FMkS2OnvrSOPZf/H1Pe/ILuS2PPR0Np0dZnUw5YanCqpGvx4RM55F26H3O7
	5FAYQltYfsAn/zTErX0GWzvwmeFVMYIEYZ0c6AMsWwYqF1MAXTGRxg+i27tXDdFxVT9xsBS8Jf7RK
	/6l9DfZvlQD7oiUZ0NxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9pb-00029l-FX; Wed, 25 Sep 2019 16:07:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9pL-00029D-69
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:07:40 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6952D21D7F
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569427658;
 bh=BDhFvt5VGk5cpLsmQKS0fUfwCU66ZuF9Gw8byviviXQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZJuV1cg80pgN5dVIrsTjC7nHNpCLFivnDjpwqkOACU+jgzrs95f/ObjU5069y94x6
 lIYLvZ5Z7fUWPr+ln7f2YxRfxo0Zbx7YXvc/WRwt3Y5Gwp01ZAG03eVOmAmpcuqA7q
 dmDoEZvV0iEhslx4g4bWqERTerzWbEQeJhtFz0iM=
Received: by mail-qt1-f170.google.com with SMTP id n1so2247763qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:07:38 -0700 (PDT)
X-Gm-Message-State: APjAAAXsBnhEtU81Ue06V0TFgYWcI+Hc5x7WbdbsbcfwtYSbd2LebigO
 bguf4CW/84yk0LxpIePB7EtL3a77g1uRlRKvyQ==
X-Google-Smtp-Source: APXvYqz1oy5m7mjvghNWjvvttiTqJZiM9hvPOK4OCMBp672J3JDiM/K63youpJW2QLzFXg+mEvd77PmoRL1xNiFzCqU=
X-Received: by 2002:ac8:75c7:: with SMTP id z7mr19500qtq.136.1569427657263;
 Wed, 25 Sep 2019 09:07:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190924181244.7159-1-nsaenzjulienne@suse.de>
 <CAL_Jsq+v+svTyna7UzQdRVqfNc5Z_bgWzxNRXv7-Wqv3NwDu2g@mail.gmail.com>
 <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
In-Reply-To: <d1a31a2ec8eb2f226b1fb41f6c24ffb47c3bf7c7.camel@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 25 Sep 2019 11:07:25 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKuz7WEB9zP6apZrdsC_8Q4OQmSuvqgLzJFPsZio0Z6=g@mail.gmail.com>
Message-ID: <CAL_JsqKuz7WEB9zP6apZrdsC_8Q4OQmSuvqgLzJFPsZio0Z6=g@mail.gmail.com>
Subject: Re: [PATCH 00/11] of: Fix DMA configuration for non-DT masters
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_090739_263420_4B91ED24 
X-CRM114-Status: GOOD (  29.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, etnaviv@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, james.quinlan@broadcom.com,
 linux-pci@vger.kernel.org,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 xen-devel@lists.xenproject.org, Dan Williams <dan.j.williams@intel.com>,
 Robin Murphy <robin.murphy@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 9:53 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Tue, 2019-09-24 at 16:59 -0500, Rob Herring wrote:
> > On Tue, Sep 24, 2019 at 1:12 PM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > Hi All,
> > > this series tries to address one of the issues blocking us from
> > > upstreaming Broadcom's STB PCIe controller[1]. Namely, the fact that
> > > devices not represented in DT which sit behind a PCI bus fail to get the
> > > bus' DMA addressing constraints.
> > >
> > > This is due to the fact that of_dma_configure() assumes it's receiving a
> > > DT node representing the device being configured, as opposed to the PCIe
> > > bridge node we currently pass. This causes the code to directly jump
> > > into PCI's parent node when checking for 'dma-ranges' and misses
> > > whatever was set there.
> > >
> > > To address this I create a new API in OF - inspired from Robin Murphys
> > > original proposal[2] - which accepts a bus DT node as it's input in
> > > order to configure a device's DMA constraints. The changes go deep into
> > > of/address.c's implementation, as a device being having a DT node
> > > assumption was pretty strong.
> > >
> > > On top of this work, I also cleaned up of_dma_configure() removing its
> > > redundant arguments and creating an alternative function for the special
> > > cases
> > > not applicable to either the above case or the default usage.
> > >
> > > IMO the resulting functions are more explicit. They will probably
> > > surface some hacky usages that can be properly fixed as I show with the
> > > DT fixes on the Layerscape platform.
> > >
> > > This was also tested on a Raspberry Pi 4 with a custom PCIe driver and
> > > on a Seattle AMD board.
> >
> > Humm, I've been working on this issue too. Looks similar though yours
> > has a lot more churn and there's some other bugs I've found.
>
> That's good news, and yes now that I see it, some stuff on my series is overly
> complicated. Specially around of_translate_*().
>
> On top of that, you removed in of_dma_get_range():
>
> -       /*
> -        * At least empty ranges has to be defined for parent node if
> -        * DMA is supported
> -        */
> -       if (!ranges)
> -               break;
>
> Which I assumed was bound to the standard and makes things easier.

The standard is whatever we say it is and what exists in the wild...

Probably better for me to get the series posted for context, but the
above is removed because we could be passing in the bus device/child
node and checking for 'dma-ranges' rather than only the bus node.
While this does mean 'dma-ranges' could be in a child node which is
wrong, it simplifies the only caller of_dma_configure(). And really,
there's no way to detect that error. Someone could call
of_dma_configure(NULL, child, ...). Perhaps we could assert that
'ranges' is present whenever 'dma-ranges' is.

Back to the standard, I think it can be summarized as a device's
immediate parent (a bus node) must contain 'dma-ranges'. All the
parent nodes of the bus node should also have 'dma-ranges', but
missing is treated as empty (1:1 translation). 'dma-ranges' missing in
all the parent nodes is also treated as 1:1 translation and no
addressing restrictions.

> > Can you test out this branch[1]. I don't have any h/w needing this,
> > but wrote a unittest and tested with modified QEMU.
>
> I reviewed everything, I did find a minor issue, see the patch attached.
>
> Also I tested your branch both on an RPi4, with a PCI device that depends on
> these changes and by comparing the OF debugs logs on a Layerscape board which
> uses dma-ranges, dma-coherent and IOMMU. All works as expected.
>
> Will you send this series for v5.5? Please keep me in the loop, I'll review and
> test the final version.

Yes, sending it out soon.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
