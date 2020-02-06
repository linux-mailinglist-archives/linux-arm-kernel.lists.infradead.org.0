Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7A11545DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 15:14:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MtPwhwNCYees1ktB+90O6DTrngc/BSCPOQDdXWgx5Y=; b=CQSFzAvm/KAgMs
	EFetkZzrnUhuBYVr32oQ07yGtDkLf1kulo+Ky5FgzMtnb3k3Q7b6J+YgksUeDnGJL9lWtoAEKWBuq
	KxfCVsXQe0Olasglqyq1FwfkfBjDt2FsMdd5AgOrdgmmoxb5GHneO836WEt/v+VbtO78J/H6o0MHE
	5AqXnZ3XzIOefruuBo/WQ5liClbLb4FGZR/IX53Zb4P8KwvJbPMFY6rGZCSIXxYk9iMZaZj6QW2k+
	cO0t53EybvBNOwTn/YfjtL+KBJWCx0wuCp/SJG0zszccJ6Y6Z6mCKF46qQTHyKGMi9Hz5NwrM0MOq
	BYcEqxYSryMdB0WSGekQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izhv9-0007Yd-Oe; Thu, 06 Feb 2020 14:14:19 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izhv3-0007PT-Ad
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 14:14:14 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g23so3832253vsr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 06:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zq26qbESibgRQo9Jt8lbKYJuguzXROj1d9xvP1lsLj0=;
 b=OTMh3ak8WHbmFIhfKhaZWiZins4prgaMm65Qnrse7HErepdEtI+xZHcTAvKk7tfg7D
 REYznSAyc53K8kO2ydadMMaEqwqh9dpEN2Nvv2aGDuGKHQSrS+PCkvgDkjxCPxJ4/I78
 ZMtLb8n3yFdJB52xNRI0NG3sYhtqcy1ygP0UsVTA0jpjuipHUNg5ZYDTa+SernIq6/2v
 A9R1M8XXJzFuE4q6pbo/GSnjb49a/oh6z7m6pqaoqsUbAuNJ3/nNsWGlT+XaBk/jllzs
 vD68vLYPo+HZRLZwME/z63FNLHCf1FlIJ1cJvzPHh2Xr+kEWw9wTHTpU44GBJb4ekNPs
 HBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zq26qbESibgRQo9Jt8lbKYJuguzXROj1d9xvP1lsLj0=;
 b=l5AVZ+hfPViWdzUR0C20PaLRL1eOUR3wcwpXAPq5gNA1aKKl0zKuIGLU8ARZnNP6tP
 /TxJh9PQB+F3kPzFy8wlPnGDiYDdGOBlE1NooRccBdEHwxXz+qJcPcg/7phNFU/+YJkT
 4h6eYXQHCa02sMq073Q9UWypSjdh4PeKpT+iQVnXZakp1fGVjKw4udzfCA+Lh8zYvA18
 yAol6V17/bvX5WZoxeIVB1+rZKvG9S/FUunqZOf2SMHgCM3ysNEfOibvAwnSnmW3iKDR
 LzH/UlBytL2BdqIAZ1HX9txTSAKMEBHGAYRMW+fXsn3BhdxEcNoYU8qQuyLyxbiCogLi
 vWmQ==
X-Gm-Message-State: APjAAAVo0OcctP0Ri4gwt36Q9G/wotTFK94hgaIOe4gSaFGS8GlOiYJj
 85qIfB9UhjGeHuiDgym5jbiqJmcOsAU9zXWLfWSC9w==
X-Google-Smtp-Source: APXvYqzebCTr2QcQz9u5oLrDGawETmoHyGUrr+V12r7zXovoI3ed0UYSk2EhVLGHr9yZ7IKix4nLC4jFkJMS3Wfbtsk=
X-Received: by 2002:a67:d011:: with SMTP id r17mr1672458vsi.159.1580998451210; 
 Thu, 06 Feb 2020 06:14:11 -0800 (PST)
MIME-Version: 1.0
References: <20191219172823.1652600-1-anarsoul@gmail.com>
In-Reply-To: <20191219172823.1652600-1-anarsoul@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 6 Feb 2020 19:43:59 +0530
Message-ID: <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_061413_419669_037C5AD7 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vasily,

For this entire series, the DTS files don't contain any trip points.
Did I miss some other series?

At a minimum, you should add some "hot" or "critical" trip points
since then don't require a cooling-map with throttling actions. If you
have "passive" trip points, then you need to provide cooling-maps.

Since this series has been merged, could you please follow up with a
fixup series to add the trip points?

Regards,
Amit
p.s. We should catch all this automatically, I'll send out yaml
bindings for the thermal framework soon that should catch this stuff.

On Thu, Dec 19, 2019 at 10:58 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> This patchset adds driver for thermal sensor in A64, A83T, H3, H5,
> H6 and R40 SoCs.
>
> v8:
>         - [vasily] Address more Maxime's comments for dt-schema
>         - [vasily] Add myself to MAINTAINERS for the driver and schema
>         - [vasily] Round calibration data size to word boundary for H6 and A64
>         - [vasily] Change offset for A64 since it reports too low temp otherwise.
>                    Likely conversion formula in user manual is not correct.
>
> v7:
>         - [vasily] Address Maxime's comments for dt-schema
>         - [vasily] Move common part of H3 and H5 dts into sunxi-h3-h5.dtsi
>         - [vasily] Add Maxime's a-b to the driver patch
>
> v6:
>         - [ondrej, vasily] Squash all driver related changes into a
>                            single patch
>         - [ondrej] Rename calib -> calibration
>         - [ondrej] Fix thermal zone registration check
>         - [ondrej] Lower rate of sensor data interrupts to 4/sec/sensor
>         - [ondrej] Rework scale/offset values, H6 calibration
>         - [ondrej] Explicitly set mod clock to 24 MHz
>         - [ondrej] Set undocumented bits in CTRL0 for H6
>         - [ondrej] Add support for A83T
>         - [ondrej] Add dts changes for A83T, H3, H5, H6
>         - [vasily] Add dts changes for A64
>         - [vasily] Address Maxime's comments for YAML scheme
>         - [vasily] Make .calc_temp callback mandatory
>         - [vasily] Set .max_register in regmap config, so regs can be
>                    inspected using debugfs
>
> Ondrej Jirman (4):
>   ARM: dts: sun8i-a83t: Add thermal sensor and thermal zones
>   ARM: dts: sun8i-h3: Add thermal sensor and thermal zones
>   arm64: dts: allwinner: h5: Add thermal sensor and thermal zones
>   arm64: dts: allwinner: h6: Add thermal sensor and thermal zones
>
> Vasily Khoruzhick (1):
>   arm64: dts: allwinner: a64: Add thermal sensors and thermal zones
>
> Yangtao Li (2):
>   thermal: sun8i: add thermal driver for H6/H5/H3/A64/A83T/R40
>   dt-bindings: thermal: add YAML schema for sun8i-thermal driver
>     bindings
>
>  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 160 +++++
>  MAINTAINERS                                   |   8 +
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  36 +
>  arch/arm/boot/dts/sun8i-h3.dtsi               |  20 +
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi            |   6 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  42 ++
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  26 +
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  33 +
>  drivers/thermal/Kconfig                       |  14 +
>  drivers/thermal/Makefile                      |   1 +
>  drivers/thermal/sun8i_thermal.c               | 639 ++++++++++++++++++
>  11 files changed, 985 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
>  create mode 100644 drivers/thermal/sun8i_thermal.c
>
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
