Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B932B529
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y2JHlf4GwuWBQWM3dG5T5FiLOBzpXX3+KtYR4e45sOQ=; b=O73bZhpBxMm6h+4vV0BwUQteq
	q/Ds0m6anrSH3LCQMbYAfWTXdB/ifcI8tyDBL+5fcJGRHfffKhXoUSKjOetqGBAiy39cO0CwYNLUc
	CRzvaRvYRwniZsKr+Qlw1F2/i1PbfZkvYVR0oRxsuQI4Y4eB7BO050WsItEbK6rCsxnilNircZLqA
	2LorrkWgK7OV0bFnI0NjoaHPljJe/r5SR94RJ2LR0awdYL1Tbh042xs1iFdeaEwJOLOzr4arBnUEH
	okhFTciZ5t0DbDeIqCyo5tAp1cvno1W6RUNM5xikJyrE9FRR5nMo2rl3NDBPTmSQ0XtzmmJNVrB+3
	bd4f+y+6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEka-0007YN-8Y; Mon, 27 May 2019 12:29:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEkS-0007Xz-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:29:05 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B5136C0003;
 Mon, 27 May 2019 12:28:57 +0000 (UTC)
Date: Mon, 27 May 2019 14:28:57 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
Message-ID: <20190527122857.lphlgr7dc5z4f5o3@flea>
References: <20190525162323.20216-1-peron.clem@gmail.com>
 <20190525162323.20216-4-peron.clem@gmail.com>
 <20190526182410.soqb6bne6w66d5j6@flea>
 <CAJiuCce8UNbA+Ljkbw92ZJu3Ni6N9ciFKGsLtBYJ0_J8E1Gi2g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCce8UNbA+Ljkbw92ZJu3Ni6N9ciFKGsLtBYJ0_J8E1Gi2g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_052904_604142_D512CAB2 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4301354433076614828=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4301354433076614828==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5fgdhizk55u3fsr6"
Content-Disposition: inline


--5fgdhizk55u3fsr6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 26, 2019 at 09:00:30PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>
> On Sun, 26 May 2019 at 20:24, Maxime Ripard <maxime.ripard@bootlin.com> w=
rote:
> >
> > On Sat, May 25, 2019 at 06:23:19PM +0200, Cl=E9ment P=E9ron wrote:
> > > Allwinner H6 has a different bit to flush the TX FIFO.
> > >
> > > Add a quirks to prepare introduction of H6 SoC.
> > >
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  sound/soc/sunxi/sun4i-spdif.c | 11 ++++++++++-
> > >  1 file changed, 10 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-sp=
dif.c
> > > index b6c66a62e915..8317bbee0712 100644
> > > --- a/sound/soc/sunxi/sun4i-spdif.c
> > > +++ b/sound/soc/sunxi/sun4i-spdif.c
> > > @@ -166,10 +166,12 @@
> > >   *
> > >   * @reg_dac_tx_data: TX FIFO offset for DMA config.
> > >   * @has_reset: SoC needs reset deasserted.
> > > + * @reg_fctl_ftx: TX FIFO flush bitmask.
> >
> > It's a bit weird to use the same prefix for a register offset
> > (reg_dac_tx_data) and a value (reg_fctl_ftx).
>
> I just look at sun4i-codec and they use a regmap, But I think it's a
> bit overkill no?

For a single value, yeah

> What do you think about val_fctl_ftx ?

Looks good, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5fgdhizk55u3fsr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOvYCQAKCRDj7w1vZxhR
xWpYAQDonSAGR8IIIJfCwN6P7pyQ5D2rskJl7lfFfD4Mo5WZ8QD/aAaog6/za5ta
r3GfRL559CHukEIi7he29P416ycIjw0=
=3d9d
-----END PGP SIGNATURE-----

--5fgdhizk55u3fsr6--


--===============4301354433076614828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4301354433076614828==--

