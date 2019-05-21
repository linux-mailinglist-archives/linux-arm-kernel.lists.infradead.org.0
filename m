Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71AC249BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hUmYExFrYLg1OlmDZ4peLFNgZH0I0BDXRpAnBtQJrWk=; b=ptNBFbRF7Akv9+01ew/vANvgK
	q5BYD7zJfcZnw2lMDI/AHSjCP3AdtoQoaZ2ldL6FNdAsF4n0u9G655fb6jNarnv8NTYoBhV6JCW6C
	Ik6kgMOb/QZqWHkAAixopzYSthk8lRG6DREQpcKLr6ZukOJNhAOKIlzfA3WJhzgQ0PSAc2GarS85/
	QRczAs5Z3Dw564PNLrLXwH3GJ0llAp9iUM8Re6lFYPBytnqV9gTsO9vyvZ+5lby3N2mqOTIArRz9A
	wdloNmZKG83zDkpbczMC19MafQ3JxasrR+8Xt4rDtTKCerBsjKoc3aR76IXDJ7pSZ92d2uC7IlHRN
	6AQlaFc5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzmt-0000HW-UB; Tue, 21 May 2019 08:06:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzmn-0000HP-Dr
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 May 2019 08:06:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cFmBq/0dPx+zBirBdkZYRdxdjcfm8B+NX9llgwq7FI8=; b=wyyH5MFH8inKqAM7a4NgtJCLH
 0cWHZNhN5ub8XCCJy7OHheTyRRl1ERgY9QuRqHXMCtQ1i+B1Tg11GKmIGC6ao82dvAOP1AcSnHq3+
 aQkEC+/lVi8drShGiR7/aoDvrVf079wpp/2I5h6ZSf6fLqcrdWvFZdTrk50xgsit87IKlBPZNd3uZ
 9biDRe+nTRoaln5nojzbEsN5NydtMgKzBRLanN8Vf9weHrPAwEt/9VM00wESLFymEAtE1YtXk7Pze
 jUNPk7pyo+lY9c7YKdxkf5TFgO0m0xTF57YyH3iFw40axoB+BK6WMEOKcvhROMCY6aoNzhRwCWi7A
 zdX/x1zXw==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzmk-0008Is-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:06:11 +0000
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 5170D10002B;
 Tue, 21 May 2019 08:05:16 +0000 (UTC)
Date: Tue, 21 May 2019 10:05:15 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521080515.qlni2lnmcwh7itl7@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
 <20190517073634.izdmba3yqvxviyg3@flea>
 <CAEExFWtNhTqLR+v3o6vn0Y4L65i_XsrEeiex6DNLEPEkhseCjA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWtNhTqLR+v3o6vn0Y4L65i_XsrEeiex6DNLEPEkhseCjA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_040610_266043_4DFAC574 
X-CRM114-Status: GOOD (  36.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Linux PM <linux-pm@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>, enric.balletbo@collabora.com,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, olof@lixom.net,
 David Miller <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============7787923244601076388=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7787923244601076388==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wynwzlv2suaup6a4"
Content-Disposition: inline


--wynwzlv2suaup6a4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 18, 2019 at 01:27:39AM +0800, Frank Lee wrote:
> On Fri, May 17, 2019 at 3:36 PM Maxime Ripard <maxime.ripard@bootlin.com>=
 wrote:
> >
> > On Fri, May 17, 2019 at 01:51:56AM +0800, Frank Lee wrote:
> > > > > +struct sun50i_thermal_chip {
> > > > > +     int     sensor_num;
> > > > > +     int     offset;
> > > > > +     int     scale;
> > > > > +     int     ft_deviation;
> > > > > +     int     temp_calib_base;
> > > > > +     int     temp_data_base;
> > > > > +     int     (*enable)(struct tsens_device *tmdev);
> > > > > +     int     (*disable)(struct tsens_device *tmdev);
> > > > > +};
> > > >
> > > > I'm not super fond of having a lot of quirks that are not needed. If
> > > > we ever need those quirks when adding support for a new SoC, then
> > > > yeah, we should totally have some, but only when and if it's needed.
> > > >
> > > > Otherwise, the driver is more complicated for no particular reason.
> > >
> > > This is unavoidable because of the difference in soc.
> >
> > I know, but this isn't my point.
> >
> > My point is that at this time of the driver development, we don't know
> > what is going to be needed to support all of those SoCs.
> >
> > Some of the parameters you added might not be needed, some parameters
> > might be missing, we don't know. So let's keep it simple for now.
> >
> > > > > +static int tsens_probe(struct platform_device *pdev)
> > > > > +{
> > > > > +     struct tsens_device *tmdev;
> > > > > +     struct device *dev =3D &pdev->dev;
> > > > > +     int ret;
> > > > > +
> > > > > +     tmdev =3D devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > > > > +     if (!tmdev)
> > > > > +             return -ENOMEM;
> > > > > +
> > > > > +     tmdev->dev =3D dev;
> > > > > +     tmdev->chip =3D of_device_get_match_data(&pdev->dev);
> > > > > +     if (!tmdev->chip)
> > > > > +             return -EINVAL;
> > > > > +
> > > > > +     ret =3D tsens_init(tmdev);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > > +
> > > > > +     ret =3D tsens_register(tmdev);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > > +
> > > > > +     ret =3D tmdev->chip->enable(tmdev);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > >
> > > > > +     platform_set_drvdata(pdev, tmdev);
> > > >
> > > > Your registration should be the very last thing you do. Otherwise, =
you
> > > > have a small window where the get_temp callback can be called, but =
the
> > > > driver will not be functional yet.
> > >
> > > No. Anyway, ths data qcquisition is ms level.
> >
> > That's kind of irrelevant. There's nothing preventing get_temp to be
> > called right away.
>
> As Ond=C5=99ej said,
>
> Registration after enabling will lead to call tz update on non-registered=
 tz
> from an interrupt handler.

I'm probably missing something but you're not using the interrupts, so
how could an interrupt handler call it?

Also, other drivers seem to be doing that just fine (mtk_thermal for
example), so surely there's a way?

> > > > > +     ret =3D tsens_calibrate(tmdev);
> > > > > +     if (ret)
> > > > > +             return ret;
> > > > > +
> > > > > +     /*
> > > > > +      * clkin =3D 24MHz
> > > > > +      * T acquire =3D clkin / (SUN50I_THS_CTRL0_T_ACQ + 1)
> > > > > +      *           =3D 20us
> > > > > +      */
> > > > > +     regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> > > > > +                  SUN50I_THS_CTRL0_T_ACQ(479));
> > > > > +     /* average over 4 samples */
> > > > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> > > > > +                  SUN50I_THS_FILTER_EN |
> > > > > +                  SUN50I_THS_FILTER_TYPE(1));
> > > > > +     /* period =3D (SUN50I_H6_THS_PC_TEMP_PERIOD + 1) * 4096 / c=
lkin; ~10ms */
> > > > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> > > > > +                  SUN50I_H6_THS_PC_TEMP_PERIOD(58));
> > > > > +     /* enable sensor */
> > > > > +     val =3D GENMASK(tmdev->chip->sensor_num - 1, 0);
> > > > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> > > > > +
> > > > > +     return 0;
> > > > > +
> > > > > +assert_reset:
> > > > > +     reset_control_assert(tmdev->reset);
> > > > > +
> > > > > +     return ret;
> > > >
> > > > Can't we do that with runtime_pm?
> > >
> > > Saving energy doesn't make much sense compared to system security.
> >
> > I'm not sure what you mean by security.
>
> Protect system hardware from damage.

The point of runtime_pm is to keep the device on as long as it is
used, so it wouldn't change anything there.

I mean, you can even enable it in the probe if you want, my point is
that the hooks that you have are exact equivalents to the one provided
by runtime_pm already, so there's no need to define them in the first
place.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wynwzlv2suaup6a4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOOxOwAKCRDj7w1vZxhR
xRMtAP91ilrEN2/Up1pDVPYLzGtsG5/5TylmGwA16kfxTf866gEA4vv7/OZHgBoU
X5DcfJ4w/u+4LrKYfnWPnhbt0ITqrAY=
=2LZ/
-----END PGP SIGNATURE-----

--wynwzlv2suaup6a4--


--===============7787923244601076388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7787923244601076388==--

