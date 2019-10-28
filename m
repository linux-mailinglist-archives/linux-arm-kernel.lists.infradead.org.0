Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3472E714A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 13:24:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+YvkPinAHeK8c6geiY/dd5M8DtDQEF0eRhqMT+GjJs=; b=L4y30c6uXwzJZx
	EpYGtGscumrZvE50E+9nA3EdkCqQsK3Pg044KzH2vmzcDqmsQ3Ge/Wg6Bd9bRBmkPhv9caTls53Z/
	qCIGBomqWrUyC3GaEiCA+y+C3HO24uzOJLOAWImVYY3bU05ed3jHGZtYasguMhPgd/y2CIHqvBHB6
	gRSPOc7QPnvbRM5PCfsacyx581D6XFj8a1o14iNrX0g6gl/kWb8E67jpMDlSA73/9d0S/zz7JrZeL
	6JHVXhMYT4KEJAGpW10KZxc3a0B7lkBWveGjuFwa+nt8DYdi/3DXtDbITBPejljHRy/nPNELdy+xw
	H2RuNASvUzJDZcpQYzpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP44F-0003p0-E3; Mon, 28 Oct 2019 12:24:15 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP441-0003Qr-EC
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 12:24:04 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 5727D634C87;
 Mon, 28 Oct 2019 14:21:16 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iP41L-0001Ir-Cg; Mon, 28 Oct 2019 14:21:15 +0200
Date: Mon, 28 Oct 2019 14:21:15 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191028122115.GB4928@valkosipuli.retiisi.org.uk>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_052401_847593_261EEA70 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

Thanks for the update.

On Fri, Oct 25, 2019 at 11:29:07PM +0530, Manivannan Sadhasivam wrote:
> Add YAML devicetree binding for IMX296 CMOS image sensor.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/media/i2c/imx296.yaml | 98 +++++++++++++++++++
>  1 file changed, 98 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> new file mode 100644
> index 000000000000..4e204fd7cf90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> @@ -0,0 +1,98 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +description: |-
> +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> +  sensor with square pixel array and 1.58 M effective pixels. This chip
> +  features a global shutter with variable charge-integration time. It is
> +  programmable through I2C and 4-wire interfaces. The sensor output is
> +  available via CSI-2 serial data output (1 Lane).
> +
> +properties:
> +  compatible:
> +    const: sony,imx296
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
> +      - const: mclk
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the mclk clock in Hertz.
> +    default: 37125000

I think you could omit the default.

> +
> +  vddo-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +    maxItems: 1
> +
> +  vdda-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +    maxItems: 1
> +
> +  vddd-supply:
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
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - clock-frequency
> +  - vddo-supply
> +  - vdda-supply
> +  - vddd-supply

I think the port and endpoint nodes should documented here as well.

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    imx296: camera-sensor@1a {
> +        compatible = "sony,imx296";
> +        reg = <0x1a>;
> +        reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&camera_rear_default>;
> +        clocks = <&gcc 90>;
> +        clock-names = "mclk";
> +        clock-frequency = <37125000>;
> +        vddo-supply = <&camera_vddo_1v8>;
> +        vdda-supply = <&camera_vdda_3v3>;
> +        vddd-supply = <&camera_vddd_1v2>;
> +
> +        port {
> +            imx296_ep: endpoint {
> +                remote-endpoint = <&csiphy0_ep>;
> +            };
> +        };
> +    };
> +
> +...

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
