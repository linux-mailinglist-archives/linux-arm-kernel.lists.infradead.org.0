Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077EB2AB9A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 20:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vEO/DVAT8CRCRSWg7uh1IiZAo+2tdyRuvGoNQntd+Uo=; b=svJLAzKxiAcQciI22yYEKvaYa
	VgkGm1r6LKDTKNcnDSjlRFwWnULrSXTzHSKIzq64oBbw16pk5tSyfki32My4GO07My6wIn8RCL6bE
	XXKkjzPP2SeS5Ilv2Gzoo/a0oeBxNm9eq0/3QTFAElSZCAATNw1gTyj0ES+pLQrpegXMGenGrsUQs
	51xLxa68O/UXpOqKcTZjTzgwqLSy3Tn40e4S0RU99PNam5LIQBr3SUf2jLlVLEnrZ+95BQYqe7exI
	E4iiLJdN62MeRLkoMJrZWloY/RfWQcaxDSE2Pqt/YzoYtAcB7EsG81aefMbnmIY2bjE/gbALCBaz7
	LvB/TWurg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUxpM-0004ES-SQ; Sun, 26 May 2019 18:25:00 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxpG-0004EI-R6
 for linux-arm-kernel@bombadil.infradead.org; Sun, 26 May 2019 18:24:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z6Kb/jusomC0te+JfEhLUPY0ZL1MmF321b4mccnRR0M=; b=zjEkJgv0wEN5XcC+S0Le/DFGF
 Qb8yin6HC8SPWAMvZbI6pnv7I6QGmmxp98br5WdOepN1OWhj0PSVT8dMJPT5WKTtmXZdzRXSq6eyh
 P5GkdCSEHIMlTNSI0yXY2XxIkolkaEL+IiW7C/uEMxA4D7HMC6w2I9A67JXV/wuSmg26Gvx18nT3u
 EK2v67jZWEECT3h/tYuFslqdvMv7EXF7I5W7dxL2sPOjXejSQa0Kj8ZRuop/tlCFizNY5cwrM4B07
 +z7jZpEsN8c0lQsL9YIJwRx265mE+XFIJi0Gqgym7B7Y8sAwmC7/soVc14CgpYWnk41PpQG7Z/Urt
 oleDQjGUw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUxpE-00051y-0u
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 18:24:52 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 5B9BA200009;
 Sun, 26 May 2019 18:24:11 +0000 (UTC)
Date: Sun, 26 May 2019 20:24:10 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
Message-ID: <20190526182410.soqb6bne6w66d5j6@flea>
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-4-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525162323.20216-4-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_142452_180438_07C7B8D8 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4970487375283617212=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4970487375283617212==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ncwtv45aqoqucxoa"
Content-Disposition: inline


--ncwtv45aqoqucxoa
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 06:23:19PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a different bit to flush the TX FIFO.
>
> Add a quirks to prepare introduction of H6 SoC.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-spdif.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-spdif.c
> index b6c66a62e915..8317bbee0712 100644
> --- a/sound/soc/sunxi/sun4i-spdif.c
> +++ b/sound/soc/sunxi/sun4i-spdif.c
> @@ -166,10 +166,12 @@
>   *
>   * @reg_dac_tx_data: TX FIFO offset for DMA config.
>   * @has_reset: SoC needs reset deasserted.
> + * @reg_fctl_ftx: TX FIFO flush bitmask.

It's a bit weird to use the same prefix for a register offset
(reg_dac_tx_data) and a value (reg_fctl_ftx).

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ncwtv45aqoqucxoa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOrZygAKCRDj7w1vZxhR
xX2iAP4vmqh1nSGLNbrJR8v0vBh2+l0fQX6kqx83+rzmZQkZAwEA9wYOzTE6aQsj
ncPb9kzAxB6nwlo5NuAAcwZBIUQ9rA4=
=uFpz
-----END PGP SIGNATURE-----

--ncwtv45aqoqucxoa--


--===============4970487375283617212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4970487375283617212==--

