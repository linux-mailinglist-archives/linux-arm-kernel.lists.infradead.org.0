Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E0716C3FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:33:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WvKJWTMTeDtS+yNRY+XdlXys1JzLQducs/HgPlXxuGk=; b=uYnYyS3PAZ/meWmtu8t+eYfED
	5TJyEtvMopsFKL1IMY5qcQ8dFgfDa6Kz6WO8VtyKn2n9dOjm/jc5ovE+RiXvS+iChsi+Py09pAYzW
	kHpxOUwm+VQbJ0zv8p4BgXqvvz/1YHoAs5gxMgnMJhl+QCbMQb/4pTWHeb7F4BjPiWdZK8PKRwm4Y
	/ZkEj4V5nPaUrxN6rwD7Z1Qom5FKIlddLxm51ge8THbgZVSBxrQClY0fAoaO3tW2R7xZe2DziRvRU
	GXH9HmLqXNbs9icbu+TqrQrszlcMvoqano0K+8piW0j3yV/DwKzU6btEGuup+cmfU5Sqo2LTRb6m8
	N1A83AHMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bHH-0002WD-SU; Tue, 25 Feb 2020 14:33:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bH7-0002VR-Mt; Tue, 25 Feb 2020 14:33:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id BCCD8B14B;
 Tue, 25 Feb 2020 14:33:25 +0000 (UTC)
Message-ID: <5754451af3663ba39e8358dd15e586ee1485f86a.camel@suse.de>
Subject: Re: [PATCH 16/89] clk: bcm: rpi: Add clock id to data
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Stefan Wahren <stefan.wahren@i2se.com>
Date: Tue, 25 Feb 2020 15:33:23 +0100
In-Reply-To: <20200225095433.tyxamibqyrgw5355@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <3028e04887c7b8a6ffc150c016aa63281461b434.1582533919.git-series.maxime@cerno.tech>
 <67855a10-f7cb-b6b3-7b9f-d9c9baa5f105@i2se.com>
 <20200225095433.tyxamibqyrgw5355@gilmour.lan>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_063330_033728_B39CE204 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: multipart/mixed; boundary="===============3312433854509413072=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3312433854509413072==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-k9G+OdjwEzh2rr0BSMKX"


--=-k9G+OdjwEzh2rr0BSMKX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Tue, 2020-02-25 at 10:54 +0100, Maxime Ripard wrote:
> Hi Stefan,
>=20
> On Mon, Feb 24, 2020 at 08:25:46PM +0100, Stefan Wahren wrote:
> > Hi Maxime,
> >=20
> > Am 24.02.20 um 10:06 schrieb Maxime Ripard:
> > > The driver has really only supported one clock so far and has hardcod=
ed
> > > the
> > > ID used in communications with the firmware in all the functions
> > > implementing the clock framework hooks. Let's store that in the clock=
 data
> > > structure so that we can support more clocks later on.
> >=20
> > thank you for this series. I looked through it but i couldn't find an
> > explanation why we need to expose firmware clocks via DT instead of
> > extending clk-bcm2835. The whole pllb / clk-raspberrypi stuff was an
> > exception to get cpufreq working. I prefer to keep it an exception.
>=20
> Thanks for pointing this out, I indeed forgot to address it in my
> cover letter or my commit log.
>=20
> I'm not quite sure what the situation was with the previous
> RaspberryPi, but the RPi4 firmware does a bunch of things under the
> hood to make sure that everything works as expected:
>=20
>  - The HSM (and V3D) clocks will be reparented to multiple PLLs
>    depending on the rate being asked for.
>  - Still depending on the rate, the firmware will adjust the voltage
>    of the various PLLs.
>  - Depending on the temperature of the CPU and GPU, the firmware will
>    change the rate of clocks to throttle in case of the cores
>    overheating, with all the fallout that might happen to clocks
>    deriving from it.
>  - No matter what we choose to do in Linux, this will happen so
>    whether or not we want to do it, so doing it behind the firmware's
>    back (or the firmware doing it behind Linux's back) will only
>    result in troubles, with voltages too low, or the firmware trying
>    to access the same register at the same time than the Linux driver
>    would, etc.
>=20
> So all in all, it just seems much easier and safer to use the firmware
> clocks.

I agree with your assesment. Both DVFS and overheating/overvoltage protecti=
ons
will cause trouble, if not, make a Linux solution impossible while using th=
e
Foundation's firmware.

Please note that, as Stefan says, it'd be nice to keep track of those argum=
ents
somewhere in the commit messages.

Regards,
Nicolas


--=-k9G+OdjwEzh2rr0BSMKX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5VMDMACgkQlfZmHno8
x/4/WQf+Kyv1s3y5c1zna47wu/wkKyIjrM7qRGSnveL9N9nIqBjK0Z4BH7iLDXBx
25kFxVsa9SyNx5ipe612NlRgWcyYHbOxwaWI7SynhXnoSHvAd990CGpEAMA/WZx4
jvB2Ll/SRJuHXtpAyRmZyOOBUE6vX7hnM/wC/Rl3pdd9jvc6phjEza5bB54BTGXW
/CLu1E+DR/Yr1KPkeP6odZ+Xfc5UIuyYGqDi9lALXg7mPJhYjKYdMRHtbueyyNMI
VGh5So6ZKwPMRCqruOh8C2A2+UqHg2Q8vq5x52uFBUC4PZXKgzpgDRWJBiPJLqhu
pVGAeN2+7Odf4HzO6fexgYGCxlooRg==
=yNC6
-----END PGP SIGNATURE-----

--=-k9G+OdjwEzh2rr0BSMKX--



--===============3312433854509413072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3312433854509413072==--


