Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF6A13C706
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jVtyfOqCbh/yZKeWShi8P+fHTf1QqxYTuTVtf7zyBdI=; b=j0vqI/1AIQi7Gs
	2RYqYxxvAhipb6ncDZYdIwmcuIYDBIjIUfWBy4B6wkbcQPJseA7JbIIX3gCdjeosFLfcP0lBwoYxa
	u7thsEk6VrFT+qllJhHAoteYX6YkmWmJzh4ZvCA3PuGZ650I8XKYBcjyy9AN+AQfEQ2cqtgpW/hY5
	GI4aZlKiFzWRdC+JSoaPXVFf1RJWfy68FZD1nzwwC432DbfOnu9ikaRxT9jVDZc0CxgFAhHaX8KZv
	9KjjTcYsYwERh+u1x60PUzs0bTRl/QVWJpljmRgvkRETA05OKeIECQVeLFBeaV2zPTYfhbgLc2IMP
	N4I1AbKLqrU4ftOuXISg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkJN-00026N-JE; Wed, 15 Jan 2020 15:10:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkJ1-0001FO-SC; Wed, 15 Jan 2020 15:10:07 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68F0B24671;
 Wed, 15 Jan 2020 15:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579101003;
 bh=On973BrhoR475dnZRG2cRmV2OCexuQ6TyfNxjO5OTMU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=i7TASilUBsLzntR4gZSZHePscwjsdF68olcDcQcdM8scE6YROBtjYmsEljI9tHe2M
 iUOxZ/sCOIOCRgIwsB1WZ5dUPqbufeznera6GS1zXw+i32gBJaJMutR8k3EB7SFvRw
 S3x/HUye5vt7l+QY3t8fn2jHtVbATxmHG+Qn96x4=
Received: by mail-qk1-f175.google.com with SMTP id a203so15944974qkc.3;
 Wed, 15 Jan 2020 07:10:03 -0800 (PST)
X-Gm-Message-State: APjAAAWfkrPDzGPI9+rpKofnHBBKDVtZ8RR3TlFYABtyPfpGmRj492vX
 o+B8Y4aofyNx3TWioglKYFMvnqC1m5VuHcwSHQ==
X-Google-Smtp-Source: APXvYqztAMAd0OsajU/QPMm8GA80nrSr6KedsAz2pVVqZrrY6JN6tyfc5i2NXErAO/T/CmJxzbPlK1MdeXVIH7n8XoA=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr27937250qkg.152.1579101002403; 
 Wed, 15 Jan 2020 07:10:02 -0800 (PST)
MIME-Version: 1.0
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <20200114213809.27166-3-jbx6244@gmail.com>
In-Reply-To: <20200114213809.27166-3-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 15 Jan 2020 09:09:50 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKhJNcrR-RjbS8eAzot5FdE=C23b272QcOj5-12EobE0w@mail.gmail.com>
Message-ID: <CAL_JsqKhJNcrR-RjbS8eAzot5FdE=C23b272QcOj5-12EobE0w@mail.gmail.com>
Subject: Re: [RFC PATCH v1 3/3] dt-bindings: mmc: convert rockchip dw-mshc
 bindings to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_071003_963967_3EA71EA7 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Convert the Rockchip designware mobile storage host controller
> device tree bindings to yaml.
> Add maintainer.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 137 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  3 files changed, 138 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
> deleted file mode 100644
> index 6f629b12b..000000000
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.txt
> +++ /dev/null
> @@ -1,49 +0,0 @@
> -* Rockchip specific extensions to the Synopsys Designware Mobile
> -  Storage Host Controller
> -
> -The Synopsys designware mobile storage host controller is used to interface
> -a SoC with storage medium such as eMMC or SD/MMC cards. This file documents
> -differences between the core Synopsys dw mshc controller properties described
> -by synopsys-dw-mshc.txt and the properties used by the Rockchip specific
> -extensions to the Synopsys Designware Mobile Storage Host Controller.
> -
> -Required Properties:
> -
> -* compatible: should be
> -       - "rockchip,rk2928-dw-mshc": for Rockchip RK2928 and following,
> -                                                       before RK3288
> -       - "rockchip,rk3288-dw-mshc": for Rockchip RK3288
> -       - "rockchip,rv1108-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RV1108
> -       - "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip PX30
> -       - "rockchip,rk3036-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3036
> -       - "rockchip,rk3228-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK322x
> -       - "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3328
> -       - "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3368
> -       - "rockchip,rk3399-dw-mshc", "rockchip,rk3288-dw-mshc": for Rockchip RK3399
> -
> -Optional Properties:
> -* clocks: from common clock binding: if ciu-drive and ciu-sample are
> -  specified in clock-names, should contain handles to these clocks.
> -
> -* clock-names: Apart from the clock-names described in synopsys-dw-mshc.txt
> -  two more clocks "ciu-drive" and "ciu-sample" are supported. They are used
> -  to control the clock phases, "ciu-sample" is required for tuning high-
> -  speed modes.
> -
> -* rockchip,default-sample-phase: The default phase to set ciu-sample at
> -  probing, low speeds or in case where all phases work at tuning time.
> -  If not specified 0 deg will be used.
> -
> -* rockchip,desired-num-phases: The desired number of times that the host
> -  execute tuning when needed. If not specified, the host will do tuning
> -  for 360 times, namely tuning for each degree.
> -
> -Example:
> -
> -       rkdwmmc0@12200000 {
> -               compatible = "rockchip,rk3288-dw-mshc";
> -               reg = <0x12200000 0x1000>;
> -               interrupts = <0 75 0>;
> -               #address-cells = <1>;
> -               #size-cells = <0>;
> -       };
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> new file mode 100644
> index 000000000..da16916b7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -0,0 +1,137 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip designware mobile storage host controller device tree bindings
> +
> +description:
> +  Rockchip uses the Synopsys designware mobile storage host controller
> +  to interface a SoC with storage medium such as eMMC or SD/MMC cards.
> +  This file documents the combined properties for

Strange place for a line break...

> +  the core Synopsys dw mshc controller that are not already included
> +  in the synopsys-dw-mshc-common.yaml file and the Rockchip specific
> +  extensions.
> +
> +allOf:
> +  - $ref: "synopsys-dw-mshc-common.yaml"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      # for Rockchip PX30
> +      - items:
> +          - const: rockchip,px30-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK2928 and before RK3288
> +      - const: rockchip,rk2928-dw-mshc
> +      # for Rockchip RK3036
> +      - items:
> +          - const: rockchip,rk3036-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK322x
> +      - items:
> +          - const: rockchip,rk3228-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK3288
> +      - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK3328
> +      - items:
> +          - const: rockchip,rk3328-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK3368
> +      - items:
> +          - const: rockchip,rk3368-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RK3399
> +      - items:
> +          - const: rockchip,rk3399-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
> +      # for Rockchip RV1108
> +      - items:
> +          - const: rockchip,rv1108-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc

All the ones with fallback rockchip,rk3288-dw-mshc can be grouped as
one items list with 'enum' for the first item.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 4
> +    description:
> +      Handle to "biu" and "ciu" clocks for the bus interface unit clock and
> +      the card interface unit clock. If "ciu-drive" and "ciu-sample" are
> +      specified in clock-names, it should also contain
> +      handles to these clocks.
> +
> +  clock-names:
> +    oneOf:
> +      - items:
> +        - const: biu
> +        - const: ciu
> +      - items:
> +        - const: biu
> +        - const: ciu
> +        - const: ciu-drive
> +        - const: ciu-sample

Add 'minItems: 2' and you only need 1 list.

> +    description:
> +      Apart from the clock-names "biu" and "ciu" two more clocks
> +      "ciu-drive" and "ciu-sample" are supported. They are used
> +      to control the clock phases, "ciu-sample" is required for tuning
> +      high speed modes.
> +
> +  rockchip,default-sample-phase:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 360
> +      - default: 0

Move these 3 to the same level as 'allOf' (dropping '-').

> +    description:
> +      The default phase to set "ciu-sample" at probing,
> +      low speeds or in case where all phases work at tuning time.
> +      If not specified 0 deg will be used.
> +
> +  rockchip,desired-num-phases:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - minimum: 0
> +      - maximum: 360
> +      - default: 360
> +    description:
> +      The desired number of times that the host execute tuning when needed.
> +      If not specified, the host will do tuning for 360 times,
> +      namely tuning for each degree.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    sdmmc: dwmmc@ff0c0000 {
> +      compatible = "rockchip,rk3288-dw-mshc";
> +      reg = <0x0 0xff0c0000 0x0 0x4000>;
> +      interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru HCLK_SDMMC>, <&cru SCLK_SDMMC>,
> +               <&cru SCLK_SDMMC_DRV>, <&cru SCLK_SDMMC_SAMPLE>;
> +      clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +      resets = <&cru SRST_MMC0>;
> +      reset-names = "reset";
> +      fifo-depth = <0x100>;
> +      max-frequency = <150000000>;

Not documented.

> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d6ad01d71..1b16c0fdf 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2240,6 +2240,7 @@ L:        linux-rockchip@lists.infradead.org
>  T:     git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git
>  S:     Maintained
>  F:     Documentation/devicetree/bindings/i2c/i2c-rk3x.txt
> +F:     Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>  F:     arch/arm/boot/dts/rk3*
>  F:     arch/arm/boot/dts/rv1108*
>  F:     arch/arm/mach-rockchip/
> --
> 2.11.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
