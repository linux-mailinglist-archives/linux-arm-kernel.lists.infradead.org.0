Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C77D1B15CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 21:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1B2BTbrSrJRfmM00xiC8aHx+5YbXWajLHJRGMLLuig=; b=jh0zliTn84+1r2
	JhSmpnJfibXcKfQli0gbCoUete3U8LzqtJW5ywjjkSA+eZfKR57JLI62v1Owb8UJo1Z0eC05gBVc7
	0ru5s0A+iNWBuv+ZeUhZVuN3SnF6bZTBWPFMG15RN5DNlF5X0JqPqOCi56WWDoelzETVsgULfPDve
	dB63AcyF1zB3lY3hyyG+7bydIkPCi9IPoBxSUEYalbKFZi+MuctCTtC6/YEHVaZM94xBpJZucQs8+
	JSyiIV5TBAmjuIfgQpKEpryfaaH7gcT556re/+NrH7JvHfP+13KHfZjCSWDVvolvdMfdmN+QHunu5
	FGGT7q9q9DGka8WdKEAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbxW-0008DR-9w; Mon, 20 Apr 2020 19:19:58 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbxK-0008AU-JS
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 19:19:48 +0000
Received: by mail-oi1-f196.google.com with SMTP id j16so9815437oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 12:19:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m49dvApWhU3KhcyzujKNwqVJs/SgDVOiHkBTX8p3UsA=;
 b=KFFiSPjhYlCjsv9a/g+1/DEF10W2NxUGrKY3k0bKiVP65J3S89UUFJcYhoERRwSIki
 Uv2nA+xSD/Bk6DDB7F9LUox07ukZjFXi1j2qhrjlV3DF+E+OmdZjxXXFA5jYK91JuPoR
 m3Ihk7494cRpeJkK99VA94wWHF+vOUsa5wuSyPhyCqYdPZxevWGxqBPfDsfhIPvB6hu2
 4uDm36Pyuap7CCnv/I8ocMYwhlPz9vtZ3og1J3PT8aflRPrNqx5H8F+e59A84kcTa974
 cBOTz/DYE7jFwRQueTSfmUCp6f3nZUr3KpBghxE0ahmcocWiz4QSUXrTXtwvD9Og4K30
 nyfg==
X-Gm-Message-State: AGi0Pubd6pgX4RpgOUHL5Z3w+8OC8g6/YVYfN10Y9QzHznByrgGzgMAU
 /KfOOSIxVexG+djSH5mRcUJgEkM=
X-Google-Smtp-Source: APiQypI1tu9WWN3GJQtf/Egn/TvM3KKQj1/YfMtUGLJE64jxb1gypfLgp3KOVUkdTuGeoCxmSDcrIw==
X-Received: by 2002:aca:4d47:: with SMTP id a68mr739207oib.60.1587410383533;
 Mon, 20 Apr 2020 12:19:43 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k26sm143306ots.3.2020.04.20.12.19.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 12:19:42 -0700 (PDT)
Received: (nullmailer pid 9370 invoked by uid 1000);
 Mon, 20 Apr 2020 19:19:41 -0000
Date: Mon, 20 Apr 2020 14:19:41 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: gpio: Convert i.MX to json-schema
Message-ID: <20200420191941.GA6101@bogus>
References: <1586770849-15693-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586770849-15693-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_121946_640958_CAEB37B0 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, shawnguo@kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 05:40:49PM +0800, Anson Huang wrote:
> Convert the i.MX GPIO binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/gpio/fsl-imx-gpio.txt      | 35 -----------
>  .../devicetree/bindings/gpio/fsl-imx-gpio.yaml     | 72 ++++++++++++++++++++++
>  2 files changed, 72 insertions(+), 35 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
> deleted file mode 100644
> index b4cd9f90..0000000
> --- a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.txt
> +++ /dev/null
> @@ -1,35 +0,0 @@
> -* Freescale i.MX/MXC GPIO controller
> -
> -Required properties:
> -- compatible : Should be "fsl,<soc>-gpio"
> -- reg : Address and length of the register set for the device
> -- interrupts : Should be the port interrupt shared by all 32 pins, if
> -  one number.  If two numbers, the first one is the interrupt shared
> -  by low 16 pins and the second one is for high 16 pins.
> -- gpio-controller : Marks the device node as a gpio controller.
> -- #gpio-cells : Should be two.  The first cell is the pin number and
> -  the second cell is used to specify the gpio polarity:
> -      0 = active high
> -      1 = active low
> -- interrupt-controller: Marks the device node as an interrupt controller.
> -- #interrupt-cells : Should be 2.  The first cell is the GPIO number.
> -  The second cell bits[3:0] is used to specify trigger type and level flags:
> -      1 = low-to-high edge triggered.
> -      2 = high-to-low edge triggered.
> -      4 = active high level-sensitive.
> -      8 = active low level-sensitive.
> -
> -Optional properties:
> -- clocks: the clock for clocking the GPIO silicon
> -
> -Example:
> -
> -gpio0: gpio@73f84000 {
> -	compatible = "fsl,imx51-gpio", "fsl,imx35-gpio";
> -	reg = <0x73f84000 0x4000>;
> -	interrupts = <50 51>;
> -	gpio-controller;
> -	#gpio-cells = <2>;
> -	interrupt-controller;
> -	#interrupt-cells = <2>;
> -};
> diff --git a/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> new file mode 100644
> index 0000000..465104c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/fsl-imx-gpio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX/MXC GPIO controller
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx1-gpio
> +              - fsl,imx21-gpio
> +              - fsl,imx31-gpio
> +              - fsl,imx35-gpio
> +              - fsl,imx7d-gpio

compatible:
  enum:
    - fsl,imx1-gpio
    - fsl,imx21-gpio
    - fsl,imx31-gpio
    - fsl,imx35-gpio
    - fsl,imx7d-gpio

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      Should be the port interrupt shared by all 32 pins, if one number.
> +      If two numbers, the first one is the interrupt shared by low 16 pins
> +      and the second one is for high 16 pins.
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 2
> +
> +  clocks:
> +    description: |
> +      The clock for clocking the GPIO silicon.

Can drop.

> +    maxItems: 1
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  gpio-controller: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +  - "#interrupt-cells"
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    gpio0: gpio@73f84000 {
> +        compatible = "fsl,imx35-gpio";
> +        reg = <0x73f84000 0x4000>;
> +        interrupts = <50 51>;
> +        gpio-controller;
> +        #gpio-cells = <2>;
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +    };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
