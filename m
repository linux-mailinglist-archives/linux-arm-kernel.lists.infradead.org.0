Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40971313C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OBPf66cIIMW5zcwYbaR0iQrnO5tUFKv9tHxAHeid0T0=; b=FVs2qd/6QI5MXdGqpl+RL7e6q
	ckaO9goazsojxIiUCJk/59onWBMLe4RjN971fVHJyhBvxg2ZZzHiYy1voa8SyTARlaaEw8VfBRzlj
	BcM1x1GXsEb1lkHMEd3Wh5X3y1Su00dubqYA/zZMOYoffqRcdL0PcqN3VNZIUKjHgCwRuGkWz1mKS
	N0kihfJMqq9d9PH0UX0ffKNo9QBv2lyIYqxlFb1RrQp7SODAwW7+2DC6XFuJR13HD5HKSbqdE/Uwl
	jxPqvfxFf5GPAxgmGQJg0FtFNxA5LZDNi1dYv7dhrJUjfjjy3zoX0jve28gOW5F2l6fMoP9EjlNVG
	9YuQHtOIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTU6-00062t-Ml; Mon, 06 Jan 2020 14:35:58 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTTe-0005fW-Ct
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:35:33 +0000
Received: from localhost (p54B338AC.dip0.t-ipconnect.de [84.179.56.172])
 by pokefinder.org (Postfix) with ESMTPSA id 4B6672C393D;
 Mon,  6 Jan 2020 15:35:29 +0100 (CET)
Date: Mon, 6 Jan 2020 15:35:28 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 4/4] dt-bindings: i2c: at91: fix i2c-sda-hold-time-ns
 documentation for sam9x60
Message-ID: <20200106143528.GF1290@ninjato>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
 <1575886763-19089-4-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1575886763-19089-4-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_063530_596844_D5C6E373 
X-CRM114-Status: UNSURE (   6.69  )
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2693910884562988075=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2693910884562988075==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="E69HUUNAyIJqGpVn"
Content-Disposition: inline


--E69HUUNAyIJqGpVn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 09, 2019 at 10:20:07AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
>=20
> SAM9X60 also supports i2c-sda-hold-time-ns. Fix the documentation accordi=
ngly.
>=20
> Fixes: 2034e3f4c9a5 ("dt-bindings: i2c: at91: add new compatible")
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Applied to for-current, thanks!


--E69HUUNAyIJqGpVn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4TRbAACgkQFA3kzBSg
KbZimBAAl9QQJ8QhFYzsII9px4gfhT0yrmh+cV811coXSMa4w9CLYmL5vgm3y0Rj
eDNkXGJrk6YQ4xr8R8LE1AOQS3WDj84cwKG2H+BvmWxaR6hPtYUe+9rpUBqSbOjj
ToQ4B9qzxAKQioPtRIIIngQVJULmGYDOoHc4o5lECZGCQkNlmztIGsCdn1stuSUB
y/wqbaVvhUAbzaVh4z2dh2AI4FXMBZ35fkRmPxvE3ekZVuGax3aFmrFPi1PPexqP
VE9W5bUl4MJjvXE0QSB8fWrdCtrP6tp7y95X8DVYdTTi4TgLN/UkG9rf+2FHp5eE
M3Xy+aNjXajR0fs16se1OACue5gSIAcAX09AqgH9UvyLC16G4WgB+RFqLfuIbeLU
nbLc5QGNrpInPN0swe1FBw13kD5RN42cwkX3OIl7GxJ9QMMbv6YJFg2Ve7HZzTbS
tymTP6m5AnyAR/S/1uJoLkLV3I85JzwvOmAU8axt/ZFYXv5J/NOl4/pQZtXBjRdJ
Pb6C9ZKW8fUk3qKT99tRawa2uUeXKqqB1gk9VgVrWR7z0xQN9+7hProm3avOMWE0
MLFlstRff4E3jgRSB2zW+oWD6OxuKNYbZm8uFnTSrS9Im2nr3mxEWNAc/RF8bQ3x
1Q2FkbhLVeXweNsgLMfKtoIOoDY1enxpdt+y96DUcFc9/IZ/7NU=
=c8KO
-----END PGP SIGNATURE-----

--E69HUUNAyIJqGpVn--


--===============2693910884562988075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2693910884562988075==--

