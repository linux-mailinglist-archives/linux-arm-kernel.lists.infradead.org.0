Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2965E1B2206
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=swuN9JNWNs3n+ZR9snxa7mAlbtqDiNWmFRWOzXGeUsI=; b=t/3CCMv4Ubp+oqXe2JAmDWJXl
	XfEs3XXf2X2tnSh9TYscR42IR7gbxSLcPSus6EUh8OCNDXadBChzzqhkN/HFygLccTLM1fAZb9Ptc
	9Yq6CLOdeBEvFOUinfqL0G6CTzpwsHGP2miq/Y/QhrKROxOD9bbUoLokQEVHfzqd2XH9G6XejE116
	1aFDj7NIZhMWj3sL15r3xRrMUEsn8wxiHOJyNJotLZvjG+5W0DtEJF3JMZV13+QS+Uq7xTynaW0hN
	MO9xeUgP6ji/WMUMgA/XgsCt3TwpRMlcZQbxyYOXKj/hlNHttDvHu1zvh6mnutJaxUxyA3dfeLJZx
	5N2gG+SXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQocZ-0001UQ-Pt; Tue, 21 Apr 2020 08:51:11 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQocP-0001QF-CM
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:51:03 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B047D5802FA;
 Tue, 21 Apr 2020 04:50:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 21 Apr 2020 04:50:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=kVXHl9ONWZxm/eCarGMy9NnfLaf
 sgVL03AsfObM5hQc=; b=iRucDdL2HuYht6LTO/SALHG4U3PK1SFIbulMcpbI1uy
 +PThkCsNrdnZCyAOfLX8ltOE2d0NtFXEfMjmaXqHvdvcSNIhOnl6AztA0sIKCjnf
 tWPCvZUAVCSgr6nq40urcjF9/cKStJRDT60TuVIRMeZ2nYEauEmjHQc9BmUCARif
 NBkO0lwcX0m/nekRx/hkb/9tWzCkS0QOYWiE/yzX4cMjKTRJLf53effos2Gs3ozq
 GkqefyuPFopp5I6PdjOlPjV2eChyPT0nzHqYo1VFtxKx7ZY584Wx1i0JoCkKMWrC
 B0FUCYvnrnYNp+JrU7SLnyqZiAOaA/YduMYhKrSuhVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=kVXHl9
 ONWZxm/eCarGMy9NnfLafsgVL03AsfObM5hQc=; b=39HFL6dZ8Gaf+PY9KOSHea
 9ZTTAMirPYkTZ5dVnv0se65w42OfbdhLIIgiLdpQrHAKfQZyc1glhUv3MBNRP27U
 q+fuA+fObhU36IWnOkuHyt31QGDZg79p56WT2Uw3Rmi1tsurNeLLTrmK/pcrTCGV
 4XshVegyBqN120PMNx9KwlMgH0BXE+UygOHlbMCLocH57+C1oGB8AIe8sr0oONMP
 PNoGJ1hTefvqCOLJ9ylLhO8Tv3jhUj8L+OTdM65x2uV7zBKt7EXBZC8W+RZf9dyy
 1KejlC+uSjdbui0S3jKF1jqU/MioV4UHodROWOwUK+8RjzH9SonUVlBc584mxgnA
 ==
X-ME-Sender: <xms:7rOeXocOsTB2H4XmzhdecsGgUyqsEgbagC39uF9bYhgJlhQB6LEVrg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeehgddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7rOeXgH96sag2W05KIW3TXPdBdSkK2Id03KIXKFP2yB8hnOdIuCHtg>
 <xmx:7rOeXks20QQeggaqz8fYBsinWLclpLiuHvWBUd2P7AZn5Te6WzCVSg>
 <xmx:7rOeXoAEFXMD5f-zsCBBhlEdf4NVH6XR8W9-rvOcyrmgm9bxcHCvcA>
 <xmx:77OeXkDA144FK_yG2jaGc2pxn-3r26INx7HcQkJ-XF4mnktCgjizqA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5BEDC328005E;
 Tue, 21 Apr 2020 04:50:54 -0400 (EDT)
Date: Tue, 21 Apr 2020 10:50:53 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 4/7] ASoC: sun4i-i2s: Set sign extend sample
Message-ID: <20200421085053.x2lcirwiej6sjgve@gilmour.lan>
References: <20200418224435.23672-1-peron.clem@gmail.com>
 <20200418224435.23672-5-peron.clem@gmail.com>
 <20200420124452.5vaoyw73n76jwmey@gilmour.lan>
 <CAJiuCccAFk3X03OV2MhGuqY7YW0HtM_1gJO9cW0=6OoTkSB6gg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCccAFk3X03OV2MhGuqY7YW0HtM_1gJO9cW0=6OoTkSB6gg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_015101_726676_02E37EF9 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6960264170575652111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6960264170575652111==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fqqhi4a56jzsency"
Content-Disposition: inline


--fqqhi4a56jzsency
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 02:56:31PM +0200, Cl=E9ment P=E9ron wrote:
> On Mon, 20 Apr 2020 at 14:44, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Sun, Apr 19, 2020 at 12:44:32AM +0200, Cl=E9ment P=E9ron wrote:
> > > From: Marcus Cooper <codekipper@gmail.com>
> > >
> > > On the newer SoCs such as the H3 and A64 this is set by default
> > > to transfer a 0 after each sample in each slot. However the A10
> > > and A20 SoCs that this driver was developed on had a default
> > > setting where it padded the audio gain with zeros.
> > >
> > > This isn't a problem whilst we have only support for 16bit audio
> > > but with larger sample resolution rates in the pipeline then SEXT
> > > bits should be cleared so that they also pad at the LSB. Without
> > > this the audio gets distorted.
> > >
> > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> > > ---
> > >  sound/soc/sunxi/sun4i-i2s.c | 22 ++++++++++++++++++++++
> > >  1 file changed, 22 insertions(+)
> > >
> > > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > > index a23c9f2a3f8c..618bbc5156f1 100644
> > > --- a/sound/soc/sunxi/sun4i-i2s.c
> > > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > > @@ -48,6 +48,9 @@
> > >  #define SUN4I_I2S_FMT0_FMT_I2S                               (0 << 0)
> > >
> > >  #define SUN4I_I2S_FMT1_REG           0x08
> > > +#define SUN4I_I2S_FMT1_REG_SEXT_MASK         BIT(8)
> > > +#define SUN4I_I2S_FMT1_REG_SEXT(sext)                        ((sext)=
 << 8)
> > > +
> > >  #define SUN4I_I2S_FIFO_TX_REG                0x0c
> > >  #define SUN4I_I2S_FIFO_RX_REG                0x10
> > >
> > > @@ -105,6 +108,9 @@
> > >  #define SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED                (1 << 7)
> > >  #define SUN8I_I2S_FMT0_BCLK_POLARITY_NORMAL          (0 << 7)
> > >
> > > +#define SUN8I_I2S_FMT1_REG_SEXT_MASK         GENMASK(5,4)
> > > +#define SUN8I_I2S_FMT1_REG_SEXT(sext)                        ((sext)=
 << 4)
> > > +
> > >  #define SUN8I_I2S_INT_STA_REG                0x0c
> > >  #define SUN8I_I2S_FIFO_TX_REG                0x20
> > >
> > > @@ -663,6 +669,12 @@ static int sun4i_i2s_set_soc_fmt(const struct su=
n4i_i2s *i2s,
> > >       }
> > >       regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
> > >                          SUN4I_I2S_CTRL_MODE_MASK, val);
> > > +
> > > +     /* Set sign extension to pad out LSB with 0 */
> > > +     regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> > > +                        SUN4I_I2S_FMT1_REG_SEXT_MASK,
> > > +                        SUN4I_I2S_FMT1_REG_SEXT(0));
> > > +
> > >       return 0;
> > >  }
> > >
> > > @@ -765,6 +777,11 @@ static int sun8i_i2s_set_soc_fmt(const struct su=
n4i_i2s *i2s,
> > >                          SUN8I_I2S_CTRL_BCLK_OUT | SUN8I_I2S_CTRL_LRC=
K_OUT,
> > >                          val);
> > >
> > > +     /* Set sign extension to pad out LSB with 0 */
> > > +     regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> > > +                        SUN8I_I2S_FMT1_REG_SEXT_MASK,
> > > +                        SUN8I_I2S_FMT1_REG_SEXT(0));
> > > +
> > >       return 0;
> > >  }
> > >
> > > @@ -867,6 +884,11 @@ static int sun50i_i2s_set_soc_fmt(const struct s=
un4i_i2s *i2s,
> > >                          SUN8I_I2S_CTRL_BCLK_OUT | SUN8I_I2S_CTRL_LRC=
K_OUT,
> > >                          val);
> > >
> > > +     /* Set sign extension to pad out LSB with 0 */
> > > +     regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> > > +                        SUN8I_I2S_FMT1_REG_SEXT_MASK,
> > > +                        SUN8I_I2S_FMT1_REG_SEXT(0));
> > > +
> >
> > If this is an issue only on the A10 / A20, why are you setting it up on=
 the
> > other generations too?
>=20
> To keep coherency between all set_soc_format(), and also avoid this
> kind of issue for future generation.
> As this doesn't cost much after all, and it avoid to rely on default,
> but what do you think ?

It makes sense, but it should be in the commit log ;)

Maxime

--fqqhi4a56jzsency
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp6z7QAKCRDj7w1vZxhR
xRKPAQDKDkl/yXwfl6zP01kFEW33d7XQzfgr6caEpTneQ5fenwD/SEDIrclnDcLg
oBp79cAQbVbjsXW+AxD0wp6NpniGJAs=
=x3KU
-----END PGP SIGNATURE-----

--fqqhi4a56jzsency--


--===============6960264170575652111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6960264170575652111==--

