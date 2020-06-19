Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FED201593
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 18:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lTsXg7b87HxqP14lgygIsEcwvdL71yrpZyMnZ4zpQh4=; b=PeHDIfliLqUtdP/VB4QuLBjDR
	mtzug32zto4YYT4DmR0PbauPlwL8tEoZE3XwvI1epYNDCoQ8IMCFXaQUplJNW4Tqtd27tc8MZ9E4Z
	hYnGJaRoskM3MHnZ2rJjjcalNAYi5j9juIVBy2rA+ZaQ0NpkxglOr6pWVWHw68rvfZESI1BIhPTXH
	ld0LuKjyui9dDhTwbw51y2mZPoX3Si3FldKl4ha3RlM1Lzw7fUuw96Fe8AL1qLFx0XAwCAmYYpUU+
	n6hnRxeX/+6zC9uulmtIxKQUhDLIA9FF++7RndEBIZf7WMjR/2Q3Q3J2bT9CHIYzOAePQwkS6105U
	yCQ4h7MZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmJtI-0006lR-QP; Fri, 19 Jun 2020 16:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmJt5-0006kF-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 16:29:09 +0000
Received: from earth.universe (dyndsl-037-138-190-043.ewe-ip-backbone.de
 [37.138.190.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C12A21707;
 Fri, 19 Jun 2020 16:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592584147;
 bh=ZtQhASeQp5iIgLtY6Y187VZOIqUND/RMMdRa8MqBJZ0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e1Nmqq2Q1PSlS/XgDVPaBzBHdE8AauJhEW6lmqQA4eVEMFvbNqCURptugUHju4lI7
 ndPEtNUUjdw8o5K6o8Ml7ccr4UBCc534yFeBVNcVsiWXaNki2YF/roULzwJvYayvv7
 RTn81dP33oKFk2D+TSKHR87YPJSUW9BE6M8KrvZI=
Received: by earth.universe (Postfix, from userid 1000)
 id 9FE0C3C08CD; Fri, 19 Jun 2020 18:29:05 +0200 (CEST)
Date: Fri, 19 Jun 2020 18:29:05 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Emil Velikov <emil.velikov@collabora.com>
Subject: Re: [PATCHv2 1/6] dt-bindings: power: supply: gpio-charger: convert
 to yaml
Message-ID: <20200619162905.7yoxccylfz55daie@earth.universe>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
 <20200605224403.181015-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20200605224403.181015-2-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_092907_971885_7CF28BD8 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: multipart/mixed; boundary="===============7628778431080265071=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7628778431080265071==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lln7em7yay23qb4r"
Content-Disposition: inline


--lln7em7yay23qb4r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Jun 06, 2020 at 12:43:58AM +0200, Sebastian Reichel wrote:
> Convert the gpio-charger bindings from text format to
> new YAML based representation.
>=20
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---

Thanks, queued.

-- Sebastian

>  .../bindings/power/supply/gpio-charger.txt    | 31 ----------
>  .../bindings/power/supply/gpio-charger.yaml   | 58 +++++++++++++++++++
>  2 files changed, 58 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/power/supply/gpio-c=
harger.txt
>  create mode 100644 Documentation/devicetree/bindings/power/supply/gpio-c=
harger.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.=
txt b/Documentation/devicetree/bindings/power/supply/gpio-charger.txt
> deleted file mode 100644
> index 0fb33b2c62a6..000000000000
> --- a/Documentation/devicetree/bindings/power/supply/gpio-charger.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -gpio-charger
> -
> -Required properties :
> - - compatible : "gpio-charger"
> - - gpios : GPIO indicating the charger presence.
> -   See GPIO binding in bindings/gpio/gpio.txt .
> - - charger-type : power supply type, one of
> -     unknown
> -     battery
> -     ups
> -     mains
> -     usb-sdp (USB standard downstream port)
> -     usb-dcp (USB dedicated charging port)
> -     usb-cdp (USB charging downstream port)
> -     usb-aca (USB accessory charger adapter)
> -
> -Optional properties:
> - - charge-status-gpios: GPIO indicating whether a battery is charging.
> -
> -Example:
> -
> -	usb_charger: charger {
> -		compatible =3D "gpio-charger";
> -		charger-type =3D "usb-sdp";
> -		gpios =3D <&gpd 28 GPIO_ACTIVE_LOW>;
> -		charge-status-gpios =3D <&gpc 27 GPIO_ACTIVE_LOW>;
> -	};
> -
> -	battery {
> -		power-supplies =3D <&usb_charger>;
> -	};
> diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.=
yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> new file mode 100644
> index 000000000000..78b167c62ab1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/supply/gpio-charger.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: simple battery chargers only communicating through GPIOs
> +
> +maintainers:
> +  - Sebastian Reichel <sre@kernel.org>
> +
> +description:
> +  This binding is for all chargers, which are working more or less
> +  autonomously, only providing some status GPIOs and possibly some
> +  GPIOs for limited control over the charging process.
> +
> +properties:
> +  compatible:
> +    const: gpio-charger
> +
> +  charger-type:
> +    enum:
> +      - unknown
> +      - battery
> +      - ups
> +      - mains
> +      - usb-sdp                   # USB standard downstream port
> +      - usb-dcp                   # USB dedicated charging port
> +      - usb-cdp                   # USB charging downstream port
> +      - usb-aca                   # USB accessory charger adapter
> +    description:
> +      Type of the charger, e.g. "mains" for a wall charger.
> +
> +  gpios:
> +    maxItems: 1
> +    description: GPIO indicating the charger presence
> +
> +  charge-status-gpios:
> +    maxItems: 1
> +    description: GPIO indicating the charging status
> +
> +required:
> +  - compatible
> +  - gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    charger {
> +      compatible =3D "gpio-charger";
> +      charger-type =3D "usb-sdp";
> +
> +      gpios =3D <&gpd 28 GPIO_ACTIVE_LOW>;
> +      charge-status-gpios =3D <&gpc 27 GPIO_ACTIVE_LOW>;
> +    };
> --=20
> 2.26.2
>=20

--lln7em7yay23qb4r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl7s59EACgkQ2O7X88g7
+poTgg/+Jy47Umtm1TDYfreX2IK/zJzPDWvLpmdpAtPJjctCCrMjTdPVMJUfSRSB
v8y6bhzGd05Uwy4/xNA/s6mfiCkEpvAxy9j4hNW60+9mKG4WXRBVzWCaAHJ2d22r
Yroxoq+7pitZ20P/6t5pTYIS5/UqE2695lH/XuuNzzV2E2LYe3LIHTC+xXQQiuL+
MBVwp8sheham904HsnVPslT1nBY0Oy36BszGrXHAGA+RJVHgqrqWBAHalaOZk1qH
Ab6Z3Zi3QP3kjp2jMaYiXkuuEgRm2UvnHzqSvYGg5XmnnRjEmKhFHJVz5aApXmqs
QWFjVVm6iAoCnqnChBenWEBQl0QGq5p3+aCvVUTp++4VTXnMaP1ZdHyHS0T7SbIK
pVXFPpXQ4q8mNhRF7yc8KS/pmOPPhoeoc7RPlEVrw/7qphhCPu3zpQ0UYg22Qk9P
kuhvNHN2w1ekCHpY4FEMElT920IXy/O4nzBwnXJMRkhCOtrJEIMDXwNUq34y3cGd
tQnqfu41F7SGZ+eaN/62BOmAt1tFUuBHItULPxKUTKl1Hyz+OwbmtTaPwQzcxjl9
3hJdQT+xh09EmsdcZ6CzViB1DJHANr+KHF9DEgy5UsYQZR6aAvWBTKL2SgJNFJPz
AM1V7tst08DvxLa1jRg8hSvVwELeOD4c1431wri5tNP6G9tsQXw=
=gdx0
-----END PGP SIGNATURE-----

--lln7em7yay23qb4r--


--===============7628778431080265071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7628778431080265071==--

