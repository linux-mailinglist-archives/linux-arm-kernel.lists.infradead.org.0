Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4372336D78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 09:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SEaM4W4Plkws0gMCBmOOCu7m5HCSNi6kuCLbWldpqEE=; b=L4Uxu7nhBE1t2wHGH5O1ET/C9
	EdUIZZ2k63JrwTnfMffwBLgi6kfVrWEaG7TlswU7HSBYvqnWMsvktx5qEjqZWQUR2AdCRZY4nWMe+
	AsNVyDDzpciuPng32k+g7IPoAxFxl4H7jIEe5+yzF6vX8LCpYIlVqDTqhh8CP0VCLO0yrkxfeER8b
	ogpgcRvs4/JvWJ3nT14ksQE0/ZSi4wSJ/6hTy6pHl6CAScgKqCmcE+8J6XbskQelPWWfHYY9kGKGc
	BHfV2bPPZIipnDFOW8dRU2wpUIzokPntfv2ePZatg9Z2lhUOrDBdblTRnh0l7jasKXvznHZ+k/E0q
	1FMMDj+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYn1B-0002Wp-GL; Thu, 06 Jun 2019 07:41:01 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYn14-0002W8-Ko
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 07:40:56 +0000
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 17C8310000E;
 Thu,  6 Jun 2019 07:40:36 +0000 (UTC)
Date: Thu, 6 Jun 2019 09:40:36 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V4 1/4] dt-bindings: imx: Add clock binding doc for i.MX8MN
Message-ID: <20190606074036.vx2smtauiwxy6wzx@flea>
References: <20190606013323.3392-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190606013323.3392-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_004054_998972_CD36E9C5 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, peng.fan@nxp.com, ping.bai@nxp.com,
 catalin.marinas@arm.com, mturquette@baylibre.com, will.deacon@arm.com,
 bjorn.andersson@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-clk@vger.kernel.org, abel.vesa@nxp.com, jagan@amarulasolutions.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 olof@lixom.net, robh+dt@kernel.org, horms+renesas@verge.net.au,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, kernel@pengutronix.de,
 enric.balletbo@collabora.com, shawnguo@kernel.org, l.stach@pengutronix.de
Content-Type: multipart/mixed; boundary="===============7562383263305414709=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7562383263305414709==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lbx5fpk47vlzcrms"
Content-Disposition: inline


--lbx5fpk47vlzcrms
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jun 06, 2019 at 09:33:20AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add the clock binding doc for i.MX8MN.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
> 	- switch binding doc from .txt to .yaml.
> ---
>  .../devicetree/bindings/clock/imx8mn-clock.yaml    | 115 +++++++++++
>  include/dt-bindings/clock/imx8mn-clock.h           | 215 +++++++++++++++++++++
>  2 files changed, 330 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
>  create mode 100644 include/dt-bindings/clock/imx8mn-clock.h
>
> diff --git a/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> new file mode 100644
> index 0000000..8cb8fcf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/bindings/clock/imx8mn-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Nano Clock Control Module Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  NXP i.MX8M Nano clock control module is an integrated clock controller, which
> +  generates and supplies to all modules.
> +
> +  This binding uses common clock bindings
> +  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt

Which part exactly are you using?

I'm not sure it's worth referring to. Any provider property should be
listed here, and the consumer properties are already checked.

> +properties:
> +  compatible:
> +    const: fsl,imx8mn-ccm
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: 32k osc
> +      - description: 24m osc
> +      - description: ext1 clock input
> +      - description: ext2 clock input
> +      - description: ext3 clock input
> +      - description: ext4 clock input
> +
> +  clock-names:
> +    items:
> +      - const: osc_32k
> +      - const: osc_24m
> +      - const: clk_ext1
> +      - const: clk_ext2
> +      - const: clk_ext3
> +      - const: clk_ext4
> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - '#clock-cells'
> +
> +examples:
> +  # Clock Control Module node:
> +  - |
> +    clk: clock-controller@30380000 {
> +        compatible = "fsl,imx8mn-ccm";
> +        reg = <0x0 0x30380000 0x0 0x10000>;
> +        #clock-cells = <1>;
> +        clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>,
> +                 <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
> +        clock-names = "osc_32k", "osc_24m", "clk_ext1",
> +                      "clk_ext2", "clk_ext3", "clk_ext4";
> +    };
> +
> +  # Required external clocks for Clock Control Module node:
> +  - |
> +    osc_32k: clock-osc-32k {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <32768>;
> +	clock-output-names = "osc_32k";
> +    };
> +
> +    osc_24m: clock-osc-24m {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <24000000>;
> +        clock-output-names = "osc_24m";
> +    };
> +
> +    clk_ext1: clock-ext1 {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <133000000>;
> +        clock-output-names = "clk_ext1";
> +    };
> +
> +    clk_ext2: clock-ext2 {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <133000000>;
> +        clock-output-names = "clk_ext2";
> +    };
> +
> +    clk_ext3: clock-ext3 {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency = <133000000>;
> +        clock-output-names = "clk_ext3";
> +    };
> +
> +    clk_ext4: clock-ext4 {
> +        compatible = "fixed-clock";
> +        #clock-cells = <0>;
> +        clock-frequency= <133000000>;
> +        clock-output-names = "clk_ext4";
> +    };
> +
> +  # The clock consumer should specify the desired clock by having the clock
> +  # ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mn-clock.h
> +  # for the full list of i.MX8M Nano clock IDs.

I guess this could be part of the clock-cells description.

Once fixed,
Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lbx5fpk47vlzcrms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPjDdAAKCRDj7w1vZxhR
xQf4AQDGmVlx49YWe4vIu1dehv4zttFw3oRaIsMiDSi4vzwyMQEA+e7hg+RgrL4i
6aPykXgdE5sTJox+CRpk+KGv3Ovk3AU=
=kpoe
-----END PGP SIGNATURE-----

--lbx5fpk47vlzcrms--


--===============7562383263305414709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7562383263305414709==--

