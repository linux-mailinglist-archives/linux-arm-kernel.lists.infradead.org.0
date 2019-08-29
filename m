Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B02DAA27F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 22:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gras6V5rUGp/SfyOIXuhY0IXrqk3iO9Zx5z4og1EhKI=; b=Yfs5OOguWCS9FBNlmcYqDy4L9
	Rr/uyUHPrNyRQ5vu22YZvJXCD/TKw2EBQB7jptDP9/4n1B/ody5ThX7eZRhqcMig7IF1+YgJRoa2/
	uQlqI6sGENezI+FUOYwD0oHtQ1Cbp+1K2HDsGY5pnpWyqppMGCIUahKDvMsN6r3NFdmqF30smS92m
	8BOuj+WJOc4BDaMEGZ3VDDP3POvgxrjLi4BWprq6lmg8VofBI65N1onbWuT44sOCdGwYEC0Hm0lml
	Hq+0EHpYyj+vietkf1JqAvHbcdFTSow/Jh60yjg7YnYyxG6iF5tit1kUJBkPbvOqCQKE/ZX3v0Jtg
	Rl5kHjQiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3R1x-0003RS-Jz; Thu, 29 Aug 2019 20:28:29 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3R1o-0003Qn-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 20:28:22 +0000
Received: from localhost (p54B33070.dip0.t-ipconnect.de [84.179.48.112])
 by pokefinder.org (Postfix) with ESMTPSA id 85D682C001C;
 Thu, 29 Aug 2019 22:28:17 +0200 (CEST)
Date: Thu, 29 Aug 2019 22:28:17 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 0/9] i2c: add support for filters
Message-ID: <20190829202817.GT3740@ninjato>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <20190712082044.6eteunzehyptsibk@M43218.corp.atmel.com>
 <867070c3-02c8-da1b-04d9-0a1b628577de@microchip.com>
MIME-Version: 1.0
In-Reply-To: <867070c3-02c8-da1b-04d9-0a1b628577de@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_132821_144936_967BF478 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8794881913505332252=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8794881913505332252==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MET8MpPxp2u2c48q"
Content-Disposition: inline


--MET8MpPxp2u2c48q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > I don't know if it will fit other vendors need concerning the binding
> > but for Microchip it sounds good.
> >=20
> > Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> > for the whole serie.
> >=20
> > Regards
> >=20
> > Ludovic
> >=20
>=20
> Hello Wolfram,
>=20
> What is the plan for this patch series?

I hope to review it this weekend and my hope it is good to go for 5.4.


--MET8MpPxp2u2c48q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1oNWAACgkQFA3kzBSg
KbZrWw/9HqjOXK/IH1rLw2tSA9GN1022F4IumHkzV+65mZFNq21FwtEAjTScq2uv
nIRFzhRtjtBlov0w3t5prkUAuSKqKXiGgue/cDannWVLvdk/pcrTCERvQsBc5rIe
Jlhya4MgSnE3teHqrJy4XtKn3m1LUJ6I/XtTGzDl50KHsepFWGuITBXKIKpS+R1q
XVG1reJyxec3oWGHh1V1L+klLIb1HHWickcmYM2djZXrpharb7D0fIsdQB+1jSNR
qhOpL15ye5Gc/01JA/rkNsSz/TI7AQBekZrsVaSgehnvN24yG9JzP6jLhaNU+9Xw
lR5YY2FY8ubdAtcfDLYa+pJYBBxAtPuNfCMpVqaT/9woLF0gsCX4S8ggGAzne/MN
KfatKAkosRZhO2rnXfFDnnBpL/wCGFA4/xiECAjYv1kalCopR8dUeYCdWIMcI1g5
7MRqq9c1HE95e3Sh2mEPR3BHgDD83YmEjsYU6TOyYFoa0FS/A7WaQ1iqX7FmqZbm
WRLtrtD3aVGxUncuYxfjLpNRSmOGnowjcIVLrURVCSYMvYsU5ltn0t9xTDp9h6yf
D+rfsiFxcKnoasaeLaPauHCXVrgbbDG28tI+GoNTJkLjTZmWHkH/hPdcam3N6Qcc
hHQImfyLvBDp9ePMb8U8ombH/SLyT2cqdOXgSHTLflZuCazJWZo=
=S1+3
-----END PGP SIGNATURE-----

--MET8MpPxp2u2c48q--


--===============8794881913505332252==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8794881913505332252==--

