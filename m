Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCFA64A17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 17:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZS9+skoeZd48vilO2slpQ4hbq6Y7an02Sv2CoSZ95hU=; b=tAgy8ep6uUqmaj
	uokbgYBLvEqmpCsk9TbYdPvl19ylSSbapOMWYXSPyS12IaRZUUMPg+tFT7DwRrsgGSn891AkogcL5
	PZxPDVjwsXbk9rDIKpGEGQzFRL+WxESAr+qTADdisr4ckdUQ3GhyJhIkg0tZ6SL9zAd2C3h6PJrvM
	r9jMhw4y3xm+XxtPiwD8Qmw87+BuxD30UWHSgUfH4Sz3MID6wx/XlLSLCVL8Ln7mJmfA1sDcZ+sg+
	YIqMl4Q7mnlKix7tV9M9YpficqOWA2GaWBiE7jLVrUGJbVLd832ozsyw+zgy2VIWa+dqPTqmGhezx
	gqgiqlbx/BE/N0PGZ04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlErK-0004XH-KO; Wed, 10 Jul 2019 15:50:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEr2-0004Ix-1t
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 15:50:01 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E510D208E4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 15:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562773799;
 bh=f3705MLDMz7ZVRIZ/2mbpGAvk6+s8V0oHG6b0/yE9pg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=dNr4F5HawxLIUhCtkX+gOEjtuf9BGR0CEIsliRqZH2O9ZtsdBVaq2kRHWU6Hi1+fo
 XRZwgaoUmOgituexlwOZw6yF+zL0fvnshjkK4ofv79S4KQTO3bO3TnB7b8CachtiCF
 KS0ZkAhzVzVQnnkBbUi8ZqjFD274etLB6JypO9QY=
Received: by mail-qt1-f182.google.com with SMTP id d17so2926963qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 08:49:58 -0700 (PDT)
X-Gm-Message-State: APjAAAXBlSm9VhCdHUhj1xuyJ+RsLUoV0gdNRoVgugmuPwXeVAfer8rW
 jdzyg2YMMUHJA6tnKyAIpjojRs2xNfDd+6KsGw==
X-Google-Smtp-Source: APXvYqz6I/p/hMSsLLeh44Lioj37XHZzwUteYHfVHSa7jufX40UundN85FK+bOouu15+3Q3HfQJkSkXH5cMd8kt4WyU=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr25025832qtc.300.1562773798149; 
 Wed, 10 Jul 2019 08:49:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190710141611.21159-1-andrew@aj.id.au>
 <20190710141611.21159-2-andrew@aj.id.au>
In-Reply-To: <20190710141611.21159-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 10 Jul 2019 09:49:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKrYcUbn_02z9GQO6U4rz7k=p3kB7_G0tKmv25MMZZNQg@mail.gmail.com>
Message-ID: <CAL_JsqKrYcUbn_02z9GQO6U4rz7k=p3kB7_G0tKmv25MMZZNQg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085000_151872_8B7E2999 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 ryanchen.aspeed@gmail.com, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 8:16 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> data bus if only a single slot is enabled.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../bindings/mmc/sdhci-of-aspeed.yaml         | 91 +++++++++++++++++++

aspeed,sdhci.yaml

>  1 file changed, 91 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml b/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
> new file mode 100644
> index 000000000000..e98a2ac4d46d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-of-aspeed.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

The preferred license is (GPL-2.0 OR BSD-2-Clause) if that is okay with you.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/sdhci-of-aspeed.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED SD/SDIO/eMMC Controller
> +
> +maintainers:
> +  - Andrew Jeffery <andrew@aj.id.au>
> +  - Ryan Chen <ryanchen.aspeed@gmail.com>
> +
> +description: |+
> +  The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the SDIO
> +  Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit data bus if
> +  only a single slot is enabled.
> +
> +  The two slots are supported by a common configuration area. As the SDHCIs for
> +  the slots are dependent on the common configuration area, they are described
> +  as child nodes.
> +
> +properties:
> +  compatible:
> +    enum: [ aspeed,ast2400-sdc, aspeed,ast2500-sdc ]
> +  reg:
> +    description: Common configuration registers

This should have a 'maxItems: 1'. Same for the child reg.

> +  ranges: true
> +  clocks:
> +    maxItems: 1
> +    description: The SD/SDIO controller clock gate
> +  sdhci:

This needs to be a pattern (under patternProperties) as these have
unit-addresses.

> +    type: object
> +    properties:
> +      compatible:
> +        allOf:
> +          - enum: [ aspeed,ast2400-sdhci, aspeed,ast2500-sdhci ]
> +          - const: sdhci

This condition can never be true. What you need is s/allOf/items/.
However, 'sdhci' is not really a useful compatible because every
implementation has quirks, so I'd drop it.

> +      reg:
> +        description: The SDHCI registers
> +      clocks:
> +        maxItems: 1
> +        description: The SD bus clock
> +      slot:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32
> +          - enum: [0, 1]

Is this really needed? Offset 0x100 is slot 0 and offset 0x200 is slot
1. Does that ever change?

> +      interrupts:
> +        maxItems: 1
> +        description: The SD interrupt shared between both slots
> +    required:
> +      - compatible
> +      - reg
> +      - clocks
> +      - slot
> +      - interrupts
> +
> +required:
> +  - compatible
> +  - reg
> +  - ranges
> +  - clocks

#address-cells and #size-cells are required too.

You should also add 'additionalProperties: false' here so other random
properties can't be present.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    sdc@1e740000 {
> +            compatible = "aspeed,ast2500-sdc";
> +            reg = <0x1e740000 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            ranges;

It's preferred to limit the range here and then the child addresses
are 0x100 and 0x200.

> +            clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
> +
> +            sdhci0: sdhci@1e740100 {
> +                    compatible = "aspeed,ast2500-sdhci", "sdhci";
> +                    reg = <0x1e740100 0x100>;
> +                    slot = <0>;
> +                    interrupts = <26>;
> +                    sdhci,auto-cmd12;
> +                    clocks = <&syscon ASPEED_CLK_SDIO>;
> +            };
> +
> +            sdhci1: sdhci@1e740200 {
> +                    compatible = "aspeed,ast2500-sdhci", "sdhci";
> +                    reg = <0x1e740200 0x100>;
> +                    slot = <1>;
> +                    interrupts = <26>;
> +                    sdhci,auto-cmd12;
> +                    clocks = <&syscon ASPEED_CLK_SDIO>;
> +            };
> +    };
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
