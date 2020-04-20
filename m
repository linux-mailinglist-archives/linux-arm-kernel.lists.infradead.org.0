Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808DA1B1947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jPSDkfiiwDRvYmpKOUaobu2UVah1DLzpCC1Ea4GqeuI=; b=QJTozRse6nHdH5
	pKfdS39Gl1YqWc4zJ5DyQeMpnIL7FzDNLlbU1rRjFqyuD3dPGi5Ivcjevw22o4apGX89G9AKjtq9Q
	B1slCJSI+ZMBm75r+/0ez2V6E3SJDds3PBy7fhUIUbzYRNCE/vwJMrOVlU6xIy6Rd1lZbrbye7TNs
	foYvWK25zu6mCVqXcpx73icgkQwN2mzjchP9Cdxb/OVC8aL53yQMlAU+aSXCeoDk9faIdvVeSQ0Fg
	NOAot8Af47nWQBig3afAxGQaLvjwP/EPQP5Tan0Sgzios8MhCfb33iWzbgG2Q9GSAMvoWjWwHedAt
	jRdt9kpB2Dn+0lZKk54g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQei4-0001s3-Gn; Mon, 20 Apr 2020 22:16:12 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQehy-0001ra-4X
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:16:07 +0000
Received: by mail-oi1-f194.google.com with SMTP id d7so10296782oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 15:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JYtg5xrBOGCVcUTxh0ymA9TaxmbBLhyf6qoSVd2F73E=;
 b=EDHpmsSYmcw0qDfKSnuGVZeEv2T+DEYf4B3/oNyyNtZfRB3F3wASvKBEIw/fot42oX
 zMrwbT3/qEAd+Bd3qSxHv4/Q9ro9StZlziDhmAhUl43i+xBswmaL7J/3szSfGLNH/iwq
 +AX0M2fw3NGjButBG358sky35NpomMiKzum/aepu8G+F0fhAja38V0wp5ZrVNSGS9jMv
 RnSOXMfWy4kg3CCoMCi0UX0/3RbSzMpcWDULURMrH752CDYuSGvoMKGvmsVAadTSMaGN
 Ysp9GkDaEdOSl7rTpDHVlYp6ka6GF5y1glokQ7/KWc7Wkg9/3E2NXIHJ2C6bA66xhJ3q
 aCmw==
X-Gm-Message-State: AGi0PuZEmTxs0ZSDy83hWlw+BxoAVlBbGmIF46gXjo8GQzWI2ViECMTW
 AXYKk2tCV+vrMCrUC8tjT6yVijc=
X-Google-Smtp-Source: APiQypKICII+0PHypwX7Hpq54IHND8wbdav+jw6nlsx5L3hOszMErjRYDSlzSnc1bh+fmsVDx+cyhw==
X-Received: by 2002:aca:fc0a:: with SMTP id a10mr1160884oii.77.1587420965163; 
 Mon, 20 Apr 2020 15:16:05 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v3sm254197ote.39.2020.04.20.15.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 15:16:04 -0700 (PDT)
Received: (nullmailer pid 28057 invoked by uid 1000);
 Mon, 20 Apr 2020 22:16:03 -0000
Date: Mon, 20 Apr 2020 17:16:03 -0500
From: Rob Herring <robh@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: atmel-tcb: convert bindings to
 json-schema
Message-ID: <20200420221603.GA10035@bogus>
References: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
 <20200415094826.132562-2-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415094826.132562-2-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_151606_177439_D5AB016B 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: kamel.bouhara@bootlin.com, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 11:48:18AM +0200, Alexandre Belloni wrote:
> Convert Atmel Timer Counter Blocks bindings to DT schema format using
> json-schema.
> 
> Also move it out of mfd as it is not and has never been related to mfd.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
> Cc: Rob Herring <robh+dt@kernel.org>
> 
> Changes in v2:
>  - Rebased on v5.7-rc1
>  - Moved the binding documentation to its proper place
>  - Added back the atmel,tcb-timer child node documentation
> 
>  .../devicetree/bindings/mfd/atmel-tcb.txt     | 56 ------------
>  .../soc/microchip/atmel,at91rm9200-tcb.yaml   | 89 +++++++++++++++++++
>  .../bindings/timer/atmel,tcb-timer.yaml       | 51 +++++++++++
>  3 files changed, 140 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/atmel-tcb.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
>  create mode 100644 Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml


> diff --git a/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> new file mode 100644
> index 000000000000..2522fb1f4ce4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/microchip/atmel,at91rm9200-tcb.yaml
> @@ -0,0 +1,89 @@
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

This description can be expressed as:

allOf:
  - contains: 
      const: t0_clk
  - contains: 
      const: slow_clk

However, if there's only 2 combinations to support with either 2 clocks 
or 4 clocks, then a 'oneOf' listing the 2 exact items lists would be 
better.

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
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - '#address-cells'
> +  - '#size-cells'

additionalProperties: false

> +
> +examples:
> +  - |
> +    /* One interrupt per TC block: */
> +        tcb0: timer@fff7c000 {
> +                compatible = "atmel,at91rm9200-tcb", "simple-mfd", "syscon";

A simple-mfd without child nodes?

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
> diff --git a/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml b/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml
> new file mode 100644
> index 000000000000..a6173ceab6be
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/atmel,tcb-timer.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/timer/atmel,tcb-timer.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Atmel Timer Counter Block timer channel
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +description: |
> +  The Atmel (now Microchip) Timer Counter Block have multiple channels that can
> +  be used as timers.
> +
> +properties:
> +  compatible:
> +    const: atmel,tcb-timer
> +  reg:
> +    description:
> +      List of channels to use for this particular timer.
> +    minItems: 1
> +    maxItems: 3
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

This should just be merged into the 1st schema with this being 
defined as child nodes.

> +
> +examples:
> +  - |
> +        timer@fff7c000 {
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
> -- 
> 2.25.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
