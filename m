Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC856E8662
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:14:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRyHegeCOdzCIJxwea/UHXHz/4LPUOIXqY5FsIwL/Kk=; b=jNZ8fwoNeZXCj0
	kXwQ71zCNgS5yuxt6lzUGInfT6aXEXIHojKZT9coifYylGT1Khu4cOWRmN4DOoN7lAYOEzoRGkc8c
	n2IEI736FyPM0eUKv0O0DnQVvxOSqK+yB49A0zHG7YT6e3F0Fq1TBBodc/TEkaisZjBQhWY/mtz8l
	HLwsmIocr5SgdkfbfwUArZKvaz0mukKCU7rM7M3peoa6S3w0WnzDY3JmdUTHdd9gq83Fz+GIrw2q/
	CF28Fv6lvXGldM6c9s30puLJu1W4lFZbaiqbSS+iaw9Agcl6/Wyr9oh5OTIQsnGL6wEzEkR+GJ92Y
	KCINcL3h9pXU88TBHXUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPRl-0008Uk-9o; Tue, 29 Oct 2019 11:13:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPRb-0008Sd-7i
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:13:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572347620; bh=Obh7tvfkovm1tGf8wM3sGTB+Ja4afeHSPQtadzplAcc=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=RYCBY6vNV4YeeENeH3RNTeWeZG3kO3f0QWxALt4GLNgqTCg0brQtQhmuBq9x/Y49n
 fpvK97qY0FSViYwMAY/jfp39tdfeEsIEd14Mo5FallMrTTMm9iLTviBLEwaIE+1V4r
 n582CF6f19v/OQIz5a+UGsXA3vIgefQhMA2yzP9s=
Date: Tue, 29 Oct 2019 12:13:39 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 3/3] arm: dts: sun8i: a83t: a711: Add touchscreen node
Message-ID: <20191029111339.7okiyig3tbehn5kj@core.my.home>
Mail-Followup-To: Marco Felsch <m.felsch@pengutronix.de>,
 linux-sunxi@googlegroups.com,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@bootlin.com>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-4-megous@megous.com>
 <20191029090801.zls2qns7rxcvmxor@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029090801.zls2qns7rxcvmxor@pengutronix.de>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041347_447294_A24FBEA4 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Marco,

On Tue, Oct 29, 2019 at 10:08:01AM +0100, Marco Felsch wrote:
> Hi,
> =

> On 19-10-29 01:58, Ondrej Jirman wrote:
> > From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> > =

> > Enable a FocalTech EDT-FT5x06 Polytouch touchscreen.
> > =

> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> > ---
> >  arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > =

> > diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/=
dts/sun8i-a83t-tbs-a711.dts
> > index 568b90ece342..19f520252dc5 100644
> > --- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > +++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
> > @@ -164,6 +164,22 @@
> >  	status =3D "okay";
> >  };
> >  =

> > +&i2c0 {
> > +	clock-frequency =3D <400000>;
> > +	status =3D "okay";
> > +
> > +	touchscreen@38 {
> > +		compatible =3D "edt,edt-ft5x06";
> > +		reg =3D <0x38>;
> > +		interrupt-parent =3D <&r_pio>;
> > +		interrupts =3D <0 7 IRQ_TYPE_EDGE_FALLING>; /* PL7 */
> > +		reset-gpios =3D <&pio 3 5 GPIO_ACTIVE_LOW>; /* PD5 */
> > +		vcc-supply =3D <&reg_ldo_io0>;
> > +		touchscreen-size-x =3D <1024>;
> > +		touchscreen-size-y =3D <600>;
> =

> Do you want this touchscreen as wakeup-src? If so please add the
> property here. I've send patches converting the driver from the default
> behaviour: https://patchwork.kernel.org/cover/11149039/ and all agreed
> to break backward compatibility.

Not at this moment, thank you.

regards,
	o.

> Regards,
>   Marco
> =

> > +	};
> > +};
> > +
> >  &i2c1 {
> >  	clock-frequency =3D <400000>;
> >  	status =3D "okay";
> > -- =

> > 2.23.0
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
