Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C825504E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 10:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RV+KekJQyvQjCu82oX0jkef1wGEZbYnLnS1Vs1iELEI=; b=SNzDlYntObhOAUCqWzU0mbHZm
	LkSGGS7pyywK/M5+QQAJDT33QEQGaUHtJJTz09eLRmlhQmhqjIJgk5nr10zDfVurSwcYVqVeFEKM5
	vVBn3skEkapHHUm22FQdG6466zAkAkSx8XRFFHPe7SlnAOOB8PGZChO4dVZRlCZDubeRjNQjY4vcl
	VBniOE0rnadItEGtv33C92KN+DYMrVKzHJSvf4KWHyFbNkmh1CThqYCCiVdLATnBX6IMa263JkEpS
	5rmxRRVwvpizpKt88Q5p8wAcSuO90Eyf9mOiOt/x+l9EESM/KOq1fGltW4GDBU+FzHdwSBUGIBj1o
	dGk/Dilrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfKgv-0008LK-DF; Mon, 24 Jun 2019 08:51:09 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfKgg-0008JZ-LT
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 08:50:56 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 853A11C0007;
 Mon, 24 Jun 2019 08:50:50 +0000 (UTC)
Date: Mon, 24 Jun 2019 10:50:50 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH v4 10/11] dt-bindings: thermal: add binding document for
 h3 thermal controller
Message-ID: <20190624085050.horyiz4wp24kzjui@flea>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <20190623164206.7467-11-tiny.windzz@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190623164206.7467-11-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_015055_027220_A3DFE9D2 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 wens@csie.org, robh+dt@kernel.org, mchehab+samsung@kernel.org,
 rui.zhang@intel.com, paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1361471968312159654=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1361471968312159654==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ytcr75eegmcwn5yh"
Content-Disposition: inline


--ytcr75eegmcwn5yh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jun 23, 2019 at 12:42:05PM -0400, Yangtao Li wrote:
> This patch adds binding document for allwinner h3 thermal controller.
>
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  .../bindings/thermal/sun8i-thermal.yaml       | 29 +++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> index 2c5acc61ed03..1eaf68b5dd5a 100644
> --- a/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/sun8i-thermal.yaml
> @@ -16,6 +16,7 @@ description: |-
>  properties:
>    compatible:
>      enum:
> +      - allwinner,sun8i-h3-ths
>        - allwinner,sun50i-h6-ths
>
>    reg:
> @@ -29,13 +30,22 @@ properties:
>
>    clocks:
>      minItems: 1
> -    maxItems: 1
> +    maxItems: 2
>
>    clock-names:
> -    const: bus
> +    items:
> +      - const: bus
> +      - const: ahb

You need a min/maxItems here as well. Otherwise, on the H6, you will
have a warning since you asked for an array of two items, bus and ahb,
while you only have a single one.

>    '#thermal-sensor-cells':
> -    const: 1
> +    enum: [ 0, 1 ]
> +    description: |
> +      Definition depends on soc version:
> +
> +      For "allwinner,sun8i-h3-ths",
> +      value must be 0.
> +      For "allwinner,sun50i-h6-ths",
> +      value must be 1.

This must be checked using a conditional.

Something like:

if:
  properties:
    compatible:
      const: allwinner,sun8i-h3-ths

then:
  properties:
    "#thermal-sensor-cells":
      const: 0

else:
  properties:
    "#thermal-sensor-cells":
      const: 1

>    nvmem-cells:
>      items:
> @@ -55,6 +65,19 @@ required:
>    - '#thermal-sensor-cells'
>
>  examples:
> +  - |
> +    ths: ths@1c25000 {
> +         compatible = "allwinner,sun8i-h3-ths";
> +         reg = <0x01c25000 0x400>;
> +         clocks = <&ccu CLK_BUS_THS>, <&ccu CLK_THS>;
> +         clock-names = "bus", "ahb";
> +         resets = <&ccu RST_BUS_THS>;
> +         interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
> +         nvmem-cells = <&tsen_calib>;
> +         nvmem-cell-names = "calib";
> +         #thermal-sensor-cells = <0>;
> +    };

Same remark here, it won't compile

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ytcr75eegmcwn5yh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRCO6gAKCRDj7w1vZxhR
xT5JAP9EnWnCbO23gVZGh5xK3A73eXeJMaPcwVSRyTcxDaC75wEA5lbrfaOfqwX9
AZ4QA27PC8pe3lFJDh+4y7Q+DPT+7wI=
=s6LE
-----END PGP SIGNATURE-----

--ytcr75eegmcwn5yh--


--===============1361471968312159654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1361471968312159654==--

