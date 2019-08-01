Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B67E61C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 00:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pJaq2YGqPVgqcgk9kfAfoa5tfPx728gmvyrQs8ZTIik=; b=IR59/ATcmwhHOp
	F3hHUdK6QZ5YKU+y8SRUFBJmwB3UtAGnIkoBcOxvUUgTlWiZq/yY8NDNmgosUl2hxb0jx96YlpFBq
	rdczGIqND4nr7HQ5O+n7EMPER+0eW50PgKVKYa4R1muicCo0Jh8rOuLgQyyz942SQ7fvrYtms1opV
	DNRkSnUuqMh3O3583/3Ex3oaekIK/YI2z6DdFuZJiWFyBo4q/JRQlHDp0H7YWDPnAsAZQAB1L60/y
	H20BE8kLfaDapvXQ8uo1ApagzPnsYkp1INi91ndrKvH3L4muX/gcVqGwQjXfe+hS0HQ+ZTYM+OQsT
	lCGqPjHC8YxiHhnomYtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htK2f-00004q-6g; Thu, 01 Aug 2019 22:59:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htK2X-0008Vi-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 22:59:19 +0000
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
 [209.85.160.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A09C52087E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  1 Aug 2019 22:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564700356;
 bh=kASyP8PGtZ0rL4jNIcUKrCyx7pYnuPev55DZJBaSklM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ROPgtKq1KfpdkUQ/WwkuPZRlwKqXTl1UN7SM2HkqlXAf4hBAf34AxZLKGFbw4ZZ2J
 Uc27k6aqlqJJcItuknCk0YjdoQ5+l3aRVFpB/S+S3eE1o1tMYWccEuM7PbSu/SAS3d
 ld0XgBlBhhkxkSUs+J+EeCsS0vdcL9RptovKV4Ts=
Received: by mail-qt1-f178.google.com with SMTP id x22so67123875qtp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 15:59:16 -0700 (PDT)
X-Gm-Message-State: APjAAAXry8oMxX1MqF0w7erX8GwYj8L8VQohb2/ETU/7tzIomJkN1e0j
 U9IILIcjCpG4i9owNhjCeiFkCpiHzjGX3hEESw==
X-Google-Smtp-Source: APXvYqx7WFIk+rochGPuukRrKofUEOPYVHhKW5sYMVeD23Voa28zVM0mZV9ERrGM3Tnt9e7Ssjzs/qZQDedTHVoiqog=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr96371146qve.72.1564700355781; 
 Thu, 01 Aug 2019 15:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190730062316.32037-1-andrew@aj.id.au>
 <20190730062316.32037-2-andrew@aj.id.au>
In-Reply-To: <20190730062316.32037-2-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 1 Aug 2019 16:59:04 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+oZRREV=VjYUxT3WphOa5tBaF1pvS_JKSphBY=3XB5MA@mail.gmail.com>
Message-ID: <CAL_Jsq+oZRREV=VjYUxT3WphOa5tBaF1pvS_JKSphBY=3XB5MA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mmc: Document Aspeed SD controller
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_155917_890160_069707FD 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ryan Chen <ryanchen.aspeed@gmail.com>, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 12:23 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> The ASPEED SD/SDIO/eMMC controller exposes two slots implementing the
> SDIO Host Specification v2.00, with 1 or 4 bit data buses, or an 8 bit
> data bus if only a single slot is enabled.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
>
> ---
> v3:
> * Fix compatible enums
> * Add AST2600 compatibles
> * Describe #address-cells / #size-cells
> ---
>  .../devicetree/bindings/mmc/aspeed,sdhci.yaml | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> new file mode 100644
> index 000000000000..dd2a00c59641
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/aspeed,sdhci.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/aspeed,sdhci.yaml#
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
> +    enum:
> +      - aspeed,ast2400-sd-controller
> +      - aspeed,ast2500-sd-controller
> +      - aspeed,ast2600-sd-controller
> +  reg:
> +    maxItems: 1
> +    description: Common configuration registers
> +  "#address-cells":
> +    const: 1
> +  "#size-cells":
> +    const: 1
> +  ranges: true
> +  clocks:
> +    maxItems: 1
> +    description: The SD/SDIO controller clock gate
> +
> +patternProperties:
> +  "^sdhci@[0-9a-f]+$":

This should probably have:

allOf:
  - $ref: mmc-controller.yaml

Another new thing in 5.3. :)

> +    type: object
> +    properties:
> +      compatible:
> +        enum:
> +          - aspeed,ast2400-sdhci
> +          - aspeed,ast2500-sdhci
> +          - aspeed,ast2600-sdhci
> +      reg:
> +        maxItems: 1
> +        description: The SDHCI registers
> +      clocks:
> +        maxItems: 1
> +        description: The SD bus clock
> +      interrupts:
> +        maxItems: 1
> +        description: The SD interrupt shared between both slots
> +    required:
> +      - compatible
> +      - reg
> +      - clocks
> +      - interrupts
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +  - clocks
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    sdc@1e740000 {
> +            compatible = "aspeed,ast2500-sd-controller";
> +            reg = <0x1e740000 0x100>;
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            ranges = <0 0x1e740000 0x10000>;
> +            clocks = <&syscon ASPEED_CLK_GATE_SDCLK>;
> +
> +            sdhci0: sdhci@100 {
> +                    compatible = "aspeed,ast2500-sdhci";
> +                    reg = <0x100 0x100>;
> +                    interrupts = <26>;
> +                    sdhci,auto-cmd12;

Not documented. Maybe should be common, but there's only a few users.

> +                    clocks = <&syscon ASPEED_CLK_SDIO>;
> +            };
> +
> +            sdhci1: sdhci@200 {
> +                    compatible = "aspeed,ast2500-sdhci";
> +                    reg = <0x200 0x100>;
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
