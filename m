Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C0B2DAA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j6E8VKbjFaNi21ItHSaiXCqP7PqE14lZn2x/qknNunY=; b=TIMTzCM/iOTkpY/aREBwZc2Ly
	CDXQQK6DHibKcy/bj5mN+UUa1s7BsDEJc5ENU5NBw+vmGTleFk8BzzGXyESWNAcoLA9yG6By2c5vb
	TVJ4GuoWcyEow5EZWtCtGW5m9IgGcqkea2i328accfqMUA/rBXEaXQxteojQmN5tKricrv2XNSmWZ
	y6lfucFnK5wMSY8fa05wWrOtfDl5zQ+TGLtCsJONIigimouzBwsA6EJ64tyWDV9vIScaFyu/4UhVz
	oy8q+RTZFy8ZXyosfidmaBoiaVI44gcY0CFSREkQB2AD/297TYyN3LAKAJeraGa23MlhUQtJVp7ZR
	zeYNKKIqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVvpA-00025e-Vj; Wed, 29 May 2019 10:28:49 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVvoy-00023k-Ck
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:28:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hlNVu+GF0SjmhQ77ROXYvaDg9E4HhiQ13jeyXeBhqtU=; b=NTYW+K+DtVPo9SGcT4dCuYQ15
 6WJH5mErjLG1rmC3harcp8O6af6eT6eoedxjn2UTctm9im805OjpdMQxf6ogtprGoJtzraBgfVQoA
 clxmsLwaCvP7qr1gjeLbf5C8mxRI0st/r20HZ/6xKBGfIFkz2MrAdDWC+s5caJyKd6CJI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hVvon-0004ml-Gu; Wed, 29 May 2019 10:28:25 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 4094D440046; Wed, 29 May 2019 11:28:24 +0100 (BST)
Date: Wed, 29 May 2019 11:28:24 +0100
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v2] ASoC: sun4i-codec: fix first delay on Speaker
Message-ID: <20190529102824.GN2456@sirena.org.uk>
References: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
 <CAGb2v64osE5yVdpCxSRfpkaq2TqeUUiLUbr3wZWW1rawuqxW-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64osE5yVdpCxSRfpkaq2TqeUUiLUbr3wZWW1rawuqxW-Q@mail.gmail.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_032836_575579_326E4483 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Danny Milosavljevic <dannym@scratchpost.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7900415209613570430=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7900415209613570430==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sWvRP97dwRHm9fX+"
Content-Disposition: inline


--sWvRP97dwRHm9fX+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 29, 2019 at 10:34:25AM +0800, Chen-Yu Tsai wrote:

> I wonder if we shouldn't just keep the amplifier section powered up
> all the time.
> Also it seems not very many codec drivers go all out with DAPM.

Leaving the amplifier powered up all the time is going to burn a lot of
power and make any pop/click issues in the inputs more apparent.

--sWvRP97dwRHm9fX+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzuXr0ACgkQJNaLcl1U
h9B/JQgAhiaOXeIOyteRvhqURWW/1spsihg8TeHWBScXmrQX/R0VwELj3hjhy5Ba
W6e7/X6sS/WUY8U+GE1/JWoOGCzGB/wi/Gs6W4E3GmegSu184H2gWwEpVlSjKP3C
fmvTSqommDR+xP/XxOv/oD0oyEkttLMX4psUw+jNjN/1GTNVZSxtX03V+/NM3OIg
tQGvT8LodFWr7zVrU3vrJCtEudoXIXtvYXUD77rulZjpDZqS4O0EJPUfIgA12AQ4
3H9C9Hk4CmcZfvjE0tfDMCcPdlo1RZTyCZVfNpOXgmW6zTHZW7tGhg06gMo1GoWy
Muw0Y5jjzucEaRn//CF6GyeK/xsIXg==
=3Vid
-----END PGP SIGNATURE-----

--sWvRP97dwRHm9fX+--


--===============7900415209613570430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7900415209613570430==--

