Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EB0D945E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 16:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nFpQd+s6rLL1QtyGuJ4kuV8X+EzZn7V37G2JDTSMR/Q=; b=aRHvV7IbpEFs2yrJRULN5zseU
	et2bENYgfiDorORC3m9/H+BmRCc8m793bnueEBi5pUfmvpOY5uajucNI8lAc63jEDldLOZgXVtwF6
	4Q9AViiwzy7dFmKE/jTQXmewFWxiYRma15iYZq/PFr/3sVCuBD6VC2QyzZ3iDfi0RrqAEe1biUDhb
	rXsCtwGTbBkdLJodrXcUPPdK4CLBuBN+soABb0pWBOwbxlKlk4Sjieg6ufFZv85olwk1vmc92z9J+
	8eaYT1Oco3WrFed3Lw6rQWEX3OScI2l/nVDqMmefXsOIXrWwZ5sJO23cZtQj5ktyMx51HrPcvYKy0
	0eP7ySG/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkgb-0002Xd-27; Wed, 16 Oct 2019 14:54:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkgO-0002Wa-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 14:53:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4985F2168B;
 Wed, 16 Oct 2019 14:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571237627;
 bh=uc/PYalgTjzCCWhp6PA2rkYtBpjEkTRPLPZjqrQyptI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=x7w7DZ/gRhixI5aXMMHU39O2Ro3sO/7sBmGkF+zzkpkPrptyR9+jc4MEcN7v509e9
 Zg5kAUqeRoB9qzys+P36C2PI+bAfPTelA9JfB1RJB/FGqDk57u3ph7ZaakwdFs7iRm
 2UxhvNWaIWWezJxjUZVD3w+9mEyjt/+qlNHsYyqY=
Date: Wed, 16 Oct 2019 16:53:45 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Code Kipper <codekipper@gmail.com>
Subject: Re: [PATCH v6 2/7] ASoC: sun4i-i2s: Add functions for RX and TX
 channel offsets
Message-ID: <20191016145345.ll2igr2j5zttosjj@gilmour>
References: <20191016070740.121435-1-codekipper@gmail.com>
 <20191016070740.121435-3-codekipper@gmail.com>
 <20191016080653.3seixioa2xiaobd7@gilmour>
 <CAEKpxBmuYe-kHpa4cvo6iabTM_qNro2hXVAkjioBZFt9N4pHdA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEKpxBmuYe-kHpa4cvo6iabTM_qNro2hXVAkjioBZFt9N4pHdA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_075348_195997_C65F54A7 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7710555538495938472=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7710555538495938472==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jby4uz6cwklukmi6"
Content-Disposition: inline


--jby4uz6cwklukmi6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 16, 2019 at 10:25:29AM +0200, Code Kipper wrote:
> On Wed, 16 Oct 2019 at 10:06, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Hi,
> >
> > On Wed, Oct 16, 2019 at 09:07:35AM +0200, codekipper@gmail.com wrote:
> > > From: Marcus Cooper <codekipper@gmail.com>
> > >
> > > Newer SoCs like the H6 have the channel offset bits in a different
> > > position to what is on the H3. As we will eventually add multi-
> > > channel support then create function calls as opposed to regmap
> > > fields to add support for different devices.
> > >
> > > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > > ---
> > >  sound/soc/sunxi/sun4i-i2s.c | 31 +++++++++++++++++++++++++------
> > >  1 file changed, 25 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > > index f1a80973c450..875567881f30 100644
> > > --- a/sound/soc/sunxi/sun4i-i2s.c
> > > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > > @@ -157,6 +157,8 @@ struct sun4i_i2s_quirks {
> > >       int     (*set_chan_cfg)(const struct sun4i_i2s *,
> > >                               const struct snd_pcm_hw_params *);
> > >       int     (*set_fmt)(struct sun4i_i2s *, unsigned int);
> > > +     void    (*set_txchanoffset)(const struct sun4i_i2s *, int);
> > > +     void    (*set_rxchanoffset)(const struct sun4i_i2s *);
> >
> > The point of removing the regmap_field was that because having a
> > one-size-fits-all function with regmap_field sort of making the
> > abstraction was becoming more and more of a burden to maintain.
> >
> > Having functions for each and every register access is exactly the
> > same as using regmap_field here, and the issue we adressed is not with
> > regmap_fields in itself.
> >
> > If the H6 has a different register layout, then so be it, create a new
> > set_chan_cfg or set_fmt function for the H6.
>
> The H3 and the H6 have a similar register layout but the issue here
> is that sooner rather than later we would want to be supporting
> multi-channel audio which requires the offset to be applied to each
> TX channel channel select register(8chan PCM for HDMI requires 4 Tx
> channels). Currently we're only using one.

So, as it turns out, they do not have the same register layout?

Maxime

--jby4uz6cwklukmi6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXacu+QAKCRDj7w1vZxhR
xbpWAQD9d7cqPH+6+SLdgcA51ULmYTV+ruv2fADxYhKJiST9+AD/UEhef7PZqkGw
6nq7Em4kSoD7ip5xtYFAHDOWzTFGUgk=
=IAvd
-----END PGP SIGNATURE-----

--jby4uz6cwklukmi6--


--===============7710555538495938472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7710555538495938472==--

