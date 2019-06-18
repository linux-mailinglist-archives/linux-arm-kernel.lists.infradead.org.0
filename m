Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B474A029
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 14:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JL2OJj/qXU8YUKDB5ZIWgPV8d6hRwhtJKWQx7ZBV/yI=; b=BC+2Pwwpn9trr8X+pQOifOZVi
	7PyDiiERHw2bohCAU9CJd67TaiTlxGN1ITgu3DLAQnNic/wkr+pyfuqZY3nm6EouvRhCupeeZgETf
	D53HxQ/ozw6gecYgkIXuRwTYifbEXFWJeU6UGgvunhYOdI3qY8KgHaDlGT0pAWL2D0Y9nFPstTA7r
	/PlGCQC5A4Fb0VDbEy619RMQs8WCsSafknlH2XW/uU7dr8bgjIlquo1u+Y6itntCNUDPfDEWgysts
	GIYQY6aQ/V6H7YTFndxn5YrMi23EYcZqnu+Dy6If9kAysFNv5OHrYxhkPxB5vkJdvD1dd5HLzQPUf
	8lrRKXJeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdCov-0000QK-E0; Tue, 18 Jun 2019 12:02:37 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdCol-0000P8-8b; Tue, 18 Jun 2019 12:02:29 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 8058C80329; Tue, 18 Jun 2019 14:02:11 +0200 (CEST)
Date: Tue, 18 Jun 2019 14:02:21 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
Message-ID: <20190618120221.GA20524@amd>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
 <20190617161625.GR137143@google.com>
MIME-Version: 1.0
In-Reply-To: <20190617161625.GR137143@google.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_050227_454332_F492AE38 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8425051205176634953=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8425051205176634953==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="3MwIy2ne0vdjdPXF"
Content-Disposition: inline


--3MwIy2ne0vdjdPXF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2019-06-17 09:16:25, Matthias Kaehlcke wrote:
> Hi Pavel,
>=20
> On Sun, Jun 16, 2019 at 05:41:43PM +0200, Pavel Machek wrote:
> > Hi!
> >=20
> > > This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
> > >=20
> > > According to the commit message the AUO B101EAN01 panel on minnie
> > > requires a PWM delay of 200 ms, however this is not what the
> > > datasheet says. The datasheet mentions a *max* delay of 200 ms
> > > for T2 ("delay from LCDVDD to black video generation") and T3
> > > ("delay from LCDVDD to HPD high"), which aren't related to the
> > > PWM. The backlight power sequence does not specify min/max
> > > constraints for T15 (time from PWM on to BL enable) or T16
> > > (time from BL disable to PWM off).
> > >=20
> > > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > > ---
> > > Enric, if you think I misinterpreted the datasheet please holler!
> >=20
> > Was this tested?
>=20
> I performed limited manually testing.
>=20
> minnie ships with the Chrome OS 3.14 downstream, which doesn't include
> this delay, to my knowledge there are no open display related bugs for
> minnie. One could argue that a the configuration without the delay was
> widely field tested
>=20
> > Does patch being reverted actually break anything?
>=20
> To my knowledge it doesn't really break anything, however there is a
> short user perceptible delay between switching on the LCD and
> switching on the backlight. It's not the end of the world, but if it's
> not actually needed better avoid it.
>=20
> > If so, cc stable?
>=20
> I guess this is an edge case, were you could go either way. I'm fine
> with respinning and cc-ing stable.

Ok, if it is just a small delay, stable probably does not need to be
involved.

Thanks,
								Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--3MwIy2ne0vdjdPXF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0I0s0ACgkQMOfwapXb+vIDhwCgoXg7BeLdOOaZditUE387gqIo
RsQAn0zNp/RpUuk4d69n9e90MTNfL8OK
=uTEM
-----END PGP SIGNATURE-----

--3MwIy2ne0vdjdPXF--


--===============8425051205176634953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8425051205176634953==--

