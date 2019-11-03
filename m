Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D9AED3BF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 16:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeJx6qg5iL4evgqUSRZZ39RY1CDP5gzz5q5QkaMYWZI=; b=A4oUJE+QO3SPzD
	Rcwot54wk8N0oL2IcOPMjpj22HcREspTdCFF/hDU2d6v4ehvvutSUJgzevlbb+sK67hFoGJZ/hURw
	cP1WsScpbQ0DUN5CBu5FbkFawKoOH4w23IGTKzSrh6FKxCEElWTlWovGrKS9Lm4u8JY4L+0zpcQyK
	+CsNNIzeBLTBLWfRoMFMG8hi+9FI6M93shY0W5GBy9x61iRZDLJPveIfrJtBTchW4vCIqR/J1MHl5
	WvcY54L5V11WZtRy3Lww55EVQyMBlI6Eksl9LojpLl2FaQYZrwEEb22Bny0nVwzoZhWcH0QOAn7MB
	TzSpZpjMq81ZHPxnMQGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRIF3-000338-NI; Sun, 03 Nov 2019 15:56:37 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRIEw-000329-2w
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 15:56:32 +0000
Received: by mail-ed1-f66.google.com with SMTP id w3so8938476edt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 07:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n9GGwjavjQQOgINeeqgNFn5O1QAWzrjwrcfoPvqx32k=;
 b=FhN2KORM6XlJ/Stf769uNRLLsWpIMkQtK+MKGIjz3o8XA4qZ1kUo8pcM82LbLg/NdC
 92vLyknjqFsBSHsTaMClo2IITY/csh4HG2JXhj9BAlGBl9eGcGQMkxqlBxQ7iJLm9qS4
 jvIUx9+vvwKsaOTeNmypHRj8W6/4KOJqL3MiJlCWb/3rs1bXuDk1hp1exgjNTEig4euv
 1cXmMyHh8QYKrgFWHYJEm6Bi2Zya5i0rcZBgHI/ap+w+H9qwyRi6dyIQo1yf/TgxnRT/
 lscB92WQilVt+37q0gKDTKIQpzU4uEKt1fnd5wFgkKUUS+zX963d/IGVjfoYpdAiP9rM
 siPw==
X-Gm-Message-State: APjAAAXsi4FqDIPcGElGUWkUKXEw7GEPae2UNsmAFYMlWuxDiFeZQtve
 EuVsWKZj7ADgasXBrr/N7zA=
X-Google-Smtp-Source: APXvYqxNP7szQhet9sXBcDrshchvID9xPkCKOWKeMWmkHoP70A6OrX+tlJ1vbiRwjVFkcS0n8I+n3g==
X-Received: by 2002:a50:cc43:: with SMTP id n3mr24819628edi.287.1572796586774; 
 Sun, 03 Nov 2019 07:56:26 -0800 (PST)
Received: from kozik-lap ([194.230.155.180])
 by smtp.googlemail.com with ESMTPSA id s8sm759641edj.6.2019.11.03.07.56.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 03 Nov 2019 07:56:26 -0800 (PST)
Date: Sun, 3 Nov 2019 16:56:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: serial: Convert Samsung UART bindings
 to json-schema
Message-ID: <20191103155623.GA6960@kozik-lap>
References: <20191004151414.8458-1-krzk@kernel.org>
 <20191004151414.8458-3-krzk@kernel.org>
 <20191015194006.GA3540@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015194006.GA3540@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_075630_131483_D9DE923F 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: 3.8 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Tue, Oct 15, 2019 at 02:40:06PM -0500, Rob Herring wrote:
> On Fri, Oct 04, 2019 at 05:14:14PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung S3C/S5P/Exynos Serial/UART bindings to DT schema format
> > using json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../bindings/mfd/samsung,exynos5433-lpass.txt |   2 +-
> >  .../bindings/serial/samsung_uart.txt          |  58 -------
> >  .../bindings/serial/samsung_uart.yaml         | 148 ++++++++++++++++++
> >  3 files changed, 149 insertions(+), 59 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.txt
> >  create mode 100644 Documentation/devicetree/bindings/serial/samsung_uart.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> > index d759da606f75..30ea27c3936d 100644
> > --- a/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> > +++ b/Documentation/devicetree/bindings/mfd/samsung,exynos5433-lpass.txt
> > @@ -18,7 +18,7 @@ an optional sub-node. For "samsung,exynos5433-lpass" compatible this includes:
> >  UART, SLIMBUS, PCM, I2S, DMAC, Timers 0...4, VIC, WDT 0...1 devices.
> >  
> >  Bindings of the sub-nodes are described in:
> > -  ../serial/samsung_uart.txt
> > +  ../serial/samsung_uart.yaml
> >    ../sound/samsung-i2s.txt
> >    ../dma/arm-pl330.txt
> >  
> > diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.txt b/Documentation/devicetree/bindings/serial/samsung_uart.txt
> > deleted file mode 100644
> > index e85f37ec33f0..000000000000
> > --- a/Documentation/devicetree/bindings/serial/samsung_uart.txt
> > +++ /dev/null
> > @@ -1,58 +0,0 @@
> > -* Samsung's UART Controller
> > -
> > -The Samsung's UART controller is used for interfacing SoC with serial
> > -communicaion devices.
> > -
> > -Required properties:
> > -- compatible: should be one of following:
> > -  - "samsung,exynos4210-uart" -  Exynos4210 SoC,
> > -  - "samsung,s3c2410-uart" - compatible with ports present on S3C2410 SoC,
> > -  - "samsung,s3c2412-uart" - compatible with ports present on S3C2412 SoC,
> > -  - "samsung,s3c2440-uart" - compatible with ports present on S3C2440 SoC,
> > -  - "samsung,s3c6400-uart" - compatible with ports present on S3C6400 SoC,
> > -  - "samsung,s5pv210-uart" - compatible with ports present on S5PV210 SoC.
> > -
> > -- reg: base physical address of the controller and length of memory mapped
> > -  region.
> > -
> > -- interrupts: a single interrupt signal to SoC interrupt controller,
> > -  according to interrupt bindings documentation [1].
> > -
> > -- clock-names: input names of clocks used by the controller:
> > -  - "uart" - controller bus clock,
> > -  - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...),
> > -    according to SoC User's Manual (only N = 0 is allowedfor SoCs without
> > -    internal baud clock mux).
> > -- clocks: phandles and specifiers for all clocks specified in "clock-names"
> > -  property, in the same order, according to clock bindings documentation [2].
> > -
> > -[1] Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
> > -[2] Documentation/devicetree/bindings/clock/clock-bindings.txt
> > -
> > -Optional properties:
> > -- samsung,uart-fifosize: The fifo size supported by the UART channel
> > -
> > -Note: Each Samsung UART should have an alias correctly numbered in the
> > -"aliases" node, according to serialN format, where N is the port number
> > -(non-negative decimal integer) as specified by User's Manual of respective
> > -SoC.
> > -
> > -Example:
> > -	aliases {
> > -		serial0 = &uart0;
> > -		serial1 = &uart1;
> > -		serial2 = &uart2;
> > -	};
> > -
> > -Example:
> > -	uart1: serial@7f005400 {
> > -		compatible = "samsung,s3c6400-uart";
> > -		reg = <0x7f005400 0x100>;
> > -		interrupt-parent = <&vic1>;
> > -		interrupts = <6>;
> > -		clock-names = "uart", "clk_uart_baud2",
> > -				"clk_uart_baud3";
> > -		clocks = <&clocks PCLK_UART1>, <&clocks PCLK_UART1>,
> > -				<&clocks SCLK_UART>;
> > -		samsung,uart-fifosize = <16>;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> > new file mode 100644
> > index 000000000000..276bea1c231a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> > @@ -0,0 +1,148 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/serial/samsung_uart.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung S3C, S5P and Exynos SoC UART Controller
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +  - Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > +
> > +description: |+
> > +  Each Samsung UART should have an alias correctly numbered in the "aliases"
> > +  node, according to serialN format, where N is the port number (non-negative
> > +  decimal integer) as specified by User's Manual of respective SoC.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - samsung,s3c2410-uart
> > +          - samsung,s3c2412-uart
> > +          - samsung,s3c2440-uart
> > +          - samsung,s3c6400-uart
> > +          - samsung,s5pv210-uart
> > +          - samsung,exynos4210-uart
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 2
> > +    maxItems: 5
> > +
> > +  clock-names:
> > +    description: |
> > +      List of clock names:
> > +        - "uart" - controller bus clock,
> > +        - "clk_uart_baudN" - Nth baud base clock input (N = 0, 1, ...).
> 
> Kind of redundant to list this here.
> 
> > +      N = 0 is allowed for SoCs without internal baud clock mux.
> 
> You can add a description with the item:
> 
> items:
>   - pattern: '^clk_uart_baud[0-3]$'
>     description: N = 0 is allowed for SoCs without internal baud clock mux.
> 

This caused error:
properties:clock-names:items:1: Additional properties are not allowed ('description' was unexpected)
../Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/serial/samsung_uart.example.dts' failed

I applied rest of comments. Thanks for review!

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
