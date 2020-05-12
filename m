Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FB71CEAFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 04:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiSfDWvLsChiT4l7zHnb71wGS/cWiF7PpGsrdr81S3Y=; b=ap//WMrLe2q2a6
	jc5LMseLFcWiS826kzGGVXXodfPa4YizdK05+N2+HiAmG+BjnaR2+0i0NWIgmxz9vCy21A8HrEdn6
	q1q7WsnGzEI2803oxrulQLQOJfNye1EdJ38pZFNBoY3vASN53Y4T10cU0q2xVGAJU8YjQofbixy7x
	ggyNeCUqUXHKVnOgAZ5TmNGfsBvqFaxrdwifqCvkFqPujfc9M8b+Gapq/0kIzkT1P9VfBhhXtwBVJ
	n1Cy32eWVSJvsvxzOI9/nm0DbwdUvnG+nmDoHQXnsJKUpJawff24P8DGz3Q401PoU9yVRIZgRX9wv
	WfQatuYcGKYUGNHgDgzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYL1V-0008WQ-FZ; Tue, 12 May 2020 02:52:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYL1H-0008Uo-B3; Tue, 12 May 2020 02:51:49 +0000
X-UUID: 256701ed69bb4effb39eb5a3b7aef428-20200511
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=XtwYNnPHZrvWCATHRZT86/j1KPh/6I7n/iBA6k2oB6Y=; 
 b=oRZcxIK6zlu4QmPMYmobH8IcWI1VkInaDpGXkeRjNpqGPVqNKiGnA14k2r79lAX9E90MPmDC1+W1Pl4u8UUn7dZFxZVap+HSeylZCEalVyaevXAugJw6Gt1BXvWqVVj8ymYMt1Du/JtwETFyII6+qqSZhRZMHUn4ieEwBQxY4i8=;
X-UUID: 256701ed69bb4effb39eb5a3b7aef428-20200511
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1762051565; Mon, 11 May 2020 18:51:41 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 19:41:39 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 10:41:36 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 12 May 2020 10:41:32 +0800
Message-ID: <1589251221.8804.289.camel@mhfsdcap03>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 12 May 2020 10:40:21 +0800
In-Reply-To: <20200511160207.GA32476@bogus>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 072CEAB2F5552A6274C169AB204A0F3C0C897A171D7C16C09698E43AFCEFF0562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_195147_390831_61397E06 
X-CRM114-Status: GOOD (  25.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Rob,

Thanks for the review.

On Mon, 2020-05-11 at 11:02 -0500, Rob Herring wrote:
> On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 184 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 191 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > new file mode 100644
> > index 0000000..5468d1b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > @@ -0,0 +1,184 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2020 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > +
> > +maintainers:
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > +  sensor output is available via CSI-2 serial data output.
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov02a10
> > +
> > +  reg:
> > +    description: I2C device address
> 
> Drop this. Nothing specific to this device.
> 

Okay. I would release this description in next release.

> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: top mux camtg clock
> > +      - description: devider clock
> 
> typo
> 

Sorry for the mistake.
devider would be replaced of divider in next release.

> > +
> > +  clock-names:
> > +    items:
> > +      - const: eclk
> > +      - const: freq_mux
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the eclk clock in Hertz.
> > +
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  powerdown-gpios:
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    maxItems: 1
> > +
> > +  rotation:
> > +    description:
> > +      Definition of the sensor's placement, valid values are 0 and 180.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum:
> > +          - 0    # Sensor Mounted Upright (default)
> > +          - 180  # Sensor Mounted Upside Down
> > +
> > +  ovti,mipi-tx-speed:
> > +    description:
> > +      Indication of MIPI transmission speed select, which is to control D-PHY
> > +      timing setting by adjusting MIPI clock voltage to improve the clock
> > +      driver capability.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum:
> > +          - 0    #  20MHz -  30MHz
> > +          - 1    #  30MHz -  50MHz
> > +          - 2    #  50MHz -  75MHz
> > +          - 3    #  75MHz - 100MHz
> > +          - 4    # 100MHz - 130MHz (suggested)
> > +          - 5    # Manual
> > +
> > +  # See ../video-interfaces.txt for details
> > +  port:
> > +    type: object
> > +    additionalProperties: false
> > +    description:
> > +      A node containing an output port node with an endpoint definition
> > +      as documented in
> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> 
> No need for repeating a generic description of a common property.
> 

Got it.
Description of common property "port" would be removed in next release.

> > +
> > +    properties:
> > +      endpoint:
> > +        type: object
> > +
> > +        properties:
> > +          data-lanes:
> > +            description: |-
> > +              The driver only supports 1-lane operation.
> 
> What the driver supports is not relevant.
> 

Got it.
Remove description in next release by using like this:
data-lanes:
  maxItems: 1

> > +            items:
> > +              - const: 1
> > +              - const: 2
> > +              - const: 3
> > +              - const: 4
> > +
> > +          clock-noncontinuous:
> > +            type: boolean
> > +            description: |-
> > +              MIPI CSI-2 clock is non-continuous if this property is present,
> > +              otherwise it's continuous.
> 
> Assume this has a common definition, so just need:
> 
> clock-noncontinuous: true
> 

Fixed in next release.

> > +
> > +          link-frequencies:
> > +            allOf:
> > +              - $ref: /schemas/types.yaml#/definitions/uint64-array
> > +            description:
> > +              Allowed data bus frequencies. 39000000 Hz is supported by
> > +              the driver.
> 
> This too is a common property.
> 
> Though 39000000 looks like a constraint. However, what the driver 
> supports is not relevant.
> 

Fixed in next release by using:
link-frequencies: true

> > +
> > +        required:
> > +          - link-frequencies
> > +
> > +    required:
> > +      - endpoint
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - clock-frequency
> > +  - dovdd-supply
> > +  - avdd-supply
> > +  - dvdd-supply
> > +  - powerdown-gpios
> > +  - reset-gpios
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +
> > +    #include <dt-bindings/clock/mt8183-clk.h>
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    i2c {
> > +        clock-frequency = <400000>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ov02a10: camera-sensor@3d {
> > +            compatible = "ovti,ov02a10";
> > +            reg = <0x3d>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&clk_24m_cam>;
> > +
> > +            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
> > +                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
> > +            clock-names = "eclk", "freq_mux";
> > +            clock-frequency = <24000000>;
> > +
> > +            rotation = <180>;
> > +            ovti,mipi-tx-speed = <3>;
> > +
> > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > +            avdd-supply = <&mt6358_vcama1_reg>;
> > +            dvdd-supply = <&mt6358_vcn18_reg>;
> > +
> > +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > +
> > +            port {
> > +                wcam_out: endpoint {
> > +                    remote-endpoint = <&mipi_in_wcam>;
> > +                    data-lanes = <1>;
> 
> This doesn't match the schema which says this should be 4 entries.
> 

Property "data-lanes" shows the number of lanes that sensor supports.
If this property is omitted, four-lane operation is assumed.
For OV02A10, it is one-lane operation, so the property is supposed to be
set to <1>.

> > +                    clock-noncontinuous;
> > +                    link-frequencies = /bits/ 64 <390000000>;
> > +                };
> > +            };
> > +        };
> > +    };
> > +
> > +...
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index e64e5db..63a2335 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12389,6 +12389,13 @@ M:	Harald Welte <laforge@gnumonks.org>
> >  S:	Maintained
> >  F:	drivers/char/pcmcia/cm4040_cs.*
> >  
> > +OMNIVISION OV02A10 SENSOR DRIVER
> > +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +L:	linux-media@vger.kernel.org
> > +S:	Maintained
> > +T:	git git://linuxtv.org/media_tree.git
> > +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > +
> >  OMNIVISION OV13858 SENSOR DRIVER
> >  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> >  L:	linux-media@vger.kernel.org
> > -- 
> > 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
