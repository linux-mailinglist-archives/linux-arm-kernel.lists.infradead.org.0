Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE641BA799
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 17:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GN+rONkBy3CQ4ySXPk0SzL0aghvsOjXOAxPtvfdlow0=; b=IpnJqfvBrxflte
	5Pq721oE4wTa9reae2IK/Z0si8mn7huRtsaWfzf+fimPNKS6NCFqDydvU0H6xRz93RiWTCGlczvu2
	SpKHdLZKdzW+TmnxZBLnOe+RViiq3hEdISSr7X77F6LfUFV/PMpbtQPwGx5+YjjHldvBNBKpcwZV6
	1UVecBZPFItzMQnSWItrSB+u2kckXgmJHGgv/zW06KJ4An7ksSpJUG5RzlJG6nTC69UPSTtmfPme8
	+CMTKsliPy3nweephpZtasfCXFSTG6kFj93yQt5kg0b3PGx/2ZgWxw6E+vbFWq5MkvxfNUuLMyUOR
	FlgNcBBorkYayzglgQUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT5SR-00080B-8a; Mon, 27 Apr 2020 15:14:07 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT5SE-0007zC-4R
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 15:13:56 +0000
Received: by mail-ot1-x342.google.com with SMTP id z17so26787529oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 08:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JyOOuDBdhDHCyrtMWupVwHA7jGZfK6Hra8xOfCJhk28=;
 b=cVBs97ebH2wPdx+Zc1P9Bai9A1CcFRrGPxxCFhYEmXu29eCFYh2ixJV0w1Q9gR859h
 6M3fMQrDGCtv7zhp6nyOzsMB6bTpYVUtUrtVYBq20H9FL1pEfQ+L7S47FflJO9aF1bhe
 uWyyIYcDjZLwNFGia2v8KqgzIS4JjE0d3NgkFZh5w9iwT+TK80fUpRO3CdqLUk8KD444
 gvc7eRQ+gARdNBANSJXlbtPyCV/FIFGdPOixWe07ihJlFUH3kHu9nTcPYHEm1+JKFOS8
 AI6gWEeuMvsgH+tU33TPTmW7AJk/K6HJvNyZrOgmuQZ10V3ru1nhyTLbNXcsmj4LHImp
 noXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JyOOuDBdhDHCyrtMWupVwHA7jGZfK6Hra8xOfCJhk28=;
 b=grMhkaj3ySoNPxxhZe80LINSZSNOI2GEUd2CKibqvI/rPXpODa+xDZnwTFwU41XOM1
 yH6lv1ckdxldSPSbfnY0Fq/XrFBrvJhV+bg+bwuniMO1mxOVc61TVAZncShtVbtuXCuN
 p+5aPy9LOtlTTjGbz4JsHxfv3FdDj1wVhLx8Qk/7xDhEz6RtBqdTlxJ4qZqvKqehb9I3
 ZMpikAuqwy8eKa2W5QoyYFQHFsiXEx4aRzHw71J/mBF8Wm7sZ8nUPYJ6jupUm4zGkxk5
 gDuzR18vTiKgdFl47vMtkDVOzMS9cJr00YaXobD2j9Z2vYwcLGx3XTpsYI1zSRprBgzV
 xGvA==
X-Gm-Message-State: AGi0Pub9SMUr+AEtbL8Q5BKh6gpOrJieuaA84l0NzIOjwGfnKt6R4Gmw
 6xyVT300oozTYFshDKg1qUhiFS4Fm9SwYhwxrfNCRw==
X-Google-Smtp-Source: APiQypJT8+obI+JM5Kf9FL9d3dn4801RIOxgtgQe+uH23FuQU10gMaRw40e/70Zbe4CMStqd+6go7h7Ai1urT28IZqo=
X-Received: by 2002:aca:843:: with SMTP id 64mr17065470oii.56.1588000433147;
 Mon, 27 Apr 2020 08:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200408110816.2712841-1-robert.foss@linaro.org>
 <20200408110816.2712841-2-robert.foss@linaro.org>
 <20200415160729.GA4438@bogus>
 <20200415162110.bmorj4u4hkqohqjx@pengutronix.de>
In-Reply-To: <20200415162110.bmorj4u4hkqohqjx@pengutronix.de>
From: Robert Foss <robert.foss@linaro.org>
Date: Mon, 27 Apr 2020 17:13:42 +0200
Message-ID: <CAG3jFysg34=HJ7xefuAKw4Uq6W0POm5TsJmzQku6WwkhH_j=-w@mail.gmail.com>
Subject: Re: [PATCH v7 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_081354_187339_6923CF9F 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 18:21, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> On 20-04-15 11:07, Rob Herring wrote:
> > On Wed, Apr 08, 2020 at 01:08:14PM +0200, Robert Foss wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > >
> > > This patch adds documentation of device tree in YAML schema for the
> > > OV8856 CMOS image sensor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > > ---
> > >
> > > - Changes since v6:
> > >   * Marco: remove qcom specifics from DT example
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
> > >  .../devicetree/bindings/media/i2c/ov8856.yaml | 143 ++++++++++++++++++
> > >  MAINTAINERS                                   |   1 +
> > >  2 files changed, 144 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > new file mode 100644
> > > index 000000000000..96bef5403d7e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > @@ -0,0 +1,143 @@
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
> > > +  assigned-clocks:
> > > +    description:
> > > +      Input clock for the sensor.
> > > +
> > > +  assigned-clock-rates:
> > > +    description:
> > > +      Frequency of the xvclk clock in Hertz.
> >
> > These 2 should have a 'maxItems: 1'
>
> Don't know why those properties are needed here.. IMHO this shouldn't be
> part of the binding or at least it should be optional and not required.
> All we need is the clocks and the clock-names property.

Thanks Marco, I'll make it optional for the next revision.

>
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
> > > +  reset-gpios:
> > > +    description:
> > > +      The phandle and specifier for the GPIO that controls sensor reset.
> > > +      This corresponds to the hardware pin XSHUTDOWN which is physically
> > > +      active low.
> > > +
> > > +  port:
> > > +    type: object
> > > +    additionalProperties: false
> > > +    description:
> > > +      A node containing input and output port nodes with endpoint definitions
> >
> > Only an output, right?
> >
> > > +      as documented in
> > > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > > +
> > > +    properties:
> > > +      endpoint:
> > > +        type: object
> > > +
> > > +        properties:
> > > +          clock-lanes:
> > > +            maxItems: 1
> > > +
> > > +          data-lanes:
> > > +            maxItems: 1
> > > +
> > > +          remote-endpoint: true
> > > +
> > > +        required:
> > > +          - clock-lanes
> > > +          - data-lanes
> > > +          - remote-endpoint
> > > +
> > > +    required:
> > > +      - endpoint
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - assigned-clocks
> > > +  - assigned-clock-rates
> > > +  - dovdd-supply
> > > +  - avdd-supply
> > > +  - dvdd-supply
> > > +  - reset-gpios
> > > +  - port
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    i2c {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        ov8856: camera@10 {
> > > +            compatible = "ovti,ov8856";
> > > +            reg = <0x10>;
> > > +
> > > +            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
> > > +            pinctrl-names = "default";
> > > +            pinctrl-0 = <&clk_24m_cam>;
> > > +
> > > +            clocks = <&cam_osc>;
> > > +            clock-names = "xvclk";
> > > +            assigned-clocks = <&cam_osc>;
> > > +            assigned-clock-rates = <19200000>;
> > > +
> > > +            avdd-supply = <&mt6358_vcama2_reg>;
> > > +            dvdd-supply = <&mt6358_vcamd_reg>;
> > > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > > +
> > > +            port {
> > > +                wcam_out: endpoint {
> > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > +                    clock-lanes = <0>;
> > > +                    data-lanes = <1 2 3 4>;
> > > +                    link-frequencies = /bits/ 64 <360000000 180000000>;
> > > +                };
> > > +            };
> > > +        };
> > > +    };
> > > +...
> > > \ No newline at end of file
> >
> > ^^^
> >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 534a8dc4f84a..3f35c6e9700a 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -12465,6 +12465,7 @@ L:  linux-media@vger.kernel.org
> > >  T: git git://linuxtv.org/media_tree.git
> > >  S: Maintained
> > >  F: drivers/media/i2c/ov8856.c
> > > +F: Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > >
> > >  OMNIVISION OV9650 SENSOR DRIVER
> > >  M: Sakari Ailus <sakari.ailus@linux.intel.com>
> > > --
> > > 2.25.1
> > >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
