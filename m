Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8513C3CA0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ze8myuHMe7TGDNwvGGojWxdbjH4joZbpObaBdwqycJs=; b=DcvI1jQmx8F0f7JVz8gq/Q0oN
	cLer0frLSLLRW900DBE/ZheRsa3wYRasw9edywUv7m1FO7CTNIus2ey0laXzV9VfvZaiLpzL5fkpr
	ER3SFEegkoimRCfrQ06isc3m39KmHF0vXm0VBM+d1e1HRLatqPd2ab/5owuRrwgeSIfetfrbvNZMo
	FP+DG0hQenOr4WjNBl8uK7NhoIqGw61ESemEDHdf+wRTK6phGJwGDd2sCKNnqNMF5TRE5Wqeuixli
	8Hf8RDZci366bbvkxukYvo/pUvzCrn4KD1hW0ygQ1R9qwHv3bnvWOamT/tuB7PdW3YRqEyhDxS9yT
	J4iO9607Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haf07-0002RO-VU; Tue, 11 Jun 2019 11:31:40 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haezr-0002Ow-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:31:25 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id B79F460007;
 Tue, 11 Jun 2019 11:31:08 +0000 (UTC)
Date: Tue, 11 Jun 2019 13:31:08 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 09/11] dt-bindings: net: sun8i-emac: Convert the
 binding to a schemas
Message-ID: <20190611113108.pxiia2u5skbnl2au@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <f3f393db88b26d84a048cb71887a571611b984a2.1560158667.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqL8ARs3jQECS+E-BtZGouLYJhofM+oPpS1a3SxPORwMZA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqL8ARs3jQECS+E-BtZGouLYJhofM+oPpS1a3SxPORwMZA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_043123_579612_8AA9156B 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============6770857786752918403=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6770857786752918403==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="twpj3baugamuul24"
Content-Disposition: inline


--twpj3baugamuul24
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jun 10, 2019 at 01:22:00PM -0600, Rob Herring wrote:
> On Mon, Jun 10, 2019 at 3:26 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > +    then:
> > +      properties:
> > +        allwinner,tx-delay-ps:
> > +          allOf:
> > +            - $ref: /schemas/types.yaml#definitions/uint32
>
> Can drop this as anything with unit prefix has its type defined
> already.

Not for picoseconds though. I'll send a PR to dt-schema if you prefer
to define it there.

>
> > +            - enum: [0, 100, 200, 300, 400, 500, 600, 700]
> > +              default: 0
> > +          description:
> > +            External RGMII PHY TX clock delay chain value in ps.
> > +
> > +        allwinner,rx-delay-ps:
> > +          allOf:
> > +            - $ref: /schemas/types.yaml#definitions/uint32
> > +            - enum:
> > +                - 0
> > +                - 100
> > +                - 200
> > +                - 300
> > +                - 400
> > +                - 500
> > +                - 600
> > +                - 700
> > +                - 800
> > +                - 900
> > +                - 1000
> > +                - 1100
> > +                - 1200
> > +                - 1300
> > +                - 1400
> > +                - 1500
> > +                - 1600
> > +                - 1700
> > +                - 1800
> > +                - 1900
> > +                - 2000
> > +                - 2100
> > +                - 2200
> > +                - 2300
> > +                - 2400
> > +                - 2500
> > +                - 2600
> > +                - 2700
> > +                - 2800
> > +                - 2900
> > +                - 3000
> > +                - 3100
>
> I think you can do
>
> enum: [1, 2, 3,
>   4,  5, 6]
>
> Or you can do:
>
> minimum: 0
> maximum: 3100
> multipleOf: 100
>
> IIRC that multipleOf is a json-schema key.

I really like that second syntax, thanks!

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--twpj3baugamuul24
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP+Q/AAKCRDj7w1vZxhR
xXNCAP9Z7+EYu847+4dOo5AEj3ZOyAIpaf0cfysGi59ElDt8YgEA36E6Jv7/cOpS
KBTjh2j/vsuGvWij3L6KlfuKURO0UwM=
=3dqX
-----END PGP SIGNATURE-----

--twpj3baugamuul24--


--===============6770857786752918403==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6770857786752918403==--

