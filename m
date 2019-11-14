Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEB9FBD8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ke/Pm+ws08vGlxUb4OGAy2GborEkn5F7xA8vNlqdh5c=; b=YeKL2AS3vpeD25
	B6vGkMet2Q+H+K0o/NFG9+wbcc2tiGhPCakQAxrI8hbZl1aLjTs8fU2q9t7+fD+M6jxvnkhdXN3up
	COaDY1FDACtkQiLgrC+HNIcrdBxzkSbtEMnrXcPpqdyLjYzvbtUcWonyi6NSdZlpr7mk3SBkGrE63
	vPAmXVSM06Pyeq04zwWeEbjWLJjYoHNbvbVAbUeYjxjUhS74IoogFYUhxpj+rZaKCDUsQCuQlqrf3
	+RSOK894R+UCUD9UhDb9rdWlQC2G63s8H+3aBukTOnd8QvQQLe87/bG5tN0Q0cZNsWyC/8pBicB8V
	MnjAay+gqNHP0Qmz855Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV46o-0007XU-Do; Thu, 14 Nov 2019 01:39:42 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV46d-0007UA-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 01:39:33 +0000
Received: by mail-oi1-f193.google.com with SMTP id v138so3757809oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 17:39:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Wf2ZgDDdLtN92xo12ewGcnZ1TJivKNjsfGQ9lqyhDWk=;
 b=CRIzcTsqUWQVXaKVqzqlzJLFa9GMP4a2n1SN14KnlDidHxm7CacqTuu9IdcMeagmOf
 yRsTRS9k1eYHspCtxkAMv6mdC2AggenVSQA5XRpk1czhpjIny53eT1Wcye1SDQzSRtgn
 t4FszQ4Lwro2OTtMCM0gNVElc7Dv57o8GOUgKx2jsmRIkZwDvLXXOXFPuRhMDk3QSL4G
 5KKCnvkn3nmg7QNcO5tf0n18YRu4MSSkIbdQuEwZNlUpkDC0TvHGBEEzALvyaylnjP3B
 E+Szsfzom+1Ybv94SMpuu19L80a9EWWIh9++K3PkPW2OqMhj3889Vh2yE6AmmybeiWye
 SkWg==
X-Gm-Message-State: APjAAAWZzmBYdMPsB4TASgLWqIJxVijCPmhcNmLnpytPePnW09rvFie/
 056fbTmsfS7lAKbTAR+blA==
X-Google-Smtp-Source: APXvYqwPQJ4y//KO11Tsi1dmnTeRP1x69cfApIFmaGy0qbT4XRijmvfVIhPt/xD5r4QZklMQmiqdOQ==
X-Received: by 2002:a05:6808:9bc:: with SMTP id
 e28mr1306881oig.169.1573695569028; 
 Wed, 13 Nov 2019 17:39:29 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d5sm1226120oic.23.2019.11.13.17.39.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 17:39:28 -0800 (PST)
Date: Wed, 13 Nov 2019 19:39:27 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: mfd: Convert stm32 timers bindings to
 json-schema
Message-ID: <20191114013927.GA22656@bogus>
References: <20191107191425.22273-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107191425.22273-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_173931_396628_6220DA97 
X-CRM114-Status: GOOD (  26.45  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-pwm@vger.kernel.org, linux-iio@vger.kernel.org,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, fabrice.gasnier@st.com,
 lee.jones@linaro.org, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 08:14:25PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 timers binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 2:
> - merge all (mfd, iio, pwm, counter) bindings in one file
> - fix typo and trailing spaces
> - rework dmas and dma-names properties to allow schemas like:
>   ch1 , ch2, ch4
>   ch2, up, com
> - use patternProperties to describe timer subnode
> - improve st,breakinput property definition to be able to check the values
>   inside de tuple
>  .../bindings/counter/stm32-timer-cnt.txt           |  31 -----
>  .../bindings/iio/timer/stm32-timer-trigger.txt     |  25 ----
>  .../devicetree/bindings/mfd/st,stm32-timers.yaml   | 155 +++++++++++++++++++++
>  .../devicetree/bindings/mfd/stm32-timers.txt       |  73 ----------
>  .../devicetree/bindings/pwm/pwm-stm32.txt          |  38 -----
>  5 files changed, 155 insertions(+), 167 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
>  delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/stm32-timers.txt
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32.txt
> 
> diff --git a/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt b/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
> deleted file mode 100644
> index c52fcdd4bf6c..000000000000
> --- a/Documentation/devicetree/bindings/counter/stm32-timer-cnt.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -STMicroelectronics STM32 Timer quadrature encoder
> -
> -STM32 Timer provides quadrature encoder to detect
> -angular position and direction of rotary elements,
> -from IN1 and IN2 input signals.
> -
> -Must be a sub-node of an STM32 Timer device tree node.
> -See ../mfd/stm32-timers.txt for details about the parent node.
> -
> -Required properties:
> -- compatible:		Must be "st,stm32-timer-counter".
> -- pinctrl-names: 	Set to "default".
> -- pinctrl-0: 		List of phandles pointing to pin configuration nodes,
> -			to set CH1/CH2 pins in mode of operation for STM32
> -			Timer input on external pin.
> -
> -Example:
> -	timers@40010000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32-timers";
> -		reg = <0x40010000 0x400>;
> -		clocks = <&rcc 0 160>;
> -		clock-names = "int";
> -
> -		counter {
> -			compatible = "st,stm32-timer-counter";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&tim1_in_pins>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt b/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
> deleted file mode 100644
> index b8e8c769d434..000000000000
> --- a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -STMicroelectronics STM32 Timers IIO timer bindings
> -
> -Must be a sub-node of an STM32 Timers device tree node.
> -See ../mfd/stm32-timers.txt for details about the parent node.
> -
> -Required parameters:
> -- compatible:	Must be one of:
> -		"st,stm32-timer-trigger"
> -		"st,stm32h7-timer-trigger"
> -- reg:		Identify trigger hardware block.
> -
> -Example:
> -	timers@40010000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32-timers";
> -		reg = <0x40010000 0x400>;
> -		clocks = <&rcc 0 160>;
> -		clock-names = "int";
> -
> -		timer@0 {
> -			compatible = "st,stm32-timer-trigger";
> -			reg = <0>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> new file mode 100644
> index 000000000000..e8bd80038fa9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml
> @@ -0,0 +1,155 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/st,stm32-timers.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Timers bindings
> +
> +description: |
> +  This hardware block provides 3 types of timer along with PWM functionality:
> +    - advanced-control timers consist of a 16-bit auto-reload counter driven by a programmable
> +      prescaler, break input feature, PWM outputs and complementary PWM ouputs channels.
> +    - general-purpose timers consist of a 16-bit or 32-bit auto-reload counter driven by a
> +      programmable prescaler and PWM outputs.
> +    - basic timers consist of a 16-bit auto-reload counter driven by a programmable prescaler.
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@st.com>
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-timers
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: int
> +
> +  reset:
> +    maxItems: 1
> +
> +  dmas:
> +    minItems: 1
> +    maxItems: 7
> +
> +  dma-names:
> +    items:
> +      - enum: [ ch1, ch2, ch3, ch4, up, trig, com ]

Drop the '-' so the values are applied to all items, not just the first.

Note that ideally we want to define each item rather than do this.

> +    minItems: 1
> +    maxItems: 7
> +    additionalItems: true

And then drop this.

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  pwm:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: st,stm32-pwm
> +
> +      "#pwm-cells":
> +        const: 3
> +
> +      st,breakinput:
> +        description: |
> +          One or two <index level filter> to describe break input configurations.
> +
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +          - items:

minItems: 1
maxItems: 2

(at same level as outer 'items').

> +              items:
> +                - description: |
> +                    "index" indicates on which break input (0 or 1) the configuration should be applied.
> +                  enum: [ 0 , 1]
> +                - description: |
> +                    "level" gives the active level (0=low or 1=high) of the input signal for this configuration
> +                  enum: [ 0, 1 ]
> +                - description: |
> +                    "filter" gives the filtering value (up to 15) to be applied.
> +                  maximum: 15
> +
> +    required:
> +      - "#pwm-cells"
> +      - compatible
> +
> +patternProperties:
> +  "^timer@[0-9]+$":
> +    type: object
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - st,stm32-timer-trigger
> +          - st,stm32h7-timer-trigger
> +
> +      reg:
> +        maxItems: 1
> +        description: identify trigger hardware block.

Should be able to define the range of values, right?

> +
> +    required:
> +      - compatible
> +      - reg
> +
> +  counter:
> +    type: object
> +
> +    properties:
> +      compatible:
> +        const: st,stm32-timer-counter
> +
> +    required:
> +      - compatible
> +
> +required:
> +  - "#address-cells"
> +  - "#size-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    timers2: timers@40000000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      compatible = "st,stm32-timers";
> +      reg = <0x40000000 0x400>;
> +      clocks = <&rcc TIM2_K>;
> +      clock-names = "int";
> +      dmas = <&dmamux1 18 0x400 0x1>,
> +             <&dmamux1 19 0x400 0x1>,
> +             <&dmamux1 20 0x400 0x1>,
> +             <&dmamux1 21 0x400 0x1>,
> +             <&dmamux1 22 0x400 0x1>;
> +      dma-names = "ch1", "ch2", "ch3", "ch4", "up";
> +      pwm {
> +        compatible = "st,stm32-pwm";
> +        #pwm-cells = <3>;
> +        st,breakinput = <0 1 5>;
> +      };
> +      timer@0 {
> +        compatible = "st,stm32-timer-trigger";
> +        reg = <0>;
> +      };
> +      counter {
> +        compatible = "st,stm32-timer-counter";
> +      };
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/mfd/stm32-timers.txt b/Documentation/devicetree/bindings/mfd/stm32-timers.txt
> deleted file mode 100644
> index 15c3b87f51d9..000000000000
> --- a/Documentation/devicetree/bindings/mfd/stm32-timers.txt
> +++ /dev/null
> @@ -1,73 +0,0 @@
> -STM32 Timers driver bindings
> -
> -This IP provides 3 types of timer along with PWM functionality:
> -- advanced-control timers consist of a 16-bit auto-reload counter driven by a programmable
> -  prescaler, break input feature, PWM outputs and complementary PWM ouputs channels.
> -- general-purpose timers consist of a 16-bit or 32-bit auto-reload counter driven by a
> -  programmable prescaler and PWM outputs.
> -- basic timers consist of a 16-bit auto-reload counter driven by a programmable prescaler.
> -
> -Required parameters:
> -- compatible: must be "st,stm32-timers"
> -
> -- reg:			Physical base address and length of the controller's
> -			registers.
> -- clock-names:		Set to "int".
> -- clocks: 		Phandle to the clock used by the timer module.
> -			For Clk properties, please refer to ../clock/clock-bindings.txt
> -
> -Optional parameters:
> -- resets:		Phandle to the parent reset controller.
> -			See ../reset/st,stm32-rcc.txt
> -- dmas:			List of phandle to dma channels that can be used for
> -			this timer instance. There may be up to 7 dma channels.
> -- dma-names:		List of dma names. Must match 'dmas' property. Valid
> -			names are: "ch1", "ch2", "ch3", "ch4", "up", "trig",
> -			"com".
> -
> -Optional subnodes:
> -- pwm:			See ../pwm/pwm-stm32.txt
> -- timer:		See ../iio/timer/stm32-timer-trigger.txt
> -- counter:		See ../counter/stm32-timer-cnt.txt
> -
> -Example:
> -	timers@40010000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32-timers";
> -		reg = <0x40010000 0x400>;
> -		clocks = <&rcc 0 160>;
> -		clock-names = "int";
> -
> -		pwm {
> -			compatible = "st,stm32-pwm";
> -			pinctrl-0	= <&pwm1_pins>;
> -			pinctrl-names	= "default";
> -		};
> -
> -		timer@0 {
> -			compatible = "st,stm32-timer-trigger";
> -			reg = <0>;
> -		};
> -
> -		counter {
> -			compatible = "st,stm32-timer-counter";
> -			pinctrl-names = "default";
> -			pinctrl-0 = <&tim1_in_pins>;
> -		};
> -	};
> -
> -Example with all dmas:
> -	timer@40010000 {
> -		...
> -		dmas = <&dmamux1 11 0x400 0x0>,
> -		       <&dmamux1 12 0x400 0x0>,
> -		       <&dmamux1 13 0x400 0x0>,
> -		       <&dmamux1 14 0x400 0x0>,
> -		       <&dmamux1 15 0x400 0x0>,
> -		       <&dmamux1 16 0x400 0x0>,
> -		       <&dmamux1 17 0x400 0x0>;
> -		dma-names = "ch1", "ch2", "ch3", "ch4", "up", "trig", "com";
> -		...
> -		child nodes...
> -	};
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
> deleted file mode 100644
> index a8690bfa5e1f..000000000000
> --- a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -STMicroelectronics STM32 Timers PWM bindings
> -
> -Must be a sub-node of an STM32 Timers device tree node.
> -See ../mfd/stm32-timers.txt for details about the parent node.
> -
> -Required parameters:
> -- compatible:		Must be "st,stm32-pwm".
> -- pinctrl-names: 	Set to "default".
> -- pinctrl-0: 		List of phandles pointing to pin configuration nodes for PWM module.
> -			For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
> -- #pwm-cells:		Should be set to 3. This PWM chip uses the default 3 cells
> -			bindings defined in pwm.txt.
> -
> -Optional parameters:
> -- st,breakinput:	One or two <index level filter> to describe break input configurations.
> -			"index" indicates on which break input (0 or 1) the configuration
> -			should be applied.
> -			"level" gives the active level (0=low or 1=high) of the input signal
> -			for this configuration.
> -			"filter" gives the filtering value to be applied.
> -
> -Example:
> -	timers@40010000 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32-timers";
> -		reg = <0x40010000 0x400>;
> -		clocks = <&rcc 0 160>;
> -		clock-names = "int";
> -
> -		pwm {
> -			compatible = "st,stm32-pwm";
> -			#pwm-cells = <3>;
> -			pinctrl-0	= <&pwm1_pins>;
> -			pinctrl-names	= "default";
> -			st,breakinput = <0 1 5>;
> -		};
> -	};
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
