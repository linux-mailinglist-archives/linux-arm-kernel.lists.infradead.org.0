Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F39166548
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:48:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TKi4tFOTga14hIWeGUhA6v49Q3GrJpbax2wI42ETa9w=; b=AALEooYdlG9l4j8O4DRp9qKBB
	LS+zP/RVTji2FK63/qapXJVW0wdQNiVtdxP0eq7w/9AqtDGF/Lt19BJ7eOcKhNbb6vEJQQqEzF+dC
	028+iE1EOOEyp6iq7QXvKeqDZtvNq+vAG+yn3Ldh5sZVQlXYSPI/HBsVhKAB2VJwq01fbwhRTnBgY
	YJOxdoFv58vlaijg0LOv1TCR87xhldzXk7gy5JbX0L9kLuY8h5h+1doWz/xs/JWcY6/0UfryFvIn/
	ubI/ZWtSaNa/2YB+p0Tm5MH+46FWPdnC6dLJ3P5AWClfJHru55ZatzGGdYkK7rkEnpf5MOYh/LSQk
	E8AIZCqtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pvi-0002hW-SL; Thu, 20 Feb 2020 17:48:06 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pvX-0002gr-C9
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:47:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 29CCD21B82;
 Thu, 20 Feb 2020 12:47:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:47:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=OzZ5s0/+nPTILqp5qR3suIDlHla
 J5VfGwJdDzxiCG14=; b=SW1Wt5DPZub7FFigeTeXlQpSM8LZ6gVC61HOI9/kv1d
 OpiZc95TH2v3BcTOXKnHryH58+qEPeJJXAi4wi6CPiG78w7BiAELymaNs7f44xrp
 R74/kQwSh3Zlj4e3m8A03b1z3KAbWAX7mFXXKSA3PtHoFjaev/rCcHsfFgf3R/iM
 jiXTX9y+Xl8oEJas6DXUse6MbdYUpals/GUrAydIEriJfowz20tAEyytMk/GMKa0
 Te5ripKwZnUrU1xPxz0xrytRqdsMtVQxdKnd+TLXkIlT51/19NEV5nr7YW2smuCx
 BoD41TLhg5v07UzrCjcDipofT/gzQdn9urEO0GrKuxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=OzZ5s0
 /+nPTILqp5qR3suIDlHlaJ5VfGwJdDzxiCG14=; b=w8pJuTV132EgFBMoe2QE65
 GESqRBWBAlWW4Foj4E3n9InYMPM89MlLcWdK4yLZhOXIJA+jDXYsCUnqLTh8DPU4
 1QrRCcWhxIi8IHaA14peWCIh1GMgHWiGE3SaCMNSGcodK6sslyUBYq6ynlCdK01V
 4KyZfW2y8Et1YIYppwvI3Rt6lV3kxg7P+lFb0szFIROkkzkbmBrk2xT8IXff3Sjp
 vFNM9bTL50KyY39C9l5UEMPh7rOpfELFb7fn5ogPOFGJuR5wASFugDT2bJ7TNCl2
 vjtKLi1TsLXE/W6glbtOlGA7TEiMG7csuys2yemPhrA5AV685MH5TNLxvohBWsug
 ==
X-ME-Sender: <xms:R8ZOXuTRwC9E3WP6cRy9axgkTnlp3ZOD0x0M5lMqyMVUwvv5e4Ve4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 goufhushhpvggtthffohhmrghinhculdegledmnecujfgurhepfffhvffukfhfgggtuggj
 sehgtderredttdejnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimh
 gvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpehigidrihhonecukfhppeeltddr
 keelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:R8ZOXtFQZvJPU359f3JzCx8yJ0rxAANuubZGxec8WsTLgaFACDKGPw>
 <xmx:R8ZOXoPuHeGQ0xiCv0zWqfUn406LPPunfI7firkigt6mtM_-ukia_g>
 <xmx:R8ZOXhlglNRMFqx8QNA--N3h1kPm1O0LAERLbCxP0Jcl8uOo630rgA>
 <xmx:ScZOXh8wSbiGXZfzswMdCmKY7XJc6tB5KYkH2OpAg6YSIbzHoLkrlA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 550143280060;
 Thu, 20 Feb 2020 12:47:51 -0500 (EST)
Date: Thu, 20 Feb 2020 18:47:49 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/2] rtc: sun6i: Make external 32k oscillator optional
Message-ID: <20200220174749.ih3pcj3oxiwvuurz@gilmour.lan>
References: <20200213211427.33004-1-jernej.skrabec@siol.net>
 <20200213211427.33004-2-jernej.skrabec@siol.net>
 <20200214081443.ajz2sxh5ztk6qb2i@gilmour.lan>
 <5326350.DvuYhMxLoT@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <5326350.DvuYhMxLoT@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_094755_554929_2C5953B9 
X-CRM114-Status: GOOD (  26.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0700272482372810597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0700272482372810597==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qx7cvp6xg6zw344o"
Content-Disposition: inline


--qx7cvp6xg6zw344o
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 14, 2020 at 05:42:13PM +0100, Jernej =C5=A0krabec wrote:
> Hi Maxime,
>
> Dne petek, 14. februar 2020 ob 09:14:43 CET je Maxime Ripard napisal(a):
> > Hi Jernej,
> >
> > Thanks for taking care of this
> >
> > On Thu, Feb 13, 2020 at 10:14:26PM +0100, Jernej Skrabec wrote:
> > > Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix =
TX6
> > > (H6) don't have external 32kHz oscillator. Till H6, it didn't really
> > > matter if external oscillator was enabled because HW detected error a=
nd
> > > fall back to internal one. H6 has same functionality but it's the fir=
st
> > > SoC which have "auto switch bypass" bit documented and always enabled=
 in
> > > driver. This prevents RTC to work correctly if external crystal is not
> > > present on board. There are other side effects - all peripherals which
> > > depends on this clock also don't work (HDMI CEC for example).
> > >
> > > Make clocks property optional. If it is present, select external
> > > oscillator. If not, stay on internal.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >
> > >  drivers/rtc/rtc-sun6i.c | 14 ++++++--------
> > >  1 file changed, 6 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> > > index 852f5f3b3592..538cf7e19034 100644
> > > --- a/drivers/rtc/rtc-sun6i.c
> > > +++ b/drivers/rtc/rtc-sun6i.c
> > > @@ -250,19 +250,17 @@ static void __init sun6i_rtc_clk_init(struct
> > > device_node *node,>
> > >  		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> > >
> > >  	}
> > >
> > > -	/* Switch to the external, more precise, oscillator */
> > > -	reg |=3D SUN6I_LOSC_CTRL_EXT_OSC;
> > > -	if (rtc->data->has_losc_en)
> > > -		reg |=3D SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> > > +	/* Switch to the external, more precise, oscillator, if present */
> > > +	if (of_get_property(node, "clocks", NULL)) {
> > > +		reg |=3D SUN6I_LOSC_CTRL_EXT_OSC;
> > > +		if (rtc->data->has_losc_en)
> > > +			reg |=3D SUN6I_LOSC_CTRL_EXT_LOSC_EN;
> > > +	}
> > >
> > >  	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
> > >
> > >  	/* Yes, I know, this is ugly. */
> > >  	sun6i_rtc =3D rtc;
> > >
> > > -	/* Deal with old DTs */
> > > -	if (!of_get_property(node, "clocks", NULL))
> > > -		goto err;
> > > -
> >
> > Doesn't that prevent the parents to be properly set if there's an
> > external crystal?
>
> No, why?
>
> Check these two clk_summary:
> http://ix.io/2bHY Tanix TX6 (no external crystal)
> http://ix.io/2bI2 OrangePi 3 (external crystal present)

I was concerned about the "other" parent. In the case where you don't
have a clocks property (so the check that you are removing), the code
then registers a clock with two parents: the one that we create (the
internal oscillator) and the one coming from the clocks property.

clk_summary only shows the current parent, which is going to be right
with your patch, but in the case where you have no clocks property,
you still (attempts to) register two parents, the second one being
non-functional.

Further looking at it, we might be good because we allocate an array
of two clocks, but only register of_clk_get_parent_count(node) + 1
clocks, so 1 if clocks is missing.

Still, I think this should be more obvious, through a comment or
shuffling a bit the parent registration maybe?

Maxime

--qx7cvp6xg6zw344o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7GRQAKCRDj7w1vZxhR
xQesAQC0dLTkjQRPv7nN8RoGvwkfQKD3MlJW0DS82ULs76MWzQD/XsYEwCgNWukt
Jfxdu03CMK7a7R+nH2HNRolTJSWwpgQ=
=5PFt
-----END PGP SIGNATURE-----

--qx7cvp6xg6zw344o--


--===============0700272482372810597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0700272482372810597==--

