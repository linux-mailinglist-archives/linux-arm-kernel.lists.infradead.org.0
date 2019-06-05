Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAFA35EFA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:18:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QyLQMmJJihY4DEPHwtwxzN3kTdS4Ld0EVPobB7ES7Qg=; b=NZcEozvKp4ffgD3APzHrkWiLx
	TTIdOkUsIeuRY/3oTgyxk8itZX2ntN/ix9ZE4NDgq83zE+jPqHsNA26b+Tz2uR9i0KO93fyGEof1F
	5o2hlKh+SfP1lpEnmkAleG0WxjfgNPxQFOhuvhRCAtWI25+QecgZUqQjpDWAToCmf0HzrbwQdKIjU
	HwuakYrUXW2Qo4cUJjtRKQ9QZPZXXOdfR6mFA8lGcRXnthJMDdjolL6EbWC2QSs6AjskcgJ1Xsdi5
	R3B+Eic9mPxmz4nqGGNvONuX4TgsOKRmQtGfiZuJuXfq5osqn9qNsqYQB0niU0sSBBoXcbP8PmLo0
	Pa4+SR+6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWkC-0001cJ-FT; Wed, 05 Jun 2019 14:18:24 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWk4-0001bJ-83
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:18:18 +0000
Received: from localhost (p5486CB35.dip0.t-ipconnect.de [84.134.203.53])
 by pokefinder.org (Postfix) with ESMTPSA id 87E5D2C016F;
 Wed,  5 Jun 2019 16:18:12 +0200 (CEST)
Date: Wed, 5 Jun 2019 16:18:12 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190605141812.GA962@kunai>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
 <20190605083353.GD29637@localhost> <20190605084921.GQ4797@dell>
 <20190605085527.GE29637@localhost>
MIME-Version: 1.0
In-Reply-To: <20190605085527.GE29637@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_071816_437490_93F55E36 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: balbi@kernel.org, david.brown@linaro.org, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 wsa+renesas@sang-engineering.com, alokc@codeaurora.org,
 kramasub@codeaurora.org, linux-i2c@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, andy.gross@linaro.org, jlhugo@gmail.com,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2551401176725366419=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2551401176725366419==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> To enable dynamic debugging in driver core you could use something like
>=20
> 	CONFIG_CMDLINE=3D"dyndbg=3D\"func really_probe =3Dp\""
>=20
> That gives you two printouts per successful probe, for example:
>=20
> 	bus: 'usb-serial': really_probe: probing driver edgeport_ti_1 with devic=
e ttyUSB0
> 	bus: 'usb-serial': really_probe: bound device ttyUSB0 to driver edgeport=
_ti_1

I agree that this scales much better than adding strings to every
driver. Also, the driver core will report failed probes other than
-ENODEV, or?

Regarding this patch, however, I don't care much. I'll let the driver
maintainers decide.


--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlz3zx8ACgkQFA3kzBSg
KbbwxQ//RQO8EXcBxgeJWiAo1YAvXE5bXco6J0Kag8kCqqOMHBIScESwy3pPkg+5
DS/gtk2oJhvxOzUsFV1pLy+Eo3XbwN91CqbOd4QN8EEDTovnAWjvkzfyvy71DBgY
w+O3WXPA4vsZ1i3907HUdaUAgfcWOLJYe6TaJG/4gkS43ByT1eK54rsOg9Gz1YZZ
L06igURCQudkaB/OGzVuNk4nkyd1v5HoSiMcuYHKp9ifOf9ID992LpJ47FIEb2h+
QFFSc/M5XGGETtUuQxdPW9DjqthrSUKV6hKoIKBMOG3uH13JUVbCCB8DIyTvb8h6
UWcDfjQp/s7f279yVjhnE4+oEnKD4qzrsHX5+rzdeZ3rbEbLvjtbX7DHkeT6/ql7
FcHnLelb3wGM0wSBybsovpH7zyzMR1g3CPTuClmjtuxNTQKcdRdZ6+7ZimA0KdQE
/zQEW/QIwIutYmpU11iei8VT5BIg3ihI+xJOrFvdJMpmsrf9Y0WAR6j6kypBHPAH
V750wMmIEQVgd+tordV7qB+HYdcCQspA2Beqglhz7Lu0f4ynexueEzP4oLQZRohR
j/1C+7+dTDz43EIXL6OJpaXpyJPzeTnrSuyuVOquAJcXSPa9ALu36A7QFFsjU3t+
oyeAoN/LwsnU5AxUy28uOyBgDldBrwrihTH/i0GU4pdAn54BY+Y=
=a6fa
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--


--===============2551401176725366419==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2551401176725366419==--

