Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97639AE5D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 10:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRV6S2W3/UZbjuojUMt5mdYSJp9F4bZRasKSkAdyuEQ=; b=Pilx8420KUCIUx
	KCe7W3XVqtuk3wS/aIhOYH0mn9nmLJY7ZB09F+XaWtnRXFFuFvl5jmKzPB9EIj38EKAgUobUQFVqi
	6/EAXQC9oxsPxN0RMwrxdVt6Bb5aki0bkJA7NljcHILvlct9RHM80jRaDwaYFy8YAZ6ZtwdeGSv2G
	s0AOD63Q//13afP4WsQ2JyBxr2qcGG+HtYw91ktqcmY9wFudwwqvOAAHI+getZN4BUuva4YfDAXWv
	wBZdqZz2huV1Sx89FOsBtcGmFJNM36b8ftDmtYNfAj5L7ZQYSvLdBfsD01YXZ9XXxwllexVk3gxAU
	LTOesbmsEAJIKnawTVig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7bl4-0004GD-JU; Tue, 10 Sep 2019 08:44:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7bkp-0004FL-D1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 08:44:05 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9184221019
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 08:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568105043;
 bh=n2FnhZvZY86zGRCH5evX7+DlwR5AirNLeqrX264yekM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WGvVjLQnna3RHEQHkRDscbt3Ik/jfL3ZnXeYEqdrfAFAePXoFEAayA+WzjDzN7gIS
 xL1qRcZn3mgpDQ6EXyLYRfY0RC0wW1jiBxyr+WKDPbRZJTCzLutJAlLtjzWjIIUyOk
 hfiWd2G/HUc5TfWUFWoPoHQWGB+Nyb25AE7TB+PA=
Received: by mail-lf1-f53.google.com with SMTP id r134so12744641lff.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 01:44:02 -0700 (PDT)
X-Gm-Message-State: APjAAAU/Z5xfZ9pqK8JTYocYS8XFlcmpgaPrZyXDEevVScqDwrYY7fJz
 dQzNCSvaB1g+BQQz8CNdo+FIPVfYqr9t354UgkY=
X-Google-Smtp-Source: APXvYqyXRx393/LoDIHBKgAXm7I9lWbgJlOjw6C1wPm1MmUEsJ2qFw1Q5BapRrLrck9Q02orzG3OjXJU3ctiAn/YZg0=
X-Received: by 2002:a19:770a:: with SMTP id s10mr1997656lfc.30.1568105040685; 
 Tue, 10 Sep 2019 01:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190909183436.9045-1-krzk@kernel.org>
 <CAL_JsqJpZ-64Y7p1w5ctMwbjdftQPLjeh3XRHkBeS6tfYY0a+A@mail.gmail.com>
In-Reply-To: <CAL_JsqJpZ-64Y7p1w5ctMwbjdftQPLjeh3XRHkBeS6tfYY0a+A@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 10 Sep 2019 10:43:49 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf2b5QsNWq_7D0tyXuEcp93F_CsxEkAze_oV8Z07oNJXA@mail.gmail.com>
Message-ID: <CAJKOXPf2b5QsNWq_7D0tyXuEcp93F_CsxEkAze_oV8Z07oNJXA@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: pwm: Convert PWM bindings to
 json-schema
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_014403_478904_EE83F8D5 
X-CRM114-Status: GOOD (  30.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Linux PWM List <linux-pwm@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Maciej Falkowski <m.falkowski@samsung.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Linux LED Subsystem <linux-leds@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Sep 2019 at 10:33, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Sep 9, 2019 at 7:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >
> > Convert generic PWM bindings to DT schema format using json-schema.  The
> > consumer bindings are split to separate file.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  .../devicetree/bindings/clock/pwm-clock.txt   |  2 +-
> >  .../bindings/display/bridge/ti,sn65dsi86.txt  |  2 +-
> >  .../devicetree/bindings/display/ssd1307fb.txt |  2 +-
> >  .../bindings/leds/backlight/pwm-backlight.txt |  2 +-
> >  .../devicetree/bindings/leds/leds-pwm.txt     |  2 +-
> >  .../devicetree/bindings/mfd/max77693.txt      |  2 +-
> >  .../bindings/pwm/atmel-hlcdc-pwm.txt          |  2 +-
> >  .../devicetree/bindings/pwm/atmel-pwm.txt     |  2 +-
> >  .../devicetree/bindings/pwm/atmel-tcb-pwm.txt |  2 +-
> >  .../bindings/pwm/brcm,bcm7038-pwm.txt         |  2 +-
> >  .../bindings/pwm/brcm,iproc-pwm.txt           |  2 +-
> >  .../devicetree/bindings/pwm/brcm,kona-pwm.txt |  2 +-
> >  .../devicetree/bindings/pwm/img-pwm.txt       |  2 +-
> >  .../devicetree/bindings/pwm/imx-pwm.txt       |  2 +-
> >  .../devicetree/bindings/pwm/imx-tpm-pwm.txt   |  2 +-
> >  .../bindings/pwm/lpc1850-sct-pwm.txt          |  2 +-
> >  .../devicetree/bindings/pwm/mxs-pwm.txt       |  2 +-
> >  .../bindings/pwm/nvidia,tegra20-pwm.txt       |  2 +-
> >  .../bindings/pwm/nxp,pca9685-pwm.txt          |  2 +-
> >  .../devicetree/bindings/pwm/pwm-bcm2835.txt   |  2 +-
> >  .../devicetree/bindings/pwm/pwm-berlin.txt    |  2 +-
> >  .../bindings/pwm/pwm-consumers.yaml           | 76 +++++++++++++++++++
> >  .../devicetree/bindings/pwm/pwm-fsl-ftm.txt   |  2 +-
> >  .../devicetree/bindings/pwm/pwm-hibvt.txt     |  2 +-
> >  .../devicetree/bindings/pwm/pwm-lp3943.txt    |  2 +-
> >  .../devicetree/bindings/pwm/pwm-mediatek.txt  |  2 +-
> >  .../devicetree/bindings/pwm/pwm-meson.txt     |  2 +-
> >  .../devicetree/bindings/pwm/pwm-mtk-disp.txt  |  2 +-
> >  .../bindings/pwm/pwm-omap-dmtimer.txt         |  2 +-
> >  .../devicetree/bindings/pwm/pwm-rockchip.txt  |  2 +-
> >  .../devicetree/bindings/pwm/pwm-sifive.txt    |  2 +-
> >  .../devicetree/bindings/pwm/pwm-stm32-lp.txt  |  2 +-
> >  .../devicetree/bindings/pwm/pwm-stm32.txt     |  2 +-
> >  .../devicetree/bindings/pwm/pwm-tiecap.txt    |  2 +-
> >  .../devicetree/bindings/pwm/pwm-tiehrpwm.txt  |  2 +-
> >  .../devicetree/bindings/pwm/pwm-zx.txt        |  2 +-
> >  Documentation/devicetree/bindings/pwm/pwm.txt | 69 -----------------
> >  .../devicetree/bindings/pwm/pwm.yaml          | 30 ++++++++
> >  .../bindings/pwm/renesas,pwm-rcar.txt         |  2 +-
> >  .../bindings/pwm/renesas,tpu-pwm.txt          |  4 +-
> >  .../devicetree/bindings/pwm/spear-pwm.txt     |  2 +-
> >  .../devicetree/bindings/pwm/st,stmpe-pwm.txt  |  2 +-
> >  .../devicetree/bindings/pwm/ti,twl-pwm.txt    |  2 +-
> >  .../devicetree/bindings/pwm/ti,twl-pwmled.txt |  2 +-
> >  .../devicetree/bindings/pwm/vt8500-pwm.txt    |  2 +-
> >  .../bindings/regulator/pwm-regulator.txt      |  2 +-
> >  .../devicetree/bindings/timer/ingenic,tcu.txt |  2 +-
>
> We've been leaving the .txt file with a reference to the schema file
> to avoid doing all the updates. But as you've done it already, that's
> good.
>
> >  47 files changed, 151 insertions(+), 114 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-consumers.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm.txt
> >  create mode 100644 Documentation/devicetree/bindings/pwm/pwm.yaml
>
> [...]
>
> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml b/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml
> > new file mode 100644
> > index 000000000000..39c844fe6338
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/pwm-consumers.yaml
>
> We already have a PWM consumer schema in dt-schema repository. It
> doesn't have the descriptions because we need permission to relicense.
> My aim is to have all common schema in the dt-schema repo, but we have
> a mixture because of needing to relicense.

I forgot to check it. In such case the pwm-consumers here do not offer
much more, except some description and examples. I guess it can be
just dropped then?

> > @@ -0,0 +1,76 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pwm/pwm-consumers.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Specifying PWM information for devices
> > +
> > +maintainers:
> > +  - Thierry Reding <thierry.reding@gmail.com>
> > +
> > +description: |
> > +  PWM properties should be named "pwms". The exact meaning of each pwms
> > +  property must be documented in the device tree binding for each device.
> > +  An optional property "pwm-names" may contain a list of strings to label
> > +  each of the PWM devices listed in the "pwms" property. If no "pwm-names"
> > +  property is given, the name of the user node will be used as fallback.
> > +
> > +  Drivers for devices that use more than a single PWM device can use the
> > +  "pwm-names" property to map the name of the PWM device requested by the
> > +  pwm_get() call to an index into the list given by the "pwms" property.
> > +
> > +properties:
> > +  pwms:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    description: |
> > +      Phandle to PWM controller node and pwm-specifier (controller specific).
> > +      pwm-specifier typically encodes the chip-relative PWM number and the PWM
> > +      period in nanoseconds.
> > +      Optionally, the pwm-specifier can encode a number of flags (defined in
> > +      <dt-bindings/pwm/pwm.h>) in a third cell:
> > +        - PWM_POLARITY_INVERTED: invert the PWM signal polarity
> > +
> > +  pwm-names:
> > +    $ref: /schemas/types.yaml#/definitions/string-array
> > +    description:
> > +      A list of strings to label each of the PWM devices listed in the "pwms"
> > +      property. If no "pwm-names" property is given, the name of the user node
> > +      will be used as fallback.
> > +
> > +required:
> > +  - pwms
>
> Doing this means every consumer has to include this file where as I do
> 'select: true' some every occurrence of these properties is checked.
> We're generally only including other schema on the provider side.
>
> > +
> > +dependencies:
> > +  pwm-names: [ pwms ]
> > +
> > +examples:
> > +  - |
> > +    // The following example could be used to describe a PWM-based
> > +    // backlight device:
> > +
> > +    pwm: pwm {
> > +      #pwm-cells = <2>;
> > +    };
> > +
> > +    bl: backlight {
> > +      pwms = <&pwm 0 5000000>;
> > +      pwm-names = "backlight";
> > +    };
> > +
> > +    // Note that in the example above, specifying the "pwm-names" is redundant
> > +    // because the name "backlight" would be used as fallback anyway.
> > +
> > +  - |
> > +    // Example with optional PWM specifier for inverse polarity
> > +
> > +    #include <dt-bindings/pwm/pwm.h>
> > +
> > +    pwm2: pwm {
> > +      #pwm-cells = <3>;
> > +    };
> > +
> > +    backlight {
> > +      pwms = <&pwm2 0 5000000 PWM_POLARITY_INVERTED>;
> > +      pwm-names = "backlight";
> > +    };
>
> > diff --git a/Documentation/devicetree/bindings/pwm/pwm.yaml b/Documentation/devicetree/bindings/pwm/pwm.yaml
> > new file mode 100644
> > index 000000000000..5d8029f11ccc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pwm/pwm.yaml
> > @@ -0,0 +1,30 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pwm/pwm.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: PWM controllers (providers)
> > +
> > +maintainers:
> > +  - Thierry Reding <thierry.reding@gmail.com>
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^pwm(@.*)?$"
>
> Copy the pattern for spi. We allow for 'pwm-[0-9]' for cases like GPIO PWMs.

Sure

>
> > +
> > +  "#pwm-cells":
> > +    $ref: /schemas/types.yaml#/definitions/uint32
>
> You don't actually need to define the type as we already have for '#.*-cells'

OK.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
