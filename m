Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6462FD83DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ff6n4uzla2z5R/Sozway/89wgZ16cIzb5cHhNGTS9t8=; b=V7wvUs5thOt9A6
	1VAFSD6bkqFUMnjMauAntUl1fmAyibRrU7q1Jg5JW9Bs/F52PpG21ic9fK8eSEoDm5tKkCZkAvuuX
	YlpCIF9ovSIfJZ1eg6EgniJ0uh5yBu+3OOn4DT/nhtMB70cOsq/D2p1065ebbep3u2Mu4qv6gY4ca
	4gk5Q1d1m7oMCvipzMfackF5b7UA7RfaPNSn6QIS/CiziGc6fxKqPkuXo1RCBVyBOUtuOHlZMhmJ5
	CLN3OsbGRfXoxSCbNqkYDE9NzswDciCz34HjUmbjAuaDoVo09QpMJyMk0oyVS3P2hIjnj6uJ4TxiE
	eJiWLibaW2MDr3ropWHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVTY-0008Gl-7w; Tue, 15 Oct 2019 22:39:32 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVTM-0008Fk-Vk
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:39:22 +0000
Received: by mail-oi1-f194.google.com with SMTP id i16so18346116oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:39:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Egjzk0ycS6uGAiZgrL7dEKAam8R3Prs2rZCZ9pP9rt4=;
 b=kDPehjzic7PFvXEJPu0uU2PqSwYr2cy7d4TUsj55UqaCBwvsaPFZVnPVKDdQmOchHb
 X49H94qwubPIozP9xgh1T6v+hWiHh0hiow+bAnKdAchXLfHRPKH9FPQP2AgI504rcWTU
 wiDxmAXpBSe84uxE357RNq8rd91GNpz5Dg3HRIRRD/dTYI2PYZeLq6VrL85r/J+H4nfy
 YAlKLsIrC40MzjqEMNJ1O1ClhwP/MyNkzSa9Um6Mi1P/NJ5DCStdEM99OqFQhtm5NscN
 9jBw3L3CebGgLcO5G9lrC5klY8a22pGXuvie67zddpKTCpS1c7QK01JuD77PZOv+CUmV
 rzNg==
X-Gm-Message-State: APjAAAUm8ORSfFd9GI26bAkdCAIgTACBL+p5nGgyN9Nwg9VeLPcpa2ap
 YYY2W8UJ2Vlq3+K5FqF//jDOUdI=
X-Google-Smtp-Source: APXvYqxm7a6bczSWgIPH0k7QKCRb1myMosLNn1AgIfZbHlkIYmgEaQQKFFbuGfrEfqHavxgerjgDQw==
X-Received: by 2002:aca:f492:: with SMTP id s140mr792180oih.83.1571179159904; 
 Tue, 15 Oct 2019 15:39:19 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 23sm184295oir.50.2019.10.15.15.39.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:39:19 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:39:18 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/8] dt-bindings: mfd: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20191015223918.GA26590@bogus>
References: <20191009224006.5021-1-alexandre.belloni@bootlin.com>
 <20191009224006.5021-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009224006.5021-2-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_153921_024935_FEB84009 
X-CRM114-Status: GOOD (  20.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 12:39:59AM +0200, Alexandre Belloni wrote:
> Convert Atmel Timer Counter Blocks bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> 
>  .../bindings/mfd/atmel,at91rm9200-tcb.yaml    | 89 +++++++++++++++++++
>  .../devicetree/bindings/mfd/atmel-tcb.txt     | 56 ------------
>  2 files changed, 89 insertions(+), 56 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/atmel,at91rm9200-tcb.yaml
>  delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
> 
> diff --git a/Documentation/devicetree/bindings/mfd/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/mfd/atmel,at91rm9200-tcb.yaml
> new file mode 100644
> index 000000000000..4d9247fc0593
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/atmel,at91rm9200-tcb.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/mfd/atmel,at91rm9200-tcb.yaml#"
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

What happened to the child nodes?

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
> +        };
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
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
