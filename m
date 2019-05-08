Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBB018159
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 22:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ7j7m/swLrOdL/zMZVFhx6HYBaA42/rDvAv2DimiXo=; b=XkhHDWp4xYdDYp
	j3TTP3vW4bfNr9cY9EUKd4+0liirb7Z1vjh3lzSMhDv7pp//tqKVHuIPa2FtnbAKTNALHrhzA6EHT
	fIyyfq+Xmwb3ANyfykWpZs6JuMfjsaRS6tPRavQGaIzL6mmIpuVxwrkx5F7rsaes6iwEMaeyKLa1N
	7QT9k3nI3yXksHr9CjOpG71EbUY/5Uk/HV3FFZjYvq3KBsLtXSuos3Gwxde1xa6rHVoGKBSUCSJXI
	+XA9ALGUVGiLDwNzYeq3katsbALVmiBmXyQR98JG+4vvGpdteZUrHDTQegJ+c7OPiPz1Vc3QFmKMt
	6o7NWEVnqDprQEQI6VuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOTaA-0001Kt-1n; Wed, 08 May 2019 20:54:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOTa1-0001Jv-PQ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 20:54:23 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDC242173B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  8 May 2019 20:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557348860;
 bh=tWV/gWokrqjEWW86w0MvmRWKkr4PcsLZwu+5cA4DvzA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=u4XyIss2ZXPprn66sZ96vvDCzr3ElW8ae4YOO7qN+8ylqNt6qfhtICVT7SKnaUbzO
 Foc2/SbyKg2TWjcyuQ349Ls/2ezeJRLrrLI8S+p6vVQBVRZ6mEWKTauDEWq0LO3PxH
 WRPHnz1ry4j1pOFVRC7rgyf35PhzgQ2DgkAOw1dE=
Received: by mail-qt1-f182.google.com with SMTP id j6so108778qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 13:54:19 -0700 (PDT)
X-Gm-Message-State: APjAAAVuxzLqFXd1YFM0uvb1hHLQlx3wjpm4wFIIaG3lmNVqGAOAYzNt
 9Y9cKJ0T/+SEjVSDdLwnLBnlEE3cpqIAmM2l7A==
X-Google-Smtp-Source: APXvYqyIJO9jyUOfSxSgewiDo7+nsX9cXd1yYrxNAIDDw7xZk7u75QnrWiHLuORUna7KxFgMuRPNFiFYpjr5kLEeL6Y=
X-Received: by 2002:aed:306c:: with SMTP id 99mr128390qte.38.1557348859072;
 Wed, 08 May 2019 13:54:19 -0700 (PDT)
MIME-Version: 1.0
References: <1556876854-32441-1-git-send-email-alexandre.torgue@st.com>
In-Reply-To: <1556876854-32441-1-git-send-email-alexandre.torgue@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 8 May 2019 15:54:07 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+sydL5tHafgOWaW-+j4OJZ1JxVh5b=YXSMYRDxEDG3-g@mail.gmail.com>
Message-ID: <CAL_Jsq+sydL5tHafgOWaW-+j4OJZ1JxVh5b=YXSMYRDxEDG3-g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert stm32 pinctrl bindings to
 jason-schema
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_135421_863724_E2E1D147 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

What's jason-schema? ;)

On Fri, May 3, 2019 at 4:47 AM Alexandre Torgue <alexandre.torgue@st.com> wrote:
>
> Convert the STM32 pinctrl binding to DT schema format using json-schema.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> ---
>
> Hi,
>
> First pacth to convert DT bindings file (here pinctrl STM32) to jsaon-schema
> in order to take advantage of devicetree validation tool for STM32.

> diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> new file mode 100644
> index 0000000..fcceca0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> @@ -0,0 +1,271 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (C) STMicroelectronics 2019.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/st,stm32-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STM32 GPIO and Pin Mux/Config controller
> +
> +maintainers:
> +  - Alexandre TORGUE <alexandre.torgue@st.com>

nit: add a blank line

> +description: |
> +  STMicroelectronics's STM32 MCUs intregrate a GPIO and Pin mux/config hardware
> +  controller. It controls the input/output settings on the available pins and
> +  also provides ability to multiplex and configure the output of various
> +  on-chip controllers onto these pads.
> +
> +properties:
> +  compatible:
> +      items:

You can drop items since there is only 1.

> +        - enum:
> +          - st,stm32f429-pinctrl
> +          - st,stm32f469-pinctrl
> +          - st,stm32f746-pinctrl
> +          - st,stm32f769-pinctrl
> +          - st,stm32h743-pinctrl
> +          - st,stm32mp157-pinctrl
> +          - st,stm32mp157-z-pinctrl
> +
> +  '#address-cells':
> +    const: 1
> +  '#size-cells':
> +    const: 1
> +    description:
> +      Defines mapping between pin controller node (parent) to
> +      gpio-bank node (children).

Don't need description for common properties unless there's really
something binding specific to add. Same is true on a bunch of other
description entries.

> +
> +  ranges:
> +    description:
> +      Defines mapping between pin controller node (parent) to
> +      gpio-bank node (children).
> +  pins-are-numbered:
> +    description:
> +      Specify the subnodes are using numbered pinmux to
> +      specify pins.
> +  st,syscfg:

Needs to define the type (phandle-array).

> +    description: |
> +      Should be phandle/offset/mask:
> +        - The phandle to the syscon node which includes IRQ mux selection register.
> +        - The offset of the IRQ mux selection register
> +        - The field mask of IRQ mux, needed if different of 0xf.

This can be expressed as a constraint:

items:
  - items:
    - description: The phandle to the syscon node which includes IRQ
mux selection register.
    - description: The offset of the IRQ mux selection register
    - description: The field mask of IRQ mux, needed if different of 0xf.

Perhaps there are some constraints on the values of the cells.

> +
> +  hwlocks:
> +    description: Reference to a phandle of a hardware spinlock provider node.

No need for a description.

> +  st,package:
> +    description:
> +     Indicates the SOC package used.
> +     More details in include/dt-bindings/pinctrl/stm32-pinfunc.h
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 4, 8]
> +
> +patternProperties:
> +  '^gpio@[0-9a-z]*$':

Hex only: a-f

> +    properties:
> +      gpio-controller:
> +        description:
> +          Indicates this device is a GPIO controller.

No need to describe standard properties.

> +      '#gpio-cells':
> +        const: 2
> +        description: |
> +          The first cell is the pin number.
> +          The second one is the polarity
> +          * 0 for active high.
> +          * 1 for active low.

As long as this is the standard cell definition, no need to describe.

> +
> +      reg:
> +        description:
> +          The gpio address range, relative to the pinctrl range.

Need to say how many entries (maxItems), not what reg is.

> +      clocks:
> +        description:
> +          Clock that drives this bank.

ditto.

> +      st,bank-name:

type?

possible values or regex match?

> +        description:
> +          Should be a name string for this bank as specified in the datasheet.
> +      reset:

resets

How many items?

> +        description:
> +          Reference to the reset controller.
> +      gpio-ranges:
> +        description: |
> +          Define a dedicated mapping between a pin-controller and
> +          a gpio controller. Format is <&phandle a b c> with:
> +          -(phandle): phandle of pin-controller.
> +          -(a): gpio base offset in range.
> +          -(b): pin base offset in range.
> +          -(c): gpio count in range.

All common, so not needed here.

> +          This entry has to be used either if there are holes inside a bank:
> +          GPIOB0/B1/B2/B14/B15 (see example 2) or if banks are not contiguous:
> +          GPIOA/B/C/E...
> +          NOTE: If "gpio-ranges" is used for a gpio controller, all gpio-controller
> +          have to use a "gpio-ranges" entry.
> +          More details in Documentation/devicetree/bindings/gpio/gpio.txt.
> +
> +      ngpios:
> +        description:
> +          Number of available gpios in a bank.
> +        minimum: 1
> +        maximum: 16
> +
> +      st,bank-ioport:

type?

> +        description:
> +          Should correspond to the EXTI IOport selection (EXTI line used
> +          to select GPIOs as interrupts).
> +
> +    required:
> +      - gpio-controller
> +      - '#gpio-cells'
> +      - reg
> +      - clocks
> +      - st,bank-name
> +
> +  '-[0-9]*$':
> +    patternProperties:
> +      '^pins':
> +        description: |
> +          A pinctrl node should contain at least one subnode representing the
> +          pinctrl group available on the machine. Each subnode will list the
> +          pins it needs, and how they should be configured, with regard to muxer
> +          configuration, pullups, drive, output high/low and output speed.
> +        properties:
> +          pinmux:
> +            allOf:
> +              - $ref: "/schemas/types.yaml#/definitions/uint32-array"
> +            description: |
> +              Integer array, represents gpio pin number and mux setting.
> +              Supported pin number and mux varies for different SoCs, and are
> +              defined in dt-bindings/pinctrl/<soc>-pinfunc.h directly.
> +              These defines are calculated as: ((port * 16 + line) << 8) | function
> +              With:
> +              - port: The gpio port index (PA = 0, PB = 1, ..., PK = 11)
> +              - line: The line offset within the port (PA0 = 0, PA1 = 1, ..., PA15 = 15)
> +              - function: The function number, can be:
> +              * 0 : GPIO
> +              * 1 : Alternate Function 0
> +              * 2 : Alternate Function 1
> +              * 3 : Alternate Function 2
> +              * ...
> +              * 16 : Alternate Function 15
> +              * 17 : Analog
> +              To simplify the usage, macro is available to generate "pinmux" field.
> +              This macro is available here:
> +                - include/dt-bindings/pinctrl/stm32-pinfunc.h
> +              Some examples of using macro:
> +               /* GPIO A9 set as alernate function 2 */
> +               ... {
> +                          pinmux = <STM32_PINMUX('A', 9, AF2)>;
> +               };
> +               /* GPIO A9 set as GPIO  */
> +               ... {
> +                          pinmux = <STM32_PINMUX('A', 9, GPIO)>;
> +               };
> +               /* GPIO A9 set as analog */
> +               ... {
> +                          pinmux = <STM32_PINMUX('A', 9, ANALOG)>;
> +               };
> +
> +          bias-disable:
> +            type: boolean
> +          bias-pull-down:
> +            type: boolean
> +          bias-pull-up:
> +            type: boolean
> +          drive-push-pull:
> +            type: boolean
> +          drive-open-drain:
> +            type: boolean
> +          output-low:
> +            type: boolean
> +          output-high:
> +            type: boolean
> +          slew-rate:
> +            description: |
> +              0: Low speed
> +              1: Medium speed
> +              2: Fast speed
> +              3: High speed
> +            allOf:
> +              - $ref: /schemas/types.yaml#/definitions/uint32
> +              - enum: [0, 1, 2, 3]
> +
> +        required:
> +          - pinmux
> +
> +required:
> +  - compatible
> +  - '#address-cells'
> +  - '#size-cells'
> +  - ranges
> +  - pins-are-numbered
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/stm32-pinfunc.h>
> +    //Example 1
> +      pin-controller@40020000 {

Because we're horribly inconsistent, 'pinctrl' is the standard node name.

> +              #address-cells = <1>;
> +              #size-cells = <1>;
> +              compatible = "st,stm32f429-pinctrl";
> +              ranges = <0 0x40020000 0x3000>;
> +              pins-are-numbered;
> +
> +              gpioa: gpio@0 {
> +                      gpio-controller;
> +                      #gpio-cells = <2>;
> +                      reg = <0x0 0x400>;
> +                      resets = <&reset_ahb1 0>;
> +                      st,bank-name = "GPIOA";
> +              };
> +       };
> +
> +    //Example 2 (using gpio-ranges)
> +      pin-controller@50020000 {
> +              #address-cells = <1>;
> +              #size-cells = <1>;
> +              compatible = "st,stm32f429-pinctrl";
> +              ranges = <0 0x50020000 0x3000>;
> +              pins-are-numbered;
> +
> +              gpiob: gpio@1000 {
> +                      gpio-controller;
> +                      #gpio-cells = <2>;
> +                      reg = <0x1000 0x400>;
> +                      resets = <&reset_ahb1 0>;
> +                      st,bank-name = "GPIOB";
> +                      gpio-ranges = <&pinctrl 0 0 16>;
> +              };
> +
> +              gpioc: gpio@2000 {
> +                      gpio-controller;
> +                      #gpio-cells = <2>;
> +                      reg = <0x2000 0x400>;
> +                      resets = <&reset_ahb1 0>;
> +                      st,bank-name = "GPIOC";
> +                      ngpios = <5>;
> +                      gpio-ranges = <&pinctrl 0 16 3>,
> +                                    <&pinctrl 14 30 2>;
> +              };
> +      };
> +
> +    //Example 3 pin groups
> +      pin-controller@60020000 {
> +        usart1_pins_a: usart1-0 {
> +                pins1 {
> +                        pinmux = <STM32_PINMUX('A', 9, AF7)>;
> +                        bias-disable;
> +                        drive-push-pull;
> +                        slew-rate = <0>;
> +                };
> +                pins2 {
> +                        pinmux = <STM32_PINMUX('A', 10, AF7)>;
> +                        bias-disable;
> +                };
> +        };
> +    };
> +
> +    usart1 {
> +                pinctrl-0 = <&usart1_pins_a>;
> +                pinctrl-names = "default";
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
