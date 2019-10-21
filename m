Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A1DDF607
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 21:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpkVoyJN/xbeJz9yVlR9Oz5KkBKh396t67MKmOHLERU=; b=ITf4XKwWMBlq4p
	8rmpsMSZLCkNe1EtZc7bUsarA7qoTV/fy44tgXapoH7+96HE1GR6v/KCA4CvK1VCM1vNtfhzEXSwa
	3MyTGbFpJaJczfpt5SJlXySNfjkLZfCiXQ7+vODrE73JzB6JjebIRxfXURb6N3Fvqsz+BkSB4W708
	1ifxYzdPOlNoUWxcqS9ZZbHyVS61yyGAbsNj3WXVka2QPmvoOGUN/o5fWwBgFEabd/xwu7pehL7QK
	fPXczdIvo2FaN7ccS4mi3Kd2hNSeC6iMsqW+/KE0uhnFt/1GY7LndU2zmwGwF7yyLGHznd2HxdBWL
	6b9aI/bLYRgxMbYIJvng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMdPF-0006ah-EP; Mon, 21 Oct 2019 19:31:53 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMdP5-0006a7-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 19:31:45 +0000
Received: by mail-il1-x142.google.com with SMTP id m16so6728276iln.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 12:31:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zDsFciMfBsOLw/gb8ypekdMT3bU4wcz+6SRnbgFeGvM=;
 b=udgCAereY9DnrEwQiiU0e1UuO6gXEheU+q6aI9sR9IAcp787s9g2obd9zulwpL5kWa
 Sf1qJdoYN1FMy+SLp0qk+s7Qlb2cvwXFstYtafwAojAvYlN+O5PA5PtNDUkiAxu47fx5
 iIN1Y8fAcuSIxC6ftGD+bdh2D6dOpVWrTbMnwdi8bfyLPqo115Z9XIXwB+FrCLK19N2a
 qiF+cu3p9tJ4cSo8DPIxf1ZPSDSklrocyic2lqE7bjJ+T5MHjekhK4c9Ap845cY0oI8l
 AvPc+FWeNLDN7HpXZqxyP2b7lbBXJ6pNQAFtF4oG6GPWQaH6TCnFSFvVbO1CezOJG/7H
 uodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zDsFciMfBsOLw/gb8ypekdMT3bU4wcz+6SRnbgFeGvM=;
 b=Yycp6Vr5m13ZBXaPZOpFk6zYdZ7JpIl3mD+Be9TQol/+Tuy+tiMGhkdsYHuOXWS+4y
 Du9V78X40y9WEq7gHuX7vsRnlkmXGGNbGzAOOIhK4CXq6f1xbSfXsO+SZ0GrjlrNE2D1
 bzCGOPCH0e4fwinbKLwGYlwVYXQWIszIRLor1yjbqytV3nK/dpXC+o9v134q0y86yEbp
 EzsPrHVloBx4sNcLGtd9aUAbPyNArgcpva+jGW8SiWqlqIzELnkG0ge3UnBKfaIhzIeY
 WKVnwZrGQQMTJpbYv3PpiAfgvpZZqLcvo9B731t22+42ncVWViAPM0EYPWc0+iGqhEph
 cYpA==
X-Gm-Message-State: APjAAAXoHjdzIzfInGytIHykhn6CssaUkQG7sLy/O1EolQLCpxciQJpY
 lUzwG74h4jcQ5pDjSqvBw/ayDWRfsbyPxf0nmqRBJg==
X-Google-Smtp-Source: APXvYqwpVjCm+96XudfU15BW3d+PZ8Ry9m5m0VIN1iJGNqbglYcN35ZlKkTbFE4TaPupWXjBuy45d9FZzFLxnEr0Ca8=
X-Received: by 2002:a92:c8cb:: with SMTP id c11mr26747744ilq.119.1571686301952; 
 Mon, 21 Oct 2019 12:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191018232124.4126-1-rjones@gateworks.com>
 <20191021081945.o7knknxacm6uvd3c@pengutronix.de>
 <CALAE=UBqEShQ6REhqPEChpXX7-soi4w9vdEu8rO8QfqZqCBS8Q@mail.gmail.com>
In-Reply-To: <CALAE=UBqEShQ6REhqPEChpXX7-soi4w9vdEu8rO8QfqZqCBS8Q@mail.gmail.com>
From: Bobby Jones <rjones@gateworks.com>
Date: Mon, 21 Oct 2019 12:31:31 -0700
Message-ID: <CALAE=UDFJH1Ch4ichFRjy5A2_-84k2MRcXqmU=1Ujv-Qqu2GQw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dt: add lsm9ds1 iio imu/magn support to gw553x
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_123143_446812_8920F456 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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

On Mon, Oct 21, 2019 at 11:30 AM Bobby Jones <rjones@gateworks.com> wrote:
>
> On Mon, Oct 21, 2019 at 1:19 AM Marco Felsch <m.felsch@pengutronix.de> wrote:
> >
> > Hi Robert,
> >
> > same here, don't name it 'ARM: dt: ...' instead name it 'ARM: dts: imx:
> > ventana: ..' or 'ARM: dts: imx: imx6qdl-gw553x: ..'.
>
> Sorry about that, I'll follow that format from now on.
> >
> > On 19-10-18 16:21, Robert Jones wrote:
> > > Add one node for the accel/gyro i2c device and another for the separate
> > > magnetometer device in the lsm9ds1.
> > >
> > > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > > ---
> > >  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 31 +++++++++++++++++++++++++++++++
> > >  1 file changed, 31 insertions(+)
> > >
> > > diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > > index a106689..55e6922 100644
> > > --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > > +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> > > @@ -173,6 +173,25 @@
> > >       pinctrl-0 = <&pinctrl_i2c2>;
> > >       status = "okay";
> > >
> > > +     lsm9ds1_ag@6a {
> > > +             compatible = "st,lsm9ds1-imu";
> >
> > Didn't found this compatible string.
> So this is a compatible string for a driver that's being mainlined
> now. The devicetree bindings for which has already been reviewed-by
> Rob Herring as seen here:
> https://www.spinics.net/lists/linux-iio/msg47297.html. If possible I'd
> prefer to get this in the same kernel release so let me know if
> there's anything else I can do to make that happen.
>
I mixed up my replies here. That link points to the "nxp,fxos8700"
compatible string that you brought up in your other response. The
"st,lsm9ds1-imu" compatible string is described in
Documentation/devicetree/bindings/iio/imu/st_lsm6dsx.txt which was an
August commit that made it into the imx/dt branch.
> >
> > > +             reg = <0x6a>;
> > > +             st,drdy-int-pin = <1>;
> > > +             pinctrl-names = "default";
> > > +             pinctrl-0 = <&pinctrl_acc_gyro>;
> > > +             interrupt-parent = <&gpio7>;
> > > +             interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
> > > +     };
> > > +
> > > +     lsm9ds1_m@1c {
> > > +             compatible = "st,lsm9ds1-magn";
> > > +             reg = <0x1c>;
> >
> > Nodes are sorted according their i2c-addresses.
> >
> I'll resubmit with that change, thanks!
> - Bobby
>
> > Regards,
> >   Marco
> >
> > > +             pinctrl-names = "default";
> > > +             pinctrl-0 = <&pinctrl_mag>;
> > > +             interrupt-parent = <&gpio1>;
> > > +             interrupts = <2 IRQ_TYPE_EDGE_RISING>;
> > > +     };
> > > +
> > >       ltc3676: pmic@3c {
> > >               compatible = "lltc,ltc3676";
> > >               reg = <0x3c>;
> > > @@ -462,6 +481,18 @@
> > >               >;
> > >       };
> > >
> > > +     pinctrl_acc_gyro: acc_gyrogrp {
> > > +             fsl,pins = <
> > > +                     MX6QDL_PAD_GPIO_18__GPIO7_IO13          0x1b0b0
> > > +             >;
> > > +     };
> > > +
> > > +     pinctrl_mag: maggrp {
> > > +             fsl,pins = <
> > > +                     MX6QDL_PAD_GPIO_2__GPIO1_IO02           0x1b0b0
> > > +             >;
> > > +     };
> > > +
> > >       pinctrl_pps: ppsgrp {
> > >               fsl,pins = <
> > >                       MX6QDL_PAD_ENET_RXD1__GPIO1_IO26        0x1b0b1
> > > --
> > > 2.9.2
> > >
> > >
> > >
> >
> > --
> > Pengutronix e.K.                           |                             |
> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
