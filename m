Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1D4231E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dqHFhWdvNi5LxBUMx8bgElZOlgpk3n191Y22IeFM1Vc=; b=kBaxIf2d6eqPl4P9ehUIRVnPO
	fOt6YcN9WJfP5oTUO4RuV/B4KBgy651l3+tvuWKvyLIX/J125nC19ns7IMj4nvXyP2h7eL58QtSi9
	7MvQtGM/80se5F7U8JFsuoSnxnF948I657589xjnO+btPs/TNlcVu18FsvY70xcsufldCSTZ/VA4/
	oeDL+VfHpg5RuJIxhylMpNR6cJjCZQzVUm6AGBss64eJfmRnYmNgLUEIAs5t6Srg8G0WdB6wmK32x
	3pDx7gi+J97LpV6Dc2ozLTsI3/xpFjEwbyLVB8DQL8KTzbWrRc9K8ysT4p/mORZmVO9+ODxLZQlXH
	SKZHknyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSg1V-0005M6-52; Mon, 20 May 2019 11:00:05 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSg1L-0005LU-4Q
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:59:57 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 561FC1C000A;
 Mon, 20 May 2019 10:59:32 +0000 (UTC)
Date: Mon, 20 May 2019 12:59:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, robh+dt@kernel.org,
 Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 catalin.marinas@arm.com, will.deacon@arm.com,
 David Miller <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan.Cameron@huawei.com,
 Nicolas Ferre <nicolas.ferre@microchip.com>, paulmck@linux.ibm.com,
 Andy Gross <andy.gross@linaro.org>, olof@lixom.net,
 bjorn.andersson@linaro.org, Jagan Teki <jagan@amarulasolutions.com>,
 marc.w.gonzalez@free.fr, stefan.wahren@i2se.com,
 enric.balletbo@collabora.com, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux PM <linux-pm@vger.kernel.org>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190520105931.5xa4j3hhxadtgxie@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512221612.ubmknvim4utnqpl4@core.my.home>
 <CAEExFWv5A5mhpV7afQT=AaYx2ko5QnfbM6HvfuTgT1Na=ssOcw@mail.gmail.com>
 <20190516182936.h6xdzp3gtg4ikave@core.my.home>
 <CAEExFWvDO3wJd6wp1hFudf3EGF0NixgKAwAd5-b1=VLF+7-jCw@mail.gmail.com>
 <20190519142239.eolisexp5mrdyafz@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190519142239.eolisexp5mrdyafz@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_035955_510354_A808733F 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3413912892818218467=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3413912892818218467==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cs6fqv7etllvtecf"
Content-Disposition: inline


--cs6fqv7etllvtecf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 19, 2019 at 04:22:39PM +0200, Ond=C5=99ej Jirman wrote:
> On Sat, May 18, 2019 at 12:34:57AM +0800, Frank Lee wrote:
> > HI,
> >
> > On Fri, May 17, 2019 at 2:29 AM Ond=C5=99ej Jirman <megous@megous.com> =
wrote:
> > >
> > > Hi Yangtao,
> > >
> > > thank you for work on this driver.
> > >
> > > On Fri, May 17, 2019 at 02:06:53AM +0800, Frank Lee wrote:
> > > > HI Ond=C5=99ej,
> > > >
> > > > On Mon, May 13, 2019 at 6:16 AM Ond=C5=99ej Jirman <megous@megous.c=
om> wrote:
> > > > > > +
> > > > > > +/* Temp Unit: millidegree Celsius */
> > > > > > +static int tsens_reg2temp(struct tsens_device *tmdev,
> > > > > > +                           int reg)
> > > > >
> > > > > Please name all functions so that they are more clearly identifia=
ble
> > > > > in stack traces as belonging to this driver. For example:
> > > > >
> > > > >   sun8i_ths_reg2temp
> > > > >
> > > > > The same applies for all tsens_* functions below. tsens_* is too
> > > > > generic.
> > > >
> > > > Done but no sun8i_ths_reg2temp.
> > > >
> > > > ths_reg2tem() should be a generic func.
> > > > I think it should be suitable for all platforms=EF=BC=8C so no plat=
form prefix.
> > >
> > > You've missed my point. The driver name is sun8i_thermal and if you g=
et
> > > and oops from the kernel you'll get a stack trace where there are jus=
t function
> > > names. If you use too generic function names, it will not be clear wh=
ich
> > > driver is oopsing.
> > >
> > >   - sun8i_ths_reg2temp will tell you much more clearly where to searc=
h than
> > >   - ths_reg2temp
> > >
> > > Of course you can always grep, but most thermal drivers are thermal s=
ensor (ths)
> > > drivers, and if multiple of them used this too-generic naming scheme =
you'd
> > > have hard time debugging.
> > >
> > > Look at other thermal drivers. They usually encode driver name in the=
 function
> > > names to help with identification (even if these are static driver-lo=
cal
> > > functions).
> > >
> >
> > Can we change to sunxi_ths_ prefix?
>
> It should probably match the driver name, but yes, that's better.

Not really. This driver will not support all the Allwinner devices, so
sunxi is seriously misleading.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--cs6fqv7etllvtecf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOKIjwAKCRDj7w1vZxhR
xTP8APwM6R/JGZlZh8LDRMjlyCgFBIRiGljCGv2QrzA5AEuMMQD+K7kvKFJY3y7e
kwh8XD4UChjl2L6sIApfpG0X2XN63Qc=
=BTfA
-----END PGP SIGNATURE-----

--cs6fqv7etllvtecf--


--===============3413912892818218467==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3413912892818218467==--

