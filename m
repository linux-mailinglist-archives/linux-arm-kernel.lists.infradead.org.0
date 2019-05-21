Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0429A2492A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 09:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VbX0zzxU5VUtMHbKCX27RAlFDNXuMhocD/+Qb3ApL2E=; b=QgzQkmfjckEiRS4DqPkNU/kMp
	qn2c1VRs5Gvrjn65bYqY9fy5SNcCszhvKxUBwPfNcRg5A6vWPaMJpvCoqLmPKdwhfXG6MsNMAf4xw
	nK0K2oKsI9mmk1oxy0vzr8QB5x2EO7h4I2WTVAz5lUPI4eOn8FgtEHvI5r6LtaeUAuV5ax1/0E7ie
	tCmbGJkYGJS4qVShwIJwHxjR8rkyWiIxNgmokWt0swwN/cY6+T7h6+6DQ7eXQ/PrVJLDIBYBnoQpA
	3CFHx1uiuKYcC5slDjPkvPhh5/SXi7JoyqikRg4S/hTbeTO83/1HP86DrqNV9Rg4tjZ0PyJlD1wV3
	tPWyNAgcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzPB-0003Fb-Bw; Tue, 21 May 2019 07:41:49 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzP2-0003Ee-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:41:42 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 329F5240014;
 Tue, 21 May 2019 07:41:22 +0000 (UTC)
Date: Tue, 21 May 2019 09:41:22 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190521074122.syyctwvfsorl45dv@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
 <20190516150252.hf4u3bloo37chy6q@flea>
 <CAEExFWu-T2mGQ9Teo7TQOcJsEzXi_dB=S8CFv7MiwHyu5z4-ow@mail.gmail.com>
 <20190517073151.mz6hcmzubk7iqfre@flea>
 <CAEExFWtban8Fjw6aZ5gdeC2GNk1vdqFoaJB_o-JtYZ_z70AJcQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWtban8Fjw6aZ5gdeC2GNk1vdqFoaJB_o-JtYZ_z70AJcQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_004140_805342_F65BE95A 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, bjorn.andersson@linaro.org, marc.w.gonzalez@free.fr,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, paulmck@linux.ibm.com,
 stefan.wahren@i2se.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Gross <andy.gross@linaro.org>, rui.zhang@intel.com,
 devicetree@vger.kernel.org, Linux PM <linux-pm@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, olof@lixom.net, robh+dt@kernel.org,
 Jonathan.Cameron@huawei.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 enric.balletbo@collabora.com, David Miller <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============6995607121836603688=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6995607121836603688==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oyv7cdm2vd7as2px"
Content-Disposition: inline


--oyv7cdm2vd7as2px
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, May 18, 2019 at 01:19:54AM +0800, Frank Lee wrote:
> On Fri, May 17, 2019 at 3:32 PM Maxime Ripard <maxime.ripard@bootlin.com>=
 wrote:
> >
> > On Fri, May 17, 2019 at 02:10:47AM +0800, Frank Lee wrote:
> > > > On Sun, May 12, 2019 at 11:41:28PM +0200, Ond=C5=99ej Jirman wrote:
> > > > > > > +static int tsens_get_temp(void *data, int *temp)
> > > > > > > +{
> > > > > > > + struct tsensor *s =3D data;
> > > > > > > + struct tsens_device *tmdev =3D s->tmdev;
> > > > > > > + int val;
> > > > > > > +
> > > > > > > + regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > > > > > > +             0x4 * s->id, &val);
> > > > > > > +
> > > > > > > + if (unlikely(val =3D=3D 0))
> > > > > > > +         return -EBUSY;
> > > > > >
> > > > > > I'm not sure why a val equals to 0 would be associated with EBU=
SY?
> > > > >
> > > > > Thermal zone driver can (will) call get_temp before we got the
> > > > > first interrupt and the thermal data. In that case val will be 0.
> > > > >
> > > > > Resulting in:
> > > > >
> > > > >  (val + offset) * scale =3D (-2794) * -67 =3D 187198
> > > > >
> > > > > 187=C2=B0C and immediate shutdown during boot - based on cirtical
> > > > > temperature being reached.
> > > > >
> > > > > Busy here means, get_temp does not yet have data. Thermal zone
> > > > > driver just reports any error to dmesg output.
> > > >
> > > > Ah, that makes sense.
> > > >
> > > > I guess if we're switching to an interrupt-based driver, then we can
> > > > just use a waitqueue, or is get_temp supposed to be atomic?
> > >
> > > I think get_temp should not be bloacked.
> >
> > Why not?
>
> Maybe, I am wrong. I also want to know if we should do this.

I guess it really all depends on whether you can sleep or not in
get_temps. If you can, then you should wait for the value to be
converted and the THS raising an interrupt.

If you can't, then we should ask what the thermal frameworks expects
in such a case.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--oyv7cdm2vd7as2px
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOOrogAKCRDj7w1vZxhR
xULTAQC1mWNEVwrK+oid9JOzl0rrU7ybLUMo5gBPlvdd1iIu+QEAzEe9pVgCRCN6
Z8AqbAjBGsyR2h/P/5jg1jYC4d/GBQg=
=MglJ
-----END PGP SIGNATURE-----

--oyv7cdm2vd7as2px--


--===============6995607121836603688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6995607121836603688==--

