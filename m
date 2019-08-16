Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1C48FDB7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:23:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QGJhzeE3EFzv472aIlDERzIqEVG7u2mQQCQhIWqE8nY=; b=ouWE10NwilbFThvVZEhstbLhm
	RvgeyLvqRWwEmXv2Z4Lf0NcU3z8Tg5OvibLpJRvEfxyFSazUI/m4Y+on9h0UUD8Rsa2po26xakN7N
	bA10w5GG+saw8gJYJphj8XG1CV5kKjI7gDnItgRL7S3p3Y9KcArZmTNvCD6247OFOrxndcvB3vfyH
	3ikzAUDM7/SDvJU+gh1Z3ueoXW0Lqt+p2oOkWedyC4XD/Kdq6HSg8a88xri1Y0B+7+JDZH6TM3aJK
	Ix/3t2lsL0yvGo8b9a7w2KcrpczCRilWkV1pz3z4Jz+ywwASAe9s9TKVw0uERwZMQj1JtqzIgZQYS
	5o7X/ra6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXWF-0002Wb-97; Fri, 16 Aug 2019 08:23:31 +0000
Received: from letterbox.kde.org ([2001:41c9:1:41e::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXW0-0002WA-6I
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:23:18 +0000
Received: from archbox.localdomain (unknown [203.187.238.17])
 (Authenticated sender: bshah)
 by letterbox.kde.org (Postfix) with ESMTPSA id B6752288870;
 Fri, 16 Aug 2019 09:23:13 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1565943794; bh=R+mo2BGavCwf8Mztq2UzfRe5LGcuCVb+205qaTnZVtI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kr98yFWLu1zfwT7VtWyOw/fahFFRPdXW+MlNuqGfbct+aMHVojSxkWWHfh3DF2HiU
 g94g6LL8JSox9npC0r6JkcyJTVd2XZTHyAdswwXfYEJucEFRpZdWK0TRz/mnMAhalH
 BLFZCkfgIINs6VdaIeYsettvt1ZPkRlpo0TLF8MlDchMDswqf4nHC92bmpj2g1chao
 q2lc3VjQhjiFAKLqzW+OMUD/3P29ossSwxjJvEos1S5dv/wdCvUT/0WAAr57UMt26i
 Ki5vyKJ8tIc+vPDGypIkbdwCYJTuo8F6KQ4m6CgzfP8r8XsjwiZFkSoAbvKcz/BbL4
 eafiysNJHUpBQ==
Date: Fri, 16 Aug 2019 13:53:11 +0530
From: Bhushan Shah <bshah@kde.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v2 2/3] arm64: allwinner: h6: add I2C nodes
Message-ID: <20190816082311.GB18236@pyxis>
References: <20190811090503.32396-1-bshah@kde.org>
 <20190816064710.18280-1-bshah@kde.org>
 <20190816064710.18280-3-bshah@kde.org>
 <20190816075031.zw4bjunn4hfoaq3e@flea>
MIME-Version: 1.0
In-Reply-To: <20190816075031.zw4bjunn4hfoaq3e@flea>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_012316_509295_4A251EDA 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:41c9:1:41e:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============4585306363587898165=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4585306363587898165==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Pd0ReVV5GZGQvF3a"
Content-Disposition: inline


--Pd0ReVV5GZGQvF3a
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 16, 2019 at 09:50:31AM +0200, Maxime Ripard wrote:
> On Fri, Aug 16, 2019 at 12:17:09PM +0530, Bhushan Shah wrote:
> > Add device-tree nodes for i2c0 to i2c2, and also add relevant pinctrl
> > nodes.
> >
> > Suggested-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Bhushan Shah <bshah@kde.org>
> > ---
> > Changes in v2:
> >   - Add the SoC specific compatible string instead of re-using a31 one.
> >
> >  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 56 +++++++++++++++++++-
> >  1 file changed, 55 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-h6.dtsi
> > index bcecca17d61d..a1a329926540 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> > @@ -329,6 +329,21 @@
> >  				function =3D "hdmi";
> >  			};
> >
> > +			i2c0_pins: i2c0-pins {
> > +				pins =3D "PD25", "PD26";
> > +				function =3D "i2c0";
> > +			};
> > +
> > +			i2c1_pins: i2c1-pins {
> > +				pins =3D "PH5", "PH6";
> > +				function =3D "i2c1";
> > +			};
> > +
> > +			i2c2_pins: i2c2-pins {
> > +				pins =3D "PD23", "PD24";
> > +				function =3D "i2c2";
> > +			};
> > +
> >  			mmc0_pins: mmc0-pins {
> >  				pins =3D "PF0", "PF1", "PF2", "PF3",
> >  				       "PF4", "PF5";
> > @@ -464,6 +479,45 @@
> >  			status =3D "disabled";
> >  		};
> >
> > +		i2c0: i2c@5002000 {
> > +			compatible =3D "allwinner,sun50i-h6-i2c";
>=20
> This isn't going to work if you don't patch the driver to add the
> compatible. And this isn't what you described in the binding patch.

oops, I will correct this in next patch series. Sorry.

>=20
> Maxime
>=20
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



--=20
Bhushan Shah
http://blog.bshah.in
IRC Nick : bshah on Freenode
GPG key fingerprint : 0AAC 775B B643 7A8D 9AF7 A3AC FE07 8411 7FBC E11D

--Pd0ReVV5GZGQvF3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEs8s2ZVJUC+Bu6a2XEZaMRJKMrvwFAl1WZ+4ACgkQEZaMRJKM
rvxqAQgAjTTOPqp4IbGW4/nDm8BBmNiePwfg57R8R49Uy4uEW2aWag5VAObJy66F
cWkU8CtYUYXWPvnke18zDyH+EqqgJgraUnNyU1Slj3e6kylEvREKRsM4W9u8m4ti
r88PZiTtWmPLmAYOrzIUVckEwDau21Apeqjf1+Tqq2Q3xCGx2vRPBsm59972SGVY
yT8k1SWABM5m42rko8rQh+XZ9u0niBliD1u4+KY8zQ9Uu/g8T/t7JcCu+ysy8U+W
esnMrLdwMChMpjDzAX1vdkAexCAo5E6/NeDbcQWJqxjqCDX5oy/vIXlydKl1Sczx
DrysSQzkyw8rbwv9OGMC+YtpVHjAYA==
=gJ/S
-----END PGP SIGNATURE-----

--Pd0ReVV5GZGQvF3a--


--===============4585306363587898165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4585306363587898165==--

