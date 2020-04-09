Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B961A3622
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1psni5QHNlyKnRFgy4bEbzowqw26F6+MK1pBd75IQy0=; b=k4iFg+qC+NUbIu
	rUInixVGeIDd4wlHEew3/VUWiRLs1jKOb5t/EdV3BpIFA+C3ghTOuH0WNnhllk67+6JLaxOzaRI05
	Grk8Tyq+Nd4SVqBLnuePuBtBoCepg+KGnvtG4h+hGh2uMZOrqBx5fjbQtwr5cdry5jMCoB3uRBZg3
	IGXKobAit4trFP4CYDibssSUvMoto1SfOG8xJ33USC6t74rxHzOIrXmE9u/wx5FFhQ2rDHJEzAJDW
	LBpB3d/kkIIfv6odh1EiAZQcSHVsOnvL1GPce7Dc3PFd0v03gUMe9z6DEps/WvuPGWns3io+iF03n
	auObTRWwZuVdqzcnGeIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYNe-0007Gf-UD; Thu, 09 Apr 2020 14:42:10 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYNW-0007GC-JN
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:42:04 +0000
Received: by mail-vs1-xe43.google.com with SMTP id a63so7002890vsa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f4mXwOzfoQFfmTyPdF7FI/nvZYzgTEkhsp/jnf7l374=;
 b=BmZ6GULsIOlPMSeR4QFP6UMU8xiIGx++xbVXvG4Ec14xhXm9xO54PsRz2mxTHRE/zS
 hpnnjFBGw3DoPCT4XJ7XPcvn+ZgD5Dgv4qo5ptYViWYP2VA8mdbkSTJBY4YTL2N3HfKg
 NvMMJbwI124CbsUc49NgD5VNIjOLwitQnU4+iWusAWlVIN9V1lY+wZb1fxfzhVJg7Svf
 tLTlb0SMJOEU8ESAlUSC4HYXZv0ZCbmYiIxUY8zyGJ4F3r8I0gnyw7/uXQt0DyZIpP3Q
 oiGGkLLnrmCU41aWoN54rM9dBwhyKbJ7TaN+gyUI1YiyHTQd891cnjftlUVYLlc6ZDy5
 DTcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f4mXwOzfoQFfmTyPdF7FI/nvZYzgTEkhsp/jnf7l374=;
 b=mWT2qn6mOxxv2+kOgjrBKShXg9KTiatJ/CBH0vKEAK/Ain+aU667TPWixwXjn/Gfpy
 zM4JboEmsaBAha/1SfnvYYBy4M6ZP5wnqXgUk2tf8dibImBvG3HuJcLqdaHYR5GTua0S
 phZm/FMOfTClimuwvkamiCckPFaDiYneL65NfIQhxJcleLQOvQkUOaTa+A3aVNQNtPfN
 wlhmHl6aj4wu5gtC4iyVd7Pkhojd7Av6YU3cURPlHfxpHzVI1HHG1qZP9EiYKN0cZAmp
 fhvULVEFG5lIj1LlnuMBOPnwIjA6kTYi5KueyKZZVQpngSQURQKl4A0f5FqopAmdB2dv
 siKA==
X-Gm-Message-State: AGi0PubaqnRINtcU221FW/wH1id1/seuzUJjkJ3KWmy9gkIChra86hc8
 lm5h4Qn9ynzWviMY64J2ohYPA3XBsNpTPZMVrly/2w==
X-Google-Smtp-Source: APiQypIMwqo54G8PDp6x6bzZoYY0l/NI3qEPSUYHGLPzdzXdkZbfrZHq59Uacbj6+5+FPXnMW5l6fHqSuoOtciP+E30=
X-Received: by 2002:a67:4242:: with SMTP id p63mr243113vsa.159.1586443321181; 
 Thu, 09 Apr 2020 07:42:01 -0700 (PDT)
MIME-Version: 1.0
References: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
 <CAHLCerPi36z4z4DLmP9czEp8aw8yQq7EHAtHdCFLO2ZVYBZsRA@mail.gmail.com>
 <DB3PR0402MB3916F4F4BD5B0DC083E76183F5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916F4F4BD5B0DC083E76183F5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 9 Apr 2020 20:11:50 +0530
Message-ID: <CAHLCerOrto=3xXpU1Aimf0Zh197K-tQHuOou-VXg+W+Nf_eTWQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
To: Anson Huang <anson.huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_074202_639717_6ADECE2F 
X-CRM114-Status: GOOD (  28.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 8:04 PM Anson Huang <anson.huang@nxp.com> wrote:
>
> Hi, Amit
>
> > Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
> >
> > Hi Anson,
> >
> > On Thu, Apr 9, 2020 at 10:29 AM Anson Huang <Anson.Huang@nxp.com>
> > wrote:
> > >
> > > Convert the i.MX thermal binding to DT schema format using json-schema
> > >
> > > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > > ---
> > >  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
> > >  .../devicetree/bindings/thermal/imx-thermal.yaml   | 97
> > ++++++++++++++++++++++
> > >  2 files changed, 97 insertions(+), 61 deletions(-)  delete mode
> > > 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > >  create mode 100644
> > > Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > > b/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > > deleted file mode 100644
> > > index 823e417..0000000
> > > --- a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> > > +++ /dev/null
> > > @@ -1,61 +0,0 @@
> > > -* Temperature Monitor (TEMPMON) on Freescale i.MX SoCs
> > > -
> > > -Required properties:
> > > -- compatible : must be one of following:
> > > -  - "fsl,imx6q-tempmon" for i.MX6Q,
> > > -  - "fsl,imx6sx-tempmon" for i.MX6SX,
> > > -  - "fsl,imx7d-tempmon" for i.MX7S/D.
> > > -- interrupts : the interrupt output of the controller:
> > > -  i.MX6Q has one IRQ which will be triggered when temperature is
> > > higher than high threshold,
> > > -  i.MX6SX and i.MX7S/D have two more IRQs than i.MX6Q, one is IRQ_LOW
> > > and the other is IRQ_PANIC,
> > > -  when temperature is below than low threshold, IRQ_LOW will be
> > > triggered, when temperature
> > > -  is higher than panic threshold, system will auto reboot by SRC module.
> > > -- fsl,tempmon : phandle pointer to system controller that contains
> > > TEMPMON
> > > -  control registers, e.g. ANATOP on imx6q.
> > > -- nvmem-cells: A phandle to the calibration cells provided by ocotp.
> > > -- nvmem-cell-names: Should be "calib", "temp_grade".
> > > -
> > > -Deprecated properties:
> > > -- fsl,tempmon-data : phandle pointer to fuse controller that contains
> > > TEMPMON
> > > -  calibration data, e.g. OCOTP on imx6q.  The details about
> > > calibration data
> > > -  can be found in SoC Reference Manual.
> > > -
> > > -Direct access to OCOTP via fsl,tempmon-data is incorrect on some
> > > newer chips -because it does not handle OCOTP clock requirements.
> > > -
> > > -Optional properties:
> > > -- clocks : thermal sensor's clock source.
> > > -
> > > -Example:
> > > -ocotp: ocotp@21bc000 {
> > > -       #address-cells = <1>;
> > > -       #size-cells = <1>;
> > > -       compatible = "fsl,imx6sx-ocotp", "syscon";
> > > -       reg = <0x021bc000 0x4000>;
> > > -       clocks = <&clks IMX6SX_CLK_OCOTP>;
> > > -
> > > -       tempmon_calib: calib@38 {
> > > -               reg = <0x38 4>;
> > > -       };
> > > -
> > > -       tempmon_temp_grade: temp-grade@20 {
> > > -               reg = <0x20 4>;
> > > -       };
> > > -};
> > > -
> > > -tempmon: tempmon {
> > > -       compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
> > > -       interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> > > -       fsl,tempmon = <&anatop>;
> > > -       nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> > > -       nvmem-cell-names = "calib", "temp_grade";
> > > -       clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> > > -};
> > > -
> > > -Legacy method (Deprecated):
> > > -tempmon {
> > > -       compatible = "fsl,imx6q-tempmon";
> > > -       fsl,tempmon = <&anatop>;
> > > -       fsl,tempmon-data = <&ocotp>;
> > > -       clocks = <&clks 172>;
> > > -};
> > > diff --git
> > > a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > > b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > > new file mode 100644
> > > index 0000000..ad12622
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> > > @@ -0,0 +1,97 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > >
> > +cetree.org%2Fschemas%2Fthermal%2Fimx-thermal.yaml%23&amp;data=02%
> > 7C01
> > >
> > +%7Canson.huang%40nxp.com%7C408494436dca450abb5d08d7dc8cc727%7
> > C686ea1d
> > >
> > +3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C637220369539115517&amp;s
> > data=e3R5
> > > +q1YhIRLSOVdLYJWVlbOdqdjxYHNJMcXz%2Bxb1kjc%3D&amp;reserved=0
> > > +$schema:
> > > +https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevi
> > >
> > +cetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=02%7C01%7Cans
> > on.hua
> > >
> > +ng%40nxp.com%7C408494436dca450abb5d08d7dc8cc727%7C686ea1d3bc
> > 2b4c6fa92
> > >
> > +cd99c5c301635%7C0%7C1%7C637220369539125508&amp;sdata=VjZ%2FPJ
> > BVQc9jpc
> > > +H3Hvvc2fYy70B%2Fmun0mxdvSHHktEU%3D&amp;reserved=0
> > > +
> > > +title: NXP i.MX Thermal Binding
> > > +
> > > +maintainers:
> > > +  - Anson Huang <Anson.Huang@nxp.com>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - enum:
> > > +              - fsl,imx6q-tempmon
> > > +              - fsl,imx6sx-tempmon
> > > +              - fsl,imx7d-tempmon
> > > +
> >
> > > +  interrupts:
> > > +    description: |
> > > +      The interrupt output of the controller, the IRQ will be triggered
> > > +      when temperature is higher than high threshold.
> > > +    maxItems: 1
> > > +
> >
> > imx6sx and imx7d have 3 interrupts each. So you need an if clause to change
> > the interrupt number based on what compatible is provided. See
> > qcom-tsens.yaml for an example.
>
> I noticed this, yes, i.MX6SX/7D has 3 interrupts, but the driver actually ONLY uses
> the high irq, low and panic irq are NOT used. So for such scenario, binding doc should
> still mention all of them?

No, just describe what the driver implements. If the driver doesn't
implement that other two interrupts, leave it out.

I was only comparing it to the old binding where those 3 interrupts
are mentioned.

Regards,
Amit

> >
> > > +  nvmem-cells:
> > > +    description: |
> > > +      Phandle to the calibration cells provided by ocotp for calibration
> > > +      data and temperature grade.
> > > +    maxItems: 2
> > > +
> > > +  nvmem-cell-names:
> > > +    maxItems: 2
> > > +    items:
> > > +      - const: calib
> > > +      - const: temp_grade
> > > +
> > > +  fsl,tempmon:
> > > +    description: |
> > > +      Phandle pointer to system controller that contains TEMPMON
> > control
> > > +      registers, e.g. ANATOP on imx6q.
> > > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> >
> > Nit: move $ref line above description. IMO it makes the binding easier to read.
>
> OK.
>
> >
> > > +
> > > +  fsl,tempmon-data:
> > > +    description: |
> > > +      Deprecated property, phandle pointer to fuse controller that
> > contains
> > > +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> > > +      calibration data can be found in SoC Reference Manual.
> > > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> >
> > Nit: move $ref line above description. IMO it makes the binding easier to read.
>
> OK.
>
> >
> > > +
> > > +  clocks:
> > > +    description: |
> > > +      Thermal sensor's clock source.
> > > +    maxItems: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - interrupts
> > > +  - fsl,tempmon
> > > +  - clocks
> >
> > Clocks was an optional property before, are you sure?
>
> I misunderstand the 'optional', the clock is always necessary, ONLY for those SoCs have
> no thermal clock available, then it is unnecessary. Now I see, I will make it as optional.
>
> I will add example for #thermal-sensor-cells property you mentioned in the other mail.
>
> Thanks,
> Anson
>
> >
> > > +  - nvmem-cells
> > > +  - nvmem-cell-names
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/imx6sx-clock.h>
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +
> > > +    ocotp: ocotp@21bc000 {
> > > +         #address-cells = <1>;
> > > +         #size-cells = <1>;
> > > +         compatible = "fsl,imx6sx-ocotp", "syscon";
> > > +         reg = <0x021bc000 0x4000>;
> > > +         clocks = <&clks IMX6SX_CLK_OCOTP>;
> > > +
> > > +         tempmon_calib: calib@38 {
> > > +             reg = <0x38 4>;
> > > +         };
> > > +
> > > +         tempmon_temp_grade: temp-grade@20 {
> > > +             reg = <0x20 4>;
> > > +         };
> > > +    };
> > > +
> > > +    tempmon: tempmon {
> > > +         compatible = "fsl,imx6sx-tempmon";
> > > +         interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> > > +         fsl,tempmon = <&anatop>;
> > > +         nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> > > +         nvmem-cell-names = "calib", "temp_grade";
> > > +         clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> > > +    };
> > > +
> > > +...
> > > --
> > > 2.7.4
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
