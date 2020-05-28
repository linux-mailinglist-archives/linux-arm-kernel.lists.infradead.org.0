Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5715B1E53B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiBkBhy1AAdZ16EbdFV0I6pfxlwHnwVgu3lCFrHkd9U=; b=Clk2QQLxqtHTmX
	eblOSJ7ttdSoPUoB6n9mviO9a4p/maxXUJgyVyMzuHVjwMY39HC4kBPQSYgTkjSam1bxgT0dPmeY1
	kFJ5ZEEcDxHr23ksx0rTvKk9/LMrpXndWG3Y6j6XYtwWALFoujBLFM+paux23DsYKdKbz0GRhTU72
	PNL03Lb/cTrbd+khKemcfYiYi+E1Li8t0fdXyjJVYLIjM2xq0nFSZqXnAdV5yJS4Ngs2bBPH0+UDq
	ucSz8RSaXOr6rdR+JLXdi19T/nFS2su4VnFUZWgQYJNB/Kz6rzVrMGVf0OoqOxucpzPcmKL2cZYBZ
	I3dsfiguY9RCzhTsB3Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je81O-0007Bp-M2; Thu, 28 May 2020 02:11:50 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je81E-0007BK-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:11:42 +0000
Received: by mail-il1-f196.google.com with SMTP id c20so26161097ilk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8/7AtcVQnogEJMITKMjo/+NbsrcSCHvci6t4MVh9Kc8=;
 b=rYH2DCWc0ouk6aTTb6nKKWZIQUF1s7qNJB6GBAFj+eS7T/wVd7NrUdnuuhHG4iW+Pm
 byHPnNdLKyN4NyPMmjDr2fZwe4tamRDKSmh8HPtkwmMlWfAtx/3DuGabpxoxX+2fgXly
 WIwQUuItAGacrSm4963OiJnEUodLn/5Z2zHu2QhavJY2bqCB66+1rrCekdQXFbYd7Nwe
 27LFv6cug3hDH7z/umFerYdZqRpqwn8USPnJJ9Vqk4DjTOI7BQv9VtVqwvXAXMx/+ReN
 YTEMbRAxqBIAXgARh/6olN3Uu4Pi/CWJrkKEQUeHlDsgCiKEYHEC67N7IkTqLRksN9jl
 wjNQ==
X-Gm-Message-State: AOAM533LOqtfpGZ76+UYgkCo8ReCipnQkKJBFEzJOUYy/9kPi847CRXT
 hLjWq1m3CyZxwm7x0ItnpA==
X-Google-Smtp-Source: ABdhPJyarlfDg0topsEF4LLMlLljnAFIUiSejKfnwzERU46ep1pIjMA9nxf26wH/i1HT1FPTA9wZsg==
X-Received: by 2002:a92:2907:: with SMTP id l7mr1061985ilg.48.1590631899776;
 Wed, 27 May 2020 19:11:39 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id b18sm2458167ilh.77.2020.05.27.19.11.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:11:39 -0700 (PDT)
Received: (nullmailer pid 3220699 invoked by uid 1000);
 Thu, 28 May 2020 02:11:37 -0000
Date: Wed, 27 May 2020 20:11:37 -0600
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 05/14] dt-bindings: arm: sparx5: Add documentation for
 Microchip Sparx5 SoC
Message-ID: <20200528021137.GA3214411@bogus>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-6-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513125532.24585-6-lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_191141_006273_0A911787 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 02:55:23PM +0200, Lars Povlsen wrote:
> This adds the main Sparx5 SoC DT documentation file, with information
> abut the supported board types.
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../bindings/arm/microchip,sparx5.yaml        | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
> new file mode 100644
> index 0000000000000..83b36d1217988
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/microchip,sparx5.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/microchip,sparx5.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip Sparx5 Boards Device Tree Bindings
> +
> +maintainers:
> +  - Lars Povlsen <lars.povlsen@microchip.com>
> +
> +description: |+
> +   The Microchip Sparx5 SoC is a ARMv8-based used in a family of
> +   gigabit TSN-capable gigabit switches.
> +
> +   The SparX-5 Ethernet switch family provides a rich set of switching
> +   features such as advanced TCAM-based VLAN and QoS processing
> +   enabling delivery of differentiated services, and security through
> +   TCAM-based frame processing using versatile content aware processor
> +   (VCAP)
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: The Sparx5 pcb125 board is a modular board,
> +          which has both spi-nor and eMMC storage. The modular design
> +          allows for connection of different network ports.
> +        items:
> +          - const: microchip,sparx5-pcb125
> +          - const: microchip,sparx5
> +
> +      - description: The Sparx5 pcb134 is a pizzabox form factor
> +          gigabit switch with 20 SFP ports. It features spi-nor and
> +          either spi-nand or eMMC storage (mount option).
> +        items:
> +          - const: microchip,sparx5-pcb134
> +          - const: microchip,sparx5
> +
> +      - description: The Sparx5 pcb135 is a pizzabox form factor
> +          gigabit switch with 48+4 Cu ports. It features spi-nor and
> +          either spi-nand or eMMC storage (mount option).
> +        items:
> +          - const: microchip,sparx5-pcb135
> +          - const: microchip,sparx5
> +
> +  axi@600000000:
> +    type: object
> +    description: the root node in the Sparx5 platforms must contain
> +      an axi bus child node. They are always at physical address
> +      0x600000000 in all the Sparx5 variants.
> +    properties:
> +      compatible:
> +        items:
> +          - const: simple-bus
> +      reg:
> +        maxItems: 1

simple-bus doesn't have 'reg'. If there's bus registers, then it's not 
simple.

> +
> +    required:
> +      - compatible
> +      - reg
> +
> +patternProperties:
> +  "^syscon@[0-9a-f]+$":

This should be under a bus node.

> +    description: All Sparx5 boards must provide a system controller,
> +      typically under the axi bus node. It contain reset registers and
> +      other system control.
> +    type: object
> +    properties:
> +      compatible:
> +        items:
> +          - const: microchip,sparx5-cpu-syscon
> +          - const: syscon

This probably should be in its own document. If really this simple, 
there's already syscon.yaml you can add to. 

> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - reg
> +
> +required:
> +  - compatible
> +  - axi@600000000
> +  - syscon@600000000
> +
> +...
> --
> 2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
