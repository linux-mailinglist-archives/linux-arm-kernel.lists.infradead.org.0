Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1523610B4B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SchbimYaXY9QMyK2jdrINCSGAch4b6RL+4SXS3H7D04=; b=KC5LBXrclO0cX+JkXh7KBX2jD
	FVjUDy2Fl2uLbHnGWqqOaHldLK5ins8MkFI/bORZYHVr0rwpl/SMPSVRfTk16WDKgJWRt3VBJbUTo
	FB5cZQN5/7dar7Ylf+bbxoDNXKC/9KRPahp48wLIyPPeTHirjli/LvVEWt56NEnCP+jiU9OrG3k3f
	iYgotkE4LlnhHiTatNqfIcO//R36YZ4negrP67fmCqr/oRNQlIWHdu8G121o+T3ExCvfNglLXJfLM
	uUw47unmTWN+tbi/dDhmTWfwRe0XuyS4TboEVTXFmIgu60kchpVLAbHOQLMjT1s2ivTqk5d39uae1
	ah9dbJQxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1Mt-0001e1-D7; Wed, 27 Nov 2019 17:44:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1Mj-0001dd-2G
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:44:38 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2ECAE2071E;
 Wed, 27 Nov 2019 17:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574876676;
 bh=0mnbkXpRIAs1oWs7887fZ1hqjmi1n2cupNv6F6qcqnM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NVvBMB3wRKTxMbLvW7a7orEuxSa5qmKwIzhQPwJEA1hcD6wtHcM+iBbi2g12emuJU
 uB3XB7t7NFQXZT8q4MH4UiBt1ALildwE7zg/wS2PR1F0vre2NXqdxkNdu7oayb0qlF
 3D9AdyA4pjS85SjD7oeKkaiCzB5oYB9gDNB4U4zo=
Date: Wed, 27 Nov 2019 18:44:34 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: thermal: add YAML schema for
 sun8i-thermal driver bindings
Message-ID: <20191127174434.wousbqosmm5vxcsu@gilmour.lan>
References: <20191127052935.1719897-1-anarsoul@gmail.com>
 <20191127052935.1719897-3-anarsoul@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191127052935.1719897-3-anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_094437_152469_973CF450 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>,
 =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4058635447161826371=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4058635447161826371==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vy5yg3fxo523fkw5"
Content-Disposition: inline


--vy5yg3fxo523fkw5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Nov 26, 2019 at 09:29:30PM -0800, Vasily Khoruzhick wrote:
> From: Yangtao Li <tiny.windzz@gmail.com>
>
> sun8i-thermal driver supports thermal sensor in wide range of Allwinner
> SoCs. Add YAML schema for its bindings.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> ---
>  .../thermal/allwinner,sun8i-a83t-ths.yaml     | 103 ++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> new file mode 100644
> index 000000000000..e622f0a4be90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.yaml
> @@ -0,0 +1,103 @@
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
> +    oneOf:
> +      - const: allwinner,sun8i-a83t-ths
> +      - const: allwinner,sun8i-h3-ths
> +      - const: allwinner,sun8i-r40-ths
> +      - const: allwinner,sun50i-a64-ths
> +      - const: allwinner,sun50i-h5-ths
> +      - const: allwinner,sun50i-h6-ths
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
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    anyOf:
> +      - items:
> +        - const: bus
> +        - const: mod
> +      - items:
> +        - const: bus

This can be:

clock-names:
  minItems: 1
  maxItems: 2
  items:
    - const: bus
    - const: mod

And the length should be checked based on the compatible value, with
something like

if:
  properties:
    compatible:
      contains:
        const: allwinner,sun50i-h6-ths

then:
  properties:
    clocks:
      maxItems: 1

    clock-names:
      maxItems: 1

else:
  properties:
    clocks:
      maxItems: 2

    clock-names:
      maxItems: 2

> +
> +  '#thermal-sensor-cells':
> +    enum: [ 0, 1 ]
> +    description: |
> +      Definition depends on soc version:
> +
> +      For "allwinner,sun8i-h3-ths",
> +      value must be 0.
> +      For all other compatibles
> +      value must be 1.

This should be checked using an if as well.

> +
> +  nvmem-cells:
> +    maxItems: 1
> +    items:
> +      - description: Calibration data for thermal sensors

You can drop the items and just move the description up one level,
under nvmem-cells

> +
> +  nvmem-cell-names:
> +    items:
> +      - const: calibration

Ditto for the const

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - '#thermal-sensor-cells'

Whether clocks, clock-names and resets are thereshould be check using
an if statement as well.

> +
> +examples:
> +  - |
> +    ths_a83t: ths@1f04000 {

You don't need the label at all, and the node name should be
temperature-sensor according to the DT spec, not ths. This applies to
all you examples.

> +         compatible = "allwinner,sun8i-a83t-ths";
> +         reg = <0x01f04000 0x100>;
> +         interrupts = <0 31 0>;
> +         nvmem-cells = <&ths_calibration>;
> +         nvmem-cell-names = "calibration";
> +         #thermal-sensor-cells = <1>;
> +    };

New line.

Thanks!
Maxime

--vy5yg3fxo523fkw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXd62AgAKCRDj7w1vZxhR
xZhDAP92TopSGYK0i/lNbBksUI+7RNfvt+FhK2eVaXRB2/XToAD/S4RzDGUA4BXe
Cx5DhAlOJY+WchG8X6c4StMtLQAUwAM=
=6CMd
-----END PGP SIGNATURE-----

--vy5yg3fxo523fkw5--


--===============4058635447161826371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4058635447161826371==--

