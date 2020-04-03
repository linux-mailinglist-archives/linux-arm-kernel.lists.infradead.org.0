Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B819E178
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 01:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeTGQFo3fGf+sjMgeggCrPHIYeOb1orNXBwnItkXKto=; b=ELhn26jcacwHvX
	JgkB4MXNW0F+ekuOi1kSnnFgwqHG2fLrzhDKBfHsUMRVw2dbSAVK6tocmX7Yqs9cCN7r4V7ZmwQdC
	3ZRucG80k1q93jraueiKOvU/sjE7Kj/jaw4I0B4/XJytENxs/4CLsUOVFtbhIfBH5mlFsaillC5kA
	iDenzAqkBsPtcxWpfcoJ1Dn6Ajh/irbbKP+jiHQKXVN86YFf4xL8ks+oel07rPnv9vOg/umFmiu5j
	MvLFmgohgeCKoXVtTt0Z3LKEkhuflFf8iI3eA2X8QmOG1jRB+E58ucIWS0SvXKiUnKSWOYMtvOSeq
	iPbAcn8VJH3DVia3P7JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKVkA-0007Zh-Sb; Fri, 03 Apr 2020 23:28:58 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKVjx-0007Z1-4I
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 23:28:47 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 78475634C8C;
 Sat,  4 Apr 2020 02:27:37 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jKViq-0001ju-HC; Sat, 04 Apr 2020 02:27:36 +0300
Date: Sat, 4 Apr 2020 02:27:36 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_162845_553657_135203CA 
X-CRM114-Status: GOOD (  29.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Thu, Apr 02, 2020 at 12:10:00PM +0200, Robert Foss wrote:
> Hey Maxime,
> 
> On Wed, 1 Apr 2020 at 10:07, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Tue, Mar 31, 2020 at 03:33:44PM +0200, Robert Foss wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > >
> > > This patch adds documentation of device tree in YAML schema for the
> > > OV8856 CMOS image sensor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > > ---
> > >
> > > - Changes since v5:
> > >   * Add assigned-clocks and assigned-clock-rates
> > >   * robher: dt-schema errors
> > >
> > > - Changes since v4:
> > >   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
> > >   * Add clock-lanes property to example
> > >   * robher: Fix syntax error in devicetree example
> > >
> > > - Changes since v3:
> > >   * robher: Fix syntax error
> > >   * robher: Removed maxItems
> > >   * Fixes yaml 'make dt-binding-check' errors
> > >
> > > - Changes since v2:
> > >   Fixes comments from from Andy, Tomasz, Sakari, Rob.
> > >   * Convert text documentation to YAML schema.
> > >
> > > - Changes since v1:
> > >   Fixes comments from Sakari, Tomasz
> > >   * Add clock-frequency and link-frequencies in DT
> > >
> > >  .../devicetree/bindings/media/i2c/ov8856.yaml | 150 ++++++++++++++++++
> > >  MAINTAINERS                                   |   1 +
> > >  2 files changed, 151 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > new file mode 100644
> > > index 000000000000..beeddfbb8709
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > @@ -0,0 +1,150 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright (c) 2019 MediaTek Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Ben Kao <ben.kao@intel.com>
> > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > +
> > > +description: |-
> > > +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
> > > +  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
> > > +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> > > +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> > > +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> > > +  serial data output (up to 4-lane).
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: ovti,ov8856
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
> > > +      - const: xvclk
> > > +
> > > +  clock-frequency:
> > > +    description:
> > > +      Frequency of the xvclk clock in Hertz.
> >
> > We also had that discussion recently for another omnivision sensor
> > (ov5645 iirc), but what is clock-frequency useful for?
> >
> > It seems that the sensor is passed in clocks, so if you need to
> > retrieve the clock rate you should use the clock API instead.
> >
> > Looking at the driver, it looks like it first retrieves the clock, set
> > it to clock-frequency, and then checks that this is OV8856_XVCLK_19_2
> > (19.2 MHz).
> 
> As far as I understand it, 19.2MHz is requirement for the sensor mode
> that currently defaults to. Some modes require higher clock speeds
> than this however.

It's very system specific. Either way, bindings should not assume a
particular driver implementation.

> 
> >
> > The datasheet says that the sensor can have any frequency in the 6 -
> > 27 MHz range, so this is a driver limitation and should be set in the
> > driver using the clock API, and you can always bail out if it doesn't
> > provide a rate that is not acceptable for the drivers assumption.
> >
> > In any case, you don't need clock-frequency here...
> 
> So your suggestion is that we remove all clocks-rate properties, and
> replace the clk_get_rate() calls in the driver with clk_set_rate()
> calls for the desired frequencies?

The driver shouldn't set the rate here unless it gets it from DT (but that
was not the intention). So the driver should get the frequency instead.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
