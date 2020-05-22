Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741771DE379
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 11:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbK4rZ67tWNwWQbIidS3i3tObyr2+qw/Nt+kwF6p72k=; b=HRpimqjsV9ZeUU
	s3VsgIwVsA8ZcoOO8J3ykmHNxtO/L+kGBdOK4bGFn4Tp7txzNUSjTgQAjmOCOFHvljnIH19rnyFeI
	PW9tqgRlWHsTfMPM6XVjloiHLklNZLvNL+EoU5e5vgDetWbkog8dd5NioEZn7VusF6/BZgkuH1Sbe
	r1gERvxRLw6ntTQSdZz1ouZZ0j5zRVoiCJ8VFhaPfdW+Z5wUHmm8z/VphjMjbFYue+yh0lFfB0Sxy
	5E2hLsKmXxFA/PL4eAM8gXSisrWu2x3uyc1hzzYVtVn/cUCuH9kNQMhv6WhK5UpfcaponGJ3t/vxY
	Ldl9Q3fHYfu8h25M5jxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4GF-0002k2-9L; Fri, 22 May 2020 09:46:39 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4Fy-0002ie-A0; Fri, 22 May 2020 09:46:23 +0000
X-UUID: ed81c43588ec405eadbeee74b6ff8f03-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=tF2iza3+T10u3OYpCiSW5Eyu/FLsGC6AH37q0WErEYM=; 
 b=lqQkVcavQp7yKMnO1Nr4beSI13g7xmJpXAOih7nVVPXmlCiObzzYg0RZG5sm27BH2NuTmciQ5r1gGmX7XOlJxD468rbhJsVqVZUG1l15zmzaTQVAe+0VuL8smX56ra1tuoQfq7+6jUXQXuD4Vy1/NmkS65nbi4dIKmycCMWXkJ8=;
X-UUID: ed81c43588ec405eadbeee74b6ff8f03-20200522
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1386406660; Fri, 22 May 2020 01:46:00 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 02:46:14 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 22 May 2020 17:46:08 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 22 May 2020 17:46:07 +0800
Message-ID: <1590140674.8804.401.camel@mhfsdcap03>
Subject: Re: [V8, 1/2] media: dt-bindings: media: i2c: Document OV02A10
 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 22 May 2020 17:44:34 +0800
In-Reply-To: <20200521193525.GB14214@chromium.org>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-2-dongchun.zhu@mediatek.com>
 <20200511160207.GA32476@bogus> <20200521193525.GB14214@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D5065D85BB825F36842C4C8BA7BA18E92E4A289B7885F1D5FAF1F8151DF263B12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_024622_352818_A54D890C 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz, Rob,

On Thu, 2020-05-21 at 19:35 +0000, Tomasz Figa wrote:
> Hi Rob,
> 
> On Mon, May 11, 2020 at 11:02:07AM -0500, Rob Herring wrote:
> > On Sat, May 09, 2020 at 04:06:26PM +0800, Dongchun Zhu wrote:
> > > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 184 +++++++++++++++++++++
> > >  MAINTAINERS                                        |   7 +
> > >  2 files changed, 191 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > new file mode 100644
> > > index 0000000..5468d1b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > > @@ -0,0 +1,184 @@
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
> > > +    description: I2C device address
> > 
> > Drop this. Nothing specific to this device.
> > 
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: top mux camtg clock
> > > +      - description: devider clock
> > 
> > typo
> > 
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
> > > +    maxItems: 1
> > > +
> > > +  reset-gpios:
> > > +    maxItems: 1
> 
> I asked a question about defining GPIO polarities some time ago, but I
> guess it slipped through.
> 
> The chip documentation calls the reset pin as "RST_PAD (low level
> reset)". Where should the inversion be handled, in the driver or here,
> by having the DT include a necessary flag in the specifier?
> 
> Best regards,
> Tomasz

For powerdown-gpios and reset-gpios, I actually defined two totally
different GPIO polarities in DT according to OV02A10 chip documentation.
One is GPIO_ACTIVE_LOW, the other is GPIO_ACTIVE_HIGH (see examples
below).

So I'm wondering if we could add such one polarity-flag that Tomasz
suggested.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
