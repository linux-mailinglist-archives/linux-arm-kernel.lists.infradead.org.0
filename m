Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B092B4CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:17:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IDGfvdb4Gh1boAApT7ZLukLZCyJUugGckXj106AzWGM=; b=j+qrudXB8hrRLf39tghcZUtIJ
	cQ1NVAxtNKRCgMXQIlyKH4k5+MQgZ/X2Riw1Xd9BzLOvS5MHO1TVTX2VNpHVYkeSoC/Hw1fLDwvqT
	rdqlCWgDYhVFT36B99Unsv4+VU6SWtnmIanctJFSW4xToNF+9bN1SnVDx/EkBV65sepwT3i6kfwjM
	L50NXKOlvC/lWlETJOg2Chbuhq4kfKISCdA7GR3ze1N1zoCeWS1jt1a45jEk/BRfnyFyLFtXG40m0
	lOt4X+Y7ztVyb+LgDXYL5WEbKy0F5QgMLYhBvW4YrBYv/2/uE3sduXs76U4SMLJHYb6LvtkI1PHJU
	pXLR+C/3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEZe-0007FB-9I; Mon, 27 May 2019 12:17:54 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEYK-0005mT-3K
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:16:33 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 17976240018;
 Mon, 27 May 2019 12:16:24 +0000 (UTC)
Date: Mon, 27 May 2019 14:16:24 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: thermal: add binding document for h6
 thermal controller
Message-ID: <20190527121624.5qwrrzc4whrddbbe@flea>
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-3-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190525181329.18657-3-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051632_437866_4245E2E8 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5917613933172409772=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5917613933172409772==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5l3rwiguuszwblyx"
Content-Disposition: inline


--5l3rwiguuszwblyx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thanks for working on this!

On Sat, May 25, 2019 at 02:13:28PM -0400, Yangtao Li wrote:
> This patch adds binding document for allwinner h6 thermal controller.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  .../bindings/thermal/sun8i-thermal.yaml       | 71 +++++++++++++++++++
>
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> new file mode 100644
> index 000000000000..54cf1277870e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> @@ -0,0 +1,71 @@
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
> +    items:
> +      - description: ths bus clock
> +
> +  clock-names:
> +    items:
> +      - const: bus

You don't need the items here, you can just do:

clocks:
  maxItems: 1
  description:
    Bus clock

clock-names:
  const: bus

> +  "#thermal-sensor-cells":
> +    enum: [ 0, 1 ]

You should document when you would need one or the other.

My guess is that you did it that way to deal with the A33? If so, we
can just request the cell size to be 1 for now, and then expand it to
an enum later on when we'll support the A33.

> +  nvmem-cells:
> +    items:
> +      - description: ths calibrate data
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: calib

Same remark than for the clocks

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - reset
> +  - clocks
> +  - clock-names

I guess you'd need #thermal-sensor-cells too?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5l3rwiguuszwblyx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOvVGAAKCRDj7w1vZxhR
xYJvAQDS6LCy+f//B51XcJuEuSglOnKVFXxiNHV/4yLfVTR9lQD+Ory2sL/zzJ11
NK/Cfa5T1w6p+sdl9MDDkpaVkRt9GQ8=
=mlQq
-----END PGP SIGNATURE-----

--5l3rwiguuszwblyx--


--===============5917613933172409772==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5917613933172409772==--

