Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 300D1249DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tMm8H5LVNhC5tiA+sqoDiLK+FONe5zEUUR8M3qtpyDk=; b=lNgS9+KppwKCE1hjqzuQjsvUC
	ZkcTANdGY/n07WxO8XWVOQVJsXcFLsiJEyF3oviodmZJ8gkP/XC7schIbxh75OuyB01MraLmOqk/J
	dLzH6aplUbZ9iCuenlPSlGYYIHI06J7pb97h31oESHBwJnwh828/Orydj//q6FRruriOvTlnrlkPv
	m6P46LGGccWHKwkSSDAXRQmfkytesEN8xhDyxt5ftA2O5do1M0ja11wkfR2ZZG7VEERNEvEU6N5a2
	1gbd81gWrHGuRP1MXJYZfPiUgn71xa0T+Bp4GEOghWH1cCrtZxs6i+E/wpQAqqiY0qssn91K8Hi0B
	si2cp5hAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzrH-0003Cf-IO; Tue, 21 May 2019 08:10:51 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzr9-0003CR-NO
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 May 2019 08:10:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=S/sMkVIiqy6kO+OrXciWebalksyfHoN/pZM1IhWLCok=; b=CuG6bISSDrngASYDUbWKiWaro
 Q3OZQJpedDL7tpJPn9LIWuNfhdIairfhbpHREgCwi4X+Ge/c2E8bgFyTFodQr0D+964tvEVHICBW0
 3d+diyKDxXfHOnlj58UNwJbaUlEeXmnEK5MmevUv5Q+LsD7FaMsLE1grlPlOuJHKp54vrOqRYVrH5
 mC+s11vMEPgUZ8iiyiwDxd+92fSkf8isahNxdcSZf0TFASVTFVDuIjLjUNJuhSNMTi0d9kJubWlZR
 aHTV/f7vNiINdyqWzlebz1/pHZ71P9bJl3hvv7gnMfRcYpF4EwbS4xJW/w/gdqjP1ZXeaB20B6jRj
 iITpRYCsQ==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzr6-0008MM-OX
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:10:41 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4598620025;
 Tue, 21 May 2019 08:10:02 +0000 (UTC)
Date: Tue, 21 May 2019 10:10:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64-oceanic-5205-5inmfd: Enable CAN
Message-ID: <20190521081001.zjq3gnlvyuyexz6m@flea>
References: <20190418141658.10868-1-jagan@amarulasolutions.com>
 <20190418145641.q23tupopz2czjzc5@flea>
 <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOf5uwn8CtRs8cx0KC-bxNoRP4TiDrHi8F83QfjsZhueLDYFJg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_041040_892793_655F42AA 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2672246534564583489=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2672246534564583489==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xwglcbrmgqk6xsau"
Content-Disposition: inline


--xwglcbrmgqk6xsau
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 21, 2019 at 08:47:02AM +0200, Michael Nazzareno Trimarchi wrote:
> > > +     };
> > > +
> > >  };
> > >
> > >  &ehci0 {
> > > @@ -77,6 +95,31 @@
> > >       status = "okay";
> > >  };
> > >
> > > +&pio {
> > > +     can_pins: can-pins {
> > > +             pins = "PD6",                   /* RX_BUF1_CAN0 */
> > > +                    "PD7";                   /* RX_BUF0_CAN0 */
> > > +             function = "gpio_in";
> > > +     };
> > > +};
> >
> > That isn't needed. What are they used for, you're not tying them to
> > anything?
>
> Mux of their function is correct. They are connected in the schematics
> but not used right now.

Then describe the whole thing or don't?

And that's kind of missing my point. If that pin group isn't related
to any device, the pin muxing will not be changed. So that group, in
itself, has strictly no effect.

Moreover, you don't need a pin group in the first place to mux pins in
GPIOs, the GPIO API will make sure that is the case when you request
it.

> I can garantee that kernel wlll always configurred in the right way
> and if I want I can export in userspace
> for debug purpose

Yes, because the API does it, not your change

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--xwglcbrmgqk6xsau
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOOyWQAKCRDj7w1vZxhR
xVrXAP461PPKE8+N+fcEtV7h6ivucRpYH0qSu/7rhCb1pnto4gEAkjCJYIuq90Qb
VJVC85qKFQVFJBnSNhfkOi8Eoh8IaAM=
=KuKJ
-----END PGP SIGNATURE-----

--xwglcbrmgqk6xsau--


--===============2672246534564583489==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2672246534564583489==--

