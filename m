Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06DF019BEF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipdadPgod5tY0pfO/k0P1v0GEMN9pKFKLK282cvDib4=; b=eImxE5vnAq8Ws8
	9gzH6V/hKreQ/Ts9a6bCMdoUigSqjC2zm+AbEnociwXAp4nHAiNpbdqoy0cIwR87+F6Lv5kDpN1xu
	vMoCKqJXP/FU5ZkwpyYnGmWW7qEYYk9XbYqWVsJaTSPM9h16+eqwR9gyGDYKEWkh6iqPKzvSOHLyO
	Hmy3+cebu9ekOgO0imF70UigOC+I79Up5JiUfb73NpMxrLva9C9W4820QvrI9q2GG3Uke9w/zYxZV
	Y/1tL/G8JN+aBdw1YNxYOl1dmIgtNqfIXXPWNQgHftJCAoOSK6JkZd69VXijOyeK9i7BNVLK6dF/P
	ZA5W4/P7sbTOUY7AS4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwbL-0003Ls-Op; Thu, 02 Apr 2020 09:57:31 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwbD-0003Kl-8L
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:57:26 +0000
Received: by mail-ot1-x342.google.com with SMTP id l23so2811213otf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Apr 2020 02:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7BONJVnKzuVhtjjNj+qftoNDxpPeWoFQFGqO2BllZ4=;
 b=RlrMaBDl00mz5wHT4OGSuNFqsCyjlszw2abHjiHD3AUxmMEGyUTX1P09R9ovOsGTAk
 AUgtBVGV0tova9mq6fSrTsS1/wdwaS5aZALgGP4iMWn+93lB3xUJOtxC6Tn/rk8llQH+
 QzWQnhhchF7mK+qv+rpfXEmPDtMctDhXEO0vIOzyIBgBzApFDCkMUwHx5VC7z5YDIcX9
 QpTvWFaLRnvhvv75fXJ+AN7f+oyLe+SZE8urzCsCxn0NTZ/TuzDz+Pczq0d17RegcRYT
 xfzSoXzH1+SVHB6fKoty/+ltaR7NsJPVoKDNGgd2sD0RVWRjw6f2NQI7uAiE+wDoJdVI
 Lz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7BONJVnKzuVhtjjNj+qftoNDxpPeWoFQFGqO2BllZ4=;
 b=ENrhJwMN01NxX9ar0c6ptIrDLNWcIwgiHTHLue0V8tm4cAHt1dwh2Pi5OX9c9AG2J2
 TsgY+H+W5aXRS4FEbYT93Lm3lBmM7YXMy/4UBCOxeIQTFU3rj1dcuRNxomRWCq/bjS90
 jgvuAbAD8qOhpRBXVbjyD1A1e9pRgbG0+YDF3cTit3JbwoGTaKMntTUGn+PowqwAqn+l
 vM+/TLkyVbsEQIO4mUIkJeefHe+m8CsojEWac+oWNlS4nhGFu9aH69KeBEI5lSJ2auec
 Bu0zmWSrgmJkPHRupiu601gM1tkH1QNh67oz9BIPQLDe9StfpmOZqZ0J+I6/wyQoK67u
 7s0Q==
X-Gm-Message-State: AGi0PubF9BVKk981F7vealcXiCgVe9mHriLqnHrYvoI2dlrWsRcKhhQQ
 WMhoxz9VHjvNpbu6dbL+t9810qNmn1Ywl4Gc4N6y0Q==
X-Google-Smtp-Source: APiQypJvsIEDz687agNDV5HB9tocDbOrr7IGIaIt4p+7ALU7k2BUZOZdtADN61SUSI+h6xq4jL10+O07CT29CbXFI1U=
X-Received: by 2002:a9d:27a7:: with SMTP id c36mr1717257otb.68.1585821441364; 
 Thu, 02 Apr 2020 02:57:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200331151253.q6ody3erhvsabznz@pengutronix.de>
In-Reply-To: <20200331151253.q6ody3erhvsabznz@pengutronix.de>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 2 Apr 2020 11:57:10 +0200
Message-ID: <CAG3jFyvBmfwoSoKxZJPh2VcJe2aCYGWRRNmkuky3wU2jOsRwBQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_025723_816040_DC7E7FE6 
X-CRM114-Status: GOOD (  28.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

'Hey Marco,

On Tue, 31 Mar 2020 at 17:13, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Robert,
>
> On 20-03-31 15:33, Robert Foss wrote:
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
> Why do we need this here?
>
> > +  assigned-clocks:
> > +    description:
> > +      Input clock for the sensor.
> > +
> > +  assigned-clock-rates:
> > +    description:
> > +      Frequency of the xvclk clock in Hertz.
>
> Also this isn't related to the chip. You need this because you are using
> a qcom platform which provides the clock.
>
> IMHO you only need to specify the clock. You can get the frequency with
> the clk_get_rate() function.

The way I understood this, was that clk_get_rate() would fetch the
clock rate as defined by the 'assigned-clock-rates'
Is this not the case? And if so, what rate would cllk_get_rate()
actually retrieve?

>
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
>
> Phandle to the interface power supply regulator?
>
> > +
> > +  avdd-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  dvdd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  reset-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor reset.
> > +      This corresponds to the hardware pin XSHUTDOWN which is physically
> > +      active low.
> > +
> > +  port:
> > +    type: object
> > +    additionalProperties: false
> > +    description:
> > +      A node containing input and output port nodes with endpoint definitions
> > +      as documented in
> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
> > +
> > +    properties:
> > +      endpoint:
> > +        type: object
> > +
> > +        properties:
> > +          clock-lanes:
> > +            maxItems: 1
> > +
> > +          data-lanes:
> > +            maxItems: 1
> > +
> > +          remote-endpoint: true
> > +
> > +        required:
> > +          - clock-lanes
> > +          - data-lanes
> > +          - remote-endpoint
> > +
> > +    required:
> > +      - endpoint
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - clock-frequency
> > +  - assigned-clocks
> > +  - assigned-clock-rates
> > +  - dovdd-supply
> > +  - avdd-supply
> > +  - dvdd-supply
> > +  - reset-gpios
> > +  - port
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    #include <dt-bindings/clock/qcom,camcc-sdm845.h>
>
> IMHO we should avoid examples with hardware specific includes.

The HW specific include is used for the clocks property.
clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;

Is there a non hw specific clock that would be better to use for examples?

>
> > +
> > +    i2c {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        ov8856: camera@10 {
> > +            compatible = "ovti,ov8856";
> > +            reg = <0x10>;
> > +
> > +            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
> > +            pinctrl-names = "default";
> > +            pinctrl-0 = <&clk_24m_cam>;
> > +
> > +            clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
> > +            clock-names = "xvclk";
> > +            clock-frequency = <19200000>;
> > +            assigned-clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
> > +            assigned-clock-rates = <19200000>;
> > +
> > +            avdd-supply = <&mt6358_vcama2_reg>;
> > +            dvdd-supply = <&mt6358_vcamd_reg>;
> > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > +
> > +            port {
> > +                wcam_out: endpoint {
> > +                    remote-endpoint = <&mipi_in_wcam>;
> > +                    clock-lanes = <0>;
> > +                    data-lanes = <1 2 3 4>;
> > +                    link-frequencies = /bits/ 64 <360000000 180000000>;
>
> Should we add the link-frequencies as optional param?
>
> Regards,
>   Marco
>
> > +                };
> > +            };
> > +        };
> > +    };
> > +...
> > \ No newline at end of file
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index a6fbdf354d34..0f99e863978a 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12355,6 +12355,7 @@ L:    linux-media@vger.kernel.org
> >  T:   git git://linuxtv.org/media_tree.git
> >  S:   Maintained
> >  F:   drivers/media/i2c/ov8856.c
> > +F:   Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> >
> >  OMNIVISION OV9650 SENSOR DRIVER
> >  M:   Sakari Ailus <sakari.ailus@linux.intel.com>
> > --
> > 2.25.1
> >
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
