Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CDF1AACF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/Ljj8SVLGfqHhR0gl7zAQTIOOe2LDP01OVvWn6rzI0=; b=HzeLd66b/wuVxC
	Z7z+spJ6ANUG8tXyO7LjDOpnQ/Tqe5uI6ioJrzJkc24sEZMqQ++01YagFVlzNEjZzFl3AfvYvK3QD
	by94h7npEb5ChHAkBwzt5XnC4XrWP/u47fNYW2pM2gyD34komxVO4/iXS+Bce78Q7PMyGFKdpAyRc
	GunCvreFUxJ9s0VXEDiwByCCP2qUZyfqOLbgg0rvUuxOn5ps2iT1DBOHg4x3BYRpenoCV+OuisXEp
	KYztic/o0h+Rj57cGSwDaYBqx6ZIB02ZKkWYtTpGr0/dOWZOOqFn5CXJVMywG6zXNDQzxW3Gcx5UL
	vE+jJhJPV+rAdnYuUMzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkZh-0004sP-BP; Wed, 15 Apr 2020 16:07:41 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkZZ-0004rm-0p
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:07:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id k133so13194865oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 09:07:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uYhwLEgK1Ycm8Hcmrx9CbYR8tRwlULjhiPmaER/B1xU=;
 b=VCWSyF48NCXHErvip7qzSoPsZYbSt+S2znjhrIVGYgjkvrfx78XFenAwN9Jnuqkde3
 hDtzIuZJpEdSSO+hLT6g5k4u5MQKYBCEl3QE6hkjTkEF0Ul1kyPBySGp+52TnEiBHl9N
 uxGVq9GVPPyTYGmA3odrWmydq6JrJnvVeNFi65VrWI4KXt0ly9pVLWfP+yJ5N8N9/mY4
 xC6qP0Rg5ZfnpsNb32+feGobsvM6Z3t3JjXDrbPt6UszAZtRfsDiIOtYauCCuQieHJo4
 Ol2Y+Xrg/RvUEm/jVd1DQ3dC0sCPfluqZXTUq1Ju8jub/Q/ioar1A2sqpN1SmKWpBZi1
 8sVg==
X-Gm-Message-State: AGi0PuYb/i4FTGWhWicmYsnXfTOJRILJCBsZW5OfO+IZGccGrwlqf9SR
 qGlEZ51u34oFGAVuz+wOgw==
X-Google-Smtp-Source: APiQypKfMH0XUPx9NA0nmEjS5pXKHMvADDOnF1WUquydnNa3O0PCH3lvfFxqU/W7sCEPDnP0HxvTvg==
X-Received: by 2002:aca:34c6:: with SMTP id b189mr19137555oia.63.1586966851608; 
 Wed, 15 Apr 2020 09:07:31 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l7sm4249117oii.26.2020.04.15.09.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 09:07:30 -0700 (PDT)
Received: (nullmailer pid 9753 invoked by uid 1000);
 Wed, 15 Apr 2020 16:07:29 -0000
Date: Wed, 15 Apr 2020 11:07:29 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v7 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200415160729.GA4438@bogus>
References: <20200408110816.2712841-1-robert.foss@linaro.org>
 <20200408110816.2712841-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408110816.2712841-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_090733_063641_E29F54F4 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marco Felsch <m.felsch@pengutronix.de>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:08:14PM +0200, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v6:
>   * Marco: remove qcom specifics from DT example
>    
> - Changes since v5:
>   * Add assigned-clocks and assigned-clock-rates
>   * robher: dt-schema errors
> 
> - Changes since v4:
>   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
>   * Add clock-lanes property to example
>   * robher: Fix syntax error in devicetree example
> 
> - Changes since v3:
>   * robher: Fix syntax error
>   * robher: Removed maxItems
>   * Fixes yaml 'make dt-binding-check' errors
> 
> - Changes since v2:
>   Fixes comments from from Andy, Tomasz, Sakari, Rob.
>   * Convert text documentation to YAML schema.
> 
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
> 
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 143 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 144 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> new file mode 100644
> index 000000000000..96bef5403d7e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> @@ -0,0 +1,143 @@
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
> +  assigned-clocks:
> +    description:
> +      Input clock for the sensor.
> +
> +  assigned-clock-rates:
> +    description:
> +      Frequency of the xvclk clock in Hertz.

These 2 should have a 'maxItems: 1'

> +
> +  dovdd-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +
> +  avdd-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +
> +  dvdd-supply:
> +    description:
> +      Definition of the regulator used as digital power supply.
> +
> +  reset-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.
> +      This corresponds to the hardware pin XSHUTDOWN which is physically
> +      active low.
> +
> +  port:
> +    type: object
> +    additionalProperties: false
> +    description:
> +      A node containing input and output port nodes with endpoint definitions

Only an output, right?

> +      as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +    properties:
> +      endpoint:
> +        type: object
> +
> +        properties:
> +          clock-lanes:
> +            maxItems: 1
> +
> +          data-lanes:
> +            maxItems: 1
> +
> +          remote-endpoint: true
> +
> +        required:
> +          - clock-lanes
> +          - data-lanes
> +          - remote-endpoint
> +
> +    required:
> +      - endpoint
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - assigned-clocks
> +  - assigned-clock-rates
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
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ov8856: camera@10 {
> +            compatible = "ovti,ov8856";
> +            reg = <0x10>;
> +
> +            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&clk_24m_cam>;
> +
> +            clocks = <&cam_osc>;
> +            clock-names = "xvclk";
> +            assigned-clocks = <&cam_osc>;
> +            assigned-clock-rates = <19200000>;
> +
> +            avdd-supply = <&mt6358_vcama2_reg>;
> +            dvdd-supply = <&mt6358_vcamd_reg>;
> +            dovdd-supply = <&mt6358_vcamio_reg>;
> +
> +            port {
> +                wcam_out: endpoint {
> +                    remote-endpoint = <&mipi_in_wcam>;
> +                    clock-lanes = <0>;
> +                    data-lanes = <1 2 3 4>;
> +                    link-frequencies = /bits/ 64 <360000000 180000000>;
> +                };
> +            };
> +        };
> +    };
> +...
> \ No newline at end of file

^^^

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 534a8dc4f84a..3f35c6e9700a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12465,6 +12465,7 @@ L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
>  F:	drivers/media/i2c/ov8856.c
> +F:	Documentation/devicetree/bindings/media/i2c/ov8856.yaml
>  
>  OMNIVISION OV9650 SENSOR DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
