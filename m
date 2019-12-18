Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BC91249E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BotWkENB6iI9pgwZ/jr9teSieI0jPDZ5/6/OOfpx+g=; b=AszgaMzsyvJt08
	YqPy3W7wi2Ox1rxiUwZWb7vMtNKxeouXG5L5ybdZJYwmVYZm8A1WnxsPxcUJn231d8YE1ua74ful3
	eXUE5zG/js67W5WG+uEVc/booF8f5Mx+5pMcBbZwCq73rGI4+OtSFVud3US0tbNAQohGeh7LUgE7l
	SKhD9L/kgFYsSmDMT5/T8T5sxfa9dBsphqR13Q9pEsI2kICkszpa/XckQLplENVgjN38NE2mzpSL6
	5M4gtEnOt0EgGd4gBqU0YFaRe1G8VZG3ZX4YsQqATyVyvP9c6f3LoVvAqpbaeewCvusDOd6bBAucM
	V+VUD3v1xktDrj+vhZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihaWu-0001qF-GU; Wed, 18 Dec 2019 14:42:24 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihaWf-0001po-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:42:11 +0000
Received: by mail-ot1-f65.google.com with SMTP id k14so2771422otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 06:42:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gwW7OiM+WjSZ4UZ1VJQamoPYCMV0Usyl4Dcq40hWMN4=;
 b=Ox+54L3Nx+D2VrjgNSai1ZCXwF8NAr/utN7ixDYQATW036EbtXeUemgE0AHUz7y955
 hZITj2mw6yHGbH6tJEbJQNOgmWS23BBRq++WJWwvA/ccqehkfIXGaa/ticIHvNK4VoLP
 qUxJ643jxY2j7ukG/grhbsBsulwQ2+Uqq2TxRc5PFFKa7Djru/HudH2UFqUJaGpfSkMj
 xI8sEj8UMhLepXWrVTysMao8cwqov91lj9KLmjR07EYDonZFYueo+BzdZkgWsdQqj5ck
 8WOApLUoR+cdq4wVhbGlp/0t7ybA4chslT5/suQTF3XTI2kKQBMgBxTSuK1YLROLrmS/
 +DJg==
X-Gm-Message-State: APjAAAVKdQC+Un89rhYaiTEfLsCzb+0vHND1pjwflDZRc77xEvPly2JM
 FccF7JT9EhYR6xVa2cHDJQ==
X-Google-Smtp-Source: APXvYqwp0BEH7qea/GKGyW/LOejvqTbdWK+z/qoZkQL0jYWPDg6Ufh1KKYai1of0WRYU42rRzsqYxQ==
X-Received: by 2002:a05:6830:1d59:: with SMTP id
 p25mr3090159oth.308.1576680128293; 
 Wed, 18 Dec 2019 06:42:08 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id u18sm846613otq.26.2019.12.18.06.42.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 06:42:07 -0800 (PST)
Date: Wed, 18 Dec 2019 08:42:06 -0600
From: Rob Herring <robh@kernel.org>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH v11 07/14] dt-bindings: peci: add NPCM PECI documentation
Message-ID: <20191218144206.GA26118@bogus>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
 <20191211194624.2872-8-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211194624.2872-8-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064209_519530_CE08C10C 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Randy Dunlap <rdunlap@infradead.org>,
 Tomer Maimon <tmaimon77@gmail.com>, devicetree@vger.kernel.org,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Eric Sandeen <sandeen@redhat.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, openbmc@lists.ozlabs.org,
 linux-doc@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Joel Stanley <joel@jms.id.au>, "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 David Kershner <david.kershner@unisys.com>, Guenter Roeck <linux@roeck-us.net>,
 Wu Hao <hao.wu@intel.com>, linux-hwmon@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Arnd Bergmann <arnd@arndb.de>,
 Philippe Ombredanne <pombredanne@nexb.com>, Johan Hovold <johan@kernel.org>,
 Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sagar Dharia <sdharia@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Vinod Koul <vkoul@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:46:17AM -0800, Jae Hyun Yoo wrote:
> From: Tomer Maimon <tmaimon77@gmail.com>
> 
> Added device tree binding documentation for Nuvoton BMC
> NPCM Platform Environment Control Interface(PECI).
> 
> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
> Changes since v10:
> - Newly added in v11.
> 
>  .../devicetree/bindings/peci/peci-npcm.yaml   | 102 ++++++++++++++++++
>  1 file changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/peci/peci-npcm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/peci/peci-npcm.yaml b/Documentation/devicetree/bindings/peci/peci-npcm.yaml
> new file mode 100644
> index 000000000000..bcd5626e68e7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/peci/peci-npcm.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/peci/peci-npcm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Nuvoton NPCM PECI Bus Device Tree Bindings
> +
> +maintainers:
> +  - Tomer Maimon <tmaimon77@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: nuvoton,npcm750-peci # for the NPCM7XX BMC.
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    # Required to define a client address.
> +    const: 1
> +
> +  "#size-cells":
> +    # Required to define a client address.
> +    const: 0
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    # PECI reference clock.
> +    maxItems: 1
> +
> +  cmd-timeout-ms:
> +    # Command timeout in units of ms.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

You can drop this as standard units already have a type.

> +      - minimum: 1
> +        maximum: 60000
> +        default: 1000
> +
> +  pull-down:
> +    description: |
> +      Defines the PECI I/O internal pull down operation.
> +        0: pull down always enable
> +        1: pull down only during transactions.
> +        2: pull down always disable.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +        maximum: 2
> +        default: 0
> +
> +  host-neg-bit-rate:
> +    description: |
> +      Define host negotiation bit rate divider.
> +      the host negotiation bit rate calculate with formula:
> +      clock frequency[Hz] / [4 x {host-neg-bit-rate + 1}]
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 7
> +        maximum: 31
> +        default: 15
> +
> +  high-volt-range:
> +    description: |
> +      Adapts PECI I/O interface to voltage range.
> +        0: PECI I/O interface voltage range of 0.8-1.06V (default)
> +        1: PECI I/O interface voltage range of 0.95-1.26V
> +    type: boolean

These last 4 properties are vendor specific or PECI common. For the 
former, needs a vendor prefix. For the latter, needs to be moved to 
common location.

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - interrupts
> +  - clocks
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/nuvoton,npcm7xx-clock.h>
> +    peci: bus@100000 {
> +        compatible = "simple-bus";
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0x100000 0x200>;
> +
> +        peci0: peci-bus@0 {
> +            compatible = "nuvoton,npcm750-peci";
> +            reg = <0x0 0x200>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +            interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
> +            clocks = <&clk NPCM7XX_CLK_APB3>;
> +            cmd-timeout-ms = <1000>;
> +            pull-down = <0>;
> +            host-neg-bit-rate = <15>;
> +        };
> +    };
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
