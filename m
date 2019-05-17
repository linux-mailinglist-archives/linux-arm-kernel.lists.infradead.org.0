Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CF521491
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cqk8XQUsiVY0/VyKb3wlOv5NL8lup/BgQ3jFqMI5S5U=; b=mN7Vl2dyLawD1Rfe3TUHron5k
	GB0v6D7c+XHOCZxEDZ0GzzjWBmoAb4zSl5vwfzvagILegdpvEHrpJUKHPUIbgnpStHq/ORsV3M32H
	NVUnXdsEzeTlhDbrVwn26r/6jF0IwtSmwQ/6URmxUPF7Wxd2CRInaW2dTB2QfhCBwAjF0J9k6Wle1
	u/ygaaj37/MmFPrePUa4uGiRbfxIwbCZ7LQPWBlhjiyuHXbPzg/DAOMAxmBQeiCOI4hi2nMG3l7r/
	7Zh5Y1ZqDA8UTRoincRrHfsZhK6kHsfFkl2J6DL00RrV3UKv8Wzl2/1xZ4X0g5dVIEwrlBrQIiuW9
	+TfliVPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXQQ-00036m-W4; Fri, 17 May 2019 07:37:07 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXQH-000360-8o
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:36:59 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 93CA424000E;
 Fri, 17 May 2019 07:36:35 +0000 (UTC)
Date: Fri, 17 May 2019 09:36:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190517073634.izdmba3yqvxviyg3@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWvcMbiCJ4HD0UAtv1P6AuBJ=oUdmhu886BNZhrRz483Ug@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_003657_843564_179E1D40 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4220071351958913098=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4220071351958913098==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="k3cws7k6b2j4fvaj"
Content-Disposition: inline


--k3cws7k6b2j4fvaj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 17, 2019 at 01:51:56AM +0800, Frank Lee wrote:
> > > +struct sun50i_thermal_chip {
> > > +     int     sensor_num;
> > > +     int     offset;
> > > +     int     scale;
> > > +     int     ft_deviation;
> > > +     int     temp_calib_base;
> > > +     int     temp_data_base;
> > > +     int     (*enable)(struct tsens_device *tmdev);
> > > +     int     (*disable)(struct tsens_device *tmdev);
> > > +};
> >
> > I'm not super fond of having a lot of quirks that are not needed. If
> > we ever need those quirks when adding support for a new SoC, then
> > yeah, we should totally have some, but only when and if it's needed.
> >
> > Otherwise, the driver is more complicated for no particular reason.
>
> This is unavoidable because of the difference in soc.

I know, but this isn't my point.

My point is that at this time of the driver development, we don't know
what is going to be needed to support all of those SoCs.

Some of the parameters you added might not be needed, some parameters
might be missing, we don't know. So let's keep it simple for now.

> > > +static int tsens_probe(struct platform_device *pdev)
> > > +{
> > > +     struct tsens_device *tmdev;
> > > +     struct device *dev = &pdev->dev;
> > > +     int ret;
> > > +
> > > +     tmdev = devm_kzalloc(dev, sizeof(*tmdev), GFP_KERNEL);
> > > +     if (!tmdev)
> > > +             return -ENOMEM;
> > > +
> > > +     tmdev->dev = dev;
> > > +     tmdev->chip = of_device_get_match_data(&pdev->dev);
> > > +     if (!tmdev->chip)
> > > +             return -EINVAL;
> > > +
> > > +     ret = tsens_init(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret = tsens_register(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     ret = tmdev->chip->enable(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > >
> > > +     platform_set_drvdata(pdev, tmdev);
> >
> > Your registration should be the very last thing you do. Otherwise, you
> > have a small window where the get_temp callback can be called, but the
> > driver will not be functional yet.
>
> No. Anyway, ths data qcquisition is ms level.

That's kind of irrelevant. There's nothing preventing get_temp to be
called right away.

> > > +     ret = tsens_calibrate(tmdev);
> > > +     if (ret)
> > > +             return ret;
> > > +
> > > +     /*
> > > +      * clkin = 24MHz
> > > +      * T acquire = clkin / (SUN50I_THS_CTRL0_T_ACQ + 1)
> > > +      *           = 20us
> > > +      */
> > > +     regmap_write(tmdev->regmap, SUN50I_THS_CTRL0,
> > > +                  SUN50I_THS_CTRL0_T_ACQ(479));
> > > +     /* average over 4 samples */
> > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_MFC,
> > > +                  SUN50I_THS_FILTER_EN |
> > > +                  SUN50I_THS_FILTER_TYPE(1));
> > > +     /* period = (SUN50I_H6_THS_PC_TEMP_PERIOD + 1) * 4096 / clkin; ~10ms */
> > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_PC,
> > > +                  SUN50I_H6_THS_PC_TEMP_PERIOD(58));
> > > +     /* enable sensor */
> > > +     val = GENMASK(tmdev->chip->sensor_num - 1, 0);
> > > +     regmap_write(tmdev->regmap, SUN50I_H6_THS_ENABLE, val);
> > > +
> > > +     return 0;
> > > +
> > > +assert_reset:
> > > +     reset_control_assert(tmdev->reset);
> > > +
> > > +     return ret;
> >
> > Can't we do that with runtime_pm?
>
> Saving energy doesn't make much sense compared to system security.

I'm not sure what you mean by security.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--k3cws7k6b2j4fvaj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN5kggAKCRDj7w1vZxhR
xSjEAP0ROb9O13AokItNEnWe0Lv3GDFB7l31wQEb3cxsP3Vh7QEAr1e8+X/0WwOo
AWNOgr6T4osFIe+fzrg7yYJbVXsPogc=
=AWAL
-----END PGP SIGNATURE-----

--k3cws7k6b2j4fvaj--


--===============4220071351958913098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4220071351958913098==--

