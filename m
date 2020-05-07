Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8262B1C8BD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXrqaLcLw88TK7KfkSG7FU+l2MAHatJQ6x3aOOrrbw4=; b=ZdPo5OOkgCBjyn
	uuHAjMrMmwslxqnoPq9i2VRdM9qHqJX5xf+4lvwoEPOKtCJUNYvOutsAA7DwBtg7tk7h9Bqx2lFWK
	2sUr2Vt7NuYJHGcvWJMq4V9jhgDiF4r1s5tf/Ky6/4XjTeZy7LsP6/vTB8ED/LpYsXCJ7OiWoRqzM
	G9+Bvb+sXe7gCcLnxH0TtYQPbsgf2EW4LPafjdWS/uM2FytkpmRHoMLk1wEZeGnmUAz4OyWt+0Ufc
	vok3EjtKQlrpceWDS3cKyWtbX9G72jTasbyYuG9gWZNCM2E/gmXRXAbCfV6j5qaa1hgKKJ1gmbhnx
	QmetGmsQLgV5a0N2jUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgLF-0000Aq-Mx; Thu, 07 May 2020 13:13:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgL6-00009C-9g; Thu, 07 May 2020 13:13:26 +0000
X-UUID: 395d65b99ea54e238ea831b9be6e265c-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=xX6WbzwsIrvXQxxM1hcKQEzgle+dF5Y3ZwcOUMUxvqQ=; 
 b=WVjh0TGnFB7unPUcyqoVPbwtHD0dMByw3R50Ec3RDpkuzR34BPMmpXj624fymR3BjUfgllQzqZVn+PL7QqKW8dzZ2XCzVz8fGn5Go3SBA16+oIVR8bQ1Ks2Ndkn2YGcF4lx3I2fxD2sSz9mvp3S6McrrQwGMTtZlr27edVi0hWE=;
X-UUID: 395d65b99ea54e238ea831b9be6e265c-20200507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1915685091; Thu, 07 May 2020 05:13:24 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 06:03:16 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 7 May 2020 21:03:13 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 7 May 2020 21:03:14 +0800
Message-ID: <1588856529.8804.182.camel@mhfsdcap03>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 7 May 2020 21:02:09 +0800
In-Reply-To: <20200505161540.GA22172@bogus>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505161540.GA22172@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C1DAAC863A668D2A4CF4F32E5C24F6E2E84AB6876C2AEAB38359B8B9244F95AE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_061324_340123_8FC940F9 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 2020-05-05 at 11:15 -0500, Rob Herring wrote:
> On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 155 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > new file mode 100644
> > index 0000000..2be4bd2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > @@ -0,0 +1,148 @@
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
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: top mux camtg clock
> > +      - description: devider clock
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
> 
> maxItems: 1
> 

Thanks for the reminder, it would be fixed in next release.

> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> 
> Can be dropped. Doesn't tell me anything specific to this device.
> 

Fixed in next release.

> > +
> > +  reset-gpios:
> 
> maxItems: 1
> 

Same as powerdown-gpios. We would just use maxItems only.

> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor reset.
> > +
> > +  rotation:
> > +    description:
> > +      Definition of the sensor's placement, valid values are 0 and 180.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum:
> > +          - 0    # Sensor Mounted Upright
> > +          - 180  # Sensor Mounted Upside Down
> > +
> > +  ovti,mipi-tx-speed:
> > +    description:
> > +      Indication of MIPI transmission speed select.
> > +    allOf:
> > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > +      - enum: [ 3, 4 ]
> > +
> > +  # See ../video-interfaces.txt for details
> > +  port:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      endpoint:
> > +        type: object
> > +        additionalProperties: false
> > +
> > +        properties:
> > +          remote-endpoint: true
> > +          link-frequencies: true
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
> > +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > +
> > +            port {
> > +                wcam_out: endpoint {
> > +                    remote-endpoint = <&mipi_in_wcam>;
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
