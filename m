Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B45B2329
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 17:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WN/CaaxcVgsuKF4sIGj+vdzXMezVYtHTK56V4UGb3ts=; b=XvdFbf7Vd+900w
	1iut2kEVMFn+dkmYii+Qp2nNYGGpzD7tti4v0tcooTjejijBFAg0nCmzfRR05j7xHJVrwt4EGTzNC
	ioYJFjoQOXEJJO15KzkcH+SLBGZ3ijwhw1+WS3jpukZWvED8ywgcQW87n/xt8nshvOuPLXfLDDtF3
	fLaCXhajNdHw78F7xBNFKjQR3xs9sBjVi2TzOUQsF1bgM3idWF0GEwB3PRqlLt+w5Pxux88YwPYO+
	CooXWOh1jdSv8e9JTEm3Qi5QxvIO8TOY0j2vHI43E39HqPvlvBDo7cuYRRtgBDU5iCUkbB9iMNb4L
	cV1Xsy6WpG4Kj6XUZ8iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8nJ8-0002Tt-ON; Fri, 13 Sep 2019 15:16:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8nHS-0002SC-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 15:14:40 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45FEB20640
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 15:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568387677;
 bh=3T9Q9sUaLhrkbNUz9itiLI8hNw/bZ4OSEdwwqFawRBk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p0JUzxOljyx5MU0pfObXCYvb4fB/+btO7ZimxmuTiSC5u4FLEd0ktKE1HWv3dgDfF
 h675iqNGcxZuh1zzO7Qv1DhqItQskQR4IqT9dW5qWj21n29dI+BY50NscSiyPLaZ2y
 OX5aS0/xsUo/GXuC2Kjodr2Z3qgnfebHz0RYlt0s=
Received: by mail-qk1-f170.google.com with SMTP id x134so28508434qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 08:14:37 -0700 (PDT)
X-Gm-Message-State: APjAAAXJ85FQe+O8uKcdR7ggwqEDg6qVDPUxZaW8a/nnjO7gUV5h2gvL
 orp7DZGaGwhViNb0ATWYZnhPplVVUIJ5XR81tQ==
X-Google-Smtp-Source: APXvYqzq8j/xc7fUp5Hvbk5M34W55dIuuG8GxWSVX3oTzDuxMHC/PvPV6Jj9KhzLVxJdP7bE8uK9xylKTHLsAA7XJUg=
X-Received: by 2002:a37:682:: with SMTP id 124mr46613503qkg.393.1568387676426; 
 Fri, 13 Sep 2019 08:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190907161634.27378-1-marek.vasut@gmail.com>
In-Reply-To: <20190907161634.27378-1-marek.vasut@gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Sep 2019 16:14:24 +0100
X-Gmail-Original-Message-ID: <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
Message-ID: <CAL_JsqL47dQT-P78j4Ph61fsgA45Ha0AJjDajiMk52yFj++s+g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: Add /soc dma-ranges
To: =?UTF-8?B?TWFyZWsgVmHFoXV0?= <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_081438_777260_74ABCEC8 
X-CRM114-Status: GOOD (  20.23  )
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>,
 "open list:MEDIA DRIVERS FOR RENESAS - FCP"
 <linux-renesas-soc@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 5:16 PM <marek.vasut@gmail.com> wrote:
>
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> Add dma-ranges property into /soc node to describe the DMA capabilities
> of the bus. This is currently needed to translate PCI DMA ranges, which
> are limited to 32bit addresses.

FYI, I've started working on this problem and issues around
dma-ranges/dma_mask. Hopefully I'll get some patches out next week.

> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: devicetree@vger.kernel.org
> Cc: linux-renesas-soc@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> NOTE: This is needed for the following patches to work correctly:
>       https://patchwork.ozlabs.org/patch/1144870/
>       https://patchwork.ozlabs.org/patch/1144871/

First I'm seeing those... Well, I do have v7 from 2+ years ago...

Not sure if these take into account the new dma_bus_mask, but that
should simplify solving the issue.

> ---
>  arch/arm64/boot/dts/renesas/r8a7795.dtsi  | 1 +
>  arch/arm64/boot/dts/renesas/r8a7796.dtsi  | 1 +
>  arch/arm64/boot/dts/renesas/r8a77965.dtsi | 1 +
>  3 files changed, 3 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/renesas/r8a7795.dtsi b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> index 95deff66eeb6..2102140a6723 100644
> --- a/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a7795.dtsi
> @@ -330,6 +330,7 @@
>                 #address-cells = <2>;
>                 #size-cells = <2>;
>                 ranges;
> +               dma-ranges = <0 0x40000000 0 0x40000000 0 0xc0000000>;

Is the limitation in the bus or the PCI bridge or both? The commit
message sounds like it's the PCI bridge in which case this is wrong
(or incomplete). 'dma-ranges' should be on the bus node where the
restriction/translation exists. For PCI devices, that's the PCI bridge
node. So a 32-bit only PCI bridge should have a dma-ranges size of
4GB. If the SoC bus has more restrictions, then that should be in the
PCI bridge parent assuming that restriction also applies to other
devices.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
