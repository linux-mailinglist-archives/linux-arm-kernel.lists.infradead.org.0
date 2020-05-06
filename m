Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31561C6F2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6AzRD44xJczmC4EhyBHRGmMLnwtr9xONUI5hyehZqkY=; b=Gmsu6yu4QUuW39
	1YOhJbpyrbmB4bBVBIAdhN0n8DcEnSq/K+bTs32PXQ8iyyGhIJCQq+qKs6gs4zzbfU1HGSvZ7LGdT
	HYq+Gnjpd2sRznUA4Kv7j7ul0X9LfLsz90djx0O5vuQdPLBplhCL6GrObOzOHPGD61cqRXlMuo2vx
	fkJMMY5szU+uNNwDAmO2Kd7x9R/wTXumPlvnBsip+C85jh5DTsPMbEOo2EElWS3ovRf9+P/WCIbR4
	LBrmGUOUeimJ2znptHchsHvZqQaD4bnv15wkFIPKMhJqNUIceSf3EfptBzSMyz4GwJs5ei52o3oW8
	c45Xyn3wvZ5wq22DLZBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWI7f-0007FE-9W; Wed, 06 May 2020 11:21:55 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWI7X-0007EH-Nj; Wed, 06 May 2020 11:21:49 +0000
IronPort-SDR: T8XABdx+lFQsMYfWUKBSQbQvUvK6kJ0zDl9W3VFG0jUPWH6NrdB/j3aeR/P0VswG8E+1arhDyB
 uOKgabtX8WGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:21:43 -0700
IronPort-SDR: t6fBvg1qD9timBapcEHbs/9FlgJYCTMxVzSSsZrrxSppL5QxxscvZ9SAIBneDJ6A073f7Ni0gz
 slXsh7Mvorxg==
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="407210944"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 04:21:38 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 89C1F20885; Wed,  6 May 2020 14:21:36 +0300 (EEST)
Date: Wed, 6 May 2020 14:21:36 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200506112136.GV9190@paasikivi.fi.intel.com>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588688238.8804.150.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_042147_816601_B6EE021D 
X-CRM114-Status: GOOD (  26.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, tfiga@chromium.org, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 louis.kuo@mediatek.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 matrix.zhu@aliyun.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> Hi Sakari,
> 
> Thanks for the review.
> 
> On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> > 
> > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > >  MAINTAINERS                                        |   7 +
> > >  2 files changed, 155 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > new file mode 100644
> > > index 0000000..2be4bd2
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > @@ -0,0 +1,148 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright (c) 2020 MediaTek Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > +
> > > +description: |-
> > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > +  sensor output is available via CSI-2 serial data output.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: ovti,ov02a10
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: top mux camtg clock
> > > +      - description: devider clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: eclk
> > > +      - const: freq_mux
> > > +
> > > +  clock-frequency:
> > > +    description:
> > > +      Frequency of the eclk clock in Hertz.
> > > +
> > > +  dovdd-supply:
> > > +    description:
> > > +      Definition of the regulator used as interface power supply.
> > > +
> > > +  avdd-supply:
> > > +    description:
> > > +      Definition of the regulator used as analog power supply.
> > > +
> > > +  dvdd-supply:
> > > +    description:
> > > +      Definition of the regulator used as digital power supply.
> > > +
> > > +  powerdown-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > +
> > > +  reset-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > +
> > > +  rotation:
> > > +    description:
> > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +      - enum:
> > > +          - 0    # Sensor Mounted Upright
> > > +          - 180  # Sensor Mounted Upside Down
> > > +
> > > +  ovti,mipi-tx-speed:
> > > +    description:
> > > +      Indication of MIPI transmission speed select.
> > 
> > What exactly does this signify? And how do you come up with the number?
> > 
> 
> Apologies for not addressing this number clear.
> 
> From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> the default val: 0x03.
> The description of this RW register is as below:
> Bit[2:0]: MIPI transmission speed select.
> 
> Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> This would be fixed in next release.
> 
> In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> that value if there is no setting for this private property in DT.
> The caller in driver would be updated like this in next release.
> if (ov02a10->mipi_clock_tx_speed)
> 	ret = i2c_smbus_write_byte_data(...,...);

How did you pick the value in the example? And why do you believe it is
specific to a platform, and not e.g. a sensor mode?

> 
> > > +    allOf:
> > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > +      - enum: [ 3, 4 ]
> > > +
> > > +  # See ../video-interfaces.txt for details
> > > +  port:
> > > +    type: object
> > > +    additionalProperties: false
> > > +
> > > +    properties:
> > > +      endpoint:
> > > +        type: object
> > > +        additionalProperties: false
> > > +
> > > +        properties:
> > > +          remote-endpoint: true
> > > +          link-frequencies: true
> > > +
> > > +    required:
> > > +      - endpoint
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - clock-frequency
> > > +  - dovdd-supply
> > > +  - avdd-supply
> > > +  - dvdd-supply
> > > +  - powerdown-gpios
> > > +  - reset-gpios
> > > +  - port
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/mt8183-clk.h>
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    i2c {
> > > +        clock-frequency = <400000>;
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        ov02a10: camera-sensor@3d {
> > > +            compatible = "ovti,ov02a10";
> > > +            reg = <0x3d>;
> > > +            pinctrl-names = "default";
> > > +            pinctrl-0 = <&clk_24m_cam>;
> > > +
> > > +            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
> > > +                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
> > > +            clock-names = "eclk", "freq_mux";
> > > +            clock-frequency = <24000000>;
> > > +
> > > +            rotation = <180>;
> > > +            ovti,mipi-tx-speed = <3>;
> > > +
> > > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > > +            avdd-supply = <&mt6358_vcama1_reg>;
> > > +            dvdd-supply = <&mt6358_vcn18_reg>;
> > > +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > > +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > > +
> > > +            port {
> > > +                wcam_out: endpoint {
> > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > +                    link-frequencies = /bits/ 64 <390000000>;
> > > +                };
> > > +            };
> > > +        };
> > > +    };
> > > +
> > > +...
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index e64e5db..63a2335 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -12389,6 +12389,13 @@ M:	Harald Welte <laforge@gnumonks.org>
> > >  S:	Maintained
> > >  F:	drivers/char/pcmcia/cm4040_cs.*
> > >  
> > > +OMNIVISION OV02A10 SENSOR DRIVER
> > > +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > +L:	linux-media@vger.kernel.org
> > > +S:	Maintained
> > > +T:	git git://linuxtv.org/media_tree.git
> > > +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > +
> > >  OMNIVISION OV13858 SENSOR DRIVER
> > >  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> > >  L:	linux-media@vger.kernel.org
> > 
> 

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
