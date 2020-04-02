Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F264A19BF1D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ4zXY8kqZhwZ5RfvxVpYpdEmiQ0lFytNX241JwyCzc=; b=Nu3bNNg3nv9CSq
	GhNZHiH0aVb9KryFzwRxlEBp3lm+NDRUofMX8sy/Bs5AN/TTba8+X3ck2K3+J7g0nHOhPP2x48vbq
	bG/5V24YpHqCmyf6S2hnlQ6YVnrrCKQsLRqj8dGZEgFTYx4q3fFzfVzPBd64Xq5oBMTICshnXk6rL
	96D381/lusTznGSI1ezSTtGIBJkulf3w4kEurHpvE2qdBtdaDPwyCDPrGy1rGe/MClap1Z/4KAF/A
	xilB31GjUHctQGTKOWddNKHBoNTG6anAMK/BKUC6aYaYT1SKkdHyrE3zEVEfZFhS1FpkZjBUxiKgt
	5C2tYVD/1H4G58j4pFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwnm-0003aM-FB; Thu, 02 Apr 2020 10:10:22 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwnf-0003Yv-HE
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:10:17 +0000
Received: by mail-ot1-x344.google.com with SMTP id f52so2802288otf.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 03:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MRdlSIlWiqiUEn9v/+BSCM98gAfMn515+Qx9Pso1+1M=;
 b=eihORtTgxTZlcrTJ/9m6HDeGAe36CEbjF+saO5ljAmLWT/D8IrrbD/k7YTxI3xWXO4
 ylnchmXj5sp9VZ7zqA/HMR7QDWFcrBNQcuwNPbNnQ4dMocOW51OLPY7OTJak3JK+Oqwp
 GJzYConXFZ8RL2W+vQ+t4j9yLNaKA5VskegVJPg0L9KNMDortPbE8UtViAiQ3oQZiqeT
 1C6N66XvBAyAOgQRTKQBfB7K6CRqR/HMkJsA/8LbB6Sa9nSQ2ohnRRwPAUntCv1JAQ84
 /GgKhieuyOZS50zZ7AjXCxCpmCE+LFNkJl6FW2xiKh2c8FWNGJI4LJFGlhKdoGpRw8/X
 Uvaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MRdlSIlWiqiUEn9v/+BSCM98gAfMn515+Qx9Pso1+1M=;
 b=Ommcp+H5a0s1TTuo5gBtahsM1hkLtIePbRFuQ1R5PxkbAoIFqgMV4jjrw+jYNTCSLz
 3cY4MM/k7zmmQ0A/khv/vnSZ0iIGNai3EHImtafXHex76EEQ5FopKPCqOGuOXf27WcI6
 b4GywCin8PXxdDwv6ZyKXrmuOaOWzyqv4dnf2P9jgLvXITYvTyK8TIm29AkdZdmWySBN
 RLbLo3OBc103BxPm000ewGfaWRNi8WE3GIxJ+YvvMRB6Zx+cNNSAdhdPTvEtjMCYpnSS
 H8sacyVtknYFn9cQXqPkiDZKIJlVQoH36csHhOapxRY7TGmW1n7Fh+Jv8iiA9n7Mr1s4
 1veQ==
X-Gm-Message-State: AGi0PuYrLi59VRWyKtDfXitijbTbGq3kqrSXx6gOj/qFrdieetenevsF
 sw+Kl9EPD8vHIhAN2qRIiDX6J+9ueqe5yw/JuS4xfg==
X-Google-Smtp-Source: APiQypKBm/Lg+9lw65OG6XgOJFxflgoP4WFpsTputiWXnE3eeGtQPAOXhxBX+bGTFsX8n8K4MxbqvgyMTSSGZvo3ZmQ=
X-Received: by 2002:a9d:6c88:: with SMTP id c8mr1673754otr.272.1585822211618; 
 Thu, 02 Apr 2020 03:10:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
In-Reply-To: <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 2 Apr 2020 12:10:00 +0200
Message-ID: <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_031015_584283_BA93AAA7 
X-CRM114-Status: GOOD (  27.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Maxime,

On Wed, 1 Apr 2020 at 10:07, Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Tue, Mar 31, 2020 at 03:33:44PM +0200, Robert Foss wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >
> > This patch adds documentation of device tree in YAML schema for the
> > OV8856 CMOS image sensor.
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >
> > - Changes since v5:
> >   * Add assigned-clocks and assigned-clock-rates
> >   * robher: dt-schema errors
> >
> > - Changes since v4:
> >   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
> >   * Add clock-lanes property to example
> >   * robher: Fix syntax error in devicetree example
> >
> > - Changes since v3:
> >   * robher: Fix syntax error
> >   * robher: Removed maxItems
> >   * Fixes yaml 'make dt-binding-check' errors
> >
> > - Changes since v2:
> >   Fixes comments from from Andy, Tomasz, Sakari, Rob.
> >   * Convert text documentation to YAML schema.
> >
> > - Changes since v1:
> >   Fixes comments from Sakari, Tomasz
> >   * Add clock-frequency and link-frequencies in DT
> >
> >  .../devicetree/bindings/media/i2c/ov8856.yaml | 150 ++++++++++++++++++
> >  MAINTAINERS                                   |   1 +
> >  2 files changed, 151 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > new file mode 100644
> > index 000000000000..beeddfbb8709
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > @@ -0,0 +1,150 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright (c) 2019 MediaTek Inc.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> > +
> > +maintainers:
> > +  - Ben Kao <ben.kao@intel.com>
> > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +
> > +description: |-
> > +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
> > +  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
> > +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> > +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> > +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> > +  serial data output (up to 4-lane).
> > +
> > +properties:
> > +  compatible:
> > +    const: ovti,ov8856
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    description:
> > +      Input clock for the sensor.
> > +    items:
> > +      - const: xvclk
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the xvclk clock in Hertz.
>
> We also had that discussion recently for another omnivision sensor
> (ov5645 iirc), but what is clock-frequency useful for?
>
> It seems that the sensor is passed in clocks, so if you need to
> retrieve the clock rate you should use the clock API instead.
>
> Looking at the driver, it looks like it first retrieves the clock, set
> it to clock-frequency, and then checks that this is OV8856_XVCLK_19_2
> (19.2 MHz).

As far as I understand it, 19.2MHz is requirement for the sensor mode
that currently defaults to. Some modes require higher clock speeds
than this however.

>
> The datasheet says that the sensor can have any frequency in the 6 -
> 27 MHz range, so this is a driver limitation and should be set in the
> driver using the clock API, and you can always bail out if it doesn't
> provide a rate that is not acceptable for the drivers assumption.
>
> In any case, you don't need clock-frequency here...

So your suggestion is that we remove all clocks-rate properties, and
replace the clk_get_rate() calls in the driver with clk_set_rate()
calls for the desired frequencies?

>
> > +  assigned-clocks:
> > +    description:
> > +      Input clock for the sensor.
> > +
> > +  assigned-clock-rates:
> > +    description:
> > +      Frequency of the xvclk clock in Hertz.
>
> And you don't need assigned-clock-rates either.

Ack.

>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
