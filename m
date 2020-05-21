Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77F81DC99C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 11:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hPiGP0bs582ph61JK/Qmw86AFir1sG59LTDbOwmItUU=; b=NP7Y7iuIhzmLY3gB/TBeY9Gxr
	B+Y+y/8BC5KpLUbjX4icuMrXiHgtF0lhtTeKnKWKeO8Y8HEghIIrLCiZprADCt6OfjSQm+IMzb6PE
	RlS8dZ6G6ougs63LcseiZr4FelJzceji7DhkK4fV9x0Z6aGi/boaAFwmLp9pD23+ILYIMfztO7RVB
	AsSaOj52pcXGadhsunEaXX6sUCzClhN87yNVOvga1R1pfSSBNr2wW3gRlhHaFT/f3q0Lu0cFcP/nR
	jeb3+1FVy1BZnAPWuohtf6apqP/TDymdE0wOvqg7/iBP0gPmXuY/7CKLKttY09OTCxhG0vB45QzKU
	YchaBc4eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhGy-0007ey-7U; Thu, 21 May 2020 09:13:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhGp-0007eJ-Gw; Thu, 21 May 2020 09:13:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D9664AEAC;
 Thu, 21 May 2020 09:13:41 +0000 (UTC)
Message-ID: <8e5cfb2da29984dc655157b18ef0f34dd576fb21.camel@suse.de>
Subject: Re: [PATCH v2 20/91] clk: bcm: rpi: Discover the firmware clocks
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>
Date: Thu, 21 May 2020 11:13:35 +0200
In-Reply-To: <20200515081914.lejcqqwezn3zwpft@gilmour.lan>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <1a25b4f079dcdc669d4b29d3658ef0b72be2651e.1587742492.git-series.maxime@cerno.tech>
 <c9a7e50f88022179ef913fc6dfd066ec44b27988.camel@suse.de>
 <20200515081914.lejcqqwezn3zwpft@gilmour.lan>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_021343_851017_E0D0F9BE 
X-CRM114-Status: GOOD (  28.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8477038433266508285=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8477038433266508285==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Z2brrfBcjslVzIscsWuS"


--=-Z2brrfBcjslVzIscsWuS
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Fri, 2020-05-15 at 10:19 +0200, Maxime Ripard wrote:
> Hi Nicolas,
>=20
> On Mon, May 04, 2020 at 02:05:47PM +0200, Nicolas Saenz Julienne wrote:
> > Hi Maxime, as always, thanks for the series!
> > Some extra context, and comments below.
> >=20
> > On Fri, 2020-04-24 at 17:34 +0200, Maxime Ripard wrote:
> > > The RaspberryPi4 firmware actually exposes more clocks than are curre=
ntly
> > > handled by the driver and we will need to change some of them directl=
y
> > > based on the pixel rate for the display related clocks, or the load f=
or
> > > the
> > > GPU.
> > >=20
> > > This rate change can have a number of side-effects, including adjusti=
ng
> > > the
> > > various PLL voltages or the PLL parents. The firmware will also updat=
e
> > > those clocks by itself for example if the SoC runs too hot.
> >=20
> > To complete this:
> >=20
> > RPi4's firmware implements DVFS. Clock frequency and SoC voltage are
> > correlated, if you can determine all clocks are running below a maximum=
 then
> > it
> > should be safe to lower the voltage. Currently, firmware actively monit=
ors
> > arm,
> > core, h264, v3d, isp and hevc to determine what voltage can be reduced =
to,
> > and
> > if arm increases any of those clocks behind the firmware's back, when i=
t has
> > a
> > lowered voltage, a crash is highly likely.
> >=20
> > As pointed out to me by RPi foundation engineers hsm/pixel aren't curre=
ntly
> > being monitored, as driving a high resolution display also requires a h=
igh
> > core
> > clock, which already sets an acceptable min voltage threshold. But that
> > might
> > change if needed.
> >=20
> > Ultimately, from the DVFS, the safe way to change clocks from arm would=
 be
> > to
> > always use the firmware interface, which we're far from doing right now=
. On
> > the
> > other hand, AFAIK not all clocks have a firmware counterpart.
> >=20
> > Note that we could also have a word with the RPi foundation and see if
> > disabling DVFS is possible (AFAIK it's not an option right now). Althou=
gh I
> > personally prefer to support this upstream, aside from the obvious bene=
fits
> > to
> > battery powered use cases, not consuming power unnecessarily is always =
big
> > plus.
> >=20
> > > In order to make Linux play as nice as possible with those constraint=
s, it
> > > makes sense to rely on the firmware clocks as much as possible.
> >=20
> > As I comment above, not as simple as it seems. I suggest, for now, we o=
nly
> > register the clocks we're going to use and that are likely to be affect=
ed by
> > DVFS. hsm being a contender here.
> >=20
> > As we'd be settling on a hybrid solution here, which isn't ideal to say=
 the
> > least, I'd like to gather some opinions on whether pushing towards a fu=
lly
> > firmware based solution is something you'd like to see.
>=20
> Thanks for the summary above, I'll try to adjust that commit log to refle=
ct
> this. As for my opinion, I don't really think that an hybrid approach is
> practical, since that would leave us with weird interactions between the
> firmware (and possibly multiple versinos of it) and the linux driver, and=
 this
> would be pretty hard to maintain in the long run.
>=20
> That leaves us either the MMIO-based driver or the firmware-based one, an=
d
> here
> with what you said above, at the moment, the firmware based one is a clea=
r
> winner.

We're on the same page here :)

My remaining concern is the fact there isn't a firmware counterpart to ever=
y
clock used right now. But it's something we can work out in the future.

Regards,
Nicolas


--=-Z2brrfBcjslVzIscsWuS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7GRj8ACgkQlfZmHno8
x/4MlggAsfI2netGKXQo2DPYuKoQrXmOvYiA7Nr5rN8c+4B05Qv+kpCf2DNFnHof
Z26RxWKypweAbv69gcLkx9zD2GdR/FEFppfg1kgNXBlQ77x2+75a+S2h5z9qria5
ilV9oZERoJoOyyk7UpejkWfTieOlIfoWqMFPvwi8RSOFBf9+iPbWaazGB9YdgFIZ
lwbIH/QBZAn7pvJQIdI+qSJRsCbR7sD3WlzDq9SP/tFHtkPlyi+2RMI06XlxFJyK
QQnQTVH4Dkc8GZYtx6Np9zwUynBulz2RJaa7tJnpsItMwf/+AimPeVsnrrJBsuWv
2rgmf2QJ06QX1OnXfiNY0ZdXH+XLkg==
=EKcD
-----END PGP SIGNATURE-----

--=-Z2brrfBcjslVzIscsWuS--



--===============8477038433266508285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8477038433266508285==--


