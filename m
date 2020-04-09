Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB1B1A3532
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 15:54:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ns5lNLK4FKiz+4L1CDVS+0LL1c3krEf3f46K4OK1rjs=; b=fx0YbTI/yEy0ao
	D8z2uXKs1UpNwsuwYZA6d+MTpYLMScWplX0p4XVrMStrnAs5jDdcsjL9Cz8LUSMWPbUc7lwXOM9wH
	31iNXO6EWHYHQaETDfMDVT7q3IgitEqLeZNZmycReuMTW+Tdo1xDG/K+xCBDhVsjB+1/tXx7voee1
	uiSfaYTPkIkLmNRQd2aDBpBCBdzmPB+6oVYdVGD/fby+6HOkRR698ddKKoWeYYGsr0tODIgj9lUcn
	puEKmJBtsPrxwsTEwPOQtjy4Xp0Ut/jdCexCSV3ZG29roxijNtljqK/xUweJHjgfOtiymU4ewKFmt
	lQICqSxBi7/AAnRxru/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMXd6-0005qE-9F; Thu, 09 Apr 2020 13:54:04 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMXcx-0005pt-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 13:53:57 +0000
Received: by mail-vk1-xa43.google.com with SMTP id f63so2769918vkh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 06:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dwoCAYUicLqYBaO2hxUisMrF80YNdDxwi3wgZyFZPfY=;
 b=wweADUP5FzxaHiLF24hi0m7NCNmG+wWWvNjJ1eiOO/OlSay/LG3/+OL7VRWt+AD1mh
 ZH52JsZOextHKATsMZttP9sdaEEMofKEi6yH9s6CgYHwfByd/lm5rOpUXF1YK1/qTN8O
 bfzayFsyH9z3xOO+OGPTz3eDCybehJkSgorlgO8Sl0h0um8cgs1uq2T1hjBjDVHXdIFP
 YkQCHQbuMbl4VVPKNGuJ2X1sYlHDweECPisSywxLmg30PknIkU1xwvBk+Bzu8HxgvMEP
 hAKGSuBFt54bjpyrQ/GPEEGgAP3aunJ4+vie6fAEomGmeNhRfFsK9xt8v+qJC+LhEoww
 WgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dwoCAYUicLqYBaO2hxUisMrF80YNdDxwi3wgZyFZPfY=;
 b=opA3sWg8WNgpzki214Ctn07MmakPBtx5gRmPro+No1QKObeMt1S+khrx9VN+n3OAYE
 FHOwWUqqZw/NPWhlknc+/9FoJM08+1Snp1l1NokBTHrqEN5Npn6iqZWklhZSQymF5fjE
 k/2any+PhXOmLkBlemy1KNXBd9OJHmwJAHD0O5LbsxO3+CU9gakAJfyBmhEUI10IqI8w
 A5TDiWXR/2ed8zGHQphGj6Qa0XkW8BbVvL+AF8CYD9npIU+iqEQWgHVVde0l4nCMCGnU
 8Seow/3nTPCT5C/6fEvfiasxOrA5o45kBcDhz16Sqr9amtdDVMb5Z1oSMei04cFmqomF
 je8Q==
X-Gm-Message-State: AGi0Pub3W7Hswa+wP/ZQoRtwE/xAAjsF4oc2xppeBk89ofbRRlEfsYmX
 3/qIlqLBuZajxc6u1poQwijVypPrpkMwd7iWQJbtTQ==
X-Google-Smtp-Source: APiQypJpp/sbsI5ihDNmtxV/fEa+CftX/eQjWcUjtA7pyebaLAuJHu4CYdMxU68qtsXicyllRa5cVZ+HSgPtk8QZ6s0=
X-Received: by 2002:a1f:ce86:: with SMTP id e128mr9764243vkg.86.1586440434685; 
 Thu, 09 Apr 2020 06:53:54 -0700 (PDT)
MIME-Version: 1.0
References: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1586407908-27139-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 9 Apr 2020 19:23:43 +0530
Message-ID: <CAHLCerOY9gBM-E2oJXi0TnUODj5bzpDpgvD3ixW_oLNN8hnpDg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert i.MX to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_065355_892943_520CD1B0 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
> +
> +  fsl,tempmon-data:
> +    description: |
> +      Deprecated property, phandle pointer to fuse controller that contains
> +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> +      calibration data can be found in SoC Reference Manual.
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
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

Also, #thermal-sensor-cells property is missing in the example and in
the property list above.

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
