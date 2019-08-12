Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DA389914
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:56:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qrfvIHQjum7vB2+CUFq+1T+FbWf9Bw7782zE+CDy9mw=; b=Tx2Ml3KODBIAG0eDFlAPq3yaa
	PXJK/9i9dC+E5L3cYZSiQVV+BLRzWa3bHYxbnMbhAhfSFblKPlPFJtH/s22pe3IvvrdoGiPpuFTbE
	42HVMeXt5MWwUEhie57zmWTQxVvTf6lqe2BAn7VQNI6Wvdql6SuDCF0/O3AY+ru7L/ZpPu0zUMdY6
	FtS9+yxIreO+8NdmvO9R1UQqPLe3FFXXJJuCBfmzU2wAY35Nt6pTdKxgCmRUTPLVPuL+zR0rG71TM
	/1j+g88B0OnjSebj/aywJ/jZzlBc25eoa/aOnGl5/6y68JRHg4XZVa9TDTZIg3JZ/nnsJgwLBtGoy
	nPryZLbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx67u-0006BR-A0; Mon, 12 Aug 2019 08:56:26 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx67i-0006AZ-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:56:16 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id E3E8460006;
 Mon, 12 Aug 2019 08:56:04 +0000 (UTC)
Date: Mon, 12 Aug 2019 10:56:04 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v5 02/18] dt-bindings: thermal: add binding document for
 h6 thermal controller
Message-ID: <20190812085604.ozhl35wwm3ehlvqn@flea>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-3-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190810052829.6032-3-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_015615_250923_E3DCE21E 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, wens@csie.org,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4638402396926786041=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4638402396926786041==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4zhzclyt6oncb76d"
Content-Disposition: inline


--4zhzclyt6oncb76d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 10, 2019 at 05:28:13AM +0000, Yangtao Li wrote:
> This patch adds binding document for allwinner h6 thermal controller.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  .../bindings/thermal/sun8i-thermal.yaml       | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> new file mode 100644
> index 000000000000..e0973199ba3c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml

We've used so far for the schemas the first compatible to introduce
that controller as the filename, we should be consistent here. In that
case that would be allwinner,sun8i-a23-ths.yaml

> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/sun8i-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner SUN8I Thermal Controller Device Tree Bindings
> +
> +maintainers:
> +  - Yangtao Li <tiny.windzz@gmail.com>
> +
> +description: |-
> +  This describes the device tree binding for the Allwinner thermal
> +  controller which measures the on-SoC temperatures.
> +
> +properties:
> +  compatible:
> +    enum:
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
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: bus
> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +  nvmem-cells:

You need a maxItems here too

> +    description: ths calibrate data

What about something like this:

Calibration data for the thermal sensor

> +
> +  nvmem-cell-names:
> +    const: calib

I'm not sure we need a abbreviation here, calibration would be more
explicit

> +
> +required:
> +  - compatible
> +  - reg
> +  - reset
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - "#thermal-sensor-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ths: ths@5070400 {
> +        compatible = "allwinner,sun50i-h6-ths";
> +        reg = <0x05070400 0x100>;
> +        clocks = <&ccu CLK_BUS_THS>;
> +        clock-names = "bus";
> +        resets = <&ccu RST_BUS_THS>;
> +        interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;

Those examples won't compile.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4zhzclyt6oncb76d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEppAAKCRDj7w1vZxhR
xbePAQD4oGzekU98J4bCgNXtImN3X9EeDQ3DpYjvOJSUQtIlZgEAnRIw2ceIxFC7
AomJrBOwFCYE3Ly30TnJfIXLEPZvYAU=
=Si6e
-----END PGP SIGNATURE-----

--4zhzclyt6oncb76d--


--===============4638402396926786041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4638402396926786041==--

