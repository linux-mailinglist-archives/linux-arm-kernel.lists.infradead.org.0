Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF211C8B9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vanM/BXUfJEVxRjXjxNtEFi3nynLlvrUfDO2PlEsI8Y=; b=gJFbG2VnsLtM9b
	ngHsMZcgGps1NR2e2uVJ3mAkUxZgCVvqXrkkvyt+gjSssHmpmCIMVEQb+Mz+l22vzAx3VpZvIwucN
	3tOOQr6tfYyHn9IlLQmn8rlcwhwZiHhx18Cg5UAql7Xd+7zYvMRfQFIur0J58OnOn98CXBY2db1nD
	RckFHQh4ptgbHkXMg6LkOY4zVf3fmy8onNY1ieWEk0ayvmTpTV95LBqkieliWwcBMUCDRqV2kvJtF
	c4Ihd6yh3JebdpzNil8gTYMOSAw529IIWYPlThGvQYHcRBQsf/g6umY8sY/tGjxSwAaOZ19apWZej
	TDoqNofHOuF6n48pF+vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWg8R-0005cw-B6; Thu, 07 May 2020 13:00:19 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWg87-0005J5-5I; Thu, 07 May 2020 13:00:01 +0000
X-UUID: 671dd17b2cce405c8341798b433de815-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=VI19oD7mDKtgqQv1VHd5bxqMfBTo0kcii3ZpM7XK99o=; 
 b=EYLxPAOHx7Vr2+QyYRD0RZyJjdCH1uUP8u3CSwYyyxOXcCbiDwi2QlQqqbn8HGTv9nSaUk/rW9aDPL44m2QwPNFX3t7Lnz6VoK7b9vtbYFIoeLx6W/g7k+vPiWBi3vehXGWf3yWPCMdMmtTcm/+WAMYPQQnXuNhjKTHxZPanjVM=;
X-UUID: 671dd17b2cce405c8341798b433de815-20200507
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 923902101; Thu, 07 May 2020 04:59:59 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 05:59:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 7 May 2020 20:59:49 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 7 May 2020 20:59:50 +0800
Message-ID: <1588856325.8804.179.camel@mhfsdcap03>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Thu, 7 May 2020 20:58:45 +0800
In-Reply-To: <20200506112136.GV9190@paasikivi.fi.intel.com>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
 <20200506112136.GV9190@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3CF84EBD27476F1CCCB4396207FAE2684506AFD090C14A78C4C964DC5FFE44B62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_055959_212017_B3E67F59 
X-CRM114-Status: GOOD (  28.04  )
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

Hi Sakari,

Thanks for the review.

On Wed, 2020-05-06 at 14:21 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> > Hi Sakari,
> > 
> > Thanks for the review.
> > 
> > On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > > Hi Dongchun,
> > > 
> > > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > 
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > > >  MAINTAINERS                                        |   7 +
> > > >  2 files changed, 155 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > new file mode 100644
> > > > index 0000000..2be4bd2
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > @@ -0,0 +1,148 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +# Copyright (c) 2020 MediaTek Inc.
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > +
> > > > +description: |-
> > > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > > +  sensor output is available via CSI-2 serial data output.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: ovti,ov02a10
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    items:
> > > > +      - description: top mux camtg clock
> > > > +      - description: devider clock
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: eclk
> > > > +      - const: freq_mux
> > > > +
> > > > +  clock-frequency:
> > > > +    description:
> > > > +      Frequency of the eclk clock in Hertz.
> > > > +
> > > > +  dovdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as interface power supply.
> > > > +
> > > > +  avdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as analog power supply.
> > > > +
> > > > +  dvdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as digital power supply.
> > > > +
> > > > +  powerdown-gpios:
> > > > +    description:
> > > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > > +
> > > > +  reset-gpios:
> > > > +    description:
> > > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > > +
> > > > +  rotation:
> > > > +    description:
> > > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > > +    allOf:
> > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > +      - enum:
> > > > +          - 0    # Sensor Mounted Upright
> > > > +          - 180  # Sensor Mounted Upside Down
> > > > +
> > > > +  ovti,mipi-tx-speed:
> > > > +    description:
> > > > +      Indication of MIPI transmission speed select.
> > > 
> > > What exactly does this signify? And how do you come up with the number?
> > > 
> > 
> > Apologies for not addressing this number clear.
> > 
> > From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> > the default val: 0x03.
> > The description of this RW register is as below:
> > Bit[2:0]: MIPI transmission speed select.
> > 
> > Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> > This would be fixed in next release.
> > 
> > In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> > that value if there is no setting for this private property in DT.
> > The caller in driver would be updated like this in next release.
> > if (ov02a10->mipi_clock_tx_speed)
> > 	ret = i2c_smbus_write_byte_data(...,...);
> 
> How did you pick the value in the example? And why do you believe it is
> specific to a platform, and not e.g. a sensor mode?
> 

We look into P1:0XA1, one register that defines MIPI transmission speed
select.
From the datasheet, we can get the possible values that could be set to
P1:0xA1.

Actually this register is an independent of sensor mode, it is just
included in sensor mode's register setting table.

In addition, this private DT Property is created to fix the MIPI test
failure. The register values are adjusted and verified from vendor to
make sensor signal meet MIPI specification.

> > 
> > > > +    allOf:
> > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > +      - enum: [ 3, 4 ]
> > > > +
> > > > +  # See ../video-interfaces.txt for details
> > > > +  port:
> > > > +    type: object
> > > > +    additionalProperties: false
> > > > +
> > > > +    properties:
> > > > +      endpoint:
> > > > +        type: object
> > > > +        additionalProperties: false
> > > > +
> > > > +        properties:
> > > > +          remote-endpoint: true
> > > > +          link-frequencies: true
> > > > +
> > > > +    required:
> > > > +      - endpoint
> > > > +
> > > > +required:
> > > > +  - compatible
> > > > +  - reg
> > > > +  - clocks
> > > > +  - clock-names
> > > > +  - clock-frequency
> > > > +  - dovdd-supply
> > > > +  - avdd-supply
> > > > +  - dvdd-supply
> > > > +  - powerdown-gpios
> > > > +  - reset-gpios
> > > > +  - port
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    #include <dt-bindings/clock/mt8183-clk.h>
> > > > +    #include <dt-bindings/gpio/gpio.h>
> > > > +
> > > > +    i2c {
> > > > +        clock-frequency = <400000>;
> > > > +        #address-cells = <1>;
> > > > +        #size-cells = <0>;
> > > > +
> > > > +        ov02a10: camera-sensor@3d {
> > > > +            compatible = "ovti,ov02a10";
> > > > +            reg = <0x3d>;
> > > > +            pinctrl-names = "default";
> > > > +            pinctrl-0 = <&clk_24m_cam>;
> > > > +
> > > > +            clocks = <&topckgen CLK_TOP_MUX_CAMTG>,
> > > > +                     <&topckgen CLK_TOP_UNIVP_192M_D8>;
> > > > +            clock-names = "eclk", "freq_mux";
> > > > +            clock-frequency = <24000000>;
> > > > +
> > > > +            rotation = <180>;
> > > > +            ovti,mipi-tx-speed = <3>;
> > > > +
> > > > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > > > +            avdd-supply = <&mt6358_vcama1_reg>;
> > > > +            dvdd-supply = <&mt6358_vcn18_reg>;
> > > > +            powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> > > > +            reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> > > > +
> > > > +            port {
> > > > +                wcam_out: endpoint {
> > > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > > +                    link-frequencies = /bits/ 64 <390000000>;
> > > > +                };
> > > > +            };
> > > > +        };
> > > > +    };
> > > > +
> > > > +...
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index e64e5db..63a2335 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -12389,6 +12389,13 @@ M:	Harald Welte <laforge@gnumonks.org>
> > > >  S:	Maintained
> > > >  F:	drivers/char/pcmcia/cm4040_cs.*
> > > >  
> > > > +OMNIVISION OV02A10 SENSOR DRIVER
> > > > +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > +L:	linux-media@vger.kernel.org
> > > > +S:	Maintained
> > > > +T:	git git://linuxtv.org/media_tree.git
> > > > +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > +
> > > >  OMNIVISION OV13858 SENSOR DRIVER
> > > >  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> > > >  L:	linux-media@vger.kernel.org
> > > 
> > 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
