Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7510219E8E2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 05:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BVjXbi48wDIL0joXiMrYNabu50qY3bkQGqeGxnlZuAw=; b=vAOnhL6xL+hkt0qEewc3x9w+I
	ee2CeVed7ZteLSbONbuyQwZqb53DWyMTlQZ+28Q5UQGS/cNuSC9H7pmw8WjRfYxu4Ndox9si1GTa7
	j04UdXkIv5s/WsgGFBbpvMoN/jW0opfLDkwfjxcpEDepJ/cYCqYv36Cuw4XKdHQW21LxgLy7879uQ
	44hxF8IthCmsdq1lRG1xN/OhT1I0y5HzbRKKobNrWgHdOJD1ZAIuP8lnMzsmJAFia66bE6P5ZTqGb
	3O/eE4QCtzkoAxlMZGqqgwfqzPFQi9+w8+bL9sz6AjOEOPqLqMAlKaBqCIPy5t41YpIaJPtsBsHjx
	NritTZwPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvzi-0004wb-TW; Sun, 05 Apr 2020 03:30:47 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvzY-0004w8-Kq; Sun, 05 Apr 2020 03:30:38 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 3B1CD296767
Received: by earth.universe (Postfix, from userid 1000)
 id 66B893C082A; Sun,  5 Apr 2020 05:30:32 +0200 (CEST)
Date: Sun, 5 Apr 2020 05:30:32 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 02/10] dt_bindings: ROHM BD99954 Charger
Message-ID: <20200405033032.pmnceutghfa65g4a@earth.universe>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <8e47af93563b266020924f66b2c40311304cbccd.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
In-Reply-To: <8e47af93563b266020924f66b2c40311304cbccd.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_203036_945072_82EBFDB7 
X-CRM114-Status: GOOD (  21.96  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Andrei Stefanescu <andrei.stefanescu@microchip.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Linus Walleij <linus.walleij@linaro.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andreas Kemnade <andreas@kemnade.info>,
 "Angelo G. Del Regno" <kholk11@gmail.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org,
 Axel Lin <axel.lin@ingics.com>, Gregory CLEMENT <gregory.clement@bootlin.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Markus Reichl <m.reichl@fivetechno.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, markus.laine@fi.rohmeurope.com,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>, devicetree@vger.kernel.org,
 Charles Keepax <ckeepax@opensource.cirrus.com>, mazziesaccount@gmail.com,
 linux-arm-msm@vger.kernel.org, Richard Fitzgerald <rf@opensource.cirrus.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Baolin Wang <baolin.wang@linaro.org>, Sangbeom Kim <sbkim73@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pm@vger.kernel.org,
 Randy Dunlap <rdunlap@infradead.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, mikko.mutanen@fi.rohmeurope.com,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 patches@opensource.cirrus.com
Content-Type: multipart/mixed; boundary="===============4030248322450531499=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4030248322450531499==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y5mq6m4ozetakcfn"
Content-Disposition: inline


--y5mq6m4ozetakcfn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 03, 2020 at 11:45:26AM +0300, Matti Vaittinen wrote:
> The ROHM BD99954 is a Battery Management LSI for 1-4 cell Lithium-Ion
> secondary battery. Intended to be used in space-constraint equipment such
> as Low profile Notebook PC, Tablets and other applications. BD99954
> provides a Dual-source Battery Charger, two port BC1.2 detection and a
> Battery Monitor.
>=20
> Document the DT bindings for BD99954
>=20
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

>=20
> No changes since v7
>=20
>  .../bindings/power/supply/rohm,bd99954.yaml   | 155 ++++++++++++++++++
>  1 file changed, 155 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,b=
d99954.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/power/supply/rohm,bd99954.=
yaml b/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
> new file mode 100644
> index 000000000000..7e0f73a898c7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/rohm,bd99954.yaml
> @@ -0,0 +1,155 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/supply/rohm,bd99954.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ROHM BD99954 Battery charger
> +
> +maintainers:
> +  - Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> +  - Markus Laine <markus.laine@fi.rohmeurope.com>
> +  - Mikko Mutanen <mikko.mutanen@fi.rohmeurope.com>
> +
> +description: |
> +  The ROHM BD99954 is a Battery Management LSI for 1-4 cell Lithium-Ion
> +  secondary battery intended to be used in space-constraint equipment su=
ch
> +  as Low profile Notebook PC, Tablets and other applications. BD99954
> +  provides a Dual-source Battery Charger, two port BC1.2 detection and a
> +  Battery Monitor.
> +
> +
> +properties:
> +  compatible:
> +    const: rohm,bd99954
> +#
> +#    The battery charging profile of BD99954.
> +#
> +#    Curve (1) represents charging current.
> +#    Curve (2) represents battery voltage.
> +#
> +#    The BD99954 data sheet divides charging to three phases.
> +#    a) Trickle-charge with constant current (8).
> +#    b) pre-charge with constant current (6)
> +#    c) fast-charge with:
> +#       First a constant current (5) phase (CC)
> +#       Then constant voltage (CV) phase (after the battery voltage has =
reached
> +#       target level - until charging current has dropped to termination
> +#       level (7)
> +#
> +#     V ^                                                        ^ I
> +#       .                                                        .
> +#       .                                                        .
> +# (4)- -.- - - - - - - - - - - - - -  +++++++++++++++++++++++++++.
> +#       .                            /                           .
> +#       .                     ++++++/++ - - - - - - - - - - - - -.- - (5)
> +#       .                     +    /  +                          .
> +#       .                     +   -   --                         .
> +#       .                     +  -     +                         .
> +#       .                     +.-      -:                        .
> +#       .                    .+         +`                       .
> +#       .                  .- +       | `/                       .
> +#       .               .."   +          .:                      .
> +#       .             -"      +           --                     .
> +#       .    (2)  ..."        +       |    :-                    .
> +#       .    ...""            +             -:                   .
> +# (3)- -.-.""- - - - -+++++++++ - - - - - - -.:- - - - - - - - - .- - (6)
> +#       .             +                       `:.                .
> +#       .             +               |         -:               .
> +#       .             +                           -:             .
> +#       .             +                             ..           .
> +#       .   (1)       +               |               "+++- - - -.- - (7)
> +#       -++++++++++++++- - - - - - - - - - - - - - - - - + - - - .- - (8)
> +#       .                                                +       -
> +#       -------------------------------------------------+++++++++-->
> +#       |             |       |   CC   |      CV         |
> +#       | --trickle-- | -pre- | ---------fast----------- |
> +#
> +#   The charger uses the following battery properties
> +# - trickle-charge-current-microamp:
> +#     Current used at trickle-charge phase (8 in above chart)
> +#     minimum: 64000
> +#     maximum: 1024000
> +#     multipleOf: 64000
> +# - precharge-current-microamp:
> +#     Current used at pre-charge phase (6 in above chart)
> +#     minimum: 64000
> +#     maximum: 1024000
> +#     multipleOf: 64000
> +# - constant-charge-current-max-microamp
> +#     Current used at fast charge constant current phase (5 in above cha=
rt)
> +#     minimum: 64000
> +#     maximum: 1024000
> +#     multipleOf: 64000
> +# - constant-charge-voltage-max-microvolt
> +#     The constant voltage used in fast charging phase (4 in above chart)
> +#     minimum: 2560000
> +#     maximum: 19200000
> +#     multipleOf: 16000
> +# - precharge-upper-limit-microvolt
> +#     charging mode is changed from trickle charging to pre-charging
> +#     when battery voltage exceeds this limit voltage (3 in above chart)
> +#     minimum: 2048000
> +#     maximum: 19200000
> +#     multipleOf: 64000
> +# - re-charge-voltage-microvolt
> +#     minimum: 2560000
> +#     maximum: 19200000
> +#     multipleOf: 16000
> +#     re-charging is automatically started when battry has been discharg=
ing
> +#     to the point where the battery voltage drops below this limit
> +# - over-voltage-threshold-microvolt
> +#     battery is expected to be faulty if battery voltage exceeds this l=
imit.
> +#     Charger will then enter to a "battery faulty" -state
> +#     minimum: 2560000
> +#     maximum: 19200000
> +#     multipleOf: 16000
> +# - charge-term-current-microamp
> +#     minimum: 0
> +#     maximum: 1024000
> +#     multipleOf: 64000
> +#     a charge cycle terminates when the battery voltage is above rechar=
ge
> +#     threshold, and the current is below this setting (7 in above chart)
> +#   See also Documentation/devicetree/bindings/power/supply/battery.txt
> +
> +  monitored-battery:
> +    description:
> +      phandle of battery characteristics devicetree node
> +
> +  rohm,vsys-regulation-microvolt:
> +    description: system specific lower limit for system voltage.
> +    minimum: 2560000
> +    maximum: 19200000
> +    multipleOf: 64000
> +
> +  rohm,vbus-input-current-limit-microamp:
> +    description: system specific VBUS input current limit (in microamps).
> +    minimum: 32000
> +    maximum: 16352000
> +    multipleOf: 32000
> +
> +  rohm,vcc-input-current-limit-microamp:
> +    description: system specific VCC/VACP input current limit (in microa=
mps).
> +    minimum: 32000
> +    maximum: 16352000
> +    multipleOf: 32000
> +
> +required:
> +  - compatible
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        charger@9 {
> +            compatible =3D "rohm,bd99954";
> +            monitored-battery =3D <&battery>;
> +            reg =3D <0x9>;
> +            interrupt-parent =3D <&gpio1>;
> +            interrupts =3D <29 8>;
> +            rohm,vsys-regulation-microvolt =3D <8960000>;
> +            rohm,vbus-input-current-limit-microamp =3D <1472000>;
> +            rohm,vcc-input-current-limit-microamp =3D <1472000>;
> +        };
> +    };
> --=20
> 2.21.0
>=20
>=20
> --=20
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
>=20
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =3D]=20

--y5mq6m4ozetakcfn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6JUNgACgkQ2O7X88g7
+prMGxAAiIYK5t07j733RBQBM6TjTC5Fl1Aq542Q8EmggvL/lGZcg6/7CLbiGV6y
cfK74ucGYlj6sZbNMkKX4RdXHvp+PtAQ/vadOyLjWR3RMlIuQqKK9K63qyuQhV37
P8T+0RtoF4INqScMgbqUbZJI1jowaxfeo9xnUNbKoll8q1mwKcFq20esvckdb3oZ
FUXALsTB8Y5M9MlPk/7aEWbnz8RDY9Rs8JL3g/qFRu+A9wLLi54K2DbVtYmrLZhZ
wv+ywQ3X7+LiRG66kh7tCFUH2NZ14F0Sqn2l8X3CNtBMhJ8xxmChUpcUrc6fTSNB
2EEJVn6e+73JSuSidL2hFJ85EjePGz/9O8/ef01FBHxweNI1BIwRpHdMzlr94q3V
SokD1WQDdh3V9DiuabJTKYTgm1s8wmKVcP/vnB4LxEtYV49uKc+zSJ9Pua1DP8i4
ool5QLLRsOO9ryslJTV8hNp8R2nFmB4NtHdAf3lRFXUp7IO205P4a4ar1ZXuBbGU
FdsU24oS2OS5yD7kjfZ4wMj0mhzn/3RGDNo2ocFfk0KJPceo+4BgOQNfgy7vrwdT
2KRKlOMKIKHGwZmGE0qdNym2mLD60vNrYaI8o5JrjAYwsJBC/dXeRW7cWMS7BuUL
i2IQTvyQP+1Wisojpd8nudjdQQLt/vMtdF5EFP8/jop0qnsLkfQ=
=FEKo
-----END PGP SIGNATURE-----

--y5mq6m4ozetakcfn--


--===============4030248322450531499==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4030248322450531499==--

