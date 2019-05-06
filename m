Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF631498C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wDqmXKDO/BHRcclfXlqMvNVz4IXqXzxm2wVAiG4Bw9Y=; b=QTd6sz31hWDrPJ1i22sZ31N5y
	sdiyZTGQJKJV9sZv36sYjwV3THxWY7Ao+hjKBUr8DFDHbU3rEwW3YxySBAOz0Jw5UJvbnEptORlyh
	ouxn0DidVEdZi6JyWFG5q2ojY4ztrQTaPRuxVOePtBf4TqI//WI/nqQNS/oKLfQvj+tBYqjtJNisj
	P2lmEv5AGFZFpJ3C95BtLN7KKaf1CQOwvCL5XFuWwBJRmGesP5iRORIMXmBqFX7TG6Jc8h9ntReWa
	zhNCLRids2+RggyjICyZlhkoRhKbxSodT5gCRZOT2sySn9KvvVKO1+CQID1AiiL30MPh82uopvcCK
	S1U/Px5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcjM-0003wJ-04; Mon, 06 May 2019 12:28:28 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcjE-0003vO-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:28:22 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 89BA960018;
 Mon,  6 May 2019 12:28:08 +0000 (UTC)
Date: Mon, 6 May 2019 14:28:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH 1/7] iio: adc: sun4i-gpadc: rework for support multiple
 thermal sensor
Message-ID: <20190506122807.4u323iys74jddcet@flea>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
 <20190503072813.2719-2-tiny.windzz@gmail.com>
 <20190505162215.3594f77d@archlinux>
MIME-Version: 1.0
In-Reply-To: <20190505162215.3594f77d@archlinux>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_052820_794771_5EA5AAD8 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1056198829128023260=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1056198829128023260==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e762al6xbx7iiess"
Content-Disposition: inline


--e762al6xbx7iiess
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, May 05, 2019 at 04:22:15PM +0100, Jonathan Cameron wrote:
> On Fri,  3 May 2019 03:28:07 -0400
> Yangtao Li <tiny.windzz@gmail.com> wrote:
>
> > For some SOCs, there are more than one thermal sensor, and there are
> > currently four sensors on the A80. So we need to do some work in order
> > to support multiple thermal sensors:
> >
> >   1) add sensor_count in gpadc_data.
> >   2) introduce sun4i_sensor_tzd in sun4i_gpadc_iio, to support multiple
> >      thermal_zone_device and distinguish between different sensors.
> >   3) modify read temperature and initialization function.
>
> This comment doesn't mention the devm change. If it had it would have
> raised immediate alarm bells.
>
> I'm also not keen on the web of pointers that this driver is steadily
> evolving.  I can't immediately see how to reduce that complexity however.

So I might be responsible for that, and looking back, this has been a
mistake.

This driver was initally put together to support a controller found in
older (A10 up to A31) Allwinner SoCs. This controller had an ADC
driver that could be operated as a touchscreen controller, and was
providing a CPU temperature sensor and a general purpose ADC.

However, we already had a driver for that controller in drivers/input
to report the CPU temperature, and the one in IIO was introduced to
support the general purpose ADC (and the CPU temperature). The long
term goal was to add the touchscreen feature as well eventually so
that we could remove the one in drivers/input. That didn't happen.

At the same time, the Allwinner hardware slowly evolved to remove the
touchscreen and ADC features, and only keep the CPU temperature
readout. It then evolved further on to support multiple temperatures
(for different clusters, the GPU, and so on).

So, today, we're in a situation where I was pushing everything into
that IIO drivers since there was similiraties between all the
generations, but the fact that we have to support so many odd cases
(DT bindings compatibility, controllers with and without ADC, etc)
that it becomes a real mess.

And that mess isn't really used by anybody, since we want to have the
touchscreen.

There's only one SoC that is supported only by that driver, which is
the A33 that only had a CPU temperature readout, and is still pretty
similar to the latest SoC from Allwinner (that is supported by this
series).

I guess, for everyone's sanity and in order to not stall this further,
it would just be better to create an hwmon driver for the A33 (and
onwards, including the H6) for the SoC that just have the temperature
readout feature. And for the older SoC, we just keep the older driver
under input/. Once the A33 is supported, we'll remove the driver in
IIO (and the related bits in drivers/mfd).

Armbian already has a driver for that they never upstreamed iirc, so
it might be a good starting point, and we would add the support for
the H6. How does that sound?

Sorry for wasting everybody's time on this.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--e762al6xbx7iiess
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNAoUgAKCRDj7w1vZxhR
xTLvAQDqYglT93yaQujSGHibjsOVHEjlG/IsBmh8AK4LTLRYaAEAsCfJVF5ZRnpC
1HOLCDVK5qAjlTxiKXg4tjrrxbWVEgU=
=Rbya
-----END PGP SIGNATURE-----

--e762al6xbx7iiess--


--===============1056198829128023260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1056198829128023260==--

