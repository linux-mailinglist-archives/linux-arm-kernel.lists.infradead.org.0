Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5B6148241
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 12:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWieaug5iTKuqcaVytyDwk1OEkSeI/iJ/2ThMz2VU94=; b=YLwUDnxDTUe7w8
	CvZ3/xrn4yTpyHeo6U04eG/0LJcwVw1gp2/diELg4yuoNx+acaB3+kEAdmG7fpAoIE5mnOTW7bZYT
	m+oeVN+5aqSj4RHnCBpaP4rRMJRdNLa12wcdke00T7cg2YrFWUiP/ViF05cGn0wH6ue25X2tmXW/z
	bRgoV88SQa5pIZRZYnj7G3Zyaf9oHwWD4oyGMoRlSjCvvD2DkMO5MGdMy6MlGRKJANJpJ9GYEgDIz
	kTkjVBhIf6pBOT669TBL1o4IKdFJUT0LxhaBSt5BjBeYKsFKcFiNlLwkcq77VJp74T9ZSqi8auZVz
	X7rVlwE2fHIureVO4vMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iux6v-0005el-BV; Fri, 24 Jan 2020 11:26:49 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iux6C-00056X-96
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 11:26:07 +0000
Received: by mail-vk1-xa43.google.com with SMTP id g7so422335vkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 03:26:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yA+q0/tdz9pHwwQsFpujNL3r5hUZDki5Wt7XV+ptBKg=;
 b=b6o5NV0ph6Q5glGwWKgOfj96/rl7OpNF7ROax+CxomyD2+2mjB8eOKk92zzzlJ6YeN
 m6WZ1HBJjJtrPgxLvTAK0EHIQHE4gg/fAH3C6jVOCwyK2lHpsGzvwjrNw/RIzmOCxh2v
 +xqEFOtn3154mXloQvuBC/YS6t8zWwfAGDcQRSVi398wv0mvGB9vdEaRPldzpUeAmbjB
 9nLVp0UFICNnuTz/4JGrZUC85F58N9OYvxNwC0jY1gf71+W+JyTlwEfm+cpItbglH0IC
 SbAVfwF5wlW5zfQM7k47puAe/fp9WqLf65EgRQuecEzLJHYQhQrj6qiORWAu5cM+mo3W
 viyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yA+q0/tdz9pHwwQsFpujNL3r5hUZDki5Wt7XV+ptBKg=;
 b=ANtMtkyBl7Ex5zyLATzyEnu59esnNUx57sOzVtD0Tp+ITWDlxRNNqHIUPLCMiAHyQD
 r1o+3p1jNd0TGv6EIIWDoR4Wvpd1XtgQeubW2lu8PfGUhhu4KzbEDbV6vXya5+BmlMiT
 iqgFzLrPOgDpuelKd30dppe7ZY7FK9olW2ilVZcUZvOSgshy5bW/VkMPR0Oxqh9bwZKe
 pylA/2nZMOYl+VKQNGV7VGfQX84dC5O8hyoE/SEYrT21wiNHeeIZMn8lCGCLYUbIxLpK
 LF7NEWmutJiOdjCtyer/eRbX+mUXMCORuTZxYI9BOfpdq2nq0FcqNFagp1MMnsBXneP+
 qUeg==
X-Gm-Message-State: APjAAAV1UyP8Xg1juoseVphEst2F/3gJTSpf6jNPYXvK0gELq0eR3EaL
 Zkq/MFeWWHk10EHq7uBoh5ItkUoDm8Vuj0lv5KZgiw==
X-Google-Smtp-Source: APXvYqyJdUDT6GFcqq2yfAaUP/QP9wvF8DIKUg6lcbvTtc2pgywF0VGwYxowttRK1UdAtwMIFixCI2grpuBptG0UGQQ=
X-Received: by 2002:a1f:94c1:: with SMTP id w184mr1709760vkd.43.1579865162655; 
 Fri, 24 Jan 2020 03:26:02 -0800 (PST)
MIME-Version: 1.0
References: <20200116152230.29831-1-jbx6244@gmail.com>
 <20200116152230.29831-2-jbx6244@gmail.com>
In-Reply-To: <20200116152230.29831-2-jbx6244@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 24 Jan 2020 12:25:26 +0100
Message-ID: <CAPDyKFrgGTDK_4bv3ofs2ky6d5optfTh2H-99uBMjZzNpcOhUQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: mmc: convert rockchip dw-mshc
 bindings to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_032604_333549_5E5BF6F2 
X-CRM114-Status: GOOD (  27.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Jan 2020 at 16:22, Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with 'dwmmc' nodes are manually verified.
> In order to automate this process rockchip-dw-mshc.txt
> has to be converted to yaml. In the new setup
> rockchip-dw-mshc.yaml will inherit properties from
> mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
> 'dwmmc' will no longer be a valid name for a node and
> should be changed to 'mmc'.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.txt   |  49 --------
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml  | 123 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  3 files changed, 124 insertions(+), 49 deletions(-)
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
> index 000000000..2f70f5ef0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -0,0 +1,123 @@
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
> +  This file documents the combined properties for the core Synopsys dw mshc
> +  controller that are not already included in the synopsys-dw-mshc-common.yaml
> +  file and the Rockchip specific extensions.
> +
> +allOf:
> +  - $ref: "synopsys-dw-mshc-common.yaml#"
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +# Everything else is described in the common file
> +properties:
> +  compatible:
> +    oneOf:
> +      # for Rockchip RK2928 and before RK3288
> +      - const: rockchip,rk2928-dw-mshc
> +      # for Rockchip RK3288
> +      - const: rockchip,rk3288-dw-mshc
> +      - items:
> +          - enum:
> +            # for Rockchip PX30
> +            - rockchip,px30-dw-mshc
> +            # for Rockchip RK3036
> +            - rockchip,rk3036-dw-mshc
> +            # for Rockchip RK322x
> +            - rockchip,rk3228-dw-mshc
> +            # for Rockchip RK3328
> +            - rockchip,rk3328-dw-mshc
> +            # for Rockchip RK3368
> +            - rockchip,rk3368-dw-mshc
> +            # for Rockchip RK3399
> +            - rockchip,rk3399-dw-mshc
> +            # for Rockchip RV1108
> +            - rockchip,rv1108-dw-mshc
> +          - const: rockchip,rk3288-dw-mshc
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
> +    minItems: 2
> +    items:
> +      - const: biu
> +      - const: ciu
> +      - const: ciu-drive
> +      - const: ciu-sample
> +    description:
> +      Apart from the clock-names "biu" and "ciu" two more clocks
> +      "ciu-drive" and "ciu-sample" are supported. They are used
> +      to control the clock phases, "ciu-sample" is required for tuning
> +      high speed modes.
> +
> +  rockchip,default-sample-phase:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 360
> +    default: 0
> +    description:
> +      The default phase to set "ciu-sample" at probing,
> +      low speeds or in case where all phases work at tuning time.
> +      If not specified 0 deg will be used.
> +
> +  rockchip,desired-num-phases:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 360
> +    default: 360
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
> +    sdmmc: mmc@ff0c0000 {
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
