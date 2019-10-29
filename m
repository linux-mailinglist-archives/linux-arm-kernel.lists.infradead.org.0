Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D757AE92DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:12:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gl2AR0XVFipaWDw34COFScihQle1SI0apqFjnvmEzWM=; b=eHS1H/sFBOfgx2
	sv4OmkbgYOt2DzHldaNTzdQmhLvrlED75aRS3GSrtJ/lCrfnYOlvqJU8wTibPMNogm/D8qvQ3Yi4q
	+/BgUQFicIiUSLex+cIWalQMIqlOPGeBvf4tikUAF7RSOUXmBQYKh0+0uGS50InuNbNcQnre6Cs3h
	oEYEdWTnhtGvURNsOCCSLNS2jIxLxzU/pLN5ucLt7W/PD/1gul+Rwz+l7tDpOLTQIQy+tLFRW+KvB
	+XoWmgkY8258iK+DH4hdhWlip35e99aJrDDYQqv4zt8Kc4bgVJHcvhwXSpkC4PXbkChGw9OkfOdW/
	MjGoMS0di7qqxbgipCaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZj4-0008VW-92; Tue, 29 Oct 2019 22:12:30 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZip-0008V0-Ne
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:12:17 +0000
Received: by mail-ot1-f65.google.com with SMTP id 41so295136oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 15:12:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SqarsgJPthXn6oM9ADV9/jK1dg4SoeL4z7Sgacr/J3w=;
 b=SSr7lQKj/tJOAE3p5C3rlYo2HK3zvL/DkA2eu456KDKamBcnysAnnESZ4FbYR65xlR
 XKTi1sCXPMuxXh7ws4/cLJGavpDnMRu7KwkC9jP/4rmXwUBK17A0KOpyNiiI7OSWjpRA
 bJCOj0mlzmK/+MJkAlRSxJ4/EWuZUBzhORRG5PAk5UVWkAEzifmWzpBuPAKD0Y9eagrE
 auN8gtXN9fsOmd5+OIVcgh0nPtZBKKaTTNQCZWHt0tvMlY7XHoEJJtQ3udIA1X+OT6x1
 YhnozePJFAxtE4HSyWmv/1VKvgUzYYJ0ddw+2aD3sq91mMM6BaPdyaoPQO82M0DYoLnG
 IY2g==
X-Gm-Message-State: APjAAAXi2UyHY3xtddZXoL0GY4lBkeua6cbSPc5vLiJ0xSkCQf1JEDkK
 OQeDUln8qndLoGXogoJ4Sw==
X-Google-Smtp-Source: APXvYqz9d9COJfJQoVq1eheKmnYGgyyb98J60mtXo2ExMmYVqrYcF66Cj17ua1x7UNXnNop0QipqwQ==
X-Received: by 2002:a9d:3677:: with SMTP id
 w110mr20563598otb.258.1572387134711; 
 Tue, 29 Oct 2019 15:12:14 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j188sm25564oih.54.2019.10.29.15.12.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 15:12:14 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:12:13 -0500
From: Rob Herring <robh@kernel.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191029221213.GB17996@bogus>
References: <20191025175908.14260-1-manivannan.sadhasivam@linaro.org>
 <20191025175908.14260-2-manivannan.sadhasivam@linaro.org>
 <20191028122115.GB4928@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028122115.GB4928@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_151215_774773_C0C20CA2 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 02:21:15PM +0200, Sakari Ailus wrote:
> Hi Manivannan,
> 
> Thanks for the update.
> 
> On Fri, Oct 25, 2019 at 11:29:07PM +0530, Manivannan Sadhasivam wrote:
> > Add YAML devicetree binding for IMX296 CMOS image sensor.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/media/i2c/imx296.yaml | 98 +++++++++++++++++++
> >  1 file changed, 98 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > new file mode 100644
> > index 000000000000..4e204fd7cf90
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > @@ -0,0 +1,98 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> > +
> > +maintainers:
> > +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > +
> > +description: |-
> > +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> > +  sensor with square pixel array and 1.58 M effective pixels. This chip
> > +  features a global shutter with variable charge-integration time. It is
> > +  programmable through I2C and 4-wire interfaces. The sensor output is
> > +  available via CSI-2 serial data output (1 Lane).
> > +
> > +properties:
> > +  compatible:
> > +    const: sony,imx296
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    description:
> > +      Input clock for the sensor.
> > +    items:
> > +      - const: mclk
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the mclk clock in Hertz.
> > +    default: 37125000
> 
> I think you could omit the default.

Yes, there's no default if it is required.
 
> > +
> > +  vddo-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
> > +    maxItems: 1
> > +
> > +  vdda-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +    maxItems: 1
> > +
> > +  vddd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor reset.
> > +    maxItems: 1
> > +
> > +  # See ../video-interfaces.txt for details

details on what?

> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - clock-frequency
> > +  - vddo-supply
> > +  - vdda-supply
> > +  - vddd-supply
> 
> I think the port and endpoint nodes should documented here as well.

port yes, but endpoint no. Unless you have endpoint properties other 
than remote-endpoint or reg.

> 
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    imx296: camera-sensor@1a {
> > +        compatible = "sony,imx296";
> > +        reg = <0x1a>;
> > +        reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> > +        pinctrl-names = "default";
> > +        pinctrl-0 = <&camera_rear_default>;
> > +        clocks = <&gcc 90>;
> > +        clock-names = "mclk";
> > +        clock-frequency = <37125000>;
> > +        vddo-supply = <&camera_vddo_1v8>;
> > +        vdda-supply = <&camera_vdda_3v3>;
> > +        vddd-supply = <&camera_vddd_1v2>;
> > +
> > +        port {
> > +            imx296_ep: endpoint {
> > +                remote-endpoint = <&csiphy0_ep>;
> > +            };
> > +        };
> > +    };
> > +
> > +...
> 
> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
