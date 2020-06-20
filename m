Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB907202288
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 10:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wz8D5Ts+7i6Vktn3w08SY4d9HRg4oqVc9/sS2MzSBlk=; b=t/lEBzL1S+WC9V
	oSydPx3f2oqexIDCFpHKwuhX9Nsl5t9B0q8eMML7MdL5p8ThbJc6zAEHj328m+gElT/arxoqPqTxv
	+INX9OSdaka9MTYFZ0UewB3BgkZZfZ0lI+39zY97VNSneZ3SN2Ezu4/nJ9sdpwdHXxfot2mkp6b9q
	AHYDoBV8FQ6eyVAFm2xgsuH68hiXInUYvS0eiX0Gq7CX0kFYRnNBJiVlHLbS7Dujhs0817NpCV+hl
	8DKhN2z1gQF3IfiQPizVtSu81K8a9tTLx0PzdKLIyBoz/T4PIgrkwd0Qv4bWxlEOxoP84dgWVA8dL
	3v4LYGx4h/CM7jY/PSJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmYZu-0008Hg-Vr; Sat, 20 Jun 2020 08:10:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmYZg-0006wP-PP; Sat, 20 Jun 2020 08:10:06 +0000
X-UUID: c7eafeab8af74e4e89fdac868c8c3364-20200620
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=LuqsD+9fiN2lbFcHMP7DdOurh+jzglg3Fw7+z8J7wlk=; 
 b=D4QugH2KtbTPIDAo/1AKY0beehS7jeHrNHQzdcRxFjyhimScv9Z9akH2ZvErns9qbRVqSsnwFRfd3li3eoabtLWz2Uy1tm3XCpUBcz9u7/WxgrfyJ5nKA+uB5QzPpi7u8Ezlil7RJvrLC/BDWsIKAIH/cIycz2WGpeEX4J6Hg48=;
X-UUID: c7eafeab8af74e4e89fdac868c8c3364-20200620
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 414303590; Sat, 20 Jun 2020 00:09:51 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 20 Jun 2020 00:59:58 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 20 Jun 2020 15:59:54 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 20 Jun 2020 15:59:54 +0800
Message-ID: <1592639841.8804.720.camel@mhfsdcap03>
Subject: Re: [PATCH V10 1/2] media: dt-bindings: media: i2c: Document
 OV02A10 bindings
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 20 Jun 2020 15:57:21 +0800
In-Reply-To: <20200618191332.GB73379@chromium.org>
References: <20200615122937.18965-1-dongchun.zhu@mediatek.com>
 <20200615122937.18965-2-dongchun.zhu@mediatek.com>
 <20200618191332.GB73379@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 63B8FA9AB489015592CF4E8009CC603B34CB263B9B48686989F7BDC7D8E93AB32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_011004_840672_2F8F5EF2 
X-CRM114-Status: GOOD (  20.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

Thanks for the review.

On Thu, 2020-06-18 at 19:13 +0000, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Mon, Jun 15, 2020 at 08:29:36PM +0800, Dongchun Zhu wrote:
> > Add DT bindings documentation for Omnivision OV02A10 image sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../bindings/media/i2c/ovti,ov02a10.yaml           | 171 +++++++++++++++++++++
> >  MAINTAINERS                                        |   7 +
> >  2 files changed, 178 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > new file mode 100644
> > index 0000000..f84be1b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ovti,ov02a10.yaml
> > @@ -0,0 +1,171 @@
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
> > +      - description: divider clock
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
> > +      Definition of the regulator used as Digital I/O voltage supply.
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as Analog voltage supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as Digital core voltage supply.
> > +
> > +  powerdown-gpios:
> > +    description:
> > +      Must be the device tree identifier of the GPIO connected to the
> > +      PD_PAD pin. This pin is used to place the OV02A10 into Standby mode
> > +      or Shutdown mode. As the line is active low, it should be
> > +      marked GPIO_ACTIVE_LOW.
> 
> This line is not active low. It needs to be high for the powerdown mode
> to be active.
> 

Sorry, I made a misunderstanding of the real meaning of 'line active'.
For PD_PAD pin, 'effective' means 'sensor is shut down'.
Yes, it's a 'shut down' signal, not a 'enable' signal.

> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description:
> > +      Must be the device tree identifier of the GPIO connected to the
> > +      RST_PD pin. If specified, it will be asserted during driver probe.
> > +      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
> 
> This line is not active high. It needs to be low for the reset to be
> active.
> 

Fixed in next release.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
