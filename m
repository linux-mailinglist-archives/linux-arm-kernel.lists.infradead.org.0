Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59D1161901
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 18:43:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=unksTk8n+/qG6jj+uG6Pg25l67HNQ6v/c5nUG07nfSs=; b=TavjCbzbTqVOypNPxIIYl+8L0
	v/dQZ4sfRKV1pxqrXrbaTlsfF4q+DqWMWW9FVwa4UhO8eWy1tXmj6OTI6XpEALiz18ClUZ0I6IoU9
	ZINV0mGKCdszbuNLTKQkLG/X2PB7etm4Wh2dQxu1DHkPSEwWJXODbFxWs2Ng+nlhRUkIlM6Q8wSGh
	kR+h8IS8ZfhHrKahnscAXFX4MPgCC5P+4w9/d5A05nUipZXn1EXZd8Oe+g+q7Uq0Npuj+ElTxknni
	3q8xQklyBcr/QbVDtwJh5MTTB7n4jj1DuL99Kvgtq6VqGG9bx4OQkAxHBOK2Zrw7Pr9ROpJwtdBmM
	AprZazjXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kQR-0002Bf-4V; Mon, 17 Feb 2020 17:43:19 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kQ9-00023a-BA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 17:43:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1AB224876;
 Mon, 17 Feb 2020 12:42:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 17 Feb 2020 12:42:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=LSh1lPCDqxLO7Bib4LTPMBWDfsX
 YnGwYBlDhYAcksF8=; b=b0JTk3fpnH2iEvcdnGSPGCzgWS4ca+cN7nDmuXFsV0S
 OWEG8L1FS5bSt1/CHbIkkdxHibHJxYdUO7LrBCLKNKlHy4it36RSWB949z4snssM
 v53A4n2KRwrX9EfFHyvAC5gcBqLJQ/B+nYuC71HgWY3dHQrr6QCbNg2RnX3kS+PP
 ONrQjLxRmBcJAeXzuQOtn8tK3rCvxi/t57k6oNBsgSTQvIiKgdfVexO8eMq5lPx+
 m3tHPtkSbxlU+WmLc2CrnF893fgsHBLCfA5CeHNNuB/HmC+oD8y0SlxLmuLSAPpW
 qpoGETK0LWPyIBPUyK0CCT4fklQqdLXrBS0ziJPX7Sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=LSh1lP
 CDqxLO7Bib4LTPMBWDfsXYnGwYBlDhYAcksF8=; b=1i5/8d8UeLz8dClE3oGsmn
 lFQr0W0jozQM1AAid1YGPD1CEsNlvn0Qn0e469lXKMFAUbiCznsko4L4EByFfmMG
 79v3hlIoF13qUGbNSbaAN/Ii/Feiw67Esxb8tAtZB5XfEu+ODbde4dtwafketsmD
 ztJhHaOohxXo98uiFwDvjaqff1o6KOhYGRuJlcsBsVSa5kCl6kc6ieytjx3ZEofj
 SNvgh7HGN2jt/pMwx9IE0l+Ce2mAFfMfSmXvZKzi0N7sQgOaJeZAzTNolnZaz6RP
 NNJcUUSdsEG/j6BUqLYp/cK+hmnteBqlaiR6ZfAyeC5ET5rFgQlSGwXd10juoJ1w
 ==
X-ME-Sender: <xms:n9BKXuepCW-mHLb-2p1TtTR_BbrxpyeL9Wbdhz8Ibs2mTYEaeaOAsw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeeigddutdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:n9BKXsfW24k8ACvYT0625gyL6vS_efXRG1Ydu0NJblaqQvFzXcV1JA>
 <xmx:n9BKXqgpsIhvLY4lwotvOAfbTv0xW-AoM2yfxmJ5TTyOh5FJqfNDSQ>
 <xmx:n9BKXgS2TZ5HbQ0pIDUbkQaJGiH1rTWmuQhRyfrqQEb3V5bhSj94Tg>
 <xmx:otBKXkNji56iaFxQ7Oqv68jgbmGGBiS-InCCgRuUIpNNBwkhCyH-mw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B8A8B328005D;
 Mon, 17 Feb 2020 12:42:54 -0500 (EST)
Date: Mon, 17 Feb 2020 18:42:53 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200217174253.mj53us4bb7h2lyca@gilmour.lan>
References: <20200214123244.109300-1-maxime@cerno.tech>
 <20200214131025.GI4831@pendragon.ideasonboard.com>
 <20200214154405.f5zuicm6uhhiczfs@gilmour.lan>
 <20200214154953.GJ4831@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20200214154953.GJ4831@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_094301_833552_145F80E4 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8630966084141635644=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8630966084141635644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qacjjsbo4tknjumh"
Content-Disposition: inline


--qacjjsbo4tknjumh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 14, 2020 at 05:49:53PM +0200, Laurent Pinchart wrote:
> On Fri, Feb 14, 2020 at 04:44:05PM +0100, Maxime Ripard wrote:
> > On Fri, Feb 14, 2020 at 03:10:25PM +0200, Laurent Pinchart wrote:
> > > On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> > > > SoCs that have multiple TCONs can use the two set of pins on the first TCON
> > > > to drive a dual-link display. Add a property to enable the dual link.
> > > >
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > ---
> > > >  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
> > > >  1 file changed, 7 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > index 86ad617d2327..aa6dd8409dbc 100644
> > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > @@ -105,6 +105,13 @@ properties:
> > > >          - const: edp
> > > >          - const: lvds
> > > >
> > > > +  allwinner,lvds-dual-link:
> > > > +    type: boolean
> > > > +    description: |
> > > > +      On a SoC with two TCON with LVDS support, the first TCON can
> > > > +      operate over both pins sets to output in a dual-link setup. This
> > > > +      will be triggered by setting this property.
> > >
> > > Could you maybe provide an example of how this property is supposed to
> > > be used ? I'm especially wondering what ports are used in that case and
> > > how they're connected.
> >
> > It's pretty trivial to support, it's only a property to set on the
> > encoder node itself.
> >
> > I'm not really sure what you meant by your question with the ports
> > though :/
>
> I assume that, in the single-link case, you have two TCON instances that
> operate independently, each of them with one port that models an LVDS
> connection to a panel.

Indeed,

> In the dual-link mode, how does that look like ? Does the TCON
> instance that operate in dual-link mode have two ports in DT ? There
> are two physical ports, so I think it makes sense to always have two
> ports in DT. That's what we're doing for the LVDS encoders on R-Car
> Gen3, in order to specify in DT which LVDS input of the dual-link
> panel is connected to which LVDS output of the SoC. That allows
> configuring the LVDS encoder to send the even and odd pixels on the
> right port.

As far as I can tell, you can't control that in our TCON. It just on
more lanes, that's it. Also, we currently have multiple ports, to map
another feature of the TCON, which is that it can drive directly a
panel, or will send its output to the HDMI / TV encoders. Adding
another port in that will break the current binding we have.

Maxime

--qacjjsbo4tknjumh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkrQnQAKCRDj7w1vZxhR
xYyzAP9aURz+zTYWHC5IhPxfSni9jc9Q1CStAZuL2lmltDlckwD/ev90hA7s+dfA
ovuGwNHceNKd9m5Ieuk4gimi8XgkbgA=
=33cs
-----END PGP SIGNATURE-----

--qacjjsbo4tknjumh--


--===============8630966084141635644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8630966084141635644==--

