Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA711C8E18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIby7bvHW2bQBHgmjei6mj5sli1Q5T9N3LsM8thsPAI=; b=bab2/oLJBbs7M3
	wDjt+6tjutUN1nrHBPq+KTkrdcYs6DEYH7dnRXCGBkR272aJEYgk/QXEEzj8BNleknFFiMZHS61GJ
	B/wmKs6KU4t0oa7GF8b0yDCrKow7KU1GrX7yM9EV6eveldpaZIdLkG85J1DkwykH8xn2LhQBIYxhE
	B2+jUeCBAic7xnrL41xLwdh48UUE01/fBYP4LDqCT2T7oC2kj6wWxRA9YfXLi6xw38w6yCpXvBEqc
	pt/N/NKAkZWf/CVJaxJ0eAtlw3LFUhMVrW6Nj3iRWumNOQQmj3AaJigUxlaSsCnWimqLlBbHtwPet
	ZLNUB0W34xf2RAMFylGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhG6-0006ow-R4; Thu, 07 May 2020 14:12:18 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhFm-0006gH-2Z; Thu, 07 May 2020 14:11:59 +0000
IronPort-SDR: 4pW7bkonTY4FW2aV2cmgJVLaNLOkwTDriNChwFtTrlUaonZoY8NlLXVB2bZFzsWeOetVC86LPB
 8pqMt/c8O8mw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:11:55 -0700
IronPort-SDR: i4ow1BEKENeTAcpljqM75JW4LeccNa7KTLCQzJHaZdz9DzrlWIIDqn9HU7/dIvkQ70ePRyv2vZ
 UNzqo3eApsPQ==
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="435300752"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:11:49 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 90C4320752; Thu,  7 May 2020 17:11:47 +0300 (EEST)
Date: Thu, 7 May 2020 17:11:47 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200507141147.GF9190@paasikivi.fi.intel.com>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
 <20200506112136.GV9190@paasikivi.fi.intel.com>
 <1588856325.8804.179.camel@mhfsdcap03>
 <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_071158_185940_892B5499 
X-CRM114-Status: GOOD (  35.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 matrix.zhu@aliyun.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz, Dongchun,

On Thu, May 07, 2020 at 03:50:40PM +0200, Tomasz Figa wrote:
> Hi Sakari and Dongchun,
> 
> On Thu, May 7, 2020 at 3:00 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Sakari,
> >
> > Thanks for the review.
> >
> > On Wed, 2020-05-06 at 14:21 +0300, Sakari Ailus wrote:
> > > Hi Dongchun,
> > >
> > > On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> > > > Hi Sakari,
> > > >
> > > > Thanks for the review.
> > > >
> > > > On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > > > > Hi Dongchun,
> > > > >
> > > > > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > > >
> > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > ---
> > > > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > > > > >  MAINTAINERS                                        |   7 +
> > > > > >  2 files changed, 155 insertions(+)
> > > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > new file mode 100644
> > > > > > index 0000000..2be4bd2
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > @@ -0,0 +1,148 @@
> > > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > > +# Copyright (c) 2020 MediaTek Inc.
> > > > > > +%YAML 1.2
> > > > > > +---
> > > > > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > +
> > > > > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > > > > +
> > > > > > +maintainers:
> > > > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > +
> > > > > > +description: |-
> > > > > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > > > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > > > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > > > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > > > > +  sensor output is available via CSI-2 serial data output.
> > > > > > +
> > > > > > +properties:
> > > > > > +  compatible:
> > > > > > +    const: ovti,ov02a10
> > > > > > +
> > > > > > +  reg:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  clocks:
> > > > > > +    items:
> > > > > > +      - description: top mux camtg clock
> > > > > > +      - description: devider clock
> > > > > > +
> > > > > > +  clock-names:
> > > > > > +    items:
> > > > > > +      - const: eclk
> > > > > > +      - const: freq_mux
> > > > > > +
> > > > > > +  clock-frequency:
> > > > > > +    description:
> > > > > > +      Frequency of the eclk clock in Hertz.
> > > > > > +
> > > > > > +  dovdd-supply:
> > > > > > +    description:
> > > > > > +      Definition of the regulator used as interface power supply.
> > > > > > +
> > > > > > +  avdd-supply:
> > > > > > +    description:
> > > > > > +      Definition of the regulator used as analog power supply.
> > > > > > +
> > > > > > +  dvdd-supply:
> > > > > > +    description:
> > > > > > +      Definition of the regulator used as digital power supply.
> > > > > > +
> > > > > > +  powerdown-gpios:
> > > > > > +    description:
> > > > > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > > > > +
> > > > > > +  reset-gpios:
> > > > > > +    description:
> > > > > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > > > > +
> > > > > > +  rotation:
> > > > > > +    description:
> > > > > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > > > > +    allOf:
> > > > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > > > +      - enum:
> > > > > > +          - 0    # Sensor Mounted Upright
> > > > > > +          - 180  # Sensor Mounted Upside Down
> > > > > > +
> > > > > > +  ovti,mipi-tx-speed:
> > > > > > +    description:
> > > > > > +      Indication of MIPI transmission speed select.
> > > > >
> > > > > What exactly does this signify? And how do you come up with the number?
> > > > >
> > > >
> > > > Apologies for not addressing this number clear.
> > > >
> > > > From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> > > > the default val: 0x03.
> > > > The description of this RW register is as below:
> > > > Bit[2:0]: MIPI transmission speed select.
> > > >
> > > > Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> > > > This would be fixed in next release.
> > > >
> > > > In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> > > > that value if there is no setting for this private property in DT.
> > > > The caller in driver would be updated like this in next release.
> > > > if (ov02a10->mipi_clock_tx_speed)
> > > >     ret = i2c_smbus_write_byte_data(...,...);
> > >
> > > How did you pick the value in the example? And why do you believe it is
> > > specific to a platform, and not e.g. a sensor mode?
> > >
> >
> > We look into P1:0XA1, one register that defines MIPI transmission speed
> > select.
> > From the datasheet, we can get the possible values that could be set to
> > P1:0xA1.
> >
> > Actually this register is an independent of sensor mode, it is just
> > included in sensor mode's register setting table.
> >
> > In addition, this private DT Property is created to fix the MIPI test
> > failure. The register values are adjusted and verified from vendor to
> > make sensor signal meet MIPI specification.
> >
> 
> In theory the value could depend on the mode, because different link
> rate could impose different requirements for the physical interface.
> In practice, we haven't seen any hardware that would require different
> values for different modes.

The mode (possibly in conjunction with other information available to the
driver via V4L2 fwnode interface) precisely defines the parameters of the
CSI-2 bus --- apart from the possible exception of the bus timing related
parameters but this is not supported by the name of the parameter.

Therefore I don't see how this parameter, which supposedly is used to
determine the CSI-2 transmissions speed, could be board specific and thus
belong to DT.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
