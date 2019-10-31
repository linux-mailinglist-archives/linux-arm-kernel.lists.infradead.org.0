Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F02EB0FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:16:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cf1zXbIOgHQhTv0jOOcV81hzn47ro+mretAluDtYSsI=; b=LNjE6f501/Vfhu
	8n4tMAWOUiFUaOSYPOjacuouj42et7AsmAyKx+KyIRazwjT9C6AKFHctV57tqqwj9zkJEAAGHeYD8
	+PYTYryjiC+CFOdpeoLMwHDlJ2TL2mW5RgHfPgD3j47uBdopjA4fl90YAiBR3Z7HF6ISoCenwsDHi
	OfZc2fjC9PZyuXPcZYl7XM6t3q+jjyRpeoNUEvCYw/2a4PUv6GCpLmDhwrhbMAnNxOTgmRmWBQHLY
	649O0Jam1yaiGAB0kE1aRNRopedoAZeGF9TfL3rXwYUvqE7tl224Q35eOwYZo51hwPUd4jbvBs6q8
	35cZTH4N0E7W0iITXg5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQAJ8-000271-IE; Thu, 31 Oct 2019 13:16:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQAIv-00025s-Ok
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:16:00 +0000
Received: from pendragon.ideasonboard.com
 (lmontsouris-658-1-103-151.w92-154.abo.wanadoo.fr [92.154.14.151])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 47652320;
 Thu, 31 Oct 2019 14:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572527747;
 bh=h3zH9Nvkjl8LwfcxKpuihCDq37nUwZ7fy1lwxjLRgxc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V/JpQ97mpjQEJWvorgtqz85wqTmFtJ7HgYPMGncjvU/rv6s5KUzpGmSxzXybruBCY
 n6Zb/bn//3cqhvo7UuBSio2GH/dP3C0CPNPZ7qcPbDMR0Bru/jNDiJ0SuzZXne6YxG
 h5vcqgQJLD9If0DHJf4JLonFmv8uxLn2mn3JDacw=
Date: Thu, 31 Oct 2019 15:15:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191031131538.GA9170@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_061558_109304_B42D5716 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 robh+dt@kernel.org, sakari.ailus@iki.fi, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani,

Thank you for the patch.

On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> add MAINTAINERS entry for the binding and driver.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
>  MAINTAINERS                                   |  8 ++
>  2 files changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> new file mode 100644
> index 000000000000..c04ec2203268
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> @@ -0,0 +1,94 @@
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

The pin is named INCK, let's name the clock accordingly.

> +  clock-frequency:
> +    description:
> +      Frequency of the mclk clock in Hertz.

This shouldn't be needed, you can retrieve the clock frequency at
runtime from the clock source.

> +  vddo-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +
> +  vdda-supply:
> +    description:
> +      Definition of the regulator used as analog power supply.
> +
> +  vddd-supply:
> +    description:
> +      Definition of the regulator used as digital power supply.

Do we really need three regulators ? I agree that the sensor has three
power rails, but aren't they usually powered by regulators that are
tied together, without individual control ? The IMX926 specifications
require the three power supplies to raise within 200ms, which we should
be able to ensure in software. What does your board use, does it have
multiple GPIOs to control each power supply ? If not I wonder if we
could just define vddd-supply now, and add vdda-supply and vddo-supply
later if we need to support systems that can control the supplies
individually.

> +  reset-gpios:
> +    description:
> +      The phandle and specifier for the GPIO that controls sensor reset.
> +    maxItems: 1
> +
> +  port: true
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
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 55199ef7fa74..51194bb2c392 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15140,6 +15140,14 @@ S:	Maintained
>  F:	drivers/media/i2c/imx274.c
>  F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
>  
> +SONY IMX296 SENSOR DRIVER
> +M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +L:	linux-media@vger.kernel.org
> +T:	git git://linuxtv.org/media_tree.git
> +S:	Maintained
> +F:	drivers/media/i2c/imx296.c
> +F:	Documentation/devicetree/bindings/media/i2c/imx296.yaml
> +
>  SONY IMX319 SENSOR DRIVER
>  M:	Bingbu Cao <bingbu.cao@intel.com>
>  L:	linux-media@vger.kernel.org

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
