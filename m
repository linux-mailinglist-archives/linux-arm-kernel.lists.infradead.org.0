Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3C2C2D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 11:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BHg9Si8pj2CB+4kahVZ6hmKHWmAqZxYPOLSZOrn3SlY=; b=KiKmqWoiE0fFmjKcdNur/tEJK
	ERzZbMPBRGqYMSz+j2tXXcsP7XjZeorTme/V1czkq9WdQFEtf/kTvCNFoP9eeszV+uy0tI4XVfmQt
	NY9ELVRwFBXqw3X4Wor1JV7wt7NdWPGF7p9xnAUs0t5W6NViyizC/O5yS2BteupBUz8Qt7jBh8x6d
	X4xSmJMAZqfXNzjAN6OQksq4M8v1UGrM5MzSWuGNjycuzGkHy2PtiuOVSNP9MTL+YlOu3c+KrCK+i
	MhadNh33j5bBIn1XlKh6MQ0GYNCmKMe4egBMf/Xfxzay3Vl36jLqda7goTpxmT5whhL2nUK3voQ0a
	hWfu0sGBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVYAZ-00028J-09; Tue, 28 May 2019 09:13:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVYAS-00027x-9r
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 09:13:13 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 75A91FF808;
 Tue, 28 May 2019 09:13:00 +0000 (UTC)
Date: Tue, 28 May 2019 11:12:59 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
Message-ID: <20190528091259.qrzegazyilviuy2n@flea>
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <20190527200627.8635-4-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190527200627.8635-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_021312_495119_407F073B 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7535491782430519784=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7535491782430519784==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zi3crwvz5dqqoqhp"
Content-Disposition: inline


--zi3crwvz5dqqoqhp
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 10:06:23PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a different bit to flush the TX FIFO.
>
> Add a quirks to prepare introduction of H6 SoC.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--zi3crwvz5dqqoqhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOz7mwAKCRDj7w1vZxhR
xYHnAQCF0T/LyvPDLxyjIVgapteJRIIteH2cyprro9XfsXCZKAEA/Jy3TK1gXH37
KQ0w0ZON8xPR32fd/FxWTsrhVYDGswU=
=xOqB
-----END PGP SIGNATURE-----

--zi3crwvz5dqqoqhp--


--===============7535491782430519784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7535491782430519784==--

