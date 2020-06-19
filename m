Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB502201591
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MVoFm184e70OYSbqYT5Z3gBQxBYS3iO1SKlBdBu4WpI=; b=G8yUu1t/x0jjXoAU1NBqORY65
	0+4JQBKlSq63G7Y/b5wULeiOlkFVuGcbuXXj0OKC9+yvqBWMnqswgXjYYbahIwsotEJmgFxzR0ztG
	IMbzMoO/j3bk7MrkEddY2A9t4wpCfkeGUn42p6mv7Ie/ojDmvXVgGmevahM1AtAjwpuvkU01mi94a
	pcNmbNW7ZrO9ROdBznmISI8DLy+Dpgu7cF6YHa8jwZghog7DA3RTK/CsHvky3J/ji558iVz1v4EZY
	d3uYt/B8KKgiZX9UMt3kFBRXN7rbuq9ON6bW0JrYmqDqibr6vaPzg5OOrZu2WE/KZld3sB36YUNZ0
	779h4lXKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJsd-0006Ps-TE; Fri, 19 Jun 2020 16:28:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJsQ-0006Oq-8S
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:28:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 542132A54CA
Received: by earth.universe (Postfix, from userid 1000)
 id CAF173C08CD; Fri, 19 Jun 2020 18:28:20 +0200 (CEST)
Date: Fri, 19 Jun 2020 18:28:20 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCHv2 3/6] power: supply: gpio-charger: add
 charge-current-limit feature
Message-ID: <20200619162820.hhv5rftp4xkhwtix@earth.universe>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-4-sebastian.reichel@collabora.com>
 <20200615175844.GA2032047@bogus>
MIME-Version: 1.0
In-Reply-To: <20200615175844.GA2032047@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_092826_432685_82F59E23 
X-CRM114-Status: GOOD (  20.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: multipart/mixed; boundary="===============1254997627154546572=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1254997627154546572==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yyzsddwp6z7jengx"
Content-Disposition: inline


--yyzsddwp6z7jengx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 15, 2020 at 11:58:44AM -0600, Rob Herring wrote:
> On Sat, Jun 06, 2020 at 12:44:00AM +0200, Sebastian Reichel wrote:
> > Add new charge-current-limit feature to gpio-charger.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../bindings/power/supply/gpio-charger.yaml   |  31 ++++
> >  drivers/power/supply/gpio-charger.c           | 140 ++++++++++++++++++
> >  2 files changed, 171 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charge=
r.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> > index 30eabbb14ef3..e11cfdc68a51 100644
> > --- a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> > +++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> > @@ -39,6 +39,25 @@ properties:
> >      maxItems: 1
> >      description: GPIO indicating the charging status
> > =20
> > +  charge-current-limit-gpios:
> > +    minItems: 1
> > +    maxItems: 32
> > +    description: GPIOs used for current limiting
> > +
> > +  charge-current-limit-mapping:
> > +    description: List of touples with current in uA and a GPIO bitmap =
(in
>=20
> s/touples/tuples/
>=20
> > +      this order). The touples must be provided in descending order of=
 the
>=20
> and here.

Ack.

> > +      current limit.
> > +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> > +    items:
> > +      items:
> > +        - description:
> > +            Current limit in uA
> > +        - description:
> > +            Encoded GPIO setting. Bit 0 represents last GPIO from the
> > +            charge-current-limit-gpios property. Bit 1 second to last
> > +            GPIO and so on.
>=20
> Seems a bit odd that bit N doesn't represent index N of the gpios.

I was looking at it from a graphical POV (i.e. "last" bit represents
last element):

list =3D <element3, element2, element1, element0>;
bits =3D 0b1011; // element3, 1 and 0

Basically when writing it the order is the same at the cost of list
index being reverse of bit index. But I do not really mind the order.
If people think its better the other way around I can swap it.

-- Sebastian

> > +
> >  required:
> >    - compatible
> > =20
> > @@ -47,6 +66,12 @@ anyOf:
> >      - gpios
> >    - required:
> >      - charge-status-gpios
> > +  - required:
> > +    - charge-current-limit-gpios
> > +
> > +dependencies:
> > +  charge-current-limit-gpios: [ charge-current-limit-mapping ]
> > +  charge-current-limit-mapping: [ charge-current-limit-gpios ]
> > =20
> >  additionalProperties: false
> > =20
> > @@ -60,4 +85,10 @@ examples:
> > =20
> >        gpios =3D <&gpd 28 GPIO_ACTIVE_LOW>;
> >        charge-status-gpios =3D <&gpc 27 GPIO_ACTIVE_LOW>;
> > +
> > +      charge-current-limit-gpios =3D <&gpioA 11 GPIO_ACTIVE_HIGH>,
> > +                                   <&gpioA 12 GPIO_ACTIVE_HIGH>;
> > +      charge-current-limit-mapping =3D <2500000 0x00>, // 2.5 A =3D> b=
oth GPIOs low
> > +                                     <700000 0x01>, // 700 mA =3D> GPI=
O A.12 high
> > +                                     <0 0x02>; // 0 mA =3D> GPIO A.11 =
high
> >      };

--yyzsddwp6z7jengx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl7s55sACgkQ2O7X88g7
+posXxAAimYGCMZqPCMGM572BWT84enhMCGLDZmbHF2T+nErP9bjg6Kl/7chCfr6
YtyFPcX5kAhq4yCwymzAEWjsnmo4Vn01XcXCvXZkUy9TZYyxTpqLN5IQupFoe1h6
QbP54+FosPdTsf2Yvm7QVyDxlbYMpuPPpU95jZRBtl4zsP5VGeZMwe0Ohf5x//aT
qBL/nY/l06OVq/pKV1OjfvAu6P4G1OkKnNw+AJ+itTZWZi+0I5xfsWZJ6Q9qHCXq
Gew48sWBTKQS4jLECNZuA7GcdYxNdjh8yl8t2jNCAw4WL7uSHL1wBBkzUmYjGB2h
qF5Q8w48iI3Dl2VwEvUp52Ca/AGu98e5gJp0QBqYUUxojZ15m4jbYk4elu05vb+v
kVdFvtpVWAhRChbiw7+PmOR+4WBC8d3CxpTgbGcFgort3mNPer8b1eS5YmA1eko9
d5Lb4xsw72+PrdSOdVFOqLW0jduAhlJuZfpnaStzfBO+YZWPJrkkmr78GZ/oIRrg
Tv78EKJ0ppyDv7wSev+4FbhsrneE16fJ6EoXrMwHzQt310wXam/bZu9ffzALPCsw
eNZFiCNV+0AXyziGJ9OLJQCVchgt5KgwkwDv0eVhDPZ6qUl7aG7lmCcVuFZrvFnB
v5BSRmZ3xE10iEmifEEhYlA4LYc/zFjdtWexbmc6Fj230KbY3zQ=
=3lsp
-----END PGP SIGNATURE-----

--yyzsddwp6z7jengx--


--===============1254997627154546572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1254997627154546572==--

