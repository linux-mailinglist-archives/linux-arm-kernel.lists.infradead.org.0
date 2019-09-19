Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F552B80BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 20:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AV0wbsKqlIRQWAIVP+XmARV53Vx4Xsmj1FAbsNhMJBQ=; b=uQAU8vDj0jeylctRODg8Tkfc3
	DB2jUz87WzdWW0IC/37MR9HOzit8GsOncalaBEqFfwaHqHOUh6o23r+6misjxGs7cKnNfWiAxxZUT
	CwOICFbHqhTpHnKemERTvxlHw+lkrIebJEbfKKJeHdeamtnoIJCkZAdmZt7+EIpWUBzQDdrONV9EG
	nYpTEOs7NZJQwO0jgN7bMSfVOeRt6scJA6EcZEZhCOlLGcNrhoHh7H8AV+jLiTxQTsXauCoSKHqUN
	5z4GGOfKlTLKBrxlsMZyNvGTlevoJD6fKaOTbh4xjkDXRZOF1UoqgmdF1F5fY/LognCtWXEkMrDu9
	jCHCU+s1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB13a-0000bY-BE; Thu, 19 Sep 2019 18:21:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB10q-0000YM-MY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 18:18:55 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6CEEA21928;
 Thu, 19 Sep 2019 18:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568917119;
 bh=TCa764fDVm0BUS6jXDj8jA5f2AYG6d9jG3RP2yK6Qgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K8lPzaOs5uyswM5REgjEu/RUFpspu42cKGkuvs/ihehMn4NjIoqOcdyAN505ZZ700
 PWs5ixGmCLcsweiD7ajKJO52oDKH9L5Eq01aWAC9Ey/nF8LA3e2OK3oBU1W6LB7NwD
 N4xHYVc6nA5ef4YDOdpicOZD/WNqJfleo5hkvsKo=
Date: Thu, 19 Sep 2019 20:18:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] [PATCH] clk: sunxi-ng: h6: Use sigma-delta
 modulation for audio PLL
Message-ID: <20190919181837.yuhmqnojxpoqp35a@gilmour>
References: <20190914135100.327412-1-jernej.skrabec@siol.net>
 <CAGb2v640R7edA3EJvC=aJQZXGcfqot50O3-PFyrYj767pUEYrQ@mail.gmail.com>
 <8129141.yvSaxnLE4m@jernej-laptop>
 <CAGb2v65KQf_OX1sX9+4DAKKMKHP464cCZKjCRsn3LzTKRGLTcQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65KQf_OX1sX9+4DAKKMKHP464cCZKjCRsn3LzTKRGLTcQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_111842_867669_5C6BEED7 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Stephen Boyd <sboyd@kernel.org>,
 Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7291981448303815785=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7291981448303815785==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pfkcvjqh5wmcwf4x"
Content-Disposition: inline


--pfkcvjqh5wmcwf4x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 18, 2019 at 01:46:34PM +0800, Chen-Yu Tsai wrote:
> On Wed, Sep 18, 2019 at 1:21 PM Jernej =C5=A0krabec <jernej.skrabec@siol.=
net> wrote:
> >
> > Dne torek, 17. september 2019 ob 08:54:08 CEST je Chen-Yu Tsai napisal(=
a):
> > > On Sat, Sep 14, 2019 at 9:51 PM Jernej Skrabec <jernej.skrabec@siol.n=
et>
> > wrote:
> > > > Audio devices needs exact clock rates in order to correctly reprodu=
ce
> > > > the sound. Until now, only integer factors were used to configure H6
> > > > audio PLL which resulted in inexact rates. Fix that by adding suppo=
rt
> > > > for fractional factors using sigma-delta modulation look-up table. =
It
> > > > contains values for two most commonly used audio base frequencies.
> > > >
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > > ---
> > > >
> > > >  drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 21 +++++++++++++++------
> > > >  1 file changed, 15 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> > > > b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c index d89353a3cdec..ed6338d7=
4474
> > > > 100644
> > > > --- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> > > > +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
> > > > @@ -203,12 +203,21 @@ static struct ccu_nkmp pll_hsic_clk =3D {
> > > >
> > > >   * hardcode it to match with the clock names.
> > > >   */
> > > >
> > > >  #define SUN50I_H6_PLL_AUDIO_REG                0x078
> > > >
> > > > +
> > > > +static struct ccu_sdm_setting pll_audio_sdm_table[] =3D {
> > > > +       { .rate =3D 541900800, .pattern =3D 0xc001288d, .m =3D 1, .=
n =3D 22 },
> > > > +       { .rate =3D 589824000, .pattern =3D 0xc00126e9, .m =3D 1, .=
n =3D 24 },
> > > > +};
> > > > +
> > > >
> > > >  static struct ccu_nm pll_audio_base_clk =3D {
> > > >
> > > >         .enable         =3D BIT(31),
> > > >         .lock           =3D BIT(28),
> > > >         .n              =3D _SUNXI_CCU_MULT_MIN(8, 8, 12),
> > > >         .m              =3D _SUNXI_CCU_DIV(1, 1), /* input divider =
*/
> > > >
> > > > +       .sdm            =3D _SUNXI_CCU_SDM(pll_audio_sdm_table,
> > > > +                                        BIT(24), 0x178, BIT(31)),
> > > >
> > > >         .common         =3D {
> > > >
> > > > +               .features       =3D CCU_FEATURE_SIGMA_DELTA_MOD,
> > > >
> > > >                 .reg            =3D 0x078,
> > > >                 .hw.init        =3D CLK_HW_INIT("pll-audio-base", "=
osc24M",
> > > >
> > > >                                               &ccu_nm_ops,
> > > >
> > > > @@ -753,12 +762,12 @@ static const struct clk_hw *clk_parent_pll_au=
dio[] =3D
> > > > {>
> > > >  };
> > > >
> > > >  /*
> > > >
> > > > - * The divider of pll-audio is fixed to 8 now, as pll-audio-4x has=
 a
> > > > - * fixed post-divider 2.
> > > > + * The divider of pll-audio is fixed to 24 for now, so 24576000 and
> > > > 22579200 + * rates can be set exactly in conjunction with sigma-del=
ta
> > > > modulation.>
> > > >   */
> > > >
> > > >  static CLK_FIXED_FACTOR_HWS(pll_audio_clk, "pll-audio",
> > > >
> > > >                             clk_parent_pll_audio,
> > > >
> > > > -                           8, 1, CLK_SET_RATE_PARENT);
> > > > +                           24, 1, CLK_SET_RATE_PARENT);
> > > >
> > > >  static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
> > > >
> > > >                             clk_parent_pll_audio,
> > > >                             4, 1, CLK_SET_RATE_PARENT);
> > >
> > > You need to fix the factors for the other two outputs as well, since =
all
> > > three are derived from pll-audio-base.
> >
> > Fix how? pll-audio-2x and pll-audio-4x clocks have fixed divider in reg=
ards to
> > pll-audio-base, while pll-audio has not. Unless you mean changing their=
 name?
>
> Argh... I got it wrong. It looks good actually.
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Queued for 5.5, thanks

Maxime

--pfkcvjqh5wmcwf4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYPGfQAKCRDj7w1vZxhR
xfhxAQCQlPrCxV4nnEbqZUIhSmWlxP/HXHmMx5Kk4J83e7xUfgEAsQrTGvWtLAcb
3mTnYeJg0Ko41ya+QDycztsT65ffCAA=
=NCZi
-----END PGP SIGNATURE-----

--pfkcvjqh5wmcwf4x--


--===============7291981448303815785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7291981448303815785==--

