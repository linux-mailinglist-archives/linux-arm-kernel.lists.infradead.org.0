Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBDBE96AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 07:46:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4Yt0uGisgqQNUKqG4G0hRhn6W5eeGIsfQOnwNgL4xo=; b=J+YgxirdAY/iR/
	sV4/x6kU64v62q9hsuwTC8Y5DF2n3sLuIU4kHP+LfrdvoNjjNMfQGiKoC4WDyzh7GqrVLTfFbOGOh
	Vu+POiS5DKdhqilkYkEEDMfQI26pw38qtXYFpbW5LVZ9vYaUTo7gfaHxa/kUqpG3dvrrc2X7lUZwg
	YoIrecHEMQrO6OyRWMGb3k6xcL0V1InqvKkAe/od6V+wDFZ/bOykOzREuZiwiOQ8CjzHGm7apJ/jV
	2P1QvzNK9u3+B31mgo0yIyvxc12xIenl6VXN0M5YFF0pgdjz81Sg5pyZGCHwOjda/JFiaGWkRmtrS
	ns8lbOCRTs7QOtFKGLig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPhkH-0000Dh-IE; Wed, 30 Oct 2019 06:46:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPhk5-0000Cm-PJ
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 06:46:07 +0000
Received: by mail-pg1-x543.google.com with SMTP id l3so793631pgr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 23:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cUna80mgrJuvwZng2S/zg9eJ2aJtl1v9W/4Z7bansiw=;
 b=aF/kblen9t7CI7DHz9bX09InKfJirCrxV3h4upoRTtuntFzgf+ordcplUGhDX3hTlI
 enA6URTjG0DKHNBi7J0mrKJnZ4kpZEXgZiuT0h9iNBlprIQJyJtZIMrytcelto9jQO7H
 MsopDsGzlopi41nNk+mnCl/lntEhDo13NN+XSceDsf0olDyv6lrE4MwZ8tOAOOOVRf37
 hs6uKnu6Ueo6jwa5fJv4IwEn/6bbxawQmu6ZcBnZkngNeMEiroT/u7fHnv6vpuw5IYke
 qnmMpHgGEebHdKWzYqH8bpUg+biG8CfvSfTg7sNHuFlVv8ytyegGt6zi0ypgzbIHLwXW
 LJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cUna80mgrJuvwZng2S/zg9eJ2aJtl1v9W/4Z7bansiw=;
 b=cnH/8GIA+VCDeMGbx56/eodii4L92phiw04d78oRr1uCKUJvjnL+z5mo6e+/VpLfob
 QAHCGcLs5FzqAZQbBhj0ViZ+FrbnwmDIVolTWyk3wsNaJjMXh59+L8wlqt34U29HY31L
 W/0m+AtkKlQjJYUvsE2ZWANn+g2YC2LYVvfp1cI6+J1yLjFYulxurllEbmw8aXXtHBZV
 ZDco4kQUP0I1vZimJWl71oj7pWD9pbY5fkp7nnAnJKtqFPy1rGUwQyJfXIrx/0Bsv701
 bVqHKwrfw7eTpDHpI0rxB8WpZCg0yPNoqv+mqXgihTWNGiZAigr7FFn4592lGEhFmP97
 TBFw==
X-Gm-Message-State: APjAAAXLzZEigOlPynmJiHOt1hMAdaTcJbrrC993b1jmiE+PCG6QHw6D
 lVxQOTJKdkdRwl3PLUPjzLYs
X-Google-Smtp-Source: APXvYqw4sy47eUnhMCq6S6rBb149xzsVxBxXpwL1klsrmUeuNOV3Z+gzN5hBEkI38UsF/yJrZuzh7A==
X-Received: by 2002:a63:f441:: with SMTP id p1mr31930177pgk.362.1572417964721; 
 Tue, 29 Oct 2019 23:46:04 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id i63sm1270378pgc.31.2019.10.29.23.45.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 29 Oct 2019 23:46:04 -0700 (PDT)
Date: Wed, 30 Oct 2019 12:15:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191030064555.GB11637@Mani-XPS-13-9360>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
 <20191028122115.GB4928@valkosipuli.retiisi.org.uk>
 <20191029221213.GB17996@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029221213.GB17996@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_234605_831882_4FC2F77A 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Sakari,

On Tue, Oct 29, 2019 at 05:12:13PM -0500, Rob Herring wrote:
> On Mon, Oct 28, 2019 at 02:21:15PM +0200, Sakari Ailus wrote:
> > Hi Manivannan,
> > 
> > Thanks for the update.
> > 
> > On Fri, Oct 25, 2019 at 11:29:07PM +0530, Manivannan Sadhasivam wrote:
> > > Add YAML devicetree binding for IMX296 CMOS image sensor.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  .../devicetree/bindings/media/i2c/imx296.yaml | 98 +++++++++++++++++++
> > >  1 file changed, 98 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > new file mode 100644
> > > index 000000000000..4e204fd7cf90
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > @@ -0,0 +1,98 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> > > +
> > > +maintainers:
> > > +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > +
> > > +description: |-
> > > +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> > > +  sensor with square pixel array and 1.58 M effective pixels. This chip
> > > +  features a global shutter with variable charge-integration time. It is
> > > +  programmable through I2C and 4-wire interfaces. The sensor output is
> > > +  available via CSI-2 serial data output (1 Lane).
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: sony,imx296
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 1
> > > +
> > > +  clock-names:
> > > +    description:
> > > +      Input clock for the sensor.
> > > +    items:
> > > +      - const: mclk
> > > +
> > > +  clock-frequency:
> > > +    description:
> > > +      Frequency of the mclk clock in Hertz.
> > > +    default: 37125000
> > 
> > I think you could omit the default.
> 
> Yes, there's no default if it is required.
>

Okay.

> > > +
> > > +  vddo-supply:
> > > +    description:
> > > +      Definition of the regulator used as interface power supply.
> > > +    maxItems: 1
> > > +
> > > +  vdda-supply:
> > > +    description:
> > > +      Definition of the regulator used as analog power supply.
> > > +    maxItems: 1
> > > +
> > > +  vddd-supply:
> > > +    description:
> > > +      Definition of the regulator used as digital power supply.
> > > +    maxItems: 1
> > > +
> > > +  reset-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > +    maxItems: 1
> > > +
> > > +  # See ../video-interfaces.txt for details
> 
> details on what?
>

Standard properties like endpoint, reg, etc...  I can remove it if not
required.

> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - clock-frequency
> > > +  - vddo-supply
> > > +  - vdda-supply
> > > +  - vddd-supply
> > 
> > I think the port and endpoint nodes should documented here as well.
> 
> port yes, but endpoint no. Unless you have endpoint properties other 
> than remote-endpoint or reg.
> 


Okay. Will document port.

Thanks,
Mani

> > 
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    imx296: camera-sensor@1a {
> > > +        compatible = "sony,imx296";
> > > +        reg = <0x1a>;
> > > +        reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> > > +        pinctrl-names = "default";
> > > +        pinctrl-0 = <&camera_rear_default>;
> > > +        clocks = <&gcc 90>;
> > > +        clock-names = "mclk";
> > > +        clock-frequency = <37125000>;
> > > +        vddo-supply = <&camera_vddo_1v8>;
> > > +        vdda-supply = <&camera_vdda_3v3>;
> > > +        vddd-supply = <&camera_vddd_1v2>;
> > > +
> > > +        port {
> > > +            imx296_ep: endpoint {
> > > +                remote-endpoint = <&csiphy0_ep>;
> > > +            };
> > > +        };
> > > +    };
> > > +
> > > +...
> > 
> > -- 
> > Regards,
> > 
> > Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
