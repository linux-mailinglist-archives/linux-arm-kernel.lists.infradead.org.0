Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CF082587
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 21:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6KYbJa/L3DYZy+l3kuOCg2ihyQARfvfBhOkCjFrr0A=; b=eurcg0ZZe218gp
	7JcbOizo495E2qw7T1c+1hqSVqtKCpYHd+qIQ7G+7y6fQHY6Q5AI0W0GyDBW8YWgZDeCDA2uwk0S9
	JoeEMj8+rk113PJIqgiXMi+yQEPI9uGzi3ibgj9LjcGPhrJB67z89/l1iPlns2SzsL7bNq+h+fGeT
	POVpRvGxM9GD6ku9T2/nmrW3tQkWBZSZ2VjcAsqyS3ugSlXC/L7ZBj55I/4oE2XR6kj6pA4UvetZ8
	OEOm1Z6DF+hVDHHauWUhdm62SIlAgyhLJO8P01jTChspMaG92gTSMY1I7GCO/OhWb8vmboTZe2/kH
	IuAFguUoPOkuKOrr/67Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huiZt-0004VR-QI; Mon, 05 Aug 2019 19:23:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huiZj-0004Uz-5r; Mon, 05 Aug 2019 19:23:21 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FDDA217F5;
 Mon,  5 Aug 2019 19:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565032998;
 bh=d6p6NWXIzAr/w+L57W8Oyrx5VdZnumUCXtu9FxtaNsc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R/AKCL41e439d3YyW9Frd8+LqZmY/L/BTeDfKJwCw0IYn+fId94XDv2wn7Pml91f9
 dnKXgXpHTXeFphyc7/df75+ieHN1KnS+kSCTZqgR9c8Gkj9yb5S930ddLj/+yapLMz
 2x3mqfxdOrcNQAQnSXJqYUrWF68Oxa6/5KI536WM=
Received: by mail-qk1-f174.google.com with SMTP id t8so60997127qkt.1;
 Mon, 05 Aug 2019 12:23:18 -0700 (PDT)
X-Gm-Message-State: APjAAAUI+2+UD9jzGibicRWQaXq+b30h49UZOqd5QX7O+WbLuOHRLuTF
 MhNqHgg0Oi4sTYvmtMISWZVzepkVi3wfE9Drow==
X-Google-Smtp-Source: APXvYqzJ3385dVDr7a416MCnVTqPVutjB6pJSnn10jB+T3hVVAIomIypEjVR/sntYZAAkaMyD0seP3rNxE7IslWzcJM=
X-Received: by 2002:a37:6944:: with SMTP id e65mr95063738qkc.119.1565032997083; 
 Mon, 05 Aug 2019 12:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
 <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
 <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
In-Reply-To: <2050374ac07e0330e505c4a1637256428adb10c4.camel@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 5 Aug 2019 13:23:05 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
Message-ID: <CAL_Jsq+LjsRmFg-xaLgpVx3miXN3hid3aD+mgTW__j0SbEFYjQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_122319_269232_2DC89C62 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Will Deacon <will@kernel.org>,
 Eric Anholt <eric@anholt.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-mm@kvack.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Matthias Brugger <mbrugger@suse.com>, wahrenst@gmx.net,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 10:03 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Rob,
> Thanks for the review!
>
> On Fri, 2019-08-02 at 11:17 -0600, Rob Herring wrote:
> > On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
> > <nsaenzjulienne@suse.de> wrote:
> > > Some SoCs might have multiple interconnects each with their own DMA
> > > addressing limitations. This function parses the 'dma-ranges' on each of
> > > them and tries to guess the maximum SoC wide DMA addressable memory
> > > size.
> > >
> > > This is specially useful for arch code in order to properly setup CMA
> > > and memory zones.
> >
> > We already have a way to setup CMA in reserved-memory, so why is this
> > needed for that?
>
> Correct me if I'm wrong but I got the feeling you got the point of the patch
> later on.

No, for CMA I don't. Can't we already pass a size and location for CMA
region under /reserved-memory. The only advantage here is perhaps the
CMA range could be anywhere in the DMA zone vs. a fixed location.

> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > ---
> > >
> > >  drivers/of/fdt.c       | 72 ++++++++++++++++++++++++++++++++++++++++++
> > >  include/linux/of_fdt.h |  2 ++
> > >  2 files changed, 74 insertions(+)
> > >
> > > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > > index 9cdf14b9aaab..f2444c61a136 100644
> > > --- a/drivers/of/fdt.c
> > > +++ b/drivers/of/fdt.c
> > > @@ -953,6 +953,78 @@ int __init early_init_dt_scan_chosen_stdout(void)
> > >  }
> > >  #endif
> > >
> > > +/**
> > > + * early_init_dt_dma_zone_size - Look at all 'dma-ranges' and provide the
> > > + * maximum common dmable memory size.
> > > + *
> > > + * Some devices might have multiple interconnects each with their own DMA
> > > + * addressing limitations. For example the Raspberry Pi 4 has the
> > > following:
> > > + *
> > > + * soc {
> > > + *     dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
> > > + *     [...]
> > > + * }
> > > + *
> > > + * v3dbus {
> > > + *     dma-ranges = <0x00000000  0x0 0x00000000  0x3c000000>;
> > > + *     [...]
> > > + * }
> > > + *
> > > + * scb {
> > > + *     dma-ranges = <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
> > > + *     [...]
> > > + * }
> > > + *
> > > + * Here the area addressable by all devices is [0x00000000-0x3bffffff].
> > > Hence
> > > + * the function will write in 'data' a size of 0x3c000000.
> > > + *
> > > + * Note that the implementation assumes all interconnects have the same
> > > physical
> > > + * memory view and that the mapping always start at the beginning of RAM.
> >
> > Not really a valid assumption for general code.
>
> Fair enough. On my defence I settled on that assumption after grepping all dts
> and being unable to find a board that behaved otherwise.
>
> [...]
>
> > It's possible to have multiple levels of nodes and dma-ranges. You need to
> > handle that case too. Doing that and handling differing address translations
> > will be complicated.
>
> Understood.
>
> > IMO, I'd just do:
> >
> > if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
> >     dma_zone_size = XX;
> >
> > 2 lines of code is much easier to maintain than 10s of incomplete code
> > and is clearer who needs this. Maybe if we have dozens of SoCs with
> > this problem we should start parsing dma-ranges.
>
> FYI that's what arm32 is doing at the moment and was my first instinct. But it
> seems that arm64 has been able to survive so far without any machine specific
> code and I have the feeling Catalin and Will will not be happy about this
> solution. Am I wrong?

No doubt. I'm fine if the 2 lines live in drivers/of/.

Note that I'm trying to reduce the number of early_init_dt_scan_*
calls from arch code into the DT code so there's more commonality
across architectures in the early DT scans. So ideally, this can all
be handled under early_init_dt_scan() call.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
