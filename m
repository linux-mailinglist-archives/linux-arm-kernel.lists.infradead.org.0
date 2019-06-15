Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733FD471FE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 22:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rkFhN70BBViALFbvwjkYSF27B/FDDYrkjcANJ334Bwk=; b=EF+sR6LGnWk4tFgDP9CGvRfMN
	XR5Bkcbi0B6tMQtiIufr1VE4iODEjC7svUj22djz83Kg7oJDvbCkRG86yXAgD15+ZPUmARhsNGyTH
	1ab+Rfhbhelv9Kd4/Z84NvQozhpTBYK4p/N9b7Cz62xVapUE7Tbj2+0Qv21YrHcMlNSZFhbr3TKwG
	swenTDr/vabUYCDFuOsWmtPeCipvD92zqUz5XtMoTqd+DJmnFXRFTwZdwADysshj8YKQ5vfvJhMlz
	zz1sjUr0UW51K53zewijN1v+Wkf3hYDaCqTPuB7LozsxDjFMOJO1/O0TU+T3w+F1YptaNARXrgU9h
	wSMQTEbJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcEvW-0005rG-Fq; Sat, 15 Jun 2019 20:05:26 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcEvI-0005oI-8G
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 20:05:15 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 9933B80211; Sat, 15 Jun 2019 22:04:54 +0200 (CEST)
Date: Sat, 15 Jun 2019 22:05:03 +0200
From: Pavel Machek <pavel@denx.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 4.19 080/118] ARM: dts: imx51: Specify IMX5_CLK_IPG as
 "ahb" clock to SDMA
Message-ID: <20190615200503.GA31108@amd>
References: <20190613075643.642092651@linuxfoundation.org>
 <20190613075648.475709941@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <20190613075648.475709941@linuxfoundation.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_130512_457598_2D817403 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Sasha Levin <sashal@kernel.org>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============4532638386671787407=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4532638386671787407==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ReaqsoxgOBHFXBhH"
Content-Disposition: inline


--ReaqsoxgOBHFXBhH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> [ Upstream commit 918bbde8085ae147a43dcb491953e0dd8f3e9d6a ]
>=20
> Since 25aaa75df1e6 SDMA driver uses clock rates of "ipg" and "ahb"
> clock to determine if it needs to configure the IP block as operating
> at 1:1 or 1:2 clock ratio (ACR bit in SDMAARM_CONFIG). Specifying both
> clocks as IMX5_CLK_SDMA results in driver incorrectly thinking that
> ratio is 1:1 which results in broken SDMA funtionality. Fix the code
> to specify IMX5_CLK_AHB as "ahb" clock for SDMA, to avoid detecting
> incorrect clock ratio.

I don't see 25aaa75df1e6 commit in stable-4.19.y branch. Is that intentiona=
l?

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--ReaqsoxgOBHFXBhH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0FT28ACgkQMOfwapXb+vL6dgCfYW2JjV1nayaQSK9FOWnkOf8B
ZOcAnRoMrSeSUpv79gq3VOQGJA5FSa8m
=hmem
-----END PGP SIGNATURE-----

--ReaqsoxgOBHFXBhH--


--===============4532638386671787407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4532638386671787407==--

