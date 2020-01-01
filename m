Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0C812DE86
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 11:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVhd7CY5pXy348G+bn4dfnU8i8YmorlqOScYHG32m6U=; b=T4y4UTRaMhuE7M
	79jmfj/0wGavM3AKmlxpP+fM3dMCQVD4KtngbFlLIcjJdXpxYZcD5gBBJ4uO5oJojTd3aB4jGIoRs
	PZZbBoPlmD3LXiG3MUZVShiYZ9d9jDpk8Ajp9Oo1SWhCYq6r/xa/RRK7H3tkEano9l9W23vX6XUgf
	/K4XYeCmGisdq1sBk0qXoQDX6VCgHQi+76ZKKGIfPfDKRKvew977kldZ7RL/sLXGlazofRLofpBUF
	n7x4x6aDYwcxyYyU4PbhnG5UNAcF0UBVU7QWtkKZkWuX5LMEkUnoXyuWavt3Kxa2rz/9Fj5ihygCl
	GM+fux9pxVyktqVhm2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imb77-0003zw-GP; Wed, 01 Jan 2020 10:20:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imb71-0003zA-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 10:20:25 +0000
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBC2A2080A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  1 Jan 2020 10:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577874022;
 bh=loySFV+1No4UURYPX1PiQoRkdoL7jCSrVNRiVe2Ay7U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vJKdmpVoVliMKfQ9/EqIQ6l/bJQxbUA3PLLf5DtkC9ivcovKamHhsc1U7woqUmCoF
 6u8zwmMsqKc0DuVH2MM9Kym/cp2Q/qIQpfymya7DB/eRULV4L25FoEjnM3//bKJ4yo
 BNmlXlnCS7y6UfJme+vnPCfakKerHguIjSJOQrFg=
Received: by mail-wr1-f52.google.com with SMTP id b6so36810647wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 02:20:21 -0800 (PST)
X-Gm-Message-State: APjAAAU/moiKE8BCKlBErr1sRoPRb6JIWKQlvJp6K6fuV63z50DuGkM5
 KbK/7RxI8AVFLNrrDwfQeecD3+IpA707cawGIOA=
X-Google-Smtp-Source: APXvYqzh5wHLqjlcU5A/ZD5QRw8rK2s/y+6ksfYFN5O7FNyf1M1xi1TNzp8b9mNSXqfr3PwCJlbHmm4GVvyZb8/RaXA=
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr78369163wrx.178.1577874020171; 
 Wed, 01 Jan 2020 02:20:20 -0800 (PST)
MIME-Version: 1.0
References: <20191215165924.28314-1-wens@kernel.org>
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 1 Jan 2020 18:20:08 +0800
X-Gmail-Original-Message-ID: <CAGb2v645ZGy4M80bDNnuwg7LybqyOTkZTzwvzVbb3HrF9A687w@mail.gmail.com>
Message-ID: <CAGb2v645ZGy4M80bDNnuwg7LybqyOTkZTzwvzVbb3HrF9A687w@mail.gmail.com>
Subject: Re: [PATCH 00/14] media: sun4i-csi: A10/A20 CSI1 and R40 CSI0 support
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_022023_915522_F6EBD1E9 
X-CRM114-Status: GOOD (  28.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,


On Mon, Dec 16, 2019 at 12:59 AM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi everyone,
>
> This series adds basic support for CSI1 on Allwinner A10/A20 and CSI0 on
> Allwinner R40. The CSI1 block has the same structure and layout as the
> CSI0 block. Differences include:
>
>   - Only one channel in BT.656 instead of four in CSI0
>   - 10-bit raw data input vs 8-bit in CSI0
>   - 24-bit RGB888/YUV444 input vs 16-bit RGB565/YUV422 in CSI0
>   - No ISP hardware (CSI SCLK not needed)
>
> The CSI0 block in the Allwinner R40 SoC looks to be the same as the one
> in the A20. The register maps line up, and they support the same
> features. The R40 appears to support BT.1120 based on the feature
> overview, but it is not mentioned anywhere else. Also like the A20, the
> ISP is not mentioned, but the CSI special clock needs to be enabled for
> the hardware to function. The manual does state that the CSI special
> clock is the TOP clock for all CSI hardware, but currently no hardware
> exists for us to test if CSI1 also depends on it or not.
>
> Included are a couple of fixes for signal polarity and DRAM offset
> handling.
>
> Patches 1 and 2 add compatible strings for the newly supported hardware.
>
> Patches 3 and 4 fix the polarity setting of [HV]sync and data sampling.
> Allwinner hardware uses [HV]ref semantics instead of [HV]sync.
>
> Patch 5 deals with the DRAM offset when the CSI hardware does DMA. The
> hardware does DMA directly to the memory bus, thus requiring the address
> to not be offset like when DMA is done over the system bus.
>
> Patch 6 add support for the CSI1 hardware block. For now this simply
> means not requiring the ISP clock.
>
> Patches 7 and 8 add CSI1 to A10 (sun4i) and A20 (sun7i) dtsi files.
>
> Patch 9 adds I2C pixmuxing options for the R40. Used in the last example
> patch.
>
> Patch 10 adds a compatible string for the R40's MBUS (memory bus).
>
> Patch 11 adds CSI0 to the R40 dtsi file
>
> Patches 12 through 14 are examples of cameras hooked up to boards.
>
> Please have a look. The MBUS compatible patch is likely to conflict
> with a DT binding conversion patch Maxime sent out.
>
> Also, I sent out an email asking about the polarity settings for
> [HV]sync, how to signal the use of [HV]ref instead, and how to pass
> timings from the camera to the capture interface. So far I haven't
> heard back. In particular I think the OV7670 driver has inverted
> polarity settings for HSYNC. Not sure about VSYNC.
>
>
> Regards
> ChenYu
>
>
> Chen-Yu Tsai (14):
>   dt-bindings: media: sun4i-csi: Add compatible for CSI1 on A10/A20
>   dt-bindings: media: sun4i-csi: Add compatible for CSI0 on R40
>   media: sun4i-csi: Fix data sampling polarity handling
>   media: sun4i-csi: Fix [HV]sync polarity handling
>   media: sun4i-csi: Deal with DRAM offset
>   media: sun4i-csi: Add support for A10 CSI1 camera sensor interface

Any news on these 6 patches? I believe they have the required acks.

We (sunxi maintainers) will take the remain patches once these are in.

ChenYu

>   ARM: dts: sun4i: Add CSI1 controller and pinmux options
>   ARM: dts: sun7i: Add CSI1 controller and pinmux options
>   ARM: dts: sun8i: r40: Add I2C pinmux options
>   dt-bindings: bus: sunxi: Add R40 MBUS compatible
>   ARM: dts: sun8i: r40: Add device node for CSI0
>   [DO NOT MERGE] ARM: dts: sun4i: cubieboard: Enable OV7670 camera on
>     CSI1
>   [DO NOT MERGE] ARM: dts: sun7i: cubieboard2: Enable OV7670 camera on
>     CSI1
>   [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable OV5640
>     camera
>
>  .../bindings/arm/sunxi/sunxi-mbus.txt         |  1 +
>  .../media/allwinner,sun4i-a10-csi.yaml        | 14 +++-
>  arch/arm/boot/dts/sun4i-a10-cubieboard.dts    | 42 ++++++++++++
>  arch/arm/boot/dts/sun4i-a10.dtsi              | 35 ++++++++++
>  arch/arm/boot/dts/sun7i-a20-cubieboard2.dts   | 42 ++++++++++++
>  arch/arm/boot/dts/sun7i-a20.dtsi              | 36 ++++++++++
>  .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 67 +++++++++++++++++++
>  arch/arm/boot/dts/sun8i-r40.dtsi              | 64 ++++++++++++++++++
>  .../platform/sunxi/sun4i-csi/sun4i_csi.c      | 57 ++++++++++++++--
>  .../platform/sunxi/sun4i-csi/sun4i_csi.h      |  6 +-
>  .../platform/sunxi/sun4i-csi/sun4i_dma.c      | 20 ++++--
>  11 files changed, 370 insertions(+), 14 deletions(-)
>
> --
> 2.24.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
