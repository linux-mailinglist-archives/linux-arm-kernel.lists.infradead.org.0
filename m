Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D816FF74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:03:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rwn0o+MAfSv5ZLTVgf/qVYeQZtTLe5jcpHA/1gOAERI=; b=amf95X9StIY5G37Z+X03NrtPf
	wfG3T8I30L1nifHxhkyPAL8jDnGlWbGBn7eEqXPRVBqVeTMci5UnCYfUgxfPqVu6IBlUvVKuZ922t
	gN8EK3YsTzfxYAhvPumd2WBu7R5QwNENB+46agUBu+3/HIbWiIJATBWlK+j+ubPlpK4uKR3e08SEq
	Ja804PNRix2M6B1TepHUJYSn8ncatnSaCoeZAVB+nAYu0E/jwbcsyOgT1XpMx9vs6DZFUUg8hvR2W
	G1GjKZRbMSCpot234AnaadHTHt/p9g+GuBH8tv26PQLys6On1JXLd5o/UlllRCoE3WDOyFlUOTrEg
	nzGV3Gtag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wLT-0001aq-Ay; Wed, 26 Feb 2020 13:03:23 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wLG-0001Yy-A5; Wed, 26 Feb 2020 13:03:13 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id CAF6A1C0370; Wed, 26 Feb 2020 14:03:00 +0100 (CET)
Date: Wed, 26 Feb 2020 14:03:00 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Ezra Buehler <ezra@easyb.ch>
Subject: Re: [RFC 00/25] arm64: realtek: Add Xnano X5 and implement
 TM1628/FD628/AiP1618 LED controllers
Message-ID: <20200226130300.GB2800@duo.ucw.cz>
References: <20191212033952.5967-1-afaerber@suse.de>
 <7110806f-ddbd-f055-e107-7a1f7e223102@arm.com>
 <c86c6bc0-b0e5-c46e-da87-9d910b95f9f3@suse.de>
 <04e7d7cd-a8bc-621b-9205-1a058521cabe@arm.com>
 <E33E27B9-D33C-4182-A5B1-C72FA40470BC@easyb.ch>
MIME-Version: 1.0
In-Reply-To: <E33E27B9-D33C-4182-A5B1-C72FA40470BC@easyb.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_050310_498342_061AC754 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, csd@princeton.com.tw,
 linux-realtek-soc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 sales@fdhisi.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Dan Murphy <dmurphy@ti.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 zypeng@titanmec.com, linux-amlogic@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3936838581160212196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3936838581160212196==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zx4FCpZtqtKETZ7O"
Content-Disposition: inline


--zx4FCpZtqtKETZ7O
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > On 13 Dec 2019, at 15:07, Robin Murphy <robin.murphy@arm.com> wrote:
> >=20
> > I also have one of the H96 Max boxes (which I picked up out of curiosity
> > for the mysterious RK3318) with an FD6551, although I've not attacked
> > that one with the logic analyser yet to see how similar it is.
>=20
> I have a T9 (RK3328) TV box with the same chip in it. The FD6551 uses an
> I2C-like protocol. Every digit (and the symbols) have an I2C address,
> but, the display does not signal ACK. AFAIK the FD650 and FD655 which
> are used in other boxes (Amlogic) are very similar.
>=20
> So far, I have whipped up a proof-of-cocept driver that uses i2c-gpio.
> The digits seem to be rotated by 180 degrees. So, in order to use
> map_to_7segment.h I had to define the BIT_SEG7_* constants differently.
> My display also has multiple symbols (WIFI, network, pause, play, USB,
> alarm) that are controlled by writing to the same address as for the
> colon.
>=20
> I=E2=80=99d love to work on a driver (similar to Andreas=E2=80=99 SPI bas=
ed driver) for
> these I2C connected chips.

Create a driver in drivers/auxdisplay for alphanumeric parts. You can
then export any remaining symbols as LEDs if it will provide benefits.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--zx4FCpZtqtKETZ7O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXlZshAAKCRAw5/Bqldv6
8kZqAJ0eHpZJIq9KvRkuA970vGoHRW+FxwCfUVhxIMi58/nyPvs2Fhxkk2zlRec=
=UP4r
-----END PGP SIGNATURE-----

--zx4FCpZtqtKETZ7O--


--===============3936838581160212196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3936838581160212196==--

