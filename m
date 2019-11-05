Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED829EF2F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:44:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKCEwnZkqGcb3S7t/7GsVX9iwMHiZ0SZnw80Mrzga68=; b=Tm4xaFq6HYfqRq
	DKgrLoNZgAUeB9jtFUgw2+0YCggcNCbtcO4nz09aE1V8vXauJlRe7RJdLrakTyBMkpq81Sl6PM+L4
	1fx/cpFO9zAssISA29V1v47CPOLIj2YifBhIYR06tUVxoaKmvAts59f1xuQHV0sbGaF5+57ySXx7Q
	Ir4krDB/iS+Fwncy72+0Pr9hZGt09/18m75woWR7C6Un9kWfY1zH3nD7sMdLxHoMTzn39Zgh43D5L
	UXXQx7jOuzNXoRYjfOd9+pR1iGnZIj8R5HXxVZLhsGk+sOrBSbmcYt+EvzLd6uJfii8nO+0tFFdfw
	Lo77stizHGgSpcwQvEvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRnt4-0003Nh-Pb; Tue, 05 Nov 2019 01:44:02 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnsy-0003N0-E2
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:43:58 +0000
Received: by mail-oi1-f193.google.com with SMTP id n16so16074974oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 17:43:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CUXJwWe90bW8v3xaQ2VIEMTd+WY4inmX6uoXpP0UKrU=;
 b=pD28Le9SVJUCDwImJbn5vcxvNH2Dkm3PSFOUVZpyd1PE7Umdms7nv2TFV9BRM7wJZ7
 rOYP/cdqXBC7sgut3SGzTIGX+LA+pU/TwAiZTHnqy8uQzvXpxlm3CCk9Lzh/PM0ILGvH
 j0WyXdZjVDvfvGOsp6AFqHV96SBxwcv5FJjuWf1IDyOh05xpDbmXBBuwTkCFGP3aM62a
 wN6URhBqUckb49TVwTHp08C791r7rp7VeWrmkIIeL2TZxojBUYxdLP6LGFXWpuBCeVP1
 Y/S4RFxxa3rHeQhtNRFo9eMZdcIi+vWRLmdB/cblobBTJZzhtl1BpZTe+MdK63mVcjPY
 7alw==
X-Gm-Message-State: APjAAAV2+J5eU2ewNjvJ596E3ZwOOnGk35gp+ZVsXoSm85runS5SC+17
 ngOCQ5jBWk2DGY9qFfrJGA==
X-Google-Smtp-Source: APXvYqzyj/IhgIcosg+V9eSDk1T7UbLbJYKj67K43VeYokAtGtiA5geqXFgLTpyjlQIlyARe5+gqiA==
X-Received: by 2002:aca:da06:: with SMTP id r6mr1699237oig.82.1572918234843;
 Mon, 04 Nov 2019 17:43:54 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l18sm1216351oti.11.2019.11.04.17.43.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 17:43:54 -0800 (PST)
Date: Mon, 4 Nov 2019 19:43:53 -0600
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191105014353.GA841@bogus>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
 <20191030115328.GA6253@valkosipuli.retiisi.org.uk>
 <20191030120105.GA11432@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030120105.GA11432@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_174356_473036_3EB4E0C8 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 Sakari Ailus <sakari.ailus@iki.fi>, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 05:31:05PM +0530, Manivannan Sadhasivam wrote:
> Hi Sakari,
> 
> On Wed, Oct 30, 2019 at 01:53:28PM +0200, Sakari Ailus wrote:
> > Hi Nabuvannan,
> > 
> > On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> > > Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> > > add MAINTAINERS entry for the binding and driver.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
> > >  MAINTAINERS                                   |  8 ++
> > >  2 files changed, 102 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > new file mode 100644
> > > index 000000000000..c04ec2203268
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > > @@ -0,0 +1,94 @@
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
> > > +
> > > +  vddo-supply:
> > > +    description:
> > > +      Definition of the regulator used as interface power supply.
> > > +
> > > +  vdda-supply:
> > > +    description:
> > > +      Definition of the regulator used as analog power supply.
> > > +
> > > +  vddd-supply:
> > > +    description:
> > > +      Definition of the regulator used as digital power supply.
> > > +
> > > +  reset-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > +    maxItems: 1
> > > +
> > > +  port: true
> > 
> > You're missing "type: object" under port.
> > 
> 
> I did that intentionally, since there are other places where I can see the
> "type" field not specified. So, I was not sure about that. Most of the
> display bindings don't specify "type" and they are most available ones.
> I don't think the "port" property differs between cameras and displays.
> So I went with that.

The difference is the panel bindings have a common schema included 
which defines 'port' at least as a node. I don't think an include would 
help too much here, so probably best to add 'type: object' for now. 
Either way, this may change once video-interfaces.txt is converted if 
any of those properties apply here.

Either way:

Reviewed-by: Rob Herring <robh@kernel.org>

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
