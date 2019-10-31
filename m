Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0370EB4D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:38:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEG81UmUtkJ6RTzAcV8AKJQ3DO01RqMBYNdzAXp1aHQ=; b=grtBxB74/EjmdE
	AioDllSTqNWvLQX5EAs59wSazyc8kwejQzXCQUonBbxjufZk10As5TjIeInuRnEREi5dRhlKk3Esl
	sVHNMMRQ+EoLP8eRXNCZlU0TIEaAFfKSTpCvplkS4DV/ALMYMHvADd/4xu083QTeJ+4Vc0SAS31cc
	DqrFHz/bj+wwUIlPXYtrMxot9WEpFf6mjTlcXfMBZnCiNI65YR5N8qaYgXYgmIG62uOl3WRJ2Bdln
	TVXg4MEBjXtm+A2rSDorPSJ4YUW4d8C1uTyPqzYWIFqk5Ltp+jrN5v4+9GUPQ2gRBcvZQPwl5cuWE
	tzMDndiGb5q0886KTPug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDTN-00039w-2Z; Thu, 31 Oct 2019 16:38:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDTC-00039L-1y; Thu, 31 Oct 2019 16:38:48 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 406EF217D9;
 Thu, 31 Oct 2019 16:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572539925;
 bh=YU229KBhy8a1ftHimn6c/jCBFwGzLDMNIxYvFPF7Tt4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y3rDPmS4VFm6m+S7Oifp3EFP4nTyHcnOpbws+84bnlDwMLGLe5ujstn2B81em3uj9
 al5gcwP0L8/AMmGwwl8wFz/drnsqZq4OfW8v+iSPiyYYu9FlWmGNl9CwvpMKIQgQJ/
 x94S7hi0Ll5yPpyppWUsC7jhZONDuLXG1nO6FzyE=
Received: by mail-qk1-f179.google.com with SMTP id h6so7679420qkf.2;
 Thu, 31 Oct 2019 09:38:45 -0700 (PDT)
X-Gm-Message-State: APjAAAWk9dpTuCeRuxnHxD7F5NEa24kP5NQ89SrN/ny97Pu6RcMPaivp
 7AfCGPrukmw7VY+fqnqZSIVHSTz8frb2qu5RKw==
X-Google-Smtp-Source: APXvYqzdMO6CZSHTsOVDftdeHphCx6evujWZ5b8s9DgkPeYuOFhNdlZfZF3YHNGIendCmjmLB2S9WjfyLMItB6rd2ZU=
X-Received: by 2002:a37:f703:: with SMTP id q3mr6227212qkj.254.1572539924243; 
 Thu, 31 Oct 2019 09:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191031090213.27727-1-dongchun.zhu@mediatek.com>
 <20191031090213.27727-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20191031090213.27727-2-dongchun.zhu@mediatek.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 31 Oct 2019 11:38:32 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+4epXNTNYnC4WZ8LoeYegjOifrjezhDDhfa3o3Y2pWNg@mail.gmail.com>
Message-ID: <CAL_Jsq+4epXNTNYnC4WZ8LoeYegjOifrjezhDDhfa3o3Y2pWNg@mail.gmail.com>
Subject: Re: [V3, 1/2] media: dt-bindings: ov8856: Document YAML bindings
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_093846_142857_3B866FF4 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Tomasz Figa <tfiga@chromium.org>, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, bingbu.cao@intel.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 4:02 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov8856.yaml      | 126 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml

Need to test this with 'make dt-binding-check':

warning: no schema found in file:
Documentation/devicetree/bindings/media/i2c/ov8856.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/i2c/ov8856.yaml:
ignoring, error parsing file
Documentation/devicetree/bindings/media/i2c/ov8856.yaml:  while
scanning a simple key
  in "<unicode string>", line 81, column 5
could not find expected ':'
  in "<unicode string>", line 84, column 1
Documentation/devicetree/bindings/Makefile:12: recipe for target
'Documentation/devicetree/bindings/media/i2c/ov8856.example.dts'
failed

>
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> new file mode 100644
> index 0000000..a161812
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> @@ -0,0 +1,126 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2019 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> +
> +maintainers:
> +  - Ben Kao <ben.kao@intel.com>
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
> +  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
> +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> +  serial data output (up to 4-lane).
> +
> +properties:
> +  compatible:
> +    const: ovti,ov8856
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      Input clock for the sensor.
> +    items:
> +      - const: xvclk
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the xvclk clock in Hertz.
> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +    maxItems: 1

Drop maxItems, it's always a single phandle.

> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +    maxItems: 1
> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as digital power supply.
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.
> +    maxItems: 1
> +
> +  # See ../video-interfaces.txt for details
> +  port:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +      type: object
> +
> +      properties:
> +        remote-endpoint: true
> +        data-lanes: true
> +        link-frequencies: true
> +
> +      required:
> +        - remote-endpoint
> +        - data-lanes
> +        - link-frequencies
> +
> +    required

Missing ':' is the cause of the error above.

> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - clock-frequency
> +  - dovdd-supply
> +  - avdd-supply
> +  - dvdd-supply
> +  - reset-gpios
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    ov8856: camera-sensor@10 {
> +        compatible = "ovti,ov8856";
> +        reg = <0x10>;
> +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&clk_24m_cam>;
> +
> +        clocks = <&cru SCLK_TESTCLKOUT1>;
> +        clock-names = "xvclk";
> +        clock-frequency = <19200000>;
> +
> +        avdd-supply = <&mt6358_vcama2_reg>;
> +        dvdd-supply = <&mt6358_vcamd_reg>;
> +        dovdd-supply = <&mt6358_vcamio_reg>;
> +
> +        port {
> +            wcam_out: endpoint {
> +                remote-endpoint = <&mipi_in_wcam>;
> +                data-lanes = <1 2 3 4>;
> +                link-frequencies = /bits/ 64 <360000000 180000000>;
> +            };
> +        };
> +    };
> +
> +...
> \ No newline at end of file
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 296de2b..4cbae26 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12037,6 +12037,7 @@ L:      linux-media@vger.kernel.org
>  T:     git git://linuxtv.org/media_tree.git
>  S:     Maintained
>  F:     drivers/media/i2c/ov8856.c
> +F:     Documentation/devicetree/bindings/media/i2c/ov8856.yaml
>
>  OMNIVISION OV9650 SENSOR DRIVER
>  M:     Sakari Ailus <sakari.ailus@linux.intel.com>
> --
> 2.9.2
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
