Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3731F935B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tbudAnwxN+2gE+RA5kmzhrBU2PM0FfTBsnXa1R7Cf5g=; b=AHA9VSsGzoT0Wm
	ZkwiD5MQRQ/BvRXTI+IihYiVkZ4j8Jk11G4tHM/xcxrpE3BV3fSCUizacRrL4gjdcsGbCj+iWscWf
	5cSmR+o+DaLV17859WXsKu1CLZAwjU2awu4f4vD9GHRXwOKHvInsvuLJRmoNPAMK4TOJFx9RGoL6f
	kvVHDtcAS92WooBmqbpzx8QxGRXBAnYJDleHiueZ+PdPDWWHb5NVojHeiUFlvFOY+aLLYVZz8/bT2
	bBMVvmX97fGzQJAht2mOyaXH1V7Qtqz/HpWZfS/fTnkgKTJ4CFdb+2pxZcAuYp0iCrbQTrzFz2ANZ
	bRXCZduCfXZ7Kxjks7zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUXXi-0001QH-Pb; Tue, 12 Nov 2019 14:53:18 +0000
Received: from forward106o.mail.yandex.net ([2a02:6b8:0:1a2d::609])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUXXW-0001PP-Tb
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:53:10 +0000
Received: from mxback16g.mail.yandex.net (mxback16g.mail.yandex.net
 [IPv6:2a02:6b8:0:1472:2741:0:8b7:316])
 by forward106o.mail.yandex.net (Yandex) with ESMTP id 1A4425061C92;
 Tue, 12 Nov 2019 17:52:58 +0300 (MSK)
Received: from sas2-44d129ed7200.qloud-c.yandex.net
 (sas2-44d129ed7200.qloud-c.yandex.net [2a02:6b8:c08:ff0a:0:640:44d1:29ed])
 by mxback16g.mail.yandex.net (nwsmtp/Yandex) with ESMTP id SwALCUodYR-qvwaMIoN;
 Tue, 12 Nov 2019 17:52:58 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emlid.com; s=mail;
 t=1573570378; bh=nJd0QZf/zaK4AYwVeNbtQGugkagOugqSjNxvqmGOLUQ=;
 h=In-Reply-To:Subject:Cc:To:From:References:Date:Message-ID;
 b=x4rwdkLhN7Ci4+tWF+Gz36mv5L/nuR75VHzrDVw6k945kna7XwdQOa+l4Njk6293S
 7Igs89T1TQV1ZrmltwHAvfw24oBrxNBXIroALQ5a4qFaQYHAoJY0Dp/zuA37a8Xt8a
 5lLrU3UNO181Uo4acOqRbY7xVbSQj1c75c21cAZk=
Authentication-Results: mxback16g.mail.yandex.net;
 dkim=pass header.i=@emlid.com
Received: by sas2-44d129ed7200.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id pyNTTv5nTB-qu0atVp8; Tue, 12 Nov 2019 17:52:56 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
Date: Tue, 12 Nov 2019 17:52:55 +0300
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 2/2] arm: dts: sunxi: Add Neutis N5H3 support
Message-ID: <20191112145255.GA3812@softcrasher>
References: <1573048998-8913-1-git-send-email-georgii.staroselskii@emlid.com>
 <1573048998-8913-3-git-send-email-georgii.staroselskii@emlid.com>
 <20191112121558.GZ4345@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112121558.GZ4345@gilmour.lan>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_065307_340272_39A1B6C0 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:6b8:0:1a2d:0:0:0:609 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-sunxi@googlegroups.com,
 georgii.staroselskii@emlid.com, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 01:15:58PM +0100, Maxime Ripard wrote:
> Hi,
> 

Hi!

> On Wed, Nov 06, 2019 at 05:03:18PM +0300, Georgii Staroselskii wrote:
> > Emlid Neutis N5H3 is a version of Emlid Neutis SoM with H3 instead of H5
> > inside.
> >
> > 6eeb4180d4b9 ("ARM: dts: sunxi: h3-h5: Add Bananapi M2+ v1.2 device")
> > was used as reference.
> >
> > Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
> > ---
> >  arch/arm/boot/dts/Makefile                         |  1 +
> >  .../dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts    | 61 ++++++++++++++++++++++
> >  arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi  | 11 ++++
> >  3 files changed, 73 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
> >  create mode 100644 arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3.dtsi
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 3f13b88..c997b0c 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -1119,6 +1119,7 @@ dtb-$(CONFIG_MACH_SUN8I) += \
> >  	sun8i-h3-orangepi-plus2e.dtb \
> >  	sun8i-h3-orangepi-zero-plus2.dtb \
> >  	sun8i-h3-rervision-dvk.dtb \
> > +	sun8i-h3-emlid-neutis-n5h3-devboard.dtb \
> 
> There's no need to duplicate the H3 in the name, we can just call it
> 
> sun8i-h3-emlid-neutis-n5-devboard.dts
> 
> Unless you expect some other boards named in a similar matter?
> 

The thing is that Neutis N5H3 is the name of the board. So I guess it
makes sense to let this name be the part of the dts as well.

> >  	sun8i-r16-bananapi-m2m.dtb \
> >  	sun8i-r16-nintendo-nes-classic.dtb \
> >  	sun8i-r16-nintendo-super-nes-classic.dtb \
> > diff --git a/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
> > new file mode 100644
> > index 00000000..3b68750
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/sun8i-h3-emlid-neutis-n5h3-devboard.dts
> > @@ -0,0 +1,61 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/*
> > + * DTS for Emlid Neutis N5 Dev board.
> > + *
> > + * Copyright (C) 2019 Georgii Staroselskii <georgiii.staroselskii@emlid.com>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "sun8i-h3-emlid-neutis-n5h3.dtsi"
> > +
> > +/ {
> > +	model = "Emlid Neutis N5H3 Developer board";
> > +	compatible = "emlid,neutis-n5h3-devboard",
> > +		     "emlid,neutis-n5h3",
> > +		     "allwinner,sun8i-h3";
> 
> Same remarks for the compatible, we have the h3 compatible here to
> differentiate between the two.
> 
> You should also document this combination to
> Documentation/devicetree/bindings/arm/sunxi.yaml.
> 

Thanks, will do.

> > +
> > +	vdd_cpux: gpio-regulator {
> > +		compatible = "regulator-gpio";
> > +		regulator-name = "vdd-cpux";
> > +		regulator-type = "voltage";
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +		regulator-min-microvolt = <1100000>;
> > +		regulator-max-microvolt = <1300000>;
> > +		regulator-ramp-delay = <50>; /* 4ms */
> > +		gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
> > +		gpios-states = <0x1>;
> > +		states = <1100000 0x0
> > +			  1300000 0x1>;
> 
> While DTC outputs the same thing, and it works, you should make this
> an array of 2 items of 2 cells, instead of a array of 1 item of 4
> cells.
> 
> Like this: states = <1100000 0x0>, <1300000 0x1>;
> 
> While this doesn't change anything with DTC, other cases (like DT
> validation) care about this.
> 

Thank you!

> Look good otherwise.

I have spotted a couple of issues with the DTSI that I'm going to
address in V2.

Thanks for the review.

> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
