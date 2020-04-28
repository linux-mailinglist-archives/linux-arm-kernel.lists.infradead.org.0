Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F255C1BCDA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 22:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ipSw8jQ0oHV8GjliU4+hDBOGZC41uLGXisFndk49Ig=; b=ki4n0vy8irpWKZ
	sn1NardQRBFprC3DSeYJOitS6cQWEEfxD9dbvCFvhU+cgCOv75lMHJ1PPd4trb9NcHyLTv/raItgh
	sFJZQLkFc6WZB7nn7mTdZw0SpTtp+vTceWRchDpszA6rfdB5QM9c/wbeZbW7IEi8NSL1ewtuPBPOI
	ioENe2sui8as+OstXKHUuMVncbNOgkoucDF4GAmYH/c5PmQEsKAO9VxTwtgxn9wXd3tMNNbllgug+
	4FCWirdHc2PgY9rJCgRUgAxlQ+0dKQ0Ncj9u/2uGNtm+ZumJ1VwmRamu6gBnrrl2Jb1zQEdOtx/+m
	NxSDFdtjIQOdRsq+JzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTX4p-0007G9-Rv; Tue, 28 Apr 2020 20:43:35 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTX4e-0007FY-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 20:43:25 +0000
Received: by mail-vk1-xa43.google.com with SMTP id w68so70041vke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 13:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/OSHGWesGAjIQKdOPpoKsn+XeE0l9RMqKCT+tPNC2z4=;
 b=zX6Iakul0LkrFXuvvK6fla1W/wqCi4+6Vv0VkHkIeJuwdsqVxPwZCn+2bPbmUGyx3Y
 uYs65uOc8V43C8V26+c/UCnzteqOdMsTRnrxVnbkx3ZHHV9QnkIK781R6AkXe7E/Kbf0
 ldnBZ5ISzENYyaHpx0zxsAtR0fK/y8OvXL1S85GHBhf3wKSJC/tuBGpBQtuJNsK9Bn6E
 HEr3RomC/5KSQOWnug5HoXnpEJywQXpW3BMxvYaqrm0WkB5Fyxsd4oY9fAEQ4BF2n/6s
 igsVJwKx55OfcDMhhmHTE1jTAA0zImbzD4u4NmBTT3qPePwldQT09+gE9wFhTPowWYvt
 GJcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/OSHGWesGAjIQKdOPpoKsn+XeE0l9RMqKCT+tPNC2z4=;
 b=f9OjCwXMkwsBrxhA6CFeGie9mCK8/r3L/3xCWSxf9voU+ikxza6MVEFVJj1dD1b6Qq
 wdyfPnhUhfFUG5MCmaIIWidYVECaZiMA1bewEa3A8Io9VnsJwhm0GAUBwv1ajFs/BBCD
 3Z0SHnx5SOX0ThwRe+b40xE+lKQtujbkPyabLUyAPnZOg3xi6OWbRJBXDWcoWVagjbt1
 tlydvac8yzDlUNrGLTtNodn9VsISpEVZYrSzL2wWZgpUISCNGUoBlFvebQh2fo4/9XHB
 psg2FBo92yFIOvPNLY+PpN9h3OQA22DPtqTBQgHksoaIdTrg8vv8P7e4qtJIYnWRbe8T
 sGpA==
X-Gm-Message-State: AGi0PuZK4/zcuBtjZZdtLgVHKN+HC7OyGIYl3mbDzHz9OwkhtBt2OV33
 3LvGyByrdEEQRLOBA59ZpLHHG9aKkZRHYv5lC6xMxQ==
X-Google-Smtp-Source: APiQypKCUKt3jJ4sj9lTa6XBBwThMQqjqJzLuTpJ4h/WRkAacfQ6QQbfN6+a9FmS4vKfBKHCvunkUWb/88bEQfn0/Zw=
X-Received: by 2002:a1f:2a13:: with SMTP id q19mr10178790vkq.73.1588106602833; 
 Tue, 28 Apr 2020 13:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1587477544-20052-1-git-send-email-Anson.Huang@nxp.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 29 Apr 2020 02:12:47 +0530
Message-ID: <CAHLCerM0w=Zc0seb6u0f2=wpsObuv4O9fZiKaZJbS7ojDgx7EA@mail.gmail.com>
Subject: Re: [PATCH V3] dt-bindings: thermal: Convert i.MX8MM to json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_134324_049718_B70B704D 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, Apr 21, 2020 at 7:37 PM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Convert the i.MX8MM thermal binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
> Changes since V2:
>         - drop unnecessary description for reg/clocks;
>         - improve compatible;
>         - use thermal-sensor as node name.
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
>  .../bindings/thermal/imx8mm-thermal.yaml           | 58 ++++++++++++++++++++++
>  2 files changed, 58 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
>  create mode 100644 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
>
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> deleted file mode 100644
> index 3629d3c..0000000
> --- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -* Thermal Monitoring Unit (TMU) on Freescale i.MX8MM SoC
> -
> -Required properties:
> -- compatible : Must be "fsl,imx8mm-tmu" or "fsl,imx8mp-tmu".
> -- reg : Address range of TMU registers.
> -- clocks : TMU's clock source.
> -- #thermal-sensor-cells : Should be 0 or 1. See ./thermal.txt for a description.
> -
> -Example:
> -tmu: tmu@30260000 {
> -       compatible = "fsl,imx8mm-tmu";
> -       reg = <0x30260000 0x10000>;
> -       clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> -       #thermal-sensor-cells = <0>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> new file mode 100644
> index 0000000..3885287
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/imx8mm-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP i.MX8M Mini Thermal Binding
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +description: |
> +  i.MX8MM has TMU IP to allow temperature measurement, there are
> +  currently two distinct major versions of the IP that is supported
> +  by a single driver. The IP versions are named v1 and v2, v1 is
> +  for i.MX8MM which has ONLY 1 sensor, v2 is for i.MX8MP which has
> +  2 sensors.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-tmu
> +      - fsl,imx8mp-tmu
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  "#thermal-sensor-cells":
> +    description: |
> +      Number of cells required to uniquely identify the thermal
> +      sensors, 0 for ONLY one sensor and 1 for multiple sensors.
> +    enum:
> +      - 0
> +      - 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#thermal-sensor-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +
> +    thermal-sensor@30260000 {
> +         compatible = "fsl,imx8mm-tmu";
> +         reg = <0x30260000 0x10000>;
> +         clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> +         #thermal-sensor-cells = <0>;
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
