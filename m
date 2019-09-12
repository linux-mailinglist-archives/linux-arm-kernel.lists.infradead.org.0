Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E7B0B8C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 11:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=muKtbMqUQ+XAHr9lMytp4kzEuDbgjIJerYiTrGxd+a4=; b=nlCQeLTrGiSkZ3NS5pTXj+/wt
	oBjdyKlC2DjtjRBdQ2ryToRLZ/BoF3jGWg/FrOzrR3Xjp+m4lAL3AxETf8PZJrJkIGpKrpcS0uvN0
	fI1BucZFITOBjZe4T94h3VyxeuGf+mRhndXZ8iFazI2v3M0FocRf6fyZTVivQ/J6/1aQRVWPBCtEe
	xElwcJwMxfCi7q/lJjiMM+QfMneMzkUnPCiYW5WQvJQtJQchqFNGvxz8v927XzC3F6loNJQnHSq0u
	8CgVXc8/9sWZcf1/lqb0AdiXzD4vunv+UXSS8kC4qJ7gnAcHzZGzaijZ9nk6XXkxMSaQNNps5zKCh
	zlqa9R55w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8LY2-0001A5-D3; Thu, 12 Sep 2019 09:37:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8LXp-00019e-8B
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 09:37:42 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 25C6F20856;
 Thu, 12 Sep 2019 09:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568281060;
 bh=fD3WpoO3f2gpFrlgdn1Y9gFuBeXCWGXp86lvU0zRboY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QgoNqVGoelY7/KRxtPZ4wl+sSzMRe4QJCt4H63JAQebqweondhx6qL64s6Xsy6Tmu
 +j4nFO0vVp14mcwLqWG+dOZDGU2Zp0ySO9zqdkGjGw2KcEs+EFIG3ow3AuJRqDKgsc
 05C6Oxk+8Q0fhf7OQJZCvjgDKFDioUuhY8J+3aMg=
Date: Thu, 12 Sep 2019 11:37:37 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 3/9] dt-bindings: crypto: Add DT bindings documentation
 for sun8i-ce Crypto Engine
Message-ID: <20190912093737.s6iu63sdncij2qib@localhost.localdomain>
References: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
 <20190906184551.17858-4-clabbe.montjoie@gmail.com>
 <20190907040116.lib532o2eqt4qnvv@flea> <20190911183158.GA8264@Red>
MIME-Version: 1.0
In-Reply-To: <20190911183158.GA8264@Red>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_023741_335191_2ABA8A75 
X-CRM114-Status: GOOD (  21.60  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7067567183821316432=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7067567183821316432==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7d2ddx4b3xu2lr3y"
Content-Disposition: inline


--7d2ddx4b3xu2lr3y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Corentin,

On Wed, Sep 11, 2019 at 08:31:58PM +0200, Corentin Labbe wrote:
> On Sat, Sep 07, 2019 at 07:01:16AM +0300, Maxime Ripard wrote:
> > On Fri, Sep 06, 2019 at 08:45:45PM +0200, Corentin Labbe wrote:
> > > This patch adds documentation for Device-Tree bindings for the
> > > Crypto Engine cryptographic accelerator driver.
> > >
> > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > ---
> > >  .../bindings/crypto/allwinner,sun8i-ce.yaml   | 84 +++++++++++++++++=
++
> > >  1 file changed, 84 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/crypto/allwinne=
r,sun8i-ce.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i=
-ce.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
> [...]
> > > +else:
> > > +  clocks:
> > > +    items:
> > > +      - description: Bus clock
> > > +      - description: Module clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: ahb
> > > +      - const: mod
> > > +
> > > +  resets:
> > > +    maxItems: 1
> > > +
> > > +  reset-names:
> > > +    const: ahb
> >=20
> > This prevents the usage of the additionalProperties property, which
> > you should really use.
> >=20
> > What you can do instead is moving the clocks and clock-names
> > description under properties, with a minItems of 2 and a maxItems of
> > 3. Then you can restrict the length of that property to either 2 or 3
> > depending on the case here.
> >=20
>=20
> Hello
>=20
> I fail to do this.
> I do the following (keeped only clock stuff)
> properties:
>=20
>   clocks:
>     items:
>       - description: Bus clock
>       - description: Module clock
>       - description: MBus clock

Add minItems: 2  and maxItems: 3 at the same level than items

>=20
>   clock-names:
>     items:
>       - const: ahb
>       - const: mod
>       - const: mbus

And here as well

Something I missed earlier though was that we've tried to unify as
much as possible the ahb / apb / axi clocks around the bus name, it
would be great if you could do it.

>=20
> if:
>   properties:
>     compatible:
>       items:
>         const: allwinner,sun50i-h6-crypto
> then:
>   properties:
>       clocks:
>         minItems: 3
>         maxItems: 3
>       clock-names:
>         minItems: 3
>         maxItems: 3

You don't need to duplicate the min and maxItems here

Maxime

--7d2ddx4b3xu2lr3y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXXoR4QAKCRDj7w1vZxhR
xd/rAQDRrO6PXFXddEGmbg33Hyw8TjZtRKONBAAN5nSryJdLjQD+O0kVALWGEe1h
DMUgNDC+mm3ZrNDIOzQMdWgSgsA4aA0=
=g4h8
-----END PGP SIGNATURE-----

--7d2ddx4b3xu2lr3y--


--===============7067567183821316432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7067567183821316432==--

