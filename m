Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148D318713
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 10:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7NnUShbfrVskchiocmDP0ceXPf4HG15NRLsKr41CFAQ=; b=WHWi9B7NiACdocKCFWMDEGe5s
	fC6Jdmrv0Z0NiSv5Nq21nPSn8o0Fs/L5caTiYZchIcZwNwqNACfO9pAXEvuDWE4vA8MAZnJVFKyoB
	G9cQf9TtzPrzgwVf6xt7GbMiu4OwnP1IYw8e8hGhkuD8pT6QLTBVp9fKUKf2iM0mPylXayRkdsJa5
	LjvWEOB98sicsGVWaWV1ASIlcZKKZ44mQhHkqz6bnGTW+3gayppF5chGmSWQa9MnQOuf7DBRn4EFN
	daVX0fTn8kBYW3pgQx3xZ84A+v5Fm1u2XXJkwK/m+71Obnd+jkPv0u0G3DTdi1juBkTtquHnjbEZL
	1K+sJURPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOen6-0005dm-LB; Thu, 09 May 2019 08:52:36 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOemp-0005dA-F9
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:52:22 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x498pRLl002955; Thu, 9 May 2019 10:52:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=3RcEpN3hk0Vwg4lYyV5tUNMvABJ0n4qYAU1BVSxn00k=;
 b=p80npJ8cbpg4vo7IXkhRRpozE4FCp3tArIzNbRsoKlSMX0IFl20v1AJ2rY3lKZnYW8AP
 swtsLbL6ENG3zbgLSEhLFVJ/qBArp11BVZKpBescnMaixzgNjRL7c6QG/vOB5Ur/y/Ge
 RAoe+qZl7xv0n7+un12igXM/4gRqJCkb9siRWmg2pdSlxSY5gZBmsFjRlGuRp5NUU6wF
 d/zzv9sJI0sPHlltiN7xwyx4DEnliE7u98okqYN/xDXWDOtGlkbuQmwgn8HHx7ytmQ2y
 KVrTE4hqKO7U926yUNF93DxItR2fN11j/jpzHuxiarw3Vhbn43stO+dZOyg/DieBQvZd jw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scdjp16mg-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 09 May 2019 10:52:09 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9C4DA34;
 Thu,  9 May 2019 08:52:08 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 685E5151D;
 Thu,  9 May 2019 08:52:08 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 May
 2019 10:52:07 +0200
Subject: Re: [PATCH] dt-bindings: pinctrl: Convert stm32 pinctrl bindings to
 jason-schema
To: Rob Herring <robh+dt@kernel.org>
References: <1556876854-32441-1-git-send-email-alexandre.torgue@st.com>
 <CAL_Jsq+sydL5tHafgOWaW-+j4OJZ1JxVh5b=YXSMYRDxEDG3-g@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <d46e6909-ac3c-72cb-ad32-1fdd529b7405@st.com>
Date: Thu, 9 May 2019 10:52:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+sydL5tHafgOWaW-+j4OJZ1JxVh5b=YXSMYRDxEDG3-g@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_015219_846287_A7B7F49E 
X-CRM114-Status: GOOD (  30.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob

On 5/8/19 10:54 PM, Rob Herring wrote:
> What's jason-schema? ;)

I thought It sounds better than JSON :). I'll fix it in v2.


> On Fri, May 3, 2019 at 4:47 AM Alexandre Torgue <alexandre.torgue@st.com> wrote:
>>
>> Convert the STM32 pinctrl binding to DT schema format using json-schema.
>>
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
>> ---
>>
>> Hi,
>>
>> First pacth to convert DT bindings file (here pinctrl STM32) to jsaon-schema
>> in order to take advantage of devicetree validation tool for STM32.
> 
>> diff --git a/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
>> new file mode 100644
>> index 0000000..fcceca0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
>> @@ -0,0 +1,271 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +# Copyright (C) STMicroelectronics 2019.
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pinctrl/st,stm32-pinctrl.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: STM32 GPIO and Pin Mux/Config controller
>> +
>> +maintainers:
>> +  - Alexandre TORGUE <alexandre.torgue@st.com>
> 
> nit: add a blank line

ok

> 
>> +description: |
>> +  STMicroelectronics's STM32 MCUs intregrate a GPIO and Pin mux/config hardware
>> +  controller. It controls the input/output settings on the available pins and
>> +  also provides ability to multiplex and configure the output of various
>> +  on-chip controllers onto these pads.
>> +
>> +properties:
>> +  compatible:
>> +      items:
> 
> You can drop items since there is only 1.
> 

ok

>> +        - enum:
>> +          - st,stm32f429-pinctrl
>> +          - st,stm32f469-pinctrl
>> +          - st,stm32f746-pinctrl
>> +          - st,stm32f769-pinctrl
>> +          - st,stm32h743-pinctrl
>> +          - st,stm32mp157-pinctrl
>> +          - st,stm32mp157-z-pinctrl
>> +
>> +  '#address-cells':
>> +    const: 1
>> +  '#size-cells':
>> +    const: 1
>> +    description:
>> +      Defines mapping between pin controller node (parent) to
>> +      gpio-bank node (children).
> 
> Don't need description for common properties unless there's really
> something binding specific to add. Same is true on a bunch of other
> description entries.

Ok, I'll remove description for cells, ranges, pins-are-numbered.
Actually, I kept them to have the same information level than the txt file.

So no issue to not have the same level of information ?

> 
>> +
>> +  ranges:
>> +    description:
>> +      Defines mapping between pin controller node (parent) to
>> +      gpio-bank node (children).
>> +  pins-are-numbered:
>> +    description:
>> +      Specify the subnodes are using numbered pinmux to
>> +      specify pins.
>> +  st,syscfg:
> 
> Needs to define the type (phandle-array).

ok

> 
>> +    description: |
>> +      Should be phandle/offset/mask:
>> +        - The phandle to the syscon node which includes IRQ mux selection register.
>> +        - The offset of the IRQ mux selection register
>> +        - The field mask of IRQ mux, needed if different of 0xf.
> 
> This can be expressed as a constraint:
> 
> items:
>    - items:
>      - description: The phandle to the syscon node which includes IRQ
> mux selection register.
>      - description: The offset of the IRQ mux selection register
>      - description: The field mask of IRQ mux, needed if different of 0xf.
> 
> Perhaps there are some constraints on the values of the cells.

Ok

> 
>> +
>> +  hwlocks:
>> +    description: Reference to a phandle of a hardware spinlock provider node.
> 
> No need for a description.

ok

> 
>> +  st,package:
>> +    description:
>> +     Indicates the SOC package used.
>> +     More details in include/dt-bindings/pinctrl/stm32-pinfunc.h
>> +    allOf:
>> +      - $ref: /schemas/types.yaml#/definitions/uint32
>> +      - enum: [1, 2, 4, 8]
>> +
>> +patternProperties:
>> +  '^gpio@[0-9a-z]*$':
> 
> Hex only: a-f

:)

> 
>> +    properties:
>> +      gpio-controller:
>> +        description:
>> +          Indicates this device is a GPIO controller.
> 
> No need to describe standard properties.
> 
>> +      '#gpio-cells':
>> +        const: 2
>> +        description: |
>> +          The first cell is the pin number.
>> +          The second one is the polarity
>> +          * 0 for active high.
>> +          * 1 for active low.
> 
> As long as this is the standard cell definition, no need to describe.
> 
>> +
>> +      reg:
>> +        description:
>> +          The gpio address range, relative to the pinctrl range.
> 
> Need to say how many entries (maxItems), not what reg is.

Sorry, what is for reg and clocks ?

> 
>> +      clocks:
>> +        description:
>> +          Clock that drives this bank.
> 
> ditto.
> 
>> +      st,bank-name:
> 
> type?
> 
> possible values or regex match?
> 
>> +        description:
>> +          Should be a name string for this bank as specified in the datasheet.
>> +      reset:
> 
> resets
> 
> How many items?
> 
>> +        description:
>> +          Reference to the reset controller.
>> +      gpio-ranges:
>> +        description: |
>> +          Define a dedicated mapping between a pin-controller and
>> +          a gpio controller. Format is <&phandle a b c> with:
>> +          -(phandle): phandle of pin-controller.
>> +          -(a): gpio base offset in range.
>> +          -(b): pin base offset in range.
>> +          -(c): gpio count in range.
> 
> All common, so not needed here.
> 
>> +          This entry has to be used either if there are holes inside a bank:
>> +          GPIOB0/B1/B2/B14/B15 (see example 2) or if banks are not contiguous:
>> +          GPIOA/B/C/E...
>> +          NOTE: If "gpio-ranges" is used for a gpio controller, all gpio-controller
>> +          have to use a "gpio-ranges" entry.
>> +          More details in Documentation/devicetree/bindings/gpio/gpio.txt.
>> +
>> +      ngpios:
>> +        description:
>> +          Number of available gpios in a bank.
>> +        minimum: 1
>> +        maximum: 16
>> +
>> +      st,bank-ioport:
> 
> type?
> 
>> +        description:
>> +          Should correspond to the EXTI IOport selection (EXTI line used
>> +          to select GPIOs as interrupts).
>> +
>> +    required:
>> +      - gpio-controller
>> +      - '#gpio-cells'
>> +      - reg
>> +      - clocks
>> +      - st,bank-name
>> +
>> +  '-[0-9]*$':
>> +    patternProperties:
>> +      '^pins':
>> +        description: |
>> +          A pinctrl node should contain at least one subnode representing the
>> +          pinctrl group available on the machine. Each subnode will list the
>> +          pins it needs, and how they should be configured, with regard to muxer
>> +          configuration, pullups, drive, output high/low and output speed.
>> +        properties:
>> +          pinmux:
>> +            allOf:
>> +              - $ref: "/schemas/types.yaml#/definitions/uint32-array"
>> +            description: |
>> +              Integer array, represents gpio pin number and mux setting.
>> +              Supported pin number and mux varies for different SoCs, and are
>> +              defined in dt-bindings/pinctrl/<soc>-pinfunc.h directly.
>> +              These defines are calculated as: ((port * 16 + line) << 8) | function
>> +              With:
>> +              - port: The gpio port index (PA = 0, PB = 1, ..., PK = 11)
>> +              - line: The line offset within the port (PA0 = 0, PA1 = 1, ..., PA15 = 15)
>> +              - function: The function number, can be:
>> +              * 0 : GPIO
>> +              * 1 : Alternate Function 0
>> +              * 2 : Alternate Function 1
>> +              * 3 : Alternate Function 2
>> +              * ...
>> +              * 16 : Alternate Function 15
>> +              * 17 : Analog
>> +              To simplify the usage, macro is available to generate "pinmux" field.
>> +              This macro is available here:
>> +                - include/dt-bindings/pinctrl/stm32-pinfunc.h
>> +              Some examples of using macro:
>> +               /* GPIO A9 set as alernate function 2 */
>> +               ... {
>> +                          pinmux = <STM32_PINMUX('A', 9, AF2)>;
>> +               };
>> +               /* GPIO A9 set as GPIO  */
>> +               ... {
>> +                          pinmux = <STM32_PINMUX('A', 9, GPIO)>;
>> +               };
>> +               /* GPIO A9 set as analog */
>> +               ... {
>> +                          pinmux = <STM32_PINMUX('A', 9, ANALOG)>;
>> +               };
>> +
>> +          bias-disable:
>> +            type: boolean
>> +          bias-pull-down:
>> +            type: boolean
>> +          bias-pull-up:
>> +            type: boolean
>> +          drive-push-pull:
>> +            type: boolean
>> +          drive-open-drain:
>> +            type: boolean
>> +          output-low:
>> +            type: boolean
>> +          output-high:
>> +            type: boolean
>> +          slew-rate:
>> +            description: |
>> +              0: Low speed
>> +              1: Medium speed
>> +              2: Fast speed
>> +              3: High speed
>> +            allOf:
>> +              - $ref: /schemas/types.yaml#/definitions/uint32
>> +              - enum: [0, 1, 2, 3]
>> +
>> +        required:
>> +          - pinmux
>> +
>> +required:
>> +  - compatible
>> +  - '#address-cells'
>> +  - '#size-cells'
>> +  - ranges
>> +  - pins-are-numbered
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/pinctrl/stm32-pinfunc.h>
>> +    //Example 1
>> +      pin-controller@40020000 {
> 
> Because we're horribly inconsistent, 'pinctrl' is the standard node name.

Ok. I'll also fix it in dts files for STM32.


> 
>> +              #address-cells = <1>;
>> +              #size-cells = <1>;
>> +              compatible = "st,stm32f429-pinctrl";
>> +              ranges = <0 0x40020000 0x3000>;
>> +              pins-are-numbered;
>> +
>> +              gpioa: gpio@0 {
>> +                      gpio-controller;
>> +                      #gpio-cells = <2>;
>> +                      reg = <0x0 0x400>;
>> +                      resets = <&reset_ahb1 0>;
>> +                      st,bank-name = "GPIOA";
>> +              };
>> +       };
>> +
>> +    //Example 2 (using gpio-ranges)
>> +      pin-controller@50020000 {
>> +              #address-cells = <1>;
>> +              #size-cells = <1>;
>> +              compatible = "st,stm32f429-pinctrl";
>> +              ranges = <0 0x50020000 0x3000>;
>> +              pins-are-numbered;
>> +
>> +              gpiob: gpio@1000 {
>> +                      gpio-controller;
>> +                      #gpio-cells = <2>;
>> +                      reg = <0x1000 0x400>;
>> +                      resets = <&reset_ahb1 0>;
>> +                      st,bank-name = "GPIOB";
>> +                      gpio-ranges = <&pinctrl 0 0 16>;
>> +              };
>> +
>> +              gpioc: gpio@2000 {
>> +                      gpio-controller;
>> +                      #gpio-cells = <2>;
>> +                      reg = <0x2000 0x400>;
>> +                      resets = <&reset_ahb1 0>;
>> +                      st,bank-name = "GPIOC";
>> +                      ngpios = <5>;
>> +                      gpio-ranges = <&pinctrl 0 16 3>,
>> +                                    <&pinctrl 14 30 2>;
>> +              };
>> +      };
>> +
>> +    //Example 3 pin groups
>> +      pin-controller@60020000 {
>> +        usart1_pins_a: usart1-0 {
>> +                pins1 {
>> +                        pinmux = <STM32_PINMUX('A', 9, AF7)>;
>> +                        bias-disable;
>> +                        drive-push-pull;
>> +                        slew-rate = <0>;
>> +                };
>> +                pins2 {
>> +                        pinmux = <STM32_PINMUX('A', 10, AF7)>;
>> +                        bias-disable;
>> +                };
>> +        };
>> +    };
>> +
>> +    usart1 {
>> +                pinctrl-0 = <&usart1_pins_a>;
>> +                pinctrl-names = "default";
>> +    };
>> +
>> +...
>> --
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
