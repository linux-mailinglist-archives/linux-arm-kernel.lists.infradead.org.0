Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBEF1C54B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bT7+lF7nqL8yxclZ4kd2fERTj3wb3X5SQEjbUqv3EBI=; b=E0QLbflmlf/L8v
	Ri7a4BV6cyoyO7d9FMgU5v09pJapo+C1yRvIBg3CmK4tYGy6HrfL98hwO2HRuemdq8DW7v/MCdY33
	6t92EOAKNJdrH6sitrlg0FyifiFfGE1ug54bBIpiRJpMywVnx/HOrYcoUMnJb+67+b81NEgvObg2K
	c/TzO7/QT8+07f18JW5lOKLEDY7+SBdP69ljLs9ypxU7Yn33xA082vINL26J2Kqq0ZfPjcGqYGrpZ
	HK4/Zt5/IXaeFp09IW94LUpDeeDt9xzfGfr6mh5LwsKuEqu4sya2L2QeLOm0uROOQAIUV790wj6mP
	7E1MfFzm8X3Fnyj/4qSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVw4h-0005a4-DQ; Tue, 05 May 2020 11:49:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVw4Z-0005XC-Ss
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:49:17 +0000
X-UUID: 049a1c47e2f840d5b71190a049554c22-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=pPCw/hSKdiOkecOhojlmReD8aZk/qsyj+9+P5fF9LYA=; 
 b=HvPZq82ywqxJE5RlOFXEeyzPJah9VOMzrT5fEEt5MUXvHBm/UgriO6dPs+Bei3oqYB8cxtuOHWIFE+OnuaCtJ59zzulSMza6B4U40bqEqbV/h2zEQQYTa5fgFkFhWnVotmojvMC3uvtSaz4H1PoAZ3oIqqwSk++2MtXojvLOv10=;
X-UUID: 049a1c47e2f840d5b71190a049554c22-20200505
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 669339013; Tue, 05 May 2020 03:48:43 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 5 May 2020 04:49:03 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 5 May 2020 19:49:00 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 5 May 2020 19:48:59 +0800
Message-ID: <1588679279.8804.133.camel@mhfsdcap03>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>
Date: Tue, 5 May 2020 19:47:59 +0800
In-Reply-To: <20200505100129.104673-2-robert.foss@linaro.org>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 13630F7D312406468B28054E50195F55DADBD634018715057684F8B50EA5600E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_044915_941780_5F32DB7B 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Marco Felsch <m.felsch@pengutronix.de>, Maxime
 Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Ben Kao <ben.kao@intel.com>, Sakari Ailus <sakari.ailus@iki.fi>, Maxime
 Ripard <maxime@cerno.tech>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

Thanks for the update.

On Tue, 2020-05-05 at 12:01 +0200, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> ---
> 
> - Changes since v9:
>   * Remove remote-endpoint property
>   * Marco: Make port property required again
>   * Sakari: Remove Ben as a maintainer
>   * Sakari: Replace data-lanes with const items
>   * Sakari: Remove clock-lanes property
>   * Sakari & Rob Herring: Change type of link-frequency
>     work around dt-schema bug
> 
> - Changes since v8:
>   * Maxime: Added r-b
> 
> - Changes since v7:
>   * Marco: Make 'port' property optional
>   * Maxime & Sakari: Add 'link-frequencies' property to dt binding
>   * robher: Improve description for 'port' property
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
> 
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
> 
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 142 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 143 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> new file mode 100644
> index 000000000000..d6af685ad3ca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> @@ -0,0 +1,142 @@
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
> +      A node containing an output port node with an endpoint definition
> +      as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +    properties:
> +      endpoint:
> +        type: object
> +
> +        properties:
> +          data-lanes:
> +            description: |-
> +              The driver only supports four-lane operation.
> +            items:
> +              - const: 1
> +              - const: 2
> +              - const: 3
> +              - const: 4
> +
> +          link-frequencies:
> +            allOf:
> +              - $ref: /schemas/types.yaml#/definitions/uint64-array
> +            description:
> +              Allowed data bus frequencies. 360000000, 180000000 Hz or both
> +              are supported by the driver.
> +
> +
> +        required:
> +          - link-frequencies
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

Apologies for missing to follow the earlier discussion related to this.
I noticed the GPIO flag para and __ov8856_power_on() are aligned using
ACTIVE_LOW.

But from the datasheet, XSHUTDN pin is active-high for OV8856.
It means devm_gpiod_get API (in probe func) should use GPIOD_OUT_LOW to
initialize the GPIO as output with a value of 0.
Otherwise it should use GPIOD_OUT_HIGH.

There is one case for GPIO_ACTIVE_LOW setting:
https://patchwork.linuxtv.org/patch/63460/
https://patchwork.linuxtv.org/patch/63461/

Sakari, Tomasz, am I right?

> +            pinctrl-names = "default";
> +            pinctrl-0 = <&clk_24m_cam>;
> +
> +            clocks = <&cam_osc>;
> +            clock-names = "xvclk";
> +            clock-frequency = <19200000>;
> +
> +            avdd-supply = <&mt6358_vcama2_reg>;
> +            dvdd-supply = <&mt6358_vcamd_reg>;
> +            dovdd-supply = <&mt6358_vcamio_reg>;
> +
> +            port {
> +                wcam_out: endpoint {
> +                    remote-endpoint = <&mipi_in_wcam>;
> +                    data-lanes = <1 2 3 4>;
> +                    link-frequencies = /bits/ 64 <360000000>;
> +                };
> +            };
> +        };
> +    };
> +...
> \ No newline at end of file
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 26f281d9f32a..84b262afd13d 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12489,6 +12489,7 @@ L:	linux-media@vger.kernel.org
>  S:	Maintained
>  T:	git git://linuxtv.org/media_tree.git
>  F:	drivers/media/i2c/ov8856.c
> +F:	Documentation/devicetree/bindings/media/i2c/ov8856.yaml
>  

Had you run parse-maintainers.pl?
The new item is supposed to be arranged in alphabetical order.

>  OMNIVISION OV9640 SENSOR DRIVER
>  M:	Petr Cvek <petrcvekcz@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
