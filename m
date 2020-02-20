Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0E216657D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:53:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zvjfBXTGkSULKrSli7MG72MFee3MG0qBoeN6YP0DK8M=; b=I13MSTGKvLNWibvCrJgoXFtij
	Hks3ctMD6jZFd7qXI1NOYczZTnNcwDHTx0G/5eDZ125Wl+/2cbnGXEq9T4WYztFIWicpHSowTEe49
	2KHgdYGeKmanl1ZPqa9aCzeO7nZy0p8lSgZAxsa66CF/FQ5NxhCa6q9yG4sWDPODcrfE7jvWbmbO0
	vOAEwra47J3UwOx6oos5QaOEIyx0VPXNva0K57BldCdEznQjjLEAJPlj5stV7XZFZicnwDibkuVEj
	fOJa6P/DDZiCVwkbfPQAKgAqaPeZ/vY4tlrEvZTHG7fe9We2TyRht+s+snhHOb/ANJRnZqm5vPUUo
	p7J9b76OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q1F-0004nl-Qo; Thu, 20 Feb 2020 17:53:49 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q0k-0004O9-Cf
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:53:21 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6AF3F45C6;
 Thu, 20 Feb 2020 12:53:11 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 12:53:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/ilAHo2sD8DPbarnR+eiZM1rIcY
 n1q22Nc/a+Tg05HI=; b=f1hD521jZfmjXhb2Ix5sj5gSKqUVPAXbw6V3y9kE6to
 Cll7dmh1ytx1gz0v7/WzNRkO017HHxEVzRsEfZYA36oZWZ9toV3BM/IW2c5nah9B
 1WCwYv2NVPAqppW5jUf3IAiX61sG0O4PTWthwM/vEsZAy6FT4JCUb9y/x+tVaLaG
 m44s7f5lD10J/Jpw0zSIiaypESbdgai2wam5PUGGo67kBVdY7Vcdvp2i0opakcCe
 FIKrdBRtMs6kBBm/ZOlOUZefss7+jVUzBrGzpDzbWHAK30uudPdUeh1PD+qYfS2S
 tlIpYlLjfroJrQcomnBnmLa83nQ4+tu09px9McT3BQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/ilAHo
 2sD8DPbarnR+eiZM1rIcYn1q22Nc/a+Tg05HI=; b=AgvqZ90LDH3mg6xf3AmP0+
 8lLwrAeegt4SKMn8A9U5nzO399hyVW11EKkH1o0+cMXq1hWPHEQ16kW/VNFhWFOZ
 wYwfEDJnszpJDMOfr09xeV4PKlpQ2z0X1jsfMG4aohU/gV5ORABH9wiMnoPX4ZiM
 lDgJ9zZdXmv/wIPHDOMwkurMPHQmtfU7TvzemD/65KJs+7ZtRXGp+UkjbnxzwQg2
 EFWkjx53S5gNm+pgmSnYRhFO2TAMGAPW3QBwJV6/+HUWm4FBBcA2/A+q6egp0Y+r
 y8XzF1e8cyQshaRYFQmgayC16/yG33jLyGj/SJH9+NVkiLlMUXOqoVDr33ePFdiw
 ==
X-ME-Sender: <xms:hcdOXrHALdbQKHZDF-p5-V8U6h6NgOsgZV7Wlr5no_8FOvCfK5aSlg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgddutdekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hcdOXsmtwDvPaLgeLEHxx2j4cLwJjScGaARsUg-I99Jqz_bs0ve5fw>
 <xmx:hcdOXguIyRKNu6lVir6e10c7mhQS-VgW-Alp2MxTtX_o-8p7Eg6heg>
 <xmx:hcdOXoPfWFzbyApop1EhhdLZpJ6CPfeQ3lfOKDQzHO90pEWhXT9g1Q>
 <xmx:h8dOXkkOITkjN6nbD5jPx4U_IsLY2jD4xnSKGOWk05WsgkQcD2MHMw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 90EBE3280059;
 Thu, 20 Feb 2020 12:53:09 -0500 (EST)
Date: Thu, 20 Feb 2020 18:53:07 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200220175307.qool442lm7qjqb5h@gilmour.lan>
References: <20200214123244.109300-1-maxime@cerno.tech>
 <20200214131025.GI4831@pendragon.ideasonboard.com>
 <20200214154405.f5zuicm6uhhiczfs@gilmour.lan>
 <20200214154953.GJ4831@pendragon.ideasonboard.com>
 <20200217174253.mj53us4bb7h2lyca@gilmour.lan>
 <20200217181006.GE4830@pendragon.ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20200217181006.GE4830@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095318_619155_9D55F744 
X-CRM114-Status: GOOD (  26.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4947409376925781802=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4947409376925781802==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o5bnojo4ldqgcpzr"
Content-Disposition: inline


--o5bnojo4ldqgcpzr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 08:10:06PM +0200, Laurent Pinchart wrote:
> Hi Maxime,
>
> On Mon, Feb 17, 2020 at 06:42:53PM +0100, Maxime Ripard wrote:
> > On Fri, Feb 14, 2020 at 05:49:53PM +0200, Laurent Pinchart wrote:
> > > On Fri, Feb 14, 2020 at 04:44:05PM +0100, Maxime Ripard wrote:
> > > > On Fri, Feb 14, 2020 at 03:10:25PM +0200, Laurent Pinchart wrote:
> > > > > On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> > > > > > SoCs that have multiple TCONs can use the two set of pins on the first TCON
> > > > > > to drive a dual-link display. Add a property to enable the dual link.
> > > > > >
> > > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > > > ---
> > > > > >  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
> > > > > >  1 file changed, 7 insertions(+)
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > > index 86ad617d2327..aa6dd8409dbc 100644
> > > > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> > > > > > @@ -105,6 +105,13 @@ properties:
> > > > > >          - const: edp
> > > > > >          - const: lvds
> > > > > >
> > > > > > +  allwinner,lvds-dual-link:
> > > > > > +    type: boolean
> > > > > > +    description: |
> > > > > > +      On a SoC with two TCON with LVDS support, the first TCON can
> > > > > > +      operate over both pins sets to output in a dual-link setup. This
> > > > > > +      will be triggered by setting this property.
> > > > >
> > > > > Could you maybe provide an example of how this property is supposed to
> > > > > be used ? I'm especially wondering what ports are used in that case and
> > > > > how they're connected.
> > > >
> > > > It's pretty trivial to support, it's only a property to set on the
> > > > encoder node itself.
> > > >
> > > > I'm not really sure what you meant by your question with the ports
> > > > though :/
> > >
> > > I assume that, in the single-link case, you have two TCON instances that
> > > operate independently, each of them with one port that models an LVDS
> > > connection to a panel.
> >
> > Indeed,
> >
> > > In the dual-link mode, how does that look like ? Does the TCON
> > > instance that operate in dual-link mode have two ports in DT ? There
> > > are two physical ports, so I think it makes sense to always have two
> > > ports in DT. That's what we're doing for the LVDS encoders on R-Car
> > > Gen3, in order to specify in DT which LVDS input of the dual-link
> > > panel is connected to which LVDS output of the SoC. That allows
> > > configuring the LVDS encoder to send the even and odd pixels on the
> > > right port.
> >
> > As far as I can tell, you can't control that in our TCON. It just on
> > more lanes, that's it. Also, we currently have multiple ports, to map
> > another feature of the TCON, which is that it can drive directly a
> > panel, or will send its output to the HDMI / TV encoders. Adding
> > another port in that will break the current binding we have.
>
> This will create one issue though, in that the dual-link sinks are
> supposed to have two input ports, in order to expose the odd and even
> pixels ordering. If you have a single ouput port in your TCON, how will
> you interface with such sinks ?

I guess we could create multiple endpoints in the same port? That's
not going to be trivial either though given the current binding we
have :/

Maxime

--o5bnojo4ldqgcpzr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXk7HgwAKCRDj7w1vZxhR
xcM8AQCpa6c0h8xK/CcS02Pjk8iW05AziHyjvBQHFtCVXRiR8gD+JzClYTbONPVl
oCYyx0aKehSbr6qn6kDEgIeDEfuHoQ0=
=TIhH
-----END PGP SIGNATURE-----

--o5bnojo4ldqgcpzr--


--===============4947409376925781802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4947409376925781802==--

