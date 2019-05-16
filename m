Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4208720A97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EuDAXcIv9hxnjtSrTWmo9S+WnQw5t/oilKm97IOB1Wk=; b=DOuv3AYJRGprBKHkW6QxDLsnI
	PNBcQIYR0DFqh/dsVf0xYlmp02rdpE4BZtc7pYmEy/+tdZsUgdrhP4CffHYU4ga+qZnNvTfbu0I/W
	rgztMfqFjXV4M1lxij21753oe1hFhp4h7eIhCnH0s7dV4Rg5tIjt2keuJYhpWhfoy6G1/rQ079hvk
	XfWL08asFDrRSgRZuk831ptPcL75V+S9aqABSaQvQSgPPq+U6bsODd2cqq5aIrhrbbFXrP0b2+GIM
	wmygyd0Uk6aSLCQKbHyuobBVISY6K82rGChR5Mk74wcmr05qhr3wdqZRJPXSmGrAKTlktYD38GgWd
	j55ZwoeZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHuj-0001aJ-Of; Thu, 16 May 2019 15:03:21 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHuc-0001ZD-59
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:03:15 +0000
Received: from localhost (unknown [80.215.79.199])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 1129E200018;
 Thu, 16 May 2019 15:02:52 +0000 (UTC)
Date: Thu, 16 May 2019 17:02:52 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 daniel.lezcano@linaro.org, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org,
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, linux-pm@vger.kernel.org, wens@csie.org,
 jagan@amarulasolutions.com, andy.gross@linaro.org,
 rui.zhang@intel.com, devicetree@vger.kernel.org,
 marc.w.gonzalez@free.fr, edubezval@gmail.com,
 enric.balletbo@collabora.com, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 olof@lixom.net, davem@davemloft.net
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190516150252.hf4u3bloo37chy6q@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190512214128.qjyys3vfpwdiacib@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_080314_350186_E6FD1A0D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============3394848345004997554=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3394848345004997554==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7vj27y3kfhi2ktlo"
Content-Disposition: inline


--7vj27y3kfhi2ktlo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, May 12, 2019 at 11:41:28PM +0200, Ond=C5=99ej Jirman wrote:
> > > +static int tsens_get_temp(void *data, int *temp)
> > > +{
> > > +	struct tsensor *s =3D data;
> > > +	struct tsens_device *tmdev =3D s->tmdev;
> > > +	int val;
> > > +
> > > +	regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > > +		    0x4 * s->id, &val);
> > > +
> > > +	if (unlikely(val =3D=3D 0))
> > > +		return -EBUSY;
> >
> > I'm not sure why a val equals to 0 would be associated with EBUSY?
>
> Thermal zone driver can (will) call get_temp before we got the
> first interrupt and the thermal data. In that case val will be 0.
>
> Resulting in:
>
>  (val + offset) * scale =3D (-2794) * -67 =3D 187198
>
> 187=C2=B0C and immediate shutdown during boot - based on cirtical
> temperature being reached.
>
> Busy here means, get_temp does not yet have data. Thermal zone
> driver just reports any error to dmesg output.

Ah, that makes sense.

I guess if we're switching to an interrupt-based driver, then we can
just use a waitqueue, or is get_temp supposed to be atomic?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--7vj27y3kfhi2ktlo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN17nAAKCRDj7w1vZxhR
xZVgAQDEhhE/FQspXxx58VLtzI/e0Kz9gZa92QnGGjDbVWxBTwEA1iAzA+XGbDtR
1TM7/Hc1lwDV+qLHJYnbwcFfq+6XBAg=
=qzgC
-----END PGP SIGNATURE-----

--7vj27y3kfhi2ktlo--


--===============3394848345004997554==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3394848345004997554==--

