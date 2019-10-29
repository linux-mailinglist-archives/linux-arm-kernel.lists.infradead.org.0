Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04EACE92D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJOIxBV2NY8DMxGH+Y1tLWOL+3cScGs7Ki468NQfk/M=; b=Gu8MieJFgj1qF1
	IcPKBa8c7+pnW6B9s4R0PXOO9+aLst7Qvme/g0jD+KNgLxuOX123j51aa2r/5jRr1nf94wg+jsjOK
	s85JTn2j43tsZppUSOhLSHeLAs/p7EzMsOGXpNyo87ULJ6qE9s5rYq3YFm/zYM/S29fL0T147+vgB
	P/zcax2Gp3/AaCJ794jrA7bT1KtFVQJ1V+4nFZNAmFLnFky2Xlis5v8lz9gkpqiENmbbfNQffCRS8
	82+J+0S3aUXSxP4NiHanBWBmVyLuXOHw9gcVFxSrrTarcvtEeuGTM6IqXTO75Lpp9EOQS1I94Ss05
	5DZxWnJA/Z2weCXczblA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZgL-0006lN-Tk; Tue, 29 Oct 2019 22:09:41 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZgA-0006kq-Ux
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:09:32 +0000
Received: by mail-ot1-f66.google.com with SMTP id t8so325512otl.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 15:09:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BNHkx8n6XgkuYXTB/UGGaZ4IcfSgm5oAYgTMsZynWPI=;
 b=BTeT4WNZBZBKUkR3wFkgLwQHwm8JxNmQPr6uADRXUlUHfL6HJm/ktQZ1WJ0u8ZxhLN
 gUJKk31PZZog9hYsHKTNLWPeG3ubblyclDcktynRzIoYnToVj2X4sXB284CtT/q0pS5F
 kgOTf+dwSKraRZfSVX1DsPfueOtU1jAQcD+3xJ/IAiY1im2RzossakMJIIjNo9ClLTNx
 ciRPf2x3qPd7lz+FSOpQtFstMoHuDC0CqgZZ8X6EZpLIfpmccZk8uYXrROHfcAXfWWtQ
 zT1MfoNf7tLxhlKm0zQmfQ1R7JQLB0Mp66H9rqQkvVLqBFGuIWBrQgiAIj4UynTqOwj7
 WGGQ==
X-Gm-Message-State: APjAAAU0s4BJjBSPNHer7RvSDxBbO9B1hy1wSa9kWQvF/Ay3w5vVeMXs
 delXF3N6n/GF+BxqatMjQg==
X-Google-Smtp-Source: APXvYqxMzw9qF2YULgqtHqHTTivgKGofmqDJrOGVSt7uKu4vVNlqhTlrWxRSC/VX7gh5qb/B7miCDQ==
X-Received: by 2002:a05:6830:1403:: with SMTP id
 v3mr20312857otp.300.1572386970124; 
 Tue, 29 Oct 2019 15:09:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q28sm92226otc.77.2019.10.29.15.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 15:09:29 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:09:28 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191029220928.GA17996@bogus>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_150930_997662_A7F4B28A 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 sakari.ailus@iki.fi, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
> +
> +  vddo-supply:
> +    description:
> +      Definition of the regulator used as interface power supply.
> +    maxItems: 1

You don't need 'maxItems' on *-supply. It's not an array.

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
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
