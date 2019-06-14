Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D1E461E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mQ8Tmh6OAsUJOcEcpszCDnJ7Q3MQzKqu1EITk9PDbzg=; b=gKBmiro35UktxwY/w3PjzQWHY
	nUDCnD6rBM5Sz2h1oDUP+W8lTVvLYHfgnVt6ICZNIRTf0H8G70V7M3xH65fUWl15bRq3BJB5+Tlo0
	keCJNXfJepr5nmyG18nH1o0Hd3lwDTdeci602mDXmZK8D9wPSNRc+j/qTu/eKwfQu5sRQCqay4Ff6
	yFrZnEiQOMf6iAFqzacsHc9rn4JiOVfxFuTX8Yhu3LhF9O9DPg8g2lczwiq457dC0X1+QoCoKkInp
	Y8P1M/yjNkq+WrSmWqv/L1sohFap96IFSyQ9DCAe6pKTVEvqjr/fpC85RGEC5sUj0YzJwr7nQ8bpe
	5JlATIvqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnft-0000q5-CY; Fri, 14 Jun 2019 14:59:29 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnfg-0000pE-Rs
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:59:18 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id B5937FF806;
 Fri, 14 Jun 2019 14:59:02 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:59:02 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
Message-ID: <20190614145902.vjytw74bs5roh2f2@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
 <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
 <20190611145856.ua2ggkn6ccww6vpp@flea>
 <CAL_Jsq+KwH-j8f+r+fWhMuqJPWcHdBQau+nUz3NRAXYTpsyuvg@mail.gmail.com>
 <20190614095048.j2xwdsucucbakkl2@flea>
 <CAL_Jsq+=yh3WhTg=1G02LUHGLHts6mECR9BQ+n7qHAihFViAxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+=yh3WhTg=1G02LUHGLHts6mECR9BQ+n7qHAihFViAxA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_075917_218170_A252E2B2 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============7602920802026227795=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7602920802026227795==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wmxpz6l3hrzuotke"
Content-Disposition: inline


--wmxpz6l3hrzuotke
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Jun 14, 2019 at 07:37:49AM -0600, Rob Herring wrote:
> > > For '-gpio', we may be okay because the suffix is handled in the GPIO
> > > core. It should be safe to update the binding to use the preferred
> > > form.
> >
> > It might require a bit of work though in drivers, since the fallback
> > is only handled if you're using the gpiod API, and not the legacy one.
> >
> > > > And then, we need to agree on how to express the deprecation. I guess
> > > > we could allow the deprecated keyword that will be there in the
> > > > draft-8, instead of ad-hoc solutions?
> > >
> > > Oh, nice! I hadn't seen that. Seems like we should use that. We can
> > > start even without draft-8 support because unknown keywords are
> > > ignored (though we probably have to add it to our meta-schema). Then
> > > at some point we can add a 'disallow deprecated' flag to the tool.
> >
> > So, in the generic ethernet binding, we would have:
> >
> > properties:
> >   phy-handle:
> >     $ref: /schemas/types.yaml#definitions/phandle
> >     description:
> >       Specifies a reference to a node representing a PHY device.
> >
> >   phy:
> >     $ref: "#/properties/phy-handle"
> >     deprecated: true
> >
> >   phy-device:
> >     $ref: "#/properties/phy-handle"
> >     deprecated: true
> >
> > Does that sound good?
>
> Yes.

Great, I'll post that.

> > Now, how do we handle the case above, in the device specific binding?
> > We just require the non-deprecated one, or the three?
>
> Wouldn't that just depend if all the instances of the device specific
> binding have been updated?

You mean in the DTS?

It shouldn't matter, we'll want to have a warning anyway. But yeah,
I'll update them too.

Maxme

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wmxpz6l3hrzuotke
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQO2NgAKCRDj7w1vZxhR
xYYMAQCpuUGZecwJPnE6MJSUbuL1fXyUaH+2U+W+fTF4OHIb8gEAxykOmBXCzeYm
qShBRvc18IIAbeOPCAbqTKJy+kpccgc=
=AR23
-----END PGP SIGNATURE-----

--wmxpz6l3hrzuotke--


--===============7602920802026227795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7602920802026227795==--

