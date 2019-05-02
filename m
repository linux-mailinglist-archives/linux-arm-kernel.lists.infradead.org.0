Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA4B1153D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xrMUeCMa8zweW2NhSZMsjukgNmmskxy5rgBjga39uLw=; b=U2NxYm4Xs85ACMwNj26Nsrt7J
	AEPX2oAwdE23RsNzsSZCD/YOzYVc73M6aiaHJpnxNxlDsyCLwCD6RmvttW0LQLV7KprMUK/qPpDPI
	JYBPqwazQydtMR+D4XKbFu30LatJeGdexwAFPGJFMPsVPnWFA+PgiFwFjMdFDNIMvWf9EsQbd2V7N
	GUHtFX720PuOEcQ0JkGNt+BHcS9FUPyBlYR87WKS8ih7yrAhVnqduPOXKONKXC4weh7qjRj8IOwp0
	30nm/bp71gOGGtXdZV0arNYVtAScriaGnmaCIPKCbEYvIpv6iaR6RkWYGnurBVKqt1qzcNlSY/GJ8
	D7IZIFlDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6xs-0007u1-6S; Thu, 02 May 2019 08:21:12 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6xl-0007tf-Ir
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:21:07 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id CFEBE2000F;
 Thu,  2 May 2019 08:20:59 +0000 (UTC)
Date: Thu, 2 May 2019 10:20:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
Message-ID: <20190502082059.sbiw7vl3bvf3xvr6@flea>
References: <20190419191730.9437-1-peron.clem@gmail.com>
 <20190419191730.9437-2-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190419191730.9437-2-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_012105_772839_1773F205 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2993740243764398528=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2993740243764398528==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="btd22iz6kqkiqcoh"
Content-Disposition: inline


--btd22iz6kqkiqcoh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2019 at 09:17:26PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a SPDIF controller with an increase of the fifo
> size and a sligher difference in memory mapping compare which
> make it not compatible with the previous generation H3/A64.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--btd22iz6kqkiqcoh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqoawAKCRDj7w1vZxhR
xcVsAQCt3jq7c3aizsX9xzRHvkmOdi3AtdWVtL94AlsRVGoqcQEAi55aqZK17qkg
nWGnMmiLHXpuFjy2/+lwez2xEcVcQAU=
=Dtk+
-----END PGP SIGNATURE-----

--btd22iz6kqkiqcoh--


--===============2993740243764398528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2993740243764398528==--

