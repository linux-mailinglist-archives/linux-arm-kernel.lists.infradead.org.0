Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC27A16A6B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 14:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ka1joCBhE9xR/frBsO3FGj1SMtk7f5FL4DbFQzPlCq8=; b=TfzNad4A5Y/1ty
	xzs/+klmakxak34jiUAolb3CQJDbDHPDyX1H7ZLDgArb1T9kq8tS6Y7pVaPGjJ/ak4LI9Q3yslvAQ
	DRn2AaM3Qq3XyHciqVpYEmu7zzF2W9GOJgV2rixRTCP2tK1ymr6HR480/zWwFzyEB+BsUz7KCot2t
	yieCqyzH+iH0vMijZm7ym6FP6CQii+Y0vJ0Ex7WxWAkWWQWf1BWnPKe+2UMwy/wUxPzEt4lJjWbSB
	NGKtK7QyrkA15KHbK+6VS7B+pD8lCb3cWAUPD94UlBpu6T4rqnF4YeRc3ffM/t+JLLBxHf968On6O
	arQ6f12UUz5T+HbJZpRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6DL4-0000Z3-2L; Mon, 24 Feb 2020 12:59:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6DKt-0000Yk-Mp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582549185; bh=9fyMxLMlwNi2Pk+BMp46DoE3AKNIuGLa/wjI2H1/1TI=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=ReGabWjx50JtBWZQvXOEPZalcv6O4nOrPEOA0yDYfRykQcuZ3agnsQV5wgtsd6W4n
 yr1RWff/zDZU/rJ9AOp3C5rmlya4/6RRiVFTVr0OB/lw8G8mIBPKbgQXFCBpoiysjw
 yzyyjqY5Fxsqg1cDwZhOnyUI+uM9SHFXIx4UYacg=
Date: Mon, 24 Feb 2020 13:59:45 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/3] arm64: dts: sun50i-a64: Add i2c2 pins
Message-ID: <20200224125945.dyl7reaqqiqds4ee@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime@cerno.tech>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe@baylibre.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>, Luca Weiss <luca@z3ntu.xyz>,
 Bhushan Shah <bshah@kde.org>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200223172916.843379-1-megous@megous.com>
 <20200223172916.843379-2-megous@megous.com>
 <20200224110100.acwln7zv3j5y67b2@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224110100.acwln7zv3j5y67b2@gilmour.lan>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_045947_916205_CE0F80F4 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 12:01:00PM +0100, Maxime Ripard wrote:
> On Sun, Feb 23, 2020 at 06:29:14PM +0100, Ondrej Jirman wrote:
> > PinePhone needs I2C2 pins description. Add it.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > index 862b47dc9dc90..0fdf5f400d743 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> > @@ -671,6 +671,11 @@ i2c1_pins: i2c1-pins {
> >  				function = "i2c1";
> >  			};
> >
> > +			i2c2_pins: i2c2-pins {
> > +				pins = "PE14", "PE15";
> > +				function = "i2c2";
> > +			};
> > +
> 
> Setting it as the default muxing for i2c2 would be great

Right, I checked the datasheet and it looks like this is the only pins where
i2c2 can be muxed to.

I will change it.

regards,
	o.

> Maxime



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
