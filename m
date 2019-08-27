Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 700499F227
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 20:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iZhI6dazem9m6dLLUNUOFALG3IviP6sNVPt6UrBmR6s=; b=hxNaTLddwJVm26UTFN4//CGPr
	LGmeNjx4Gxy+q3zMxckdDWootjFw657mcxwHPwFcrlJOc6ueN7RSa0LIVISSTmVf4vmLWGjzmKhGM
	GPtXHX4GVYwoT30HOTrS0+o9WsQJFXJefo1lspjhBGSujCTRYIwz/1Yio4Mqoj0VhmCn7NM5rocZF
	7FM8QwYsSGTOPsULuQ7TcTSSPvPIxALIjsHNZJtppR84OthlbCgw7otJ2dTihDgHFn2CDOMzSwc3C
	58CdtMkARxZ/YWIHQybPDtCceK8Iyk9LmwR0Nx4rI0mvuWBT5bGZMt40y/0+UGA+oASnisQ1y538p
	ApMVYb23g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2fzB-0004bY-Hs; Tue, 27 Aug 2019 18:14:29 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2fz4-0004ay-0y
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 18:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V/UcaU4EeSdHqUtL83nLzCKplC5y/OxX6AUl8iisM4g=; b=ieFQVeflIDdnhomkhIHE2o6+9
 hEtQBIghfiEmWGTnw2RAf00ImomLKDxCVWkCTJfwnxcJxlXJf98KD/68Y9/x1Y08kJ220GBw6GzFX
 PquP0c5A207abDqJzLuqpx+c+QGzU3QRf5O46Pn1mcVOgfK4p5FEWTq3MPy5iMCpm7hyg=;
Received: from 92.41.142.151.threembb.co.uk ([92.41.142.151]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2fyv-0000t7-WE; Tue, 27 Aug 2019 18:14:14 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 841B7D02CE6; Tue, 27 Aug 2019 19:14:09 +0100 (BST)
Date: Tue, 27 Aug 2019 19:14:09 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/5] dt-bindings: sound: sun4i-spdif: Fix dma-names warning
Message-ID: <20190827181409.GH23391@sirena.co.uk>
References: <20190827142547.14577-1-mripard@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190827142547.14577-1-mripard@kernel.org>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_111422_070138_8F54555C 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0330511891581656483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0330511891581656483==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fez1/uVX7m6GpeOd"
Content-Disposition: inline


--fez1/uVX7m6GpeOd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 27, 2019 at 04:25:43PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>=20
> Even though the H6 compatible has been properly added, the exeption for t=
he
> number of DMA channels hasn't been updated, leading in a validation
> warning.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.  This
doesn't even have ASoC in it...

--fez1/uVX7m6GpeOd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1lcvAACgkQJNaLcl1U
h9AQNwf/Wko2ywl/1pCNlhI8r5T9icdRCSO3aCusrcNdTqFPwCKGaybfQwcs7T1i
0ljLfvQoPvxUH1pj+ed4D4e1D+L2MNaGgm30zRQvPmoldJ23rYC3scQgom5ejb8Z
EfLTB7ogGLiwIysbn4eZojzA9AfJwkXdCsFPSR55iSGop/lztHREVQEGnW6Ktw+7
U52qHI6sJ0mYGJgA39HQarp4lwVuSHRgouhsvA/6CXQ4sLUxTwZYNZwh4hKd/c3u
+T0CZ022i3XwoWwGrD5VreO1Yas3ZU3jf7vT4gnpOrSH+oonnwHBfFl9nDCMMJB6
IDS3MJpUDnm64N8iliKuxAO3z3Jgow==
=7aoP
-----END PGP SIGNATURE-----

--fez1/uVX7m6GpeOd--


--===============0330511891581656483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0330511891581656483==--

