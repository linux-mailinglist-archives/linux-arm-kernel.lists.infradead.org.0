Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627C51E5717
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 07:56:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hYUUddBS2W9vl+N+R0e20VjV8MFh7NcBresRY7NrM8=; b=P/0p5n8rGH6U7+
	LS/ur5RKSdu6fQd2Ve3UFej2B8yJSZDu/ZUlU8rO46LGkZtoARoCeab3/G5urIvegCNmP/+G6afs4
	pAD3XKSblVc27XkIRMHvXuKyTVo5/5jfG5WRzQEEVWapAPu69QstzICklvvQDxoT2n44DGvXA8mF0
	WprrLt6P5WKwjQ3M+xL0BWIgDifZY1hhWF49i9zO+fZceRywj86iga5n5C0AR+F9YJPeY2l2wItS1
	miFHsI8atmEQjz+1m2hFgG5PmAtSPJHdYJDQDhuTtLHotoQJcv8egBhMTNAIOyWf/Hf0d+FmgfMKI
	fEsLJ7HJrCD1QQxUL/fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeBWd-0004Lx-0l; Thu, 28 May 2020 05:56:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeBWR-0004Jd-Ia; Thu, 28 May 2020 05:56:09 +0000
X-UUID: 5dbe97a447524cdea5a3f7ac24e028fa-20200527
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=GKJ7cZiMqfb2VfBlip933OA74rr18gz1+qPKGEU9fns=; 
 b=O9DKw2sxmT4kSvKbsn+cpmAeOQjHHq3SitDDUCsUvY2FzyzsSK5L3n9/90S7ppUkDsHd1Vx+VA9NWAg9PhrhW70tNFTqgJDtAUZSWEsUnOKNUg7iGi/V8dgzlreIdppBeiIv0w2sWAKGgUxhFYthqwBmOzs4hfjQFBXYs6h4+qY=;
X-UUID: 5dbe97a447524cdea5a3f7ac24e028fa-20200527
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 293861917; Wed, 27 May 2020 21:56:02 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 27 May 2020 22:55:58 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Thu, 28 May 2020 13:55:50 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 13:55:31 +0800
Message-ID: <1590645223.8804.498.camel@mhfsdcap03>
Subject: Re: [V9, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Thu, 28 May 2020 13:53:43 +0800
In-Reply-To: <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-2-dongchun.zhu@mediatek.com>
 <20200526182847.GA92449@bogus> <1590569355.8804.448.camel@mhfsdcap03>
 <CAL_Jsq+sN0SVidTrY0ODXEkzkxYFvG1FTnL0oRQBSKf=ynLdyQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5202DC9C4A6DAD8E5332356556DAFB0DC31C7CBC60798AF4CE88C6F8C832C7CA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_225607_625042_B4B7F7BE 
X-CRM114-Status: GOOD (  28.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Nicolas
 Boichat <drinkcat@chromium.org>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, dongchun.zhu@medaitek.com,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Wed, 2020-05-27 at 09:27 -0600, Rob Herring wrote:
> On Wed, May 27, 2020 at 2:51 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Rob,
> >
> > Thanks for the review. Please see my replies below.
> >
> > On Tue, 2020-05-26 at 12:28 -0600, Rob Herring wrote:
> > > On Sat, May 23, 2020 at 04:41:02PM +0800, Dongchun Zhu wrote:
> > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 172 +++++++++++++++++++++
> > > >  MAINTAINERS                                        |   7 +
> > > >  2 files changed, 179 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > new file mode 100644
> > > > index 0000000..56f31b5
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > @@ -0,0 +1,172 @@
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
> > > > +      - description: divider clock
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
> >
> > Rob, shall we use 'maxItems: 1' to constrain property: clock-frequency?
> 
> No, because it is a scalar, not an array.
> 

Got it.

> > Or could we adopt 'clock-frequency: true' directly here?
> 
> As-is is fine.
> 

Understood.

> > > > +  dovdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as Digital I/O voltage supply.
> > > > +
> >
> > Shall we add 'maxItems: 1' here?
> 
> No, supplies are always singular.
> 

Fine.

> >
> > > > +  avdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as Analog voltage supply.
> > > > +
> >
> > Ditto.
> >
> > > > +  dvdd-supply:
> > > > +    description:
> > > > +      Definition of the regulator used as Digital core voltage supply.
> > > > +
> >
> > Ditto.
> >
> > > > +  powerdown-gpios:
> > > > +    description:
> > > > +      Must be the device tree identifier of the GPIO connected to the
> > > > +      PD_PAD pin. This pin is used to place the OV02A10 into Standby mode
> > > > +      or Shutdown mode. As the line is active low, it should be
> > > > +      marked GPIO_ACTIVE_LOW.
> > >
> > > Need to define how many GPIOs ('maxItems: 1')
> > >
> >
> > It would be fixed like this in next release.
> > powerdown-gpios:
> >   maxItems: 1
> >   description:
> >     Must be the device tree identifier of the GPIO connected to the
> >     PD_PAD pin. This pin is used to place the OV02A10 into Standby mode
> >     or Shutdown mode. As the line is active low, it should be
> >     marked GPIO_ACTIVE_LOW.
> >

Tomasz, I don't know whether you noticed this description.
Here I simply defined one necessary GPIO polarity in DT which driver
settings need to follow.

> > > > +
> > > > +  reset-gpios:
> > > > +    description:
> > > > +      Must be the device tree identifier of the GPIO connected to the
> > > > +      RST_PD pin. If specified, it will be asserted during driver probe.
> > > > +      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
> > >
> > > Here too.
> > >
> >
> > Similar as 'powerdown-gpios'.
> > Fixed in next release.
> >
> > > > +
> > > > +  rotation:
> > > > +    description:
> > > > +      Definition of the sensor's placement.
> > > > +    allOf:
> > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > +      - enum:
> > > > +          - 0    # Sensor Mounted Upright
> > > > +          - 180  # Sensor Mounted Upside Down
> > > > +        default: 0
> > > > +
> > > > +  ovti,mipi-tx-speed:
> > > > +    description:
> > > > +      Indication of MIPI transmission speed select, which is to control D-PHY
> > > > +      timing setting by adjusting MIPI clock voltage to improve the clock
> > > > +      driver capability.
> > > > +    allOf:
> > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > +      - enum:
> > > > +          - 0    #  20MHz -  30MHz
> > > > +          - 1    #  30MHz -  50MHz
> > > > +          - 2    #  50MHz -  75MHz
> > > > +          - 3    #  75MHz - 100MHz
> > > > +          - 4    # 100MHz - 130MHz
> > > > +        default: 3
> > > > +
> > > > +  # See ../video-interfaces.txt for details
> > > > +  port:
> > > > +    type: object
> > > > +    additionalProperties: false
> > >
> > > Should have a description of what data the port has.
> > >
> >
> > It would be updated as below in next release.
> > port:
> >   type: object
> >   additionalProperties: false
> >   description:
> >     Input port node, single endpoint describing the CSI-2 transmitter.
> 
> Output?
> 

Sorry for the typo.
Yes, this should be output port node.

> >
> > > > +
> > > > +    properties:
> > > > +      endpoint:
> > > > +        type: object
> > > > +        additionalProperties: false
> > > > +
> > > > +        properties:
> >
> > Actually I wonder whether we need to declare 'clock-lanes' here?
> 
> Yes, if you are using it.
> 

Looking back to the upstreamed patches, it seems that there is a deep
divide in the setting of 'clock-lanes' property.

As the last comment I just posed, for OV02A10, 'clock-lanes' should be
set to <0> (clock lane on hardware lane 0).
But here we may follow IMX219 patch, which removed 'clock-lanes'
property due to the fact that sensor hardware does not support lane
reordering.

Rob, Sakari, what's your opinions?

> Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
