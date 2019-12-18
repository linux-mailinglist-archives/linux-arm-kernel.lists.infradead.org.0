Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920A012564E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5LH6rwyIrxcdMM12CqqdxwBDVBwAXQEY2tDM2dvH+4M=; b=B3XNWcvcGSSo5+SDNmqX/AkvC
	IPK9MDyVruOve6WcUtBNe9tI9bZ1nmojGHvA0dLvJIuinJt70AOnNhvR2O8gn5tYQenmDy6beSCz2
	Z/IRmEy+1TK+R0S6xnJtLwFRB/TIYWDEFO9lLwXPqV7FfNGHSlrWwBNUGq/nu2QCi9kbr9BI6cPqj
	3OFc6FHQI5P5vpG3Xj9wkBdTl3Fht5tEFJT8OhJXfy+KIoBJjL625DNMw+DYW9DV0q0hxBhEmu1ho
	LH2pQaqXKBzALX9EIPqylLXsfTUqGIC2H8WgAF8w5sOvhKbOGFXWuRj5nrUyHfOhfuLsn+XeVArWF
	NBca7dPuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhVk-0002zv-Ew; Wed, 18 Dec 2019 22:09:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhN3-000246-5P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:00:44 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C43E2146E;
 Wed, 18 Dec 2019 22:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576706439;
 bh=BHrAQFIGbbIvTg9mW+NwpWTBkboWudvsPo35DCHjyKU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aUiiz0YBKuuTNqGtZUBFxpAtyAvA7wMfZV6DH+GQ/h96SUDYnp49gpjr195CweqU8
 jR/OTEUynai/TzIMVUvyBnqfuvp4CYlm2PzeJtATAsKDvbY8YeAkhkMIJxjWsgpe+z
 YWT6uZAFFiGY72eQYemkOy+F2LVxbpBfyKJMQbGE=
Date: Wed, 18 Dec 2019 23:00:37 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v7 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191218220037.4g6pzdvrhroaj4qu@gilmour.lan>
References: <20191218042121.1471954-1-anarsoul@gmail.com>
 <20191218042121.1471954-3-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191218042121.1471954-3-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_140041_438997_7921EE3B 
X-CRM114-Status: GOOD (  19.58  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3589471186379022771=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3589471186379022771==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nfb3broi25z4qfbb"
Content-Disposition: inline


--nfb3broi25z4qfbb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Dec 17, 2019 at 08:21:16PM -0800, Vasily Khoruzhick wrote:
> From: Yangtao Li <tiny.windzz@gmail.com>
>
> sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> SoCs. Add YAML schema for its bindings.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 146 ++++++++++++++++++
>  1 file changed, 146 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> new file mode 100644
> index 000000000000..8768c2450633
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> @@ -0,0 +1,146 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/allwinner,sun8i-a83t-ths.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> +
> +maintainers:
> +  - Yangtao Li <tiny.windzz@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun8i-a83t-ths
> +      - allwinner,sun8i-h3-ths
> +      - allwinner,sun8i-r40-ths
> +      - allwinner,sun50i-a64-ths
> +      - allwinner,sun50i-h5-ths
> +      - allwinner,sun50i-h6-ths
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  nvmem-cells:
> +    maxItems: 1
> +    description: Calibration data for thermal sensors
> +
> +  nvmem-cell-names:
> +    const: calibration
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun50i-h6-ths
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 1

When minItems and maxItems are equal, you can only set one, the other
will be filled automatically.

> +
> +        clock-names:
> +          minItems: 1
> +          maxItems: 1
> +          items:
> +            - const: bus

And this can even be just

clock-names:
  const: bus

> +
> +    else:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 2
> +
> +        clock-names:
> +          minItems: 1
> +          maxItems: 2
> +          items:
> +            - const: bus
> +            - const: mod

I'm not sure why you need the minItems set to 1 here though?

it's always 2 for the !H6 case, right?

if so, then we should even do something like:

properties:
  ...

  # This is needed because we will need to check both the H6 and !H6
  # case, and it must validate. So we make sure we match against the
  # union of both cases.
  clocks:
    minItems: 1
    maxItems: 2
    items:
      - description: Bus Clock
      - description: Module Clock

  # Same story here
  clock-names:
    minItems: 1
    maxItems: 2
    items:
      - const: bus
      - const: mod

allOf:
  - if:
    properties:
      compatible:
        contains:
	  const: allwinner,sun50i-h6-ths

    # Here we validate in the H6 case we only have one clock
    then:
      properties:
        clocks:
	  maxItems: 1

        clock-names:
	  maxItems: 1

    # and here that in the other case we have two clocks, the names
    # being validated by the schema above
    else:
      properties:
        clocks:
	  maxItems: 2

        clock-names:
	  maxItems: 2

# And now we can set this since all our properties will have been
# expressed in the upper level schema
additionalProperties: false

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun8i-h3-ths
> +
> +    then:
> +      properties:
> +        "#thermal-sensor-cells":
> +          const: 0
> +
> +    else:
> +      properties:
> +        "#thermal-sensor-cells":
> +          const: 1

Same thing here, you should have an enum accepting both values in the
upper schema, the condition here only making further checks. Also, in
the case where #thermal-sensor-cells is one, then you need to document
what that argument is.

Thanks!
Maxime

--nfb3broi25z4qfbb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfqhhQAKCRDj7w1vZxhR
xWvSAQCi6mjrJCTS8SWPU7PcgNEc6pA17UBJm2Xk4XKoLO7m6wD9EPOHRneAtdBr
BtJRS/RwZk8fGlXI46Xa48uRjngLqw4=
=F0Nc
-----END PGP SIGNATURE-----

--nfb3broi25z4qfbb--


--===============3589471186379022771==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3589471186379022771==--

