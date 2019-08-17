Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 188F690F7D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 10:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KZ5jZ2tSdKjxWlM33x2pJK9rkkmBv++sQhkOwJ39h4w=; b=YfgoHx8/7WOw9g8bUHu7aalGj
	DnD05Bq5e6bCBjublGKRlAiufMs/F5d5/R2wCziXLB60tOUYQuGN54r8IvCUkQgLP2ufa/1YmH9Bc
	kuDvFvZqa49RwONZ+GxZaAI8vWUx0mInSURgZsIrFjwigLmEo/esiUz965TdLrrTZasS9Wd99nI7Y
	TjENpYSIZLwxYMc991ViyuCOUymGDGp9P0vKQP93R4+4nL4zhqLyQq+7OtzkG3dUUQmlXlOxCGciy
	62JFTor9GxR056m54JIdwwVTmXCL6BzWnuu44TafvM3ELuvLtigLfhK7WSJtFQ9+riyBGWPlo+DJU
	6FyGNUqQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyu6h-0003gY-PJ; Sat, 17 Aug 2019 08:30:39 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyu6O-0003fy-Oh; Sat, 17 Aug 2019 08:30:22 +0000
Received: from localhost (p5486C5A7.dip0.t-ipconnect.de [84.134.197.167])
 by pokefinder.org (Postfix) with ESMTPSA id E68562C290E;
 Sat, 17 Aug 2019 10:30:16 +0200 (CEST)
Date: Sat, 17 Aug 2019 10:30:16 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V2 08/13] i2c: bcm2835: Avoid clk stretch quirk for BCM2711
Message-ID: <20190817083016.GA1315@kunai>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-9-git-send-email-wahrenst@gmx.net>
 <20190814193628.GA9756@kunai>
 <bb924d04-b4a9-56c7-c7d5-31f3cc8c1da3@gmx.net>
MIME-Version: 1.0
In-Reply-To: <bb924d04-b4a9-56c7-c7d5-31f3cc8c1da3@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_013020_953215_33569F06 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Michael Turquette <mturquette@baylibre.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2202619432611804165=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2202619432611804165==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> quirks =3D (const struct i2c_adapter_quirks *)of_device_get_match_data(de=
v);
>=20
> would hit the line limit. Do you insists on the cast, because it's
> actually not required?

Not at all, I mixed sth up and forgot that of_device_get_match_data
returns void*.


--SUOF0GtieIMvvwua
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1XuxQACgkQFA3kzBSg
KbZqww/8Caf0okFY7IK0Ft6q6YcN2wNLlAFl3EYp1noT/64s7GDZE/wIPPL/xf2K
wP3EXxEIlAqnI2b9dw+L5uF4UIKOJlMnH6xQC5mtm+xNWgyTzFG/10gb6vPMdVdY
8PsXASQzotqQW6BZUVMFwyTusvu7X6JXrMJm+fO8VPMjfyd+RPIV7IWiKddz+jo2
XV7FJWnnfWG2LU+EMpIyu2g3TzQAlZxEa6LZb4pkG1SG7Vi38g6Ne1vKxvHwRSFS
MeyW9G81d3nidCBlif+xpHG28hSv9hkK013M5JD4guTaOUMAgDUdVn5ds7zkKw1x
KsUeYmpH/UcCqrZ3vRFh5Fw4CqRZB+VydC5QOo7bDjUuWy+PgufGgNOe3pLYoH8f
ztWK9Il+DEUnT73OV6r+55MiRHXm7NaecC36v1lNsZUT/aCZqnUS29vt/u28Etvz
ESJxRIDLjoGSg8CGyW1/zqgHe0lCjZEZCpx0ou6VtjsDGLHrSfdqWHb5Nz5nQLg8
osUepGUo4rZ8ucapKZrYA6LJ7TkwaIRdHLUQQzJLceTOaZXeXGvrGaTX8r1Tg8bA
69FjU2hlqro5RNCJ9ECTsF8jXpQQ1EwXEJ8w7ck2OuZlkMSFq5TLIFcdLrNe31Xd
ampw0Qtlja1zafuXEgRsiemWsfXoy+7kxW7tK7QNtPmitWp2Ruw=
=Ip2v
-----END PGP SIGNATURE-----

--SUOF0GtieIMvvwua--


--===============2202619432611804165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2202619432611804165==--

