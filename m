Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B3A251F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6bfXF5fASOEMzxoZWlEss71ko2RLeNXF+2E9qeO7fmw=; b=TBeVt93QUJh9SaPfFLNB+XYNa
	J85r2Ip8qArBLKatDGPc8JA+1v2+gGr++OTk0NVSjwU3fwyDjhYZw2JZzoxs23vqXrl/Ai4s0T7Ci
	M5uJlO11Y8Bg6Sl1fPIxotCE52YMv5a3T071TUHbRJGtBP3LeEKM086Vj8K6yerwaM+dUcZ0acUO/
	g8d2lUNyI/3yJ1p0zbOb39iSMlN8LtYrqyoyRMN5UP61qJBff70irnHWef+tgseHuKljH8wOEbP2y
	KazY9pCyGkNZ61R3EpVk6wusMcbQpyzeQ4hMZaCtjhMVpn5oCdf8LRZA12sykEehalR4IZqM4U68g
	qloGkn/Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5kF-00076F-0A; Tue, 21 May 2019 14:27:59 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5k6-00075e-SF
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:27:52 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id A52961C000A;
 Tue, 21 May 2019 14:27:34 +0000 (UTC)
Date: Tue, 21 May 2019 16:27:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 paulmck@linux.ibm.com, stefan.wahren@i2se.com,
 Linux PM <linux-pm@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, marc.w.gonzalez@free.fr,
 Eduardo Valentin <edubezval@gmail.com>,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 olof@lixom.net, David Miller <davem@davemloft.net>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521142734.fvhdomqhuntpop52@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
 <20190517073634.izdmba3yqvxviyg3@flea>
 <CAEExFWtNhTqLR+v3o6vn0Y4L65i_XsrEeiex6DNLEPEkhseCjA@mail.gmail.com>
 <20190521080515.qlni2lnmcwh7itl7@flea>
 <20190521102721.5hgks6guzlhubj6d@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190521102721.5hgks6guzlhubj6d@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_072751_214496_6D3719E2 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: multipart/mixed; boundary="===============5097333777637018200=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5097333777637018200==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mvmiwnrklxk7dcbu"
Content-Disposition: inline


--mvmiwnrklxk7dcbu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2019 at 12:27:21PM +0200, Ond=C5=99ej Jirman wrote:
> On Tue, May 21, 2019 at 10:05:15AM +0200, Maxime Ripard wrote:
> > On Sat, May 18, 2019 at 01:27:39AM +0800, Frank Lee wrote:
> > > On Fri, May 17, 2019 at 3:36 PM Maxime Ripard <maxime.ripard@bootlin.=
com> wrote:
> > > >
> > > > On Fri, May 17, 2019 at 01:51:56AM +0800, Frank Lee wrote:
> > > > > > > +struct sun50i_thermal_chip {
> > > > > > > +     int     sensor_num;
> > > > > > > +     int     offset;
> > > > > > > +     int     scale;
> > > > > > > +     int     ft_deviation;
> > > > > > > +     int     temp_calib_base;
> > > > > > > +     int     temp_data_base;
> > > > > > > +     int     (*enable)(struct tsens_device *tmdev);
> > > > > > > +     int     (*disable)(struct tsens_device *tmdev);
> > > > > > > +};
> > > > > >
> > > > > > I'm not super fond of having a lot of quirks that are not neede=
d. If
> > > > > > we ever need those quirks when adding support for a new SoC, th=
en
> > > > > > yeah, we should totally have some, but only when and if it's ne=
eded.
> > > > > >
> > > > > > Otherwise, the driver is more complicated for no particular rea=
son.
> > > > >
> > > > > This is unavoidable because of the difference in soc.
> > > >
> > > > I know, but this isn't my point.
> > > >
> > > > My point is that at this time of the driver development, we don't k=
now
> > > > what is going to be needed to support all of those SoCs.
> > > >
> > > > Some of the parameters you added might not be needed, some paramete=
rs
> > > > might be missing, we don't know. So let's keep it simple for now.
> > > >
> > > > > > > +static int tsens_probe(struct platform_device *pdev)
> > > > > > > +{
> > > > > > > +     struct tsens_device *tmdev;
> > > > > > > +     struct device *dev =3D &pdev->dev;
> > > > > > > +     int ret;
> > > > > > > +
> > > > > > > +     tmdev =3D devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > > > > > > +     if (!tmdev)
> > > > > > > +             return -ENOMEM;
> > > > > > > +
> > > > > > > +     tmdev->dev =3D dev;
> > > > > > > +     tmdev->chip =3D of_device_get_match_data(&pdev->dev);
> > > > > > > +     if (!tmdev->chip)
> > > > > > > +             return -EINVAL;
> > > > > > > +
> > > > > > > +     ret =3D tsens_init(tmdev);
> > > > > > > +     if (ret)
> > > > > > > +             return ret;
> > > > > > > +
> > > > > > > +     ret =3D tsens_register(tmdev);
> > > > > > > +     if (ret)
> > > > > > > +             return ret;
> > > > > > > +
> > > > > > > +     ret =3D tmdev->chip->enable(tmdev);
> > > > > > > +     if (ret)
> > > > > > > +             return ret;
> > > > > > >
> > > > > > > +     platform_set_drvdata(pdev, tmdev);
> > > > > >
> > > > > > Your registration should be the very last thing you do. Otherwi=
se, you
> > > > > > have a small window where the get_temp callback can be called, =
but the
> > > > > > driver will not be functional yet.
> > > > >
> > > > > No. Anyway, ths data qcquisition is ms level.
> > > >
> > > > That's kind of irrelevant. There's nothing preventing get_temp to be
> > > > called right away.
> > >
> > > As Ond=C5=99ej said,
> > >
> > > Registration after enabling will lead to call tz update on non-regist=
ered tz
> > > from an interrupt handler.
> >
> > I'm probably missing something but you're not using the interrupts, so
> > how could an interrupt handler call it?
> >
> > Also, other drivers seem to be doing that just fine (mtk_thermal for
> > example), so surely there's a way?
>
> Last version is using the interrupts.
>
> Drivers do it in various ways. For example imx_thermal (and others like
> hisi_thermal) does it the suggested way. It enables interrupts after ther=
mal
> zone registration, so that IRQ handler doesn't get invoked before the tzd=
 is
> registered.

Enabling the interrupts after the registration makes sense, yes, but
filling the device private pointer with the private structure,
enabling the clocks, setting up the controller and so on can be done
before.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mvmiwnrklxk7dcbu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOQK1gAKCRDj7w1vZxhR
xaQIAQCkBPqHwCa6/NpbfkPd6mG52czynrHCcU7cjXcL596AWwEA3MeGcwawbKsZ
o97K9dmQ8waHGYenijOIsp37ffbo/Aw=
=G2Q2
-----END PGP SIGNATURE-----

--mvmiwnrklxk7dcbu--


--===============5097333777637018200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5097333777637018200==--

