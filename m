Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864071A351E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huMJ9jFhZa/UpyUDAxsIgNzhIlpisdq689DAND9ZBhU=; b=iDLBjv1wXIelIT
	ST0uVh70/3318PtphF1gl/swCfJEow6cUZUB2s9LS3nCH5417ZKGlnN6ACadM0D2UMmcjmSGGoDRU
	iaq/kFJliXntyiuefoJSqeLWYMXghzdn8FK4Qos7BgighxFBTQxrRkWGj3mf9oBgpNf/IkeeQmw1p
	WS0ptD2RYNVLqEnx7/jgJTQgqoefoJcxncnu5Ra4IMbKfZL4lZZZkhVf6O5gLTl0nf3HqDMKREYHa
	j3GFzkssUL3FXZbGKhBTxhBvIV5QTnhmVmpYxKHzGzBK0Fiyq5sk6MqS7u7f2seR7w19uF8lYNHaD
	84Zr/rLFiFtdjIVwmoYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXYV-0002gM-M1; Thu, 09 Apr 2020 13:49:19 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXYL-0002fq-Rm
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:49:11 +0000
Received: by mail-ua1-x941.google.com with SMTP id m18so3932550uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 06:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5dJ2iz6mYeufR/3a819TAwvmat0FG6WlCPrzsZs/LR0=;
 b=amKfqnd8WQyQUAwi4cZoNrTICQeFaNVJPH28XmKBDQXacysYodktIyiN2ndQx+TQcv
 bE1YQidGEZu1EqGjm0MH4mmpq5nA+42ldSSrTL99PS28PvRiy5Hu36Cw1+BHd0Q73auH
 i7MxRDbVc1bfVrS2iATOcjNUHRMwaGOf7ARFElgadRaI+Se1QV8mAOs2BNZiqLtpCn8c
 oTRo6ATdFF9BsWVB81GBQe4ny1no9JSpdhqD2Z9AjhLDI+EVj/kkJjI4KioULc4bTIrU
 53JZXLEI3Y9kZK43il6Z+a7GkDur/yKP+teUqIU/+86Cx0fcoAj2NCUItb1asfK4YGnz
 WjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5dJ2iz6mYeufR/3a819TAwvmat0FG6WlCPrzsZs/LR0=;
 b=XmoVMxPV2JzSFgCHZf0XF938YKPS38Cx8x0hfjFgOfr6gVWIEuJ8OF+Aaqzhw37jhd
 pTvEZQ78f6aFkUHSvdwpzr/GKC2EYIPj9t/H2K0kjznX0b/4nZfwz/Vn523NNVlOsJ52
 ZlgoHk+nduoXqyZmQkhLbz9W07A7DOso9iFgMy2PUJ2BStsDFxzmDIDLo/p3lQBwJUa5
 LlBEnbXw1rKEYRbZl+uuMg+5LnNIi0iekwZ1OWXBgmu6AGBeGJn8AASkgcs8rZ2jLukU
 ii4ObPBofZPbI/nxc394A9N1in7KC6HKT4kpTQOu+gph8+9ompRFd3AgMspt3rKB+wlw
 sHDA==
X-Gm-Message-State: AGi0PuY1AJgZAG0bEbbBgT4CeGm8gOlKXfKay6w0uEoR1za2Po+wC+K5
 uwbCpu7FDdmhMPuEQqyk+j4rTqfLciMyy1gmnb+X4A==
X-Google-Smtp-Source: APiQypJeghsuGIyn0WvqoYX5wxkTIWjxtH/G1Qe+Ftm6KAYOlTTo2AJGBIWDmRQ2iRf8Hp4GTBdezU70qfNWPExhJhA=
X-Received: by 2002:ab0:654c:: with SMTP id x12mr9506156uap.48.1586440147159; 
 Thu, 09 Apr 2020 06:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 9 Apr 2020 19:18:56 +0530
Message-ID: <CAHLCerPi36z4z4DLmP9czEp8aw8yQq7EHAtHdCFLO2ZVYBZsRA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_064909_968566_A6DD77A7 
X-CRM114-Status: GOOD (  24.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
 dl-linux-imx <Linux-imx@nxp.com>, kernel@pengutronix.de,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Thu, Apr 9, 2020 at 10:29 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MX thermal binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
>  .../devicetree/bindings/thermal/imx-thermal.yaml   | 97 ++++++++++++++++++++++
>  2 files changed, 97 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.txt b/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> deleted file mode 100644
> index 823e417..0000000
> --- a/Documentation/devicetree/bindings/thermal/imx-thermal.txt
> +++ /dev/null
> @@ -1,61 +0,0 @@
> -* Temperature Monitor (TEMPMON) on Freescale i.MX SoCs
> -
> -Required properties:
> -- compatible : must be one of following:
> -  - "fsl,imx6q-tempmon" for i.MX6Q,
> -  - "fsl,imx6sx-tempmon" for i.MX6SX,
> -  - "fsl,imx7d-tempmon" for i.MX7S/D.
> -- interrupts : the interrupt output of the controller:
> -  i.MX6Q has one IRQ which will be triggered when temperature is higher than high threshold,
> -  i.MX6SX and i.MX7S/D have two more IRQs than i.MX6Q, one is IRQ_LOW and the other is IRQ_PANIC,
> -  when temperature is below than low threshold, IRQ_LOW will be triggered, when temperature
> -  is higher than panic threshold, system will auto reboot by SRC module.
> -- fsl,tempmon : phandle pointer to system controller that contains TEMPMON
> -  control registers, e.g. ANATOP on imx6q.
> -- nvmem-cells: A phandle to the calibration cells provided by ocotp.
> -- nvmem-cell-names: Should be "calib", "temp_grade".
> -
> -Deprecated properties:
> -- fsl,tempmon-data : phandle pointer to fuse controller that contains TEMPMON
> -  calibration data, e.g. OCOTP on imx6q.  The details about calibration data
> -  can be found in SoC Reference Manual.
> -
> -Direct access to OCOTP via fsl,tempmon-data is incorrect on some newer chips
> -because it does not handle OCOTP clock requirements.
> -
> -Optional properties:
> -- clocks : thermal sensor's clock source.
> -
> -Example:
> -ocotp: ocotp@21bc000 {
> -       #address-cells = <1>;
> -       #size-cells = <1>;
> -       compatible = "fsl,imx6sx-ocotp", "syscon";
> -       reg = <0x021bc000 0x4000>;
> -       clocks = <&clks IMX6SX_CLK_OCOTP>;
> -
> -       tempmon_calib: calib@38 {
> -               reg = <0x38 4>;
> -       };
> -
> -       tempmon_temp_grade: temp-grade@20 {
> -               reg = <0x20 4>;
> -       };
> -};
> -
> -tempmon: tempmon {
> -       compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
> -       interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -       fsl,tempmon = <&anatop>;
> -       nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -       nvmem-cell-names = "calib", "temp_grade";
> -       clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> -};
> -
> -Legacy method (Deprecated):
> -tempmon {
> -       compatible = "fsl,imx6q-tempmon";
> -       fsl,tempmon = <&anatop>;
> -       fsl,tempmon-data = <&ocotp>;
> -       clocks = <&clks 172>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> new file mode 100644
> index 0000000..ad12622
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/imx-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX Thermal Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx6q-tempmon
> +              - fsl,imx6sx-tempmon
> +              - fsl,imx7d-tempmon
> +

> +  interrupts:
> +    description: |
> +      The interrupt output of the controller, the IRQ will be triggered
> +      when temperature is higher than high threshold.
> +    maxItems: 1
> +

imx6sx and imx7d have 3 interrupts each. So you need an if clause to
change the interrupt number based on what compatible is provided. See
qcom-tsens.yaml for an example.

> +  nvmem-cells:
> +    description: |
> +      Phandle to the calibration cells provided by ocotp for calibration
> +      data and temperature grade.
> +    maxItems: 2
> +
> +  nvmem-cell-names:
> +    maxItems: 2
> +    items:
> +      - const: calib
> +      - const: temp_grade
> +
> +  fsl,tempmon:
> +    description: |
> +      Phandle pointer to system controller that contains TEMPMON control
> +      registers, e.g. ANATOP on imx6q.
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Nit: move $ref line above description. IMO it makes the binding easier to read.

> +
> +  fsl,tempmon-data:
> +    description: |
> +      Deprecated property, phandle pointer to fuse controller that contains
> +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> +      calibration data can be found in SoC Reference Manual.
> +    $ref: '/schemas/types.yaml#/definitions/phandle'

Nit: move $ref line above description. IMO it makes the binding easier to read.

> +
> +  clocks:
> +    description: |
> +      Thermal sensor's clock source.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - fsl,tempmon
> +  - clocks

Clocks was an optional property before, are you sure?

> +  - nvmem-cells
> +  - nvmem-cell-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx6sx-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    ocotp: ocotp@21bc000 {
> +         #address-cells = <1>;
> +         #size-cells = <1>;
> +         compatible = "fsl,imx6sx-ocotp", "syscon";
> +         reg = <0x021bc000 0x4000>;
> +         clocks = <&clks IMX6SX_CLK_OCOTP>;
> +
> +         tempmon_calib: calib@38 {
> +             reg = <0x38 4>;
> +         };
> +
> +         tempmon_temp_grade: temp-grade@20 {
> +             reg = <0x20 4>;
> +         };
> +    };
> +
> +    tempmon: tempmon {
> +         compatible = "fsl,imx6sx-tempmon";
> +         interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> +         fsl,tempmon = <&anatop>;
> +         nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> +         nvmem-cell-names = "calib", "temp_grade";
> +         clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> +    };
> +
> +...
> --
> 2.7.4
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
