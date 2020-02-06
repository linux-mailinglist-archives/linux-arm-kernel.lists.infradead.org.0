Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFFA154D5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7aw7BEsyDlFnmAjBSCTGzu97aE3uw3FdNm8b0zmohQA=; b=BdWIuZ8SISqtkP
	cHMnOYNxVZeY/mmYtAw1AHSiejRmdXmLTHPe3bj81wUuoxXZSVCNTHV3a1E6IKCH9qrArv/Tcwau0
	kB9SEhwVnR7C6ZvRw8Uy4BvLvsFyprq+tbN+VrnTx1JuXvMiVdRXameEY+0tMlqbpQlaYza9+J2/N
	+AahbZJPtAueCusYGeK3xdWpJICfD3el8MuCr961gsbwmnNclDHhArUXxXYqZCw4cH7jTll4LiiPW
	tE36X1/tv+oZA0G5H2jxXKgDEDDsATwIlPw/4yCY6FGY+iIcMTPsT+1VwEcGrj493M9nUCE6qxHUA
	SgCSadNCaVIuKySB6Wzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo3J-0000Q1-St; Thu, 06 Feb 2020 20:47:09 +0000
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2H-0007wL-Me
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:46:07 +0000
Received: by mail-pg1-f194.google.com with SMTP id u131so3333197pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:46:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m81p+hR2vogTaDEf1idDrse0m7Lbb0Gxj6sZLzANUuI=;
 b=FZFTY92ylmvHqu0tr8LsKpy+GKuWq8MgZXCOXwB4WXeUCGnDeLdTAxxQlOgRJkgUSE
 +qe7sXupyAsOEkNyTnRozi5G2fGA++fVKOIq/SMO48ajfe+ccdaA2+LRiTj2bDyEz/oT
 L9L9F2g1YvVz75v+NYDpF+9JD4+gN8/iqbNXU+UxKf84SD9+yye/G90M5W9ttPcT+jUV
 s//6Tt1O94keu/rLMYeQ0udf2CfyM7YKyopAO6wWx2u6DN/TtW1G0un/CH4Q/pnfo+2Y
 jaB1Cl60/hJ7hVgDGpdCTCah0v6o1reGmbpUEqD4ALJFHLnHYoT/omoEEytzI5WEb/Nh
 /a8A==
X-Gm-Message-State: APjAAAXuN7+CxVRXXj49bUcJqJg6FJ3fbNmNCGu0M7agj5y6TGDiOrID
 z01YuimWk7FvBDxl3fV7nA==
X-Google-Smtp-Source: APXvYqwCwnSQjaVCNBtB5hjPdDVYdZmST8IYCaU9il+cUfP4NKxVHabeTsXz1XbelShWocdw3Y+wQA==
X-Received: by 2002:a63:594a:: with SMTP id j10mr5841946pgm.227.1581021963966; 
 Thu, 06 Feb 2020 12:46:03 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id a17sm181032pjv.6.2020.02.06.12.46.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:03 -0800 (PST)
Received: (nullmailer pid 6192 invoked by uid 1000);
 Thu, 06 Feb 2020 17:45:07 -0000
Date: Thu, 6 Feb 2020 17:45:07 +0000
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: mfd: Convert stmfx bindings to json-schema
Message-ID: <20200206174507.GA20641@bogus>
References: <20200129170613.14155-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129170613.14155-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124605_778820_D0517B55 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.co, devicetree@vger.kernel.org, amelie.delaunay@st.com,
 alexandre.torgue@st.com, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, lee.jones@linaro.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 06:06:13PM +0100, Benjamin Gaignard wrote:
> Convert stmfx bindings to json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  Documentation/devicetree/bindings/mfd/stmfx.txt    |  28 -----
>  Documentation/devicetree/bindings/mfd/stmfx.yaml   | 100 ++++++++++++++++++
>  .../devicetree/bindings/pinctrl/pinctrl-stmfx.txt  | 116 ---------------------
>  3 files changed, 100 insertions(+), 144 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stmfx.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/stmfx.yaml
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/stmfx.txt b/Documentation/devicetree/bindings/mfd/stmfx.txt
> deleted file mode 100644
> index f0c2f7fcf5c7..000000000000
> --- a/Documentation/devicetree/bindings/mfd/stmfx.txt
> +++ /dev/null
> @@ -1,28 +0,0 @@
> -STMicroelectonics Multi-Function eXpander (STMFX) Core bindings
> -
> -ST Multi-Function eXpander (STMFX) is a slave controller using I2C for
> -communication with the main MCU. Its main features are GPIO expansion, main
> -MCU IDD measurement (IDD is the amount of current that flows through VDD) and
> -resistive touchscreen controller.
> -
> -Required properties:
> -- compatible: should be "st,stmfx-0300".
> -- reg: I2C slave address of the device.
> -- interrupts: interrupt specifier triggered by MFX_IRQ_OUT signal.
> -  Please refer to ../interrupt-controller/interrupt.txt
> -
> -Optional properties:
> -- drive-open-drain: configure MFX_IRQ_OUT as open drain.
> -- vdd-supply: phandle of the regulator supplying STMFX.
> -
> -Example:
> -
> -	stmfx: stmfx@42 {
> -		compatible = "st,stmfx-0300";
> -		reg = <0x42>;
> -		interrupts = <8 IRQ_TYPE_EDGE_RISING>;
> -		interrupt-parent = <&gpioi>;
> -		vdd-supply = <&v3v3>;
> -	};
> -
> -Please refer to ../pinctrl/pinctrl-stmfx.txt for STMFX GPIO expander function bindings.
> diff --git a/Documentation/devicetree/bindings/mfd/stmfx.yaml b/Documentation/devicetree/bindings/mfd/stmfx.yaml
> new file mode 100644
> index 000000000000..4219e0ffcb85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/stmfx.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/stmfx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectonics Multi-Function eXpander (STMFX) bindings
> +
> +description: ST Multi-Function eXpander (STMFX) is a slave controller using I2C for
> +             communication with the main MCU. Its main features are GPIO expansion,
> +             main MCU IDD measurement (IDD is the amount of current that flows
> +             through VDD) and resistive touchscreen controller.

Use normal formatting which is 2 spaces.

> +
> +maintainers:
> +  - Amelie Delaunay <amelie.delaunay@st.com>
> +
> +allOf:
> +  - $ref: ../pinctrl/pincfg-node.yaml
> +
> +properties:
> +  compatible:
> +    const: st,stmfx-0300
> +
> +  reg:
> +    enum: [ 0x42, 0x43 ]
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  drive-open-drain: true
> +
> +  vdd-supply:
> +    maxItems: 1
> +
> +  stmfx-pin-controller:

Really should be 'pinctrl'

> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: st,stmfx-0300-pinctrl
> +
> +      "#gpio-cells":
> +        const: 2
> +
> +      "#interrupt-cells":
> +        const: 2
> +
> +      gpio-controller: true
> +
> +      interrupt-controller: true
> +
> +      gpio-ranges:
> +        description: if all STMFX pins[24:0] are available (no other STMFX function in use),
> +                     you should use gpio-ranges = <&stmfx_pinctrl 0 0 24>;
> +                     if agpio[3:0] are not available (STMFX Touchscreen function in use),
> +                     you should use gpio-ranges = <&stmfx_pinctrl 0 0 16>, <&stmfx_pinctrl 20 20 4>;
> +                     if agpio[7:4] are not available (STMFX IDD function in use),
> +                     you should use gpio-ranges = <&stmfx_pinctrl 0 0 20>;
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - "#gpio-cells"
> +      - "#interrupt-cells"
> +      - gpio-controller
> +      - interrupt-controller
> +      - gpio-ranges
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    i2c@0 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      stmfx@42 {
> +        compatible = "st,stmfx-0300";
> +        reg = <0x42>;
> +        interrupts = <8 IRQ_TYPE_EDGE_RISING>;
> +        interrupt-parent = <&gpioi>;
> +        vdd-supply = <&v3v3>;
> +
> +        stmfx-pin-controller {
> +          compatible = "st,stmfx-0300-pinctrl";
> +          #gpio-cells = <2>;
> +          #interrupt-cells = <2>;
> +          gpio-controller;
> +          interrupt-controller;
> +          gpio-ranges = <&stmfx_pinctrl 0 0 24>;

Perhaps keep the label to show this points to this node.

> +        };
> +      };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt b/Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
> deleted file mode 100644
> index c1b4c1819b84..000000000000
> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-stmfx.txt
> +++ /dev/null
> @@ -1,116 +0,0 @@
> -STMicroelectronics Multi-Function eXpander (STMFX) GPIO expander bindings
> -
> -ST Multi-Function eXpander (STMFX) offers up to 24 GPIOs expansion.
> -Please refer to ../mfd/stmfx.txt for STMFX Core bindings.
> -
> -Required properties:
> -- compatible: should be "st,stmfx-0300-pinctrl".
> -- #gpio-cells: should be <2>, the first cell is the GPIO number and the second
> -  cell is the gpio flags in accordance with <dt-bindings/gpio/gpio.h>.
> -- gpio-controller: marks the device as a GPIO controller.
> -- #interrupt-cells: should be <2>, the first cell is the GPIO number and the
> -  second cell is the interrupt flags in accordance with
> -  <dt-bindings/interrupt-controller/irq.h>.
> -- interrupt-controller: marks the device as an interrupt controller.
> -- gpio-ranges: specifies the mapping between gpio controller and pin
> -  controller pins. Check "Concerning gpio-ranges property" below.
> -Please refer to ../gpio/gpio.txt.
> -
> -Please refer to pinctrl-bindings.txt for pin configuration.
> -
> -Required properties for pin configuration sub-nodes:
> -- pins: list of pins to which the configuration applies.
> -
> -Optional properties for pin configuration sub-nodes (pinconf-generic ones):
> -- bias-disable: disable any bias on the pin.
> -- bias-pull-up: the pin will be pulled up.
> -- bias-pull-pin-default: use the pin-default pull state.
> -- bias-pull-down: the pin will be pulled down.
> -- drive-open-drain: the pin will be driven with open drain.
> -- drive-push-pull: the pin will be driven actively high and low.
> -- output-high: the pin will be configured as an output driving high level.
> -- output-low: the pin will be configured as an output driving low level.

What about all these nodes?

> -
> -Note that STMFX pins[15:0] are called "gpio[15:0]", and STMFX pins[23:16] are
> -called "agpio[7:0]". Example, to refer to pin 18 of STMFX, use "agpio2".
> -
> -Concerning gpio-ranges property:
> -- if all STMFX pins[24:0] are available (no other STMFX function in use), you
> -  should use gpio-ranges = <&stmfx_pinctrl 0 0 24>;
> -- if agpio[3:0] are not available (STMFX Touchscreen function in use), you
> -  should use gpio-ranges = <&stmfx_pinctrl 0 0 16>, <&stmfx_pinctrl 20 20 4>;
> -- if agpio[7:4] are not available (STMFX IDD function in use), you
> -  should use gpio-ranges = <&stmfx_pinctrl 0 0 20>;
> -
> -
> -Example:
> -
> -	stmfx: stmfx@42 {
> -		...
> -
> -		stmfx_pinctrl: stmfx-pin-controller {
> -			compatible = "st,stmfx-0300-pinctrl";
> -			#gpio-cells = <2>;
> -			#interrupt-cells = <2>;
> -			gpio-controller;
> -			interrupt-controller;
> -			gpio-ranges = <&stmfx_pinctrl 0 0 24>;
> -
> -			joystick_pins: joystick {
> -				pins = "gpio0", "gpio1", "gpio2", "gpio3", "gpio4";
> -				drive-push-pull;
> -				bias-pull-up;
> -			};
> -		};
> -	};
> -
> -Example of STMFX GPIO consumers:
> -
> -	joystick {
> -		compatible = "gpio-keys";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		pinctrl-0 = <&joystick_pins>;
> -		pinctrl-names = "default";
> -		button-0 {
> -			label = "JoySel";
> -			linux,code = <KEY_ENTER>;
> -			interrupt-parent = <&stmfx_pinctrl>;
> -			interrupts = <0 IRQ_TYPE_EDGE_RISING>;
> -		};
> -		button-1 {
> -			label = "JoyDown";
> -			linux,code = <KEY_DOWN>;
> -			interrupt-parent = <&stmfx_pinctrl>;
> -			interrupts = <1 IRQ_TYPE_EDGE_RISING>;
> -		};
> -		button-2 {
> -			label = "JoyLeft";
> -			linux,code = <KEY_LEFT>;
> -			interrupt-parent = <&stmfx_pinctrl>;
> -			interrupts = <2 IRQ_TYPE_EDGE_RISING>;
> -		};
> -		button-3 {
> -			label = "JoyRight";
> -			linux,code = <KEY_RIGHT>;
> -			interrupt-parent = <&stmfx_pinctrl>;
> -			interrupts = <3 IRQ_TYPE_EDGE_RISING>;
> -		};
> -		button-4 {
> -			label = "JoyUp";
> -			linux,code = <KEY_UP>;
> -			interrupt-parent = <&stmfx_pinctrl>;
> -			interrupts = <4 IRQ_TYPE_EDGE_RISING>;
> -		};
> -	};
> -
> -	leds {
> -		compatible = "gpio-leds";
> -		orange {
> -			gpios = <&stmfx_pinctrl 17 1>;
> -		};
> -
> -		blue {
> -			gpios = <&stmfx_pinctrl 19 1>;
> -		};
> -	}
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
