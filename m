Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3C61E1527
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 22:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qxFAh3dwy1TNDfraIlIhVr3P0yhQkM5u+1cDm+caHrI=; b=YAw8X5B1qE9uSqmYzJzH8UKfE
	nNLf5RjeC13AqxLWHRk6iwYJdkJaW3Un5QJI5mm2zvvtE6PZyQ+aiQx+tbyUdWOB7bB7/JNQPWywr
	SbVJDo30hvts2G1fmSpZMn4Y+LdakPzUzsvAjsBXkKSXxb0mWr3nilHPje2SW0farzuSE315fXZNa
	oTSOF8CDKwBYG3mto1SaeUGLhXcjFzcI47yMuyfI0vYK/PaMsy4C6eyhmUWBp9j7SAluAu/uQl/bY
	ShObfYVI8d3k7F+NjzXoXAMvF3r1VuClU8EJ+FMiOISTeRNPeFbfi70AhJcEwxvl9JZ5A8YfFnbPB
	/vx/7NnUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdJXu-0006Tz-O4; Mon, 25 May 2020 20:18:02 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdJXi-0006SW-DU; Mon, 25 May 2020 20:17:52 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id D8C551C02CC; Mon, 25 May 2020 22:17:46 +0200 (CEST)
Date: Mon, 25 May 2020 22:17:46 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 1/8] dt-bindings: net: meson-dwmac: Add the
 amlogic,rx-delay-ns property
Message-ID: <20200525201746.GA5528@duo.ucw.cz>
References: <20200512211103.530674-1-martin.blumenstingl@googlemail.com>
 <20200512211103.530674-2-martin.blumenstingl@googlemail.com>
 <20200524212843.GF1192@bug>
 <d3f596d7-fb7f-5da7-4406-b5c0e9e9dc3f@gmail.com>
 <20200525090718.GB16796@amd> <20200525135728.GE752669@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20200525135728.GE752669@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_131750_610339_136FB684 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1366926504867734054=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1366926504867734054==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2020-05-25 15:57:28, Andrew Lunn wrote:
> > > standardizing on rx-delay-ps and tx-delay-ps would make sense since t=
hat
> > > is the lowest resolution and the property would be correctly named wi=
th
> > > an unit in the name.
> >=20
> > Seems like similar patch is already being reviewed from Dan Murphy (?)
> > from TI.
>=20
> Dan is working on the PHY side. But there is probably code which can
> be shared.
>=20
> One question to consider, do we want the same properties names for MAC
> and PHY, or do we want to make them different, to avoid confusion?

We have same properties accross different hardware (compatible, reg),
so same property between MAC and PHY seems to make sense.

									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCXswn6gAKCRAw5/Bqldv6
8i7zAJ4jCAV144tVxiIyf3sNBn1JDz7j+QCgvR80vjeIJZeqGeR77nVrZk4D4ck=
=JqOQ
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--


--===============1366926504867734054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1366926504867734054==--

