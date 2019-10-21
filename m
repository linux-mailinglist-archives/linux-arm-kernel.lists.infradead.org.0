Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E28CDF510
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 20:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+NFR+QbOcVM8ahI9nYtw7ELHC+2izCFZTBPeyofjFQ=; b=hxSTYzGwbC5Gmk
	L0DhLvQR6RebTByXvcySdBppHp7fJle3NR1JNUS5jKETkFdiGE9Ow0yEPdKOQNOF6T7csFnZMWwYP
	AQgVTynE/fxyrToPHd6rFUxKVD0lqnOdiTjwiBoOkuHoCn64G4qtdRtlAYzsyWlJV68zJO0bPiH23
	6Swbf+D1gBLELxGf0fLb+QYouS4NtvGT40tbaUd2e/Y+d3cMCq9G7WRJMTvF9YArKwvZQ1fgct6NH
	MIqSymIYrp/oKnASLqbo8xwqxO64ncnKpn163exphe3/INckuqNAv9sj7y5/BK8GQhC42RzGeNrl/
	qxRTYOukLk1S6XBL2Alw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMcRy-00085l-TE; Mon, 21 Oct 2019 18:30:38 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMcRp-00084s-LR
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 18:30:31 +0000
Received: by mail-il1-x141.google.com with SMTP id u1so12947018ilq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 11:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AR63DmWjyzGt6KRdOolpGSBjajplu7OlrmmkLDJcF1w=;
 b=r104k429d5kD4MhbpW7CsAzUCeS0MvNA2lwEo7M3+M+ZRmetRuneB8nvFRgLuP5tQ6
 J9AKWyyIKKMOX00v0Kdg61NH+qsyMxoXqdfAltdCnCFK4pEdyXQhccQsFXnzV3ALGMjF
 SGS27FyioGLGTnffmypWBvmKw8dC6yfr+isAhHG9DtvWsqLqu6xlyJDWEk4lKH/r40B7
 Wxerfq7p3FpMUFwQs8jVPnsL1bLo1Ve8L9+s4ZS17nQ0yiIO2u6g3DVw1MFsuFNNM+f7
 AugqoDYUUN0oVT99Q04VqQJ8YWw8013gmT4592iYFmLJkmSN+9FKG8UnkYOwGWeEvV9P
 czhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AR63DmWjyzGt6KRdOolpGSBjajplu7OlrmmkLDJcF1w=;
 b=WMIrmrg9m0ddASa2hK+i2aYFqOdOHEM9wivzjxzE38kvj9en1vNKZR3vCiotv10gAJ
 nSLc/10D44Ud7BxHBN0Kw6eLtX4WE6Tgh6tPH+ct4MBKfjzwELKQpxSSf0L6xflss0cg
 yWkGDRuaaWEpeLDHUbXIUR2WGITWhacCSOhiIbjnK/vNugOw5Wl7Cin8BXK0BhWhSBmK
 If8rIwga44wT7eTpPpxaX71CTvtGHIxLwT4v3PdcvPhbAMHmrGcPSTyj4uZ1PVhgqmcf
 1/ykQr9IMUjKKEfcmLszZKLs2cQydn0oRozIDg9+K4ibkCYtKyGAy1fvL8eZksaQPk3o
 Oyqw==
X-Gm-Message-State: APjAAAXsAdz4dlIvmfdRmNqF34NLd6TLVX0zpxEZebsh6qDRj08oeHTn
 bGqNiBkm6Rp/EoeSfHn6RHlHiR+BG5ttYOWoK8ATFQ==
X-Google-Smtp-Source: APXvYqxDB3gB2L7gTQbzzkQP9wEvUweroIM30iMNvPJ5rKY/UAIM6U3j7QAfdmgJ+vmcQ6N1I2k2AlTFXOpvzMZTjxM=
X-Received: by 2002:a92:d24d:: with SMTP id v13mr28009523ilg.112.1571682627649; 
 Mon, 21 Oct 2019 11:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191018232124.4126-1-rjones@gateworks.com>
 <20191021081945.o7knknxacm6uvd3c@pengutronix.de>
In-Reply-To: <20191021081945.o7knknxacm6uvd3c@pengutronix.de>
From: Bobby Jones <rjones@gateworks.com>
Date: Mon, 21 Oct 2019 11:30:16 -0700
Message-ID: <CALAE=UBqEShQ6REhqPEChpXX7-soi4w9vdEu8rO8QfqZqCBS8Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dt: add lsm9ds1 iio imu/magn support to gw553x
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_113029_732675_C83A870D 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 1:19 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Robert,
>
> same here, don't name it 'ARM: dt: ...' instead name it 'ARM: dts: imx:
> ventana: ..' or 'ARM: dts: imx: imx6qdl-gw553x: ..'.

Sorry about that, I'll follow that format from now on.
>
> On 19-10-18 16:21, Robert Jones wrote:
> > Add one node for the accel/gyro i2c device and another for the separate
> > magnetometer device in the lsm9ds1.
> >
> > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > ---
> >  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > index a106689..55e6922 100644
> > --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > @@ -173,6 +173,25 @@
> >       pinctrl-0 = <&pinctrl_i2c2>;
> >       status = "okay";
> >
> > +     lsm9ds1_ag@6a {
> > +             compatible = "st,lsm9ds1-imu";
>
> Didn't found this compatible string.
So this is a compatible string for a driver that's being mainlined
now. The devicetree bindings for which has already been reviewed-by
Rob Herring as seen here:
https://www.spinics.net/lists/linux-iio/msg47297.html. If possible I'd
prefer to get this in the same kernel release so let me know if
there's anything else I can do to make that happen.

>
> > +             reg = <0x6a>;
> > +             st,drdy-int-pin = <1>;
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_acc_gyro>;
> > +             interrupt-parent = <&gpio7>;
> > +             interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
> > +     };
> > +
> > +     lsm9ds1_m@1c {
> > +             compatible = "st,lsm9ds1-magn";
> > +             reg = <0x1c>;
>
> Nodes are sorted according their i2c-addresses.
>
I'll resubmit with that change, thanks!
- Bobby

> Regards,
>   Marco
>
> > +             pinctrl-names = "default";
> > +             pinctrl-0 = <&pinctrl_mag>;
> > +             interrupt-parent = <&gpio1>;
> > +             interrupts = <2 IRQ_TYPE_EDGE_RISING>;
> > +     };
> > +
> >       ltc3676: pmic@3c {
> >               compatible = "lltc,ltc3676";
> >               reg = <0x3c>;
> > @@ -462,6 +481,18 @@
> >               >;
> >       };
> >
> > +     pinctrl_acc_gyro: acc_gyrogrp {
> > +             fsl,pins = <
> > +                     MX6QDL_PAD_GPIO_18__GPIO7_IO13          0x1b0b0
> > +             >;
> > +     };
> > +
> > +     pinctrl_mag: maggrp {
> > +             fsl,pins = <
> > +                     MX6QDL_PAD_GPIO_2__GPIO1_IO02           0x1b0b0
> > +             >;
> > +     };
> > +
> >       pinctrl_pps: ppsgrp {
> >               fsl,pins = <
> >                       MX6QDL_PAD_ENET_RXD1__GPIO1_IO26        0x1b0b1
> > --
> > 2.9.2
> >
> >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
