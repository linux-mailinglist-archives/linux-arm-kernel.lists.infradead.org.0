Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C5A1E32F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 00:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJEEdgra7FamDBgDs5nQtWdAV8QZC5QW7HFee2W3MzY=; b=XQQC+LIWpXys9L
	O92jthXZrVPDsSY1TNpXjHTX37AJrhT6L2XuaC2OzuerRd7rnwf5MWVLIaI4tUfShvUxxtNntGIaB
	He9NJD+Hnm6Jqx1yu1t6uZ3uobeeIcmJGxPqcJUjyYI1br2U9PV6a7YuOc9jVf3pxgPTn7dxbZ5qC
	XXGA3Dx4LQjT+uoQ8UG8Ma/eu/L+mbY6egJ7whBXiLf/YN2AE6rVzaolQKtOGLVfwTv1IB3SFMjEs
	htEGbsR0oLZwvv3Mi3DpEOtdnq+oRy3OpRbnwJ0rwrgYPcPhNFhjp8Gx1GA2T4NtafcTd52NJ6kPM
	CW6m98RqiweRG+wCtnmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdiOq-0002Vb-T2; Tue, 26 May 2020 22:50:20 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdiOY-0001iT-LT
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 22:50:04 +0000
Received: by mail-io1-f65.google.com with SMTP id f3so23940298ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 15:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NowR2VxXBJJY+YKg7TxmwwaS7VUkrEccmijyqAKtla4=;
 b=AMpwA7leYqRdPCmQcWVhgO9Rvp0JrACmooH2h8b42SDTJ9PiD9l/prpOiINH5JNkzu
 PQkCWGf0KcFc1AfszvDJIkizRVppvCLvLCn+VO2VADIW5iPHuYIRJbl/RVAEUrSv3+k8
 znsrQaanIveNys/TlOJ1OVGYtTq3qWcdcjwWRsCSY+InpdtMFlbNbWymt8/i9EJy/Boh
 MCwAbq/Mche8HlD4r+/8XYZJvNoB33V8hoJoD7rAEyAquugbG5UmHRZt9McKlLe5cjFB
 m80JbRjCtUHjymV0PyaKV3yPklsZuNoM58Mv+xX3wbPBFskRxe/VG2zeyhKwBlf47GJC
 Q+WQ==
X-Gm-Message-State: AOAM530U1H7W6ojsbohWOZS+M96+9Bzz8k9xA4zgvTYlpL6d1flvBb9d
 aT8Ft+MK1IKt7fZ1s6sxFQ==
X-Google-Smtp-Source: ABdhPJzJoX8wrcTaH6PSQ5/aBE9vcXyT0n09AII+im73/ZenSqybDj7QYOIEAwCHXLaRLhtBB4vHhw==
X-Received: by 2002:a02:6984:: with SMTP id e126mr3140865jac.62.1590533400360; 
 Tue, 26 May 2020 15:50:00 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id i15sm545709ils.74.2020.05.26.15.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 15:49:59 -0700 (PDT)
Received: (nullmailer pid 533373 invoked by uid 1000);
 Tue, 26 May 2020 22:49:58 -0000
Date: Tue, 26 May 2020 16:49:58 -0600
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH v5 2/5] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200526224958.GA513053@bogus>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
 <20200519083716.938384-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519083716.938384-3-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_155002_734352_65A3CC45 
X-CRM114-Status: GOOD (  21.45  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 10:37:13AM +0200, Kamel Bouhara wrote:
> From: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> Convert Atmel Timer Counter Blocks bindings to DT schema format using
> json-schema.
> 
> Also move it out of mfd as it is not and has never been related to mfd.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

This should have your Sob too.

> ---
>  .../devicetree/bindings/mfd/atmel-tcb.txt     |  56 --------
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 126 ++++++++++++++++++
>  2 files changed, 126 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt b/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> deleted file mode 100644
> index c4a83e364cb6..000000000000
> --- a/Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -* Device tree bindings for Atmel Timer Counter Blocks
> -- compatible: Should be "atmel,<chip>-tcb", "simple-mfd", "syscon".
> -  <chip> can be "at91rm9200" or "at91sam9x5"
> -- reg: Should contain registers location and length
> -- #address-cells: has to be 1
> -- #size-cells: has to be 0
> -- interrupts: Should contain all interrupts for the TC block
> -  Note that you can specify several interrupt cells if the TC
> -  block has one interrupt per channel.
> -- clock-names: tuple listing input clock names.
> -	Required elements: "t0_clk", "slow_clk"
> -	Optional elements: "t1_clk", "t2_clk"
> -- clocks: phandles to input clocks.
> -
> -The TCB can expose multiple subdevices:
> - * a timer
> -   - compatible: Should be "atmel,tcb-timer"
> -   - reg: Should contain the TCB channels to be used. If the
> -     counter width is 16 bits (at91rm9200-tcb), two consecutive
> -     channels are needed. Else, only one channel will be used.
> -
> -Examples:
> -
> -One interrupt per TC block:
> -	tcb0: timer@fff7c000 {
> -		compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		reg = <0xfff7c000 0x100>;
> -		interrupts = <18 4>;
> -		clocks = <&tcb0_clk>, <&clk32k>;
> -		clock-names = "t0_clk", "slow_clk";
> -
> -		timer@0 {
> -			compatible = "atmel,tcb-timer";
> -			reg = <0>, <1>;
> -		};
> -
> -		timer@2 {
> -			compatible = "atmel,tcb-timer";
> -			reg = <2>;
> -		};
> -	};
> -
> -One interrupt per TC channel in a TC block:
> -	tcb1: timer@fffdc000 {
> -		compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		reg = <0xfffdc000 0x100>;
> -		interrupts = <26 4>, <27 4>, <28 4>;
> -		clocks = <&tcb1_clk>, <&clk32k>;
> -		clock-names = "t0_clk", "slow_clk";
> -	};
> -
> -
> diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> new file mode 100644
> index 000000000000..4b683151265e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> @@ -0,0 +1,126 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/microchip/atmel,at91rm9200-tcb.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Atmel Timer Counter Block
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +description: |
> +  The Atmel (now Microchip) SoCs have timers named Timer Counter Block. Each
> +  timer has three channels with two counters each.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - atmel,at91rm9200-tcb
> +          - atmel,at91sam9x5-tcb
> +      - const: simple-mfd
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description:
> +      List of interrupts. One interrupt per TCB channel if available or one
> +      interrupt for the TC block
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    description:
> +      List of clock names. Always includes t0_clk and slow clk. Also includes
> +      t1_clk and t2_clk if a clock per channel is available.

This can express the 2nd sentence:

allOf:
  - contains:
      const: t0_clk
  - contains:
      const: slow_clk

> +    minItems: 2
> +    maxItems: 4
> +    items:
> +      enum:
> +        - t0_clk
> +        - t1_clk
> +        - t2_clk
> +        - slow_clk
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 4
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  "^timer@[0-2]$":
> +    description: The timer block channels that are used as timers.
> +    type: object
> +    properties:
> +      compatible:
> +        const: atmel,tcb-timer
> +      reg:
> +        description:
> +          List of channels to use for this particular timer.
> +        minItems: 1
> +        maxItems: 3
> +
> +    required:
> +      - compatible
> +      - reg
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - '#address-cells'
> +  - '#size-cells'
> +
> +examples:
> +  - |
> +    /* One interrupt per TC block: */
> +        tcb0: timer@fff7c000 {
> +                compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +                reg = <0xfff7c000 0x100>;
> +                interrupts = <18 4>;
> +                clocks = <&tcb0_clk>, <&clk32k>;
> +                clock-names = "t0_clk", "slow_clk";
> +
> +                timer@0 {
> +                        compatible = "atmel,tcb-timer";
> +                        reg = <0>, <1>;
> +                };
> +
> +                timer@2 {
> +                        compatible = "atmel,tcb-timer";
> +                        reg = <2>;
> +                };
> +        };
> +
> +    /* One interrupt per TC channel in a TC block: */
> +        tcb1: timer@fffdc000 {
> +                compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +                reg = <0xfffdc000 0x100>;
> +                interrupts = <26 4>, <27 4>, <28 4>;
> +                clocks = <&tcb1_clk>, <&clk32k>;
> +                clock-names = "t0_clk", "slow_clk";
> +
> +                timer@0 {
> +                        compatible = "atmel,tcb-timer";
> +                        reg = <0>;
> +                };
> +
> +                timer@1 {
> +                        compatible = "atmel,tcb-timer";
> +                        reg = <1>;
> +                };
> +        };
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
