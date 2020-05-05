Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7601C5D3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0bYjXNfUQyD5WkxwVHpWPIM7q9ti3AX8+bXvswZhnk=; b=TsZn4OSvZ/Z/pJ
	IexOKQ8iNzM/a7c1JitwX9syn0YQfbaV4rvIRdslv0G3nKFX2iZVIHf1HJIXWNKTPsxcsolBvHq9H
	XEbZvjxpQj5JBLl0Nhb+3xSkarnno7+wssl8ewRFaUCG9BzSlrKzU9LBgDeoMDBqML+4g+WOc/7py
	Mq0c9zLhLHSVaF9G6Dt/RdFkUhfWSHp/j350r6SQoKFRsRm22UuzHSydDyjROPKgJNHqVNBRJcfAV
	GEO8MbPWZoaPrMshrXvIg0G7XZVCuQGXO+pEYaDccg/sn9QxbAyNWx9eW8eEuqJ3/99Q84Arc3fnL
	R7A6hBbhtCB5fe/YD5DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0Ea-0006w8-Ic; Tue, 05 May 2020 16:15:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0ER-0006ub-MB; Tue, 05 May 2020 16:15:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id j4so2098971otr.11;
 Tue, 05 May 2020 09:15:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XEvj77nHBsN+uNI4KjHLCnMExXS2b39djG7luQ71idA=;
 b=QU7bNj4vdMZFlgjYGQJds9ASAnmPWopQhaFwAQ8UyoE25/D+CqF15Y0ggMkcnZamym
 +EU1gB0tMqUUtFlcOiMOgIr4HFSQ3/t+xLfIQS3+BBrdtsHQBKrSyVRwd1vN/ringygK
 V1ResDTdpmMwoK1NBPEQQ5JmZKgFVpJJ+86gy93cn3VrTWXuG0rAhDC0nfYL37YrQf/o
 ZBnj76WCmMjgg4Lt4cnxES1fZM70mdwpwNB3w/dO8FPWHwpYvjeYODUJtg7uzQAaoYrW
 segb6c0/TcfsQqS7jhc6OAl3epIibnFoTIaMql+JHEDo8wHVLDMKLX+wg+K366x+CtHP
 k0Wg==
X-Gm-Message-State: AGi0PuaDeKtg2REU+UNPVnLZIa/IwL0Wl86NMiIb0hOsh8aQHoixsOmK
 7FSz6djLA5ljG08r3Gjsng==
X-Google-Smtp-Source: APiQypIzZsE5G0TST9sgZVdQuA9MiyonjA1j2wsRyFz5gUcht3eH084KLBcLReRd9VFScGHJOXNkRA==
X-Received: by 2002:a9d:2782:: with SMTP id c2mr3039080otb.106.1588695342208; 
 Tue, 05 May 2020 09:15:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e16sm709845otp.20.2020.05.05.09.15.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 09:15:41 -0700 (PDT)
Received: (nullmailer pid 27288 invoked by uid 1000);
 Tue, 05 May 2020 16:15:40 -0000
Date: Tue, 5 May 2020 11:15:40 -0500
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200505161540.GA22172@bogus>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430080924.1140-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_091543_724427_413C6AAA 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, louis.kuo@mediatek.com,
 srv_heupstream@mediatek.com, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> Add DT bindings documentation for Omnivision OV02A10 image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 +
>  2 files changed, 155 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> new file mode 100644
> index 0000000..2be4bd2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2020 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> +
> +maintainers:
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> +  image sensor, which is the latest production derived from Omnivision's CMOS
> +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> +  sensor output is available via CSI-2 serial data output.
> +
> +properties:
> +  compatible:
> +    const: ovti,ov02a10
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: top mux camtg clock
> +      - description: devider clock
> +
> +  clock-names:
> +    items:
> +      - const: eclk
> +      - const: freq_mux
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the eclk clock in Hertz.
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
> +  powerdown-gpios:

maxItems: 1

> +    description:
> +      The phandle and specifier for the GPIO that controls sensor powerdown.

Can be dropped. Doesn't tell me anything specific to this device.

> +
> +  reset-gpios:

maxItems: 1

> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.
> +
> +  rotation:
> +    description:
> +      Definition of the sensor's placement, valid values are 0 and 180.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +      - enum:
> +          - 0    # Sensor Mounted Upright
> +          - 180  # Sensor Mounted Upside Down
> +
> +  ovti,mipi-tx-speed:
> +    description:
> +      Indication of MIPI transmission speed select.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> +      - enum: [ 3, 4 ]
> +
> +  # See ../video-interfaces.txt for details
> +  port:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:
> +        type: object
> +        additionalProperties: false
> +
> +        properties:
> +          remote-endpoint: true
> +          link-frequencies: true
> +
> +    required:
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
> +  - powerdown-gpios
> +  - reset-gpios
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8183-clk.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        clock-frequency = <400000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ov02a10: camera-sensor@3d {
> +            compatible = "ovti,ov02a10";
> +            reg = <0x3d>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&clk_24m_cam>;
> +
> +            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
> +                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
> +            clock-names = "eclk", "freq_mux";
> +            clock-frequency = <24000000>;
> +
> +            rotation = <180>;
> +            ovti,mipi-tx-speed = <3>;
> +
> +            dovdd-supply = <&mt6358_vcamio_reg>;
> +            avdd-supply = <&mt6358_vcama1_reg>;
> +            dvdd-supply = <&mt6358_vcn18_reg>;
> +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> +
> +            port {
> +                wcam_out: endpoint {
> +                    remote-endpoint = <&mipi_in_wcam>;
> +                    link-frequencies = /bits/ 64 <390000000>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index e64e5db..63a2335 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12389,6 +12389,13 @@ M:	Harald Welte <laforge@gnumonks.org>
>  S:	Maintained
>  F:	drivers/char/pcmcia/cm4040_cs.*
>  
> +OMNIVISION OV02A10 SENSOR DRIVER
> +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +T:	git git://linuxtv.org/media_tree.git
> +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> +
>  OMNIVISION OV13858 SENSOR DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
>  L:	linux-media@vger.kernel.org
> -- 
> 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
