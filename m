Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4981321467
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ub7+eq0g8ipj3x0EmZhbpljvBcQ0+6kROY/HaUvcTfo=; b=VotAtYocdq/OttPnTpf0r1ZUL
	BjUNIlAGxdCg9DNsInvahxTVPI9zuixM/5eCkHsJ4+sJNRdem0ZxW/RMQ9690EwLYXFhptP+9zfVU
	UEN4HWOw+itCyppeqhKW+OXrcnPBvSRlQ+x1ZP7r5neJkDWfHLf8sgk5YRSsi2LoDNZe9C6FA2PJv
	q1FTKur0VgCU/ew9IZNZ14vPo8K9w7MwfgmaDFzc88FXZCCIKXYfV96ORM4wESggxwoC8yuWX0geF
	B/QdlV3AovMRQ+6xBLWaJLCKfgM0PG1TtrrB7v/BiKSWCDe93MfEFUH46j9BMREhjrZoAtfmGQbOE
	rGR832euQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXMF-0000oG-4m; Fri, 17 May 2019 07:32:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXM9-0000no-5I
 for linux-arm-kernel@bombadil.infradead.org; Fri, 17 May 2019 07:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WA9Je5qHBQ57M+8e8gQClXiHlF1u7LL7msoAAP9qc8E=; b=J0wRT2IpmeYVQWLRl7eYfqpFJ
 XRRgNq5HzCBpmzI3y/FlBYGpQXyEwS4pCU1odttks9V043fp0EWsU05DVIbMvlFKkJxsE5UEsLojO
 8GCp3rWSkty7IpFF8lbOqPbEJoRrECuLbVrt6kSmdANgQjdB1ejs0QyL0t/GiC+wI9PzXjj6DIhJ5
 2Iy74XZd1rzgY4JnhVmdLgHBZ6Ck9dzh7MM2d0at/I7jjmH3Vf9XInwJ6B3SpB+UdU3j2QMaoXzi3
 DL4Mfj1GQEhOMFdTukEos0v/crjCLiBO6Wn3rU16LVtDEhWV/BAlUX17NWPFvWejg6migK6AL4Qjv
 qxEjuIELA==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXM5-0000io-Gi
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 07:32:39 +0000
X-Originating-IP: 80.215.154.25
Received: from localhost (unknown [80.215.154.25])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 347BA40009;
 Fri, 17 May 2019 07:31:52 +0000 (UTC)
Date: Fri, 17 May 2019 09:31:51 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Frank Lee <tiny.windzz@gmail.com>
Subject: Re: [PATCH 2/3] thermal: sun50i: add thermal driver for h6
Message-ID: <20190517073151.mz6hcmzubk7iqfre@flea>
References: <20190512082614.9045-1-tiny.windzz@gmail.com>
 <20190512082614.9045-3-tiny.windzz@gmail.com>
 <20190512133930.t5txssl7mou2gljt@flea>
 <20190512214128.qjyys3vfpwdiacib@core.my.home>
 <20190516150252.hf4u3bloo37chy6q@flea>
 <CAEExFWu-T2mGQ9Teo7TQOcJsEzXi_dB=S8CFv7MiwHyu5z4-ow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEExFWu-T2mGQ9Teo7TQOcJsEzXi_dB=S8CFv7MiwHyu5z4-ow@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_083237_569744_31B89AF2 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============6765139085906580092=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6765139085906580092==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lfvwzxrwqixjwfma"
Content-Disposition: inline


--lfvwzxrwqixjwfma
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 02:10:47AM +0800, Frank Lee wrote:
> > On Sun, May 12, 2019 at 11:41:28PM +0200, Ond=C5=99ej Jirman wrote:
> > > > > +static int tsens_get_temp(void *data, int *temp)
> > > > > +{
> > > > > + struct tsensor *s =3D data;
> > > > > + struct tsens_device *tmdev =3D s->tmdev;
> > > > > + int val;
> > > > > +
> > > > > + regmap_read(tmdev->regmap, tmdev->chip->temp_data_base +
> > > > > +             0x4 * s->id, &val);
> > > > > +
> > > > > + if (unlikely(val =3D=3D 0))
> > > > > +         return -EBUSY;
> > > >
> > > > I'm not sure why a val equals to 0 would be associated with EBUSY?
> > >
> > > Thermal zone driver can (will) call get_temp before we got the
> > > first interrupt and the thermal data. In that case val will be 0.
> > >
> > > Resulting in:
> > >
> > >  (val + offset) * scale =3D (-2794) * -67 =3D 187198
> > >
> > > 187=C2=B0C and immediate shutdown during boot - based on cirtical
> > > temperature being reached.
> > >
> > > Busy here means, get_temp does not yet have data. Thermal zone
> > > driver just reports any error to dmesg output.
> >
> > Ah, that makes sense.
> >
> > I guess if we're switching to an interrupt-based driver, then we can
> > just use a waitqueue, or is get_temp supposed to be atomic?
>
> I think get_temp should not be bloacked.

Why not?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lfvwzxrwqixjwfma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN5jZwAKCRDj7w1vZxhR
xRjwAQCF+RoytL/Gdpf15Jq+KQoPxEwYs/XaBIKW6ehF38tr0QD/T1i40/vfptIH
f1vUZGQCwcHvI4eTbggzXinFNG1BsAM=
=UQjS
-----END PGP SIGNATURE-----

--lfvwzxrwqixjwfma--


--===============6765139085906580092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6765139085906580092==--

