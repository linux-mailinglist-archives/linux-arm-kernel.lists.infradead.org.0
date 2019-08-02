Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529A07FF63
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 19:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xzar9Vt3jpuqBQUjPa9l2DVteCutsQJyklo332eXkVg=; b=upcDU+Lw2REoK5
	auAJMRZkLegfpkS65/Y6duAZcTvFGcyBedlFTrGcp0JlWtZsODfwvJ7XIw4HcJrFM3Ma6iWiO/30+
	a5hHJ5SpVNeLBydFtxT5x0p7dzoaBDcscdnVsb6407FEpeSmH4JwggTw6D9RoQxO3BvwdbhuJq0PR
	Tq7aw1W8dATCG+1YHRH4NOyXPF01IcfTiu62kf9IZOEwSD/41QF7CGiyvIKZZwIK6ZYh9aAxFrBxx
	aWoJt6bHJyaPjGRyadbYmiDdptGFoG8zPfLi7+aLk3ICNUIqkLjQwgA+4ogLBZ7C3O289Lga3PTnW
	olMz5mDh4yZ+MLGmbJrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htbBg-00011D-Hf; Fri, 02 Aug 2019 17:17:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htbBa-0000zm-1W; Fri, 02 Aug 2019 17:17:47 +0000
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7514821841;
 Fri,  2 Aug 2019 17:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564766259;
 bh=5vmjMpiDWDoHbfIEjw2l5ptTIfiiyZTgBi7QK8QIoHM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lhaum2PDzZjeWUO+WsAPOwKR/YgoXWAR0RXVBZYh5t5+PfmXONrVeQpGaqPVUFLNV
 zeDEVI0jHfexKJbsQD+EJtDab3k6iGED56EBhGxGJaIwBy9kSo1dYlZn9j/4qmkL4a
 R3PlUQKqZUXTeiEG8RYoleZ6v44K+IO5A8+pUoig=
Received: by mail-qk1-f180.google.com with SMTP id g18so55355901qkl.3;
 Fri, 02 Aug 2019 10:17:39 -0700 (PDT)
X-Gm-Message-State: APjAAAUfpVZFlKpufmaoiK+bOafnk6wJw5IqY7M5fl6d0bg1MkDhmohY
 CaVR48cLoPuUliCQrA/SMxXbidhW9Ow+UTbrgQ==
X-Google-Smtp-Source: APXvYqxL5GHe5mkbUxAz7mbqxNvzn4pWJks7bPOqG/UgQKQwi7xLsLORGJlb/4eoiQbYIUPfkF/if0CjxqkRI+lgyvY=
X-Received: by 2002:a37:a48e:: with SMTP id
 n136mr93644586qke.223.1564766258476; 
 Fri, 02 Aug 2019 10:17:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190731154752.16557-1-nsaenzjulienne@suse.de>
 <20190731154752.16557-4-nsaenzjulienne@suse.de>
In-Reply-To: <20190731154752.16557-4-nsaenzjulienne@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 2 Aug 2019 11:17:26 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
Message-ID: <CAL_JsqKF5nh3hcdLTG5+6RU3_TnFrNX08vD6qZ8wawoA3WSRpA@mail.gmail.com>
Subject: Re: [PATCH 3/8] of/fdt: add function to get the SoC wide DMA
 addressable memory size
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_101746_136607_67CDF7FC 
X-CRM114-Status: GOOD (  21.93  )
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
Cc: phill@raspberryi.org, devicetree@vger.kernel.org,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
 Eric Anholt <eric@anholt.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
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

On Wed, Jul 31, 2019 at 9:48 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Some SoCs might have multiple interconnects each with their own DMA
> addressing limitations. This function parses the 'dma-ranges' on each of
> them and tries to guess the maximum SoC wide DMA addressable memory
> size.
>
> This is specially useful for arch code in order to properly setup CMA
> and memory zones.

We already have a way to setup CMA in reserved-memory, so why is this
needed for that?

I have doubts this can really be generic...

>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>
>  drivers/of/fdt.c       | 72 ++++++++++++++++++++++++++++++++++++++++++
>  include/linux/of_fdt.h |  2 ++
>  2 files changed, 74 insertions(+)
>
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 9cdf14b9aaab..f2444c61a136 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -953,6 +953,78 @@ int __init early_init_dt_scan_chosen_stdout(void)
>  }
>  #endif
>
> +/**
> + * early_init_dt_dma_zone_size - Look at all 'dma-ranges' and provide the
> + * maximum common dmable memory size.
> + *
> + * Some devices might have multiple interconnects each with their own DMA
> + * addressing limitations. For example the Raspberry Pi 4 has the following:
> + *
> + * soc {
> + *     dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
> + *     [...]
> + * }
> + *
> + * v3dbus {
> + *     dma-ranges = <0x00000000  0x0 0x00000000  0x3c000000>;
> + *     [...]
> + * }
> + *
> + * scb {
> + *     dma-ranges = <0x0 0x00000000  0x0 0x00000000  0xfc000000>;
> + *     [...]
> + * }
> + *
> + * Here the area addressable by all devices is [0x00000000-0x3bffffff]. Hence
> + * the function will write in 'data' a size of 0x3c000000.
> + *
> + * Note that the implementation assumes all interconnects have the same physical
> + * memory view and that the mapping always start at the beginning of RAM.

Not really a valid assumption for general code.

> + */
> +int __init early_init_dt_dma_zone_size(unsigned long node, const char *uname,
> +                                      int depth, void *data)

Don't use the old fdt scanning interface with depth/data. It's not
really needed now because you can just use libfdt calls.

> +{
> +       const char *type = of_get_flat_dt_prop(node, "device_type", NULL);
> +       u64 phys_addr, dma_addr, size;
> +       u64 *dma_zone_size = data;
> +       int dma_addr_cells;
> +       const __be32 *reg;
> +       const void *prop;
> +       int len;
> +
> +       if (depth == 0)
> +               *dma_zone_size = 0;
> +
> +       /*
> +        * We avoid pci host controllers as they have their own way of using
> +        * 'dma-ranges'.
> +        */
> +       if (type && !strcmp(type, "pci"))
> +               return 0;
> +
> +       reg = of_get_flat_dt_prop(node, "dma-ranges", &len);
> +       if (!reg)
> +               return 0;
> +
> +       prop = of_get_flat_dt_prop(node, "#address-cells", NULL);
> +       if (prop)
> +               dma_addr_cells = be32_to_cpup(prop);
> +       else
> +               dma_addr_cells = 1; /* arm64's default addr_cell size */

Relying on the defaults has been a dtc error longer than arm64 has
existed. If they are missing, just bail.

> +
> +       if (len < (dma_addr_cells + dt_root_addr_cells + dt_root_size_cells))
> +               return 0;
> +
> +       dma_addr = dt_mem_next_cell(dma_addr_cells, &reg);
> +       phys_addr = dt_mem_next_cell(dt_root_addr_cells, &reg);
> +       size = dt_mem_next_cell(dt_root_size_cells, &reg);
> +
> +       if (!*dma_zone_size || *dma_zone_size > size)
> +               *dma_zone_size = size;
> +
> +       return 0;
> +}

It's possible to have multiple levels of nodes and dma-ranges. You
need to handle that case too.

Doing that and handling differing address translations will be
complicated. IMO, I'd just do:

if (of_fdt_machine_is_compatible(blob, "brcm,bcm2711"))
    dma_zone_size = XX;

2 lines of code is much easier to maintain than 10s of incomplete code
and is clearer who needs this. Maybe if we have dozens of SoCs with
this problem we should start parsing dma-ranges.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
