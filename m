Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB26D1CCE9A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 00:36:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XE1Q5fVIk1qf+0ACg8w/OwP0leqihJTz8nqkHRPvfdw=; b=EjJsnqCa0XJOGL
	rPng5BkpuDjAyaRvIHGWR7B86UxTg8YPxLi1paB7iwjUVLyvHQNgD2mDaSEjufGyKzoWaFvKQ0MoR
	0KKDlx7oQWiEhhgIwwNAAO87KcJJIY/WN1go+7252G7zy/wnIeUVebKXZ3IwE0s5qvST2onVnXblB
	MhyD8oMD3/yY2AT+5KjPNr/kcXH/cYaKsHDiPtb5jQ5vsTvPqpwjsuyGyU4kgXpF6gF0kGhWXfPEf
	3MSNgzIy3bgB1auETbx7Q4Rlr+KlRdK1ePhYN8RKti5TakTVBx74DOSYqniRUIotZXVH0H/QnIqYk
	l6TdpqwuefUqX8oX9rRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXuYL-0005pF-VH; Sun, 10 May 2020 22:36:09 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXuYC-0005oH-66; Sun, 10 May 2020 22:36:02 +0000
IronPort-SDR: Sa94kX6kmUNUWWIv14rvSxV52mPcSs3m9pH9jvl3rikD95v++AE7xFtQvyupAN2C0odcDJ603Y
 SWfMPF88bILA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2020 15:35:59 -0700
IronPort-SDR: GW2IV8o13C9OShNSulhju3TxgLrbYxxvS+fsA+jGbvtOIyI7Q+2s2rPTJhESYyopj+NrQzkYDo
 cb9mMK5uFzYQ==
X-IronPort-AV: E=Sophos;i="5.73,377,1583222400"; d="scan'208";a="264973455"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2020 15:35:54 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 2E965207FE; Mon, 11 May 2020 01:35:52 +0300 (EEST)
Date: Mon, 11 May 2020 01:35:52 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
Message-ID: <20200510223552.GA11272@paasikivi.fi.intel.com>
References: <20200430080924.1140-1-dongchun.zhu@mediatek.com>
 <20200430080924.1140-2-dongchun.zhu@mediatek.com>
 <20200505070451.GS9190@paasikivi.fi.intel.com>
 <1588688238.8804.150.camel@mhfsdcap03>
 <20200506112136.GV9190@paasikivi.fi.intel.com>
 <1588856325.8804.179.camel@mhfsdcap03>
 <CAAFQd5CXRD_j7Xkxb4=9kkd+pDy4W5pirAPSG8RsMVH6L-MU2w@mail.gmail.com>
 <20200507141147.GF9190@paasikivi.fi.intel.com>
 <CAAFQd5DgDk57MCc4vE9VmifZYjtO_SUFss+vc8W-28SFHbKDrA@mail.gmail.com>
 <1588920685.8804.230.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588920685.8804.230.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_153600_239901_6F57CF16 
X-CRM114-Status: GOOD (  41.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, matrix.zhu@aliyun.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg  Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Fri, May 08, 2020 at 02:51:25PM +0800, Dongchun Zhu wrote:
> Hi Sakari, Tomasz,
> 
> On Thu, 2020-05-07 at 16:25 +0200, Tomasz Figa wrote:
> > On Thu, May 7, 2020 at 4:12 PM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > Hi Tomasz, Dongchun,
> > >
> > > On Thu, May 07, 2020 at 03:50:40PM +0200, Tomasz Figa wrote:
> > > > Hi Sakari and Dongchun,
> > > >
> > > > On Thu, May 7, 2020 at 3:00 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > > >
> > > > > Hi Sakari,
> > > > >
> > > > > Thanks for the review.
> > > > >
> > > > > On Wed, 2020-05-06 at 14:21 +0300, Sakari Ailus wrote:
> > > > > > Hi Dongchun,
> > > > > >
> > > > > > On Tue, May 05, 2020 at 10:17:18PM +0800, Dongchun Zhu wrote:
> > > > > > > Hi Sakari,
> > > > > > >
> > > > > > > Thanks for the review.
> > > > > > >
> > > > > > > On Tue, 2020-05-05 at 10:04 +0300, Sakari Ailus wrote:
> > > > > > > > Hi Dongchun,
> > > > > > > >
> > > > > > > > On Thu, Apr 30, 2020 at 04:09:23PM +0800, Dongchun Zhu wrote:
> > > > > > > > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > > > ---
> > > > > > > > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 148 +++++++++++++++++++++
> > > > > > > > >  MAINTAINERS                                        |   7 +
> > > > > > > > >  2 files changed, 155 insertions(+)
> > > > > > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > > > >
> > > > > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > > > > new file mode 100644
> > > > > > > > > index 0000000..2be4bd2
> > > > > > > > > --- /dev/null
> > > > > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > > > > > > > @@ -0,0 +1,148 @@
> > > > > > > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > > > > > > +# Copyright (c) 2020 MediaTek Inc.
> > > > > > > > > +%YAML 1.2
> > > > > > > > > +---
> > > > > > > > > +$id: http://devicetree.org/schemas/media/i2c/ovti,ov02a10.yaml#
> > > > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > > > +
> > > > > > > > > +title: Omnivision OV02A10 CMOS Sensor Device Tree Bindings
> > > > > > > > > +
> > > > > > > > > +maintainers:
> > > > > > > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > > > +
> > > > > > > > > +description: |-
> > > > > > > > > +  The Omnivision OV02A10 is a low-cost, high performance, 1/5-inch, 2 megapixel
> > > > > > > > > +  image sensor, which is the latest production derived from Omnivision's CMOS
> > > > > > > > > +  image sensor technology. Ihis chip supports high frame rate speeds up to 30fps
> > > > > > > > > +  @ 1600x1200 (UXGA) resolution transferred over a 1-lane MIPI interface. The
> > > > > > > > > +  sensor output is available via CSI-2 serial data output.
> > > > > > > > > +
> > > > > > > > > +properties:
> > > > > > > > > +  compatible:
> > > > > > > > > +    const: ovti,ov02a10
> > > > > > > > > +
> > > > > > > > > +  reg:
> > > > > > > > > +    maxItems: 1
> > > > > > > > > +
> > > > > > > > > +  clocks:
> > > > > > > > > +    items:
> > > > > > > > > +      - description: top mux camtg clock
> > > > > > > > > +      - description: devider clock
> > > > > > > > > +
> > > > > > > > > +  clock-names:
> > > > > > > > > +    items:
> > > > > > > > > +      - const: eclk
> > > > > > > > > +      - const: freq_mux
> > > > > > > > > +
> > > > > > > > > +  clock-frequency:
> > > > > > > > > +    description:
> > > > > > > > > +      Frequency of the eclk clock in Hertz.
> > > > > > > > > +
> > > > > > > > > +  dovdd-supply:
> > > > > > > > > +    description:
> > > > > > > > > +      Definition of the regulator used as interface power supply.
> > > > > > > > > +
> > > > > > > > > +  avdd-supply:
> > > > > > > > > +    description:
> > > > > > > > > +      Definition of the regulator used as analog power supply.
> > > > > > > > > +
> > > > > > > > > +  dvdd-supply:
> > > > > > > > > +    description:
> > > > > > > > > +      Definition of the regulator used as digital power supply.
> > > > > > > > > +
> > > > > > > > > +  powerdown-gpios:
> > > > > > > > > +    description:
> > > > > > > > > +      The phandle and specifier for the GPIO that controls sensor powerdown.
> > > > > > > > > +
> > > > > > > > > +  reset-gpios:
> > > > > > > > > +    description:
> > > > > > > > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > > > > > > > +
> > > > > > > > > +  rotation:
> > > > > > > > > +    description:
> > > > > > > > > +      Definition of the sensor's placement, valid values are 0 and 180.
> > > > > > > > > +    allOf:
> > > > > > > > > +      - $ref: "/schemas/types.yaml#/definitions/uint32"
> > > > > > > > > +      - enum:
> > > > > > > > > +          - 0    # Sensor Mounted Upright
> > > > > > > > > +          - 180  # Sensor Mounted Upside Down
> > > > > > > > > +
> > > > > > > > > +  ovti,mipi-tx-speed:
> > > > > > > > > +    description:
> > > > > > > > > +      Indication of MIPI transmission speed select.
> > > > > > > >
> > > > > > > > What exactly does this signify? And how do you come up with the number?
> > > > > > > >
> > > > > > >
> > > > > > > Apologies for not addressing this number clear.
> > > > > > >
> > > > > > > From the datasheet, P1:0xA1 register represents TX_SPEED_AREA_SEL with
> > > > > > > the default val: 0x03.
> > > > > > > The description of this RW register is as below:
> > > > > > > Bit[2:0]: MIPI transmission speed select.
> > > > > > >
> > > > > > > Thus the enum should be definited as [ 0, 1, 2, 3, 4, 5, 6, 7 ].
> > > > > > > This would be fixed in next release.
> > > > > > >
> > > > > > > In the meantime, as the default val of P1:0xA1 is 0x03, we hope to keep
> > > > > > > that value if there is no setting for this private property in DT.
> > > > > > > The caller in driver would be updated like this in next release.
> > > > > > > if (ov02a10->mipi_clock_tx_speed)
> > > > > > >     ret = i2c_smbus_write_byte_data(...,...);
> > > > > >
> > > > > > How did you pick the value in the example? And why do you believe it is
> > > > > > specific to a platform, and not e.g. a sensor mode?
> > > > > >
> > > > >
> > > > > We look into P1:0XA1, one register that defines MIPI transmission speed
> > > > > select.
> > > > > From the datasheet, we can get the possible values that could be set to
> > > > > P1:0xA1.
> > > > >
> > > > > Actually this register is an independent of sensor mode, it is just
> > > > > included in sensor mode's register setting table.
> > > > >
> > > > > In addition, this private DT Property is created to fix the MIPI test
> > > > > failure. The register values are adjusted and verified from vendor to
> > > > > make sensor signal meet MIPI specification.
> > > > >
> > > >
> > > > In theory the value could depend on the mode, because different link
> > > > rate could impose different requirements for the physical interface.
> > > > In practice, we haven't seen any hardware that would require different
> > > > values for different modes.
> > >
> > > The mode (possibly in conjunction with other information available to the
> > > driver via V4L2 fwnode interface) precisely defines the parameters of the
> > > CSI-2 bus --- apart from the possible exception of the bus timing related
> > > parameters but this is not supported by the name of the parameter.
> > >
> > > Therefore I don't see how this parameter, which supposedly is used to
> > > determine the CSI-2 transmissions speed, could be board specific and thus
> > > belong to DT.
> > 
> > According to the very imprecise information I have access to, it is
> > not about the CSI-2 bus itself, but rather some internal parameter of
> > the sensor's CSI interface. Unfortunately there isn't much information
> > on what this value exactly controls...
> > 
> > Best regards,
> > Tomasz
> 
> Just got some feedback from OV vendor about this parameter.
> 
> P1:0xA1 is the register to control D-PHY timing setting based on bclk.
> It is to adjust the MIPI clock voltage to improve the clock drive
> capability, and has no affect on the transmission speed of MIPI data.
> 
> From vendor's perspective, P1:0xA1 depends upon the length of FPC of
> camera module that used on the board. Considering the physical
> connections for MIPI signals to user-facing camera are very different
> between our 2 projects, it can be very difficult to find universal SI
> parameters for both projects.

Are you using different values for this parameter on these two projects?

> 
> Thus here we create one new DT property to separate these tuning in
> driver, to be more like project-specific.
> 
> More details about the register is as below.
> P1:0xA1 val: 0x03 default
> Case: 0  20MHz-30MHz
>       1  30MHz-50MHz
>       2  50MHz-75MHz
>       3  75MHz-100MHz   (default, old DB setting use)
>       4  100MHz-130MHz  (suggested, new DB setting use)
>       5  Manual
> So the value in the example should be [ 0, 1, 2, 3, 4, 5 ].
> 
> Additionally, P1:0xA1 is recommended to be set as 0x04 in the newest DB
> setting. We would adjust the register in next release.

Thank you for digging into the issue.

Based on the above description, the parameter would depend on both the link
frequency and possibly also on wire length. I guess there's no harm from
using too strong drive, apart from perhaps power consumption? As in
principle this could be different for different sensor modes. Albeit I
don't remember seeing a sensor where such a parameter would have been
needed to be modified.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
