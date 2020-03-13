Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852411846BE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Fs2Kbznxd5ccAlYHpB+T6qPMEK/Qs2K6+gtx67V69g=; b=lGtbMTOEWkaR/Q
	PSvf2iE1+RbHMSHt+PcJEd+LBb5qaisoWsHefBRLN2Ijbck1Akd+PwzElAYtBT2gX4yYrwPxpHrUV
	XB/fKjQT8lKme0FPb0RhK5e2voTY21EvADq40ODVHH0ykkBnc5KxhTh2AYqlmE6Nd9aGRXqV6Ugbf
	+U3cI1eMDVTjklpXEIHExBNUnvxL3uAw7mNtxpYFGtbMSz5pvz0f0J8AcKhxnHz7/jvZGrGPAB6DQ
	PHu18at4hKdqsHwl6JdKP8tb7marLDEHtFmFZIVKd0RVux7WP9tVNVWZ3he8cFhkxvTcy54tdHS1c
	BMJgKVpNsj4AUELBPLNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjJG-0001of-Vv; Fri, 13 Mar 2020 12:21:03 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjJ8-0001nR-QU
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:20:56 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 6E41A634C87;
 Fri, 13 Mar 2020 14:19:49 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jCjI5-0001il-Np; Fri, 13 Mar 2020 14:19:49 +0200
Date: Fri, 13 Mar 2020 14:19:49 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200313121949.GD5730@valkosipuli.retiisi.org.uk>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110350.10864-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_052055_221650_401DA9C8 
X-CRM114-Status: GOOD (  21.03  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Fri, Mar 13, 2020 at 12:03:48PM +0100, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
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
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 133 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 134 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> new file mode 100644
> index 000000000000..f5cb9add9277
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> @@ -0,0 +1,133 @@
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

Is Ben aware of this?

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
> +      A node containing input and output port nodes with endpoint definitions
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

Do you need the clock-lanes property, i.e. does the device support lane
reordering? If not, it should be removed.

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
> +    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
> +
> +    ov8856: camera-sensor@10 {
> +        compatible = "ovti,ov8856";
> +        reg = <0x10>;
> +        reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&clk_24m_cam>;
> +
> +        clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
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
> +                clock-lanes = <0>;
> +                data-lanes = <1 2 3 4>;
> +                link-frequencies = /bits/ 64 <360000000 180000000>;
> +            };
> +        };
> +    };
> +
> +...
> \ No newline at end of file
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a6fbdf354d34..0f99e863978a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12355,6 +12355,7 @@ L:	linux-media@vger.kernel.org
>  T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
>  F:	drivers/media/i2c/ov8856.c
> +F:	Documentation/devicetree/bindings/media/i2c/ov8856.yaml
>  
>  OMNIVISION OV9650 SENSOR DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
