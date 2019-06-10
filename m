Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC68A3BEC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 23:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jJo/hnnxh92bVDFq9E+mwTYbgtJw8IpngSV+laSXy4E=; b=RUmcBWeGT00EeS
	Gfr6rZBa3nmLq1tmL4+IduVKyELJ1Jwpqh8DQhRi2eutkUoELfowkZ2zxPfncI7djlQ/msQqEMLS0
	OHccv0r/2jsoJyRxhbUxyTdwBMpXj4wyb1LmRFe3N4h+MvP8ruKpDDEFplzaZKceHCbXWSU0XPz0d
	53otblMHoiLvrlsBxXu47QzjXmsap/AuhYNVDp79aC4A681I0t9zUontXt5RGGpY6zA/B3Ty4TsYV
	/KkF9oJ5C4o0bq4xRqAAH+N9c6cMmJ6Ubfd+8drtKtn+pN6S8aKtTT8wy9fQGEZaW4TtehaqteYKg
	v/blvuY6pHusxqRkHZmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haRz5-0002Y3-3t; Mon, 10 Jun 2019 21:37:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haRyr-0002XU-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 21:37:31 +0000
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D61B214AF
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 21:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560202649;
 bh=hwm8BXVTPPx56RnHFISfVUzMMTFIzzDuJaCG9+g8A5k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=laDVFiBGqi4HuwrxOrPSUFr6iNx7cckBOF3iE9QdnfxoGGGeoEPCdNKzj4QkFP23z
 DivEeiNVuOf+3/MvBWPQIkLl98lCMMYjCwh2UZsFE3jvGNYKsVatSnUKCR5k9nVitC
 XeSH4bYbYDfs6TfRdk6jky3jOonHiVIjO6hVzr60=
Received: by mail-qk1-f169.google.com with SMTP id m14so6354269qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 14:37:29 -0700 (PDT)
X-Gm-Message-State: APjAAAVmmmyfUPh+wE+XjJ0FrzyhHHl/V6C3YKflSdR2SYpTNS2+g1yG
 K3stRU2Sh3X0DvvOCK+xQjxp7dYMit3mvFT7Ng==
X-Google-Smtp-Source: APXvYqygsQhHn+elnNZkh5cIWQUh8MlS+1h6UE8ebNU+fyz9UgkZS9LgE7CVDY0+GOg9rWGc9YTlLMA4WDHOl+KXPmA=
X-Received: by 2002:a05:620a:13d1:: with SMTP id
 g17mr2386998qkl.121.1560202648317; 
 Mon, 10 Jun 2019 14:37:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
 <20190605122936.11972-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190605122936.11972-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 10 Jun 2019 15:37:17 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJczoTpq=8BS5FwL3TJmitZp9e4Mh4oXcvgOMdRmoURvQ@mail.gmail.com>
Message-ID: <CAL_JsqJczoTpq=8BS5FwL3TJmitZp9e4Mh4oXcvgOMdRmoURvQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_143729_545101_4C06A3C2 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 5, 2019 at 6:29 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix the maintainers
> ---
>  .../devicetree/bindings/i2c/i2c-mv64xxx.txt   |  64 -----------
>  .../bindings/i2c/marvell,mv64xxx-i2c.yaml     | 105 ++++++++++++++++++
>  2 files changed, 105 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mv64xxx.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml

> diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> new file mode 100644
> index 000000000000..a1c631eaeafd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/marvell,mv64xxx-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Marvell MV64XXX I2C Controller Device Tree Bindings
> +
> +maintainers:
> +  - Gregory CLEMENT <gregory.clement@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-i2c
> +      - items:
> +          - const: allwinner,sun7i-a20-i2c
> +          - const: allwinner,sun4i-a10-i2c
> +      - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun8i-a23-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun8i-a83t-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +      - items:
> +          - const: allwinner,sun50i-a64-i2c
> +          - const: allwinner,sun6i-a31-i2c
> +
> +      - const: marvell,mv64xxx-i2c
> +      - const: marvell,mv78230-i2c
> +      - const: marvell,mv78230-a0-i2c
> +
> +    description:
> +      Only use "marvell,mv78230-a0-i2c" for a very rare, initial
> +      version of the SoC which had broken offload support. Linux
> +      auto-detects this and sets it appropriately.
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: Reference clock for the I2C bus
> +      - description: Bus clock (Only for Armada 7K/8K)
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: core
> +      - const: reg
> +    description:
> +      Mandatory if two clocks are used (only for Armada 7k and 8k).
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun4i-a10-i2c
> +              - allwinner,sun6i-a31-i2c
> +
> +    then:
> +      required:
> +        - clocks
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: allwinner,sun6i-a31-i2c
> +
> +    then:
> +      required:
> +        - resets
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +examples:
> +  - |
> +    timer {

timer?

(and missing unit-address)

> +      compatible = "allwinner,sun4i-a10-timer";
> +      reg = <0x01c20c00 0x400>;
> +      interrupts = <22>;
> +      clocks = <&osc>;
> +    };
> +...
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
