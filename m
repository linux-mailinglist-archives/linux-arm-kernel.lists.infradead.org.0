Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B33D8079
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 21:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkuIZgs8eO0Fk3433nL1JrEmzESNQAiB9e4Uqz9IZKA=; b=FzqJaRWQ0Rx7lC
	MWZNRCLyDiTXQX5hBzrMK9evB1w71OFFnh/IyzIeqONG2k/z5Z3qy6Rd5AN5fRJLQ3jL8K0lfw4iO
	2B/ibHlc14lYOpZUtyVjXGqXt0Ua6cBP8Fc/nKDCjTOzViuPotGXp1f1+JqoZp4rAOLbr01w927zg
	QO4Wes0xVEDq25qon/pM28wiRXCIGgAwGFOvil6fiDB1Epj2ueJSANUz4FMtzalGuPVywnXQnCfBS
	NEV1mAExZ1MDfKYGX5cyP55rZHbTDzskC+L/99xHCxBzOcMePawrHzvuVVlzZHtFDReObWUC7o0iJ
	bCmHoYQjRloF6eBKAxIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKSgF-0003e3-JG; Tue, 15 Oct 2019 19:40:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKSfw-0003A6-8w
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 19:40:10 +0000
Received: by mail-oi1-f195.google.com with SMTP id w65so17888929oiw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 12:40:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=f5z1afL3zYQYcRyoERZzjsi7/SiRTHqNbFhLxSAuGLs=;
 b=NXxzT1WD4TYAm4VD/L8V8pqIEQoL0NsdlpZ9Ewe4aGlLB02PoRKAh+gm/CXlpCu1QV
 Xz6HIlFVZdJjmSfnGMLOnMytdTec30ZuZrF5v6e9gLgpp6eWf7/hUx4qR1fxqOKY6prM
 lsTOQFXPgnj79x5hvyp7L3oLe3gMPu76R26VMy8++RHQlOq9+BPS/L9zh9UHgwkI78ol
 EMmcG/9k9Q0f0ydsr4VmTlfDhN2527fC2rpccm212r9XHgHaEL9kIyyK45gnxU7m/qLj
 Tr9vsMElkf6CMF+nLu6E3vnHIr05AJV2hoxwr7EUoXsbxFRUw5APIkZzMirNQ3cgTmRC
 /RWg==
X-Gm-Message-State: APjAAAW85cvm8VWZPToEtWJb6i6NcmPP7EUYcUWKxMS0gQ1J9kBChGg6
 uE+7tiQaHKuVjf7sRuG+Fw==
X-Google-Smtp-Source: APXvYqxhtUbYR837DFUipAtkBDduyyeI6vaqqhzSUmhgED4fPdNsTQT8GLSgnjNjdjHJLBDi7GG+5w==
X-Received: by 2002:a54:418c:: with SMTP id 12mr203382oiy.154.1571168407330;
 Tue, 15 Oct 2019 12:40:07 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b10sm1556470oic.55.2019.10.15.12.40.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 12:40:06 -0700 (PDT)
Date: Tue, 15 Oct 2019 14:40:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: serial: Convert Samsung UART bindings
 to json-schema
Message-ID: <20191015194006.GA3540@bogus>
References: <20191004151414.8458-1-krzk@kernel.org>
 <20191004151414.8458-3-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004151414.8458-3-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_124008_337561_7B58D4A0 
X-CRM114-Status: GOOD (  25.36  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Maciej Falkowski <m.falkowski@samsung.com>,
 linux-serial@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kukjin Kim <kgene@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 05:14:14PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung S3C/S5P/Exynos Serial/UART bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../bindings/mfd/samsung,exynos5433-lpass.txt |   2 +-
>  .../bindings/serial/samsung_uart.txt          |  58 -------
>  .../bindings/serial/samsung_uart.yaml         | 148 ++++++++++++++++++
>  3 files changed, 149 insertions(+), 59 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> index d759da606f75..30ea27c3936d 100644
> --- a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> +++ b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> @@ -18,7 +18,7 @@ an optional sub-node. For "samsung,exynos5433-lpass" compatible this includes:
>  UART, SLIMBUS, PCM, I2S, DMAC, Timers 0...4, VIC, WDT 0...1 devices.
>  
>  Bindings of the sub-nodes are described in:
> -  ../serial/samsung_uart.txt
> +  ../serial/samsung_uart.yaml
>    ../sound/samsung-i2s.txt
>    ../dma/arm-pl330.txt
>  
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.txt b/Documentation/devicetree/bindings/serial/samsung_uart.txt
> deleted file mode 100644
> index e85f37ec33f0..000000000000
> --- a/Documentation/devicetree/bindings/serial/samsung_uart.txt
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -* Samsung's UART Controller
> -
> -The Samsung's UART controller is used for interfacing SoC with serial
> -communicaion devices.
> -
> -Required properties:
> -- compatible: should be one of following:
> -  - "samsung,exynos4210-uart" -  Exynos4210 SoC,
> -  - "samsung,s3c2410-uart" - compatible with ports present on S3C2410 SoC,
> -  - "samsung,s3c2412-uart" - compatible with ports present on S3C2412 SoC,
> -  - "samsung,s3c2440-uart" - compatible with ports present on S3C2440 SoC,
> -  - "samsung,s3c6400-uart" - compatible with ports present on S3C6400 SoC,
> -  - "samsung,s5pv210-uart" - compatible with ports present on S5PV210 SoC.
> -
> -- reg: base physical address of the controller and length of memory mapped
> -  region.
> -
> -- interrupts: a single interrupt signal to SoC interrupt controller,
> -  according to interrupt bindings documentation [1].
> -
> -- clock-names: input names of clocks used by the controller:
> -  - "uart" - controller bus clock,
> -  - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...),
> -    according to SoC User's Manual (only N = 0 is allowedfor SoCs without
> -    internal baud clock mux).
> -- clocks: phandles and specifiers for all clocks specified in "clock-names"
> -  property, in the same order, according to clock bindings documentation [2].
> -
> -[1] Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> -[2] Documentation/devicetree/bindings/clock/clock-bindings.txt
> -
> -Optional properties:
> -- samsung,uart-fifosize: The fifo size supported by the UART channel
> -
> -Note: Each Samsung UART should have an alias correctly numbered in the
> -"aliases" node, according to serialN format, where N is the port number
> -(non-negative decimal integer) as specified by User's Manual of respective
> -SoC.
> -
> -Example:
> -	aliases {
> -		serial0 = &uart0;
> -		serial1 = &uart1;
> -		serial2 = &uart2;
> -	};
> -
> -Example:
> -	uart1: serial@7f005400 {
> -		compatible = "samsung,s3c6400-uart";
> -		reg = <0x7f005400 0x100>;
> -		interrupt-parent = <&vic1>;
> -		interrupts = <6>;
> -		clock-names = "uart", "clk_uart_baud2",
> -				"clk_uart_baud3";
> -		clocks = <&clocks PCLK_UART1>, <&clocks PCLK_UART1>,
> -				<&clocks SCLK_UART>;
> -		samsung,uart-fifosize = <16>;
> -	};
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> new file mode 100644
> index 000000000000..276bea1c231a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/serial/samsung_uart.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung S3C, S5P and Exynos SoC UART Controller
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +  - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> +
> +description: |+
> +  Each Samsung UART should have an alias correctly numbered in the "aliases"
> +  node, according to serialN format, where N is the port number (non-negative
> +  decimal integer) as specified by User's Manual of respective SoC.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - samsung,s3c2410-uart
> +          - samsung,s3c2412-uart
> +          - samsung,s3c2440-uart
> +          - samsung,s3c6400-uart
> +          - samsung,s5pv210-uart
> +          - samsung,exynos4210-uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 5
> +
> +  clock-names:
> +    description: |
> +      List of clock names:
> +        - "uart" - controller bus clock,
> +        - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...).

Kind of redundant to list this here.

> +      N = 0 is allowed for SoCs without internal baud clock mux.

You can add a description with the item:

items:
  - pattern: '^clk_uart_baud[0-3]$'
    description: N = 0 is allowed for SoCs without internal baud clock mux.

Or leave it here is fine too.

> +    minItems: 2
> +    maxItems: 5
> +    allOf:
> +      - uniqueItems: true

You can drop this.

> +      - oneOf:
> +          - items:
> +              - const: uart
> +              - pattern: '^clk_uart_baud[0-3]$'
> +          - items:
> +              - const: uart
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'
> +          - items:
> +              - const: uart
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'
> +          - items:
> +              - const: uart
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'
> +              - pattern: '^clk_uart_baud[0-3]$'

You only need the last case. With 'minItems: 2', the additional items 
here will just be ignored.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2

What is each item?

> +
> +  samsung,uart-fifosize:
> +    description: The fifo size supported by the UART channel
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [16, 64, 256]
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - reg
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,s3c2410-uart
> +              - samsung,s5pv210-uart
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 3
> +        clock-names:
> +          minItems: 2
> +          maxItems: 3
> +          allOf:
> +            - uniqueItems: true
> +            - oneOf:
> +                - items:
> +                    - const: uart
> +                    - pattern: '^clk_uart_baud[0-1]$'
> +                - items:
> +                    - const: uart
> +                    - pattern: '^clk_uart_baud[0-1]$'
> +                    - pattern: '^clk_uart_baud[0-1]$'

Similar simplification can be done here.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - samsung,exynos4210-uart
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          minItems: 2
> +          maxItems: 2
> +          allOf:
> +            - uniqueItems: true
> +            - items:
> +                - const: uart
> +                - const: clk_uart_baud0
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/samsung,s3c64xx-clock.h>
> +
> +    aliases {
> +        serial0 = &uart0;
> +    };

Drop this. It will cause a warning if we enforce 'aliases' to be at the 
root node.

> +
> +    uart0: serial@7f005000 {
> +        compatible = "samsung,s3c6400-uart";
> +        reg = <0x7f005000 0x100>;
> +        interrupt-parent = <&vic1>;
> +        interrupts = <5>;
> +        clock-names = "uart", "clk_uart_baud2",
> +                      "clk_uart_baud3";
> +        clocks = <&clocks PCLK_UART0>, <&clocks PCLK_UART0>,
> +                 <&clocks SCLK_UART>;
> +        samsung,uart-fifosize = <16>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
