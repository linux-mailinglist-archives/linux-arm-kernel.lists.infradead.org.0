Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A51B14B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OdhsST2dH3oZSp88SdoKmzyw0wn6G1Zt80UKDDt8djs=; b=jiVTEMwgHJa6KE
	jzegw2AvTDwwBEnMKJUy2dkek4285RQ3tB4zpYo1UuH1kOyUgNiBVagwOZxEj/W+I2U6/emJ99j4u
	1qpSEj4oi+F6MLAanFSzGHAcVlp+K/hgXq74gqDYAB5ZjPBU5qloQxYzAhJqVm7OEixFPyiMBuus5
	mIK/Vdstn03b1Ovwy2U5hdxFMJWVidFuZBwBofns/Cc/ZnxoVjxKlOrw3L5vwwUceLnWWXwQrfRjE
	f25XXr5fUpGpda9Yu6x6VIU0qo4fbGlXh1wJqMMaN0XGJajSMOXVhjeDfSwtwl3kyo4mrHsC8ESNx
	uneDwkTy+Ske5PM56glA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbHW-0001nx-VY; Mon, 20 Apr 2020 18:36:34 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbGK-0000lw-FC
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:35:23 +0000
Received: by mail-oi1-f193.google.com with SMTP id m14so9753270oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:35:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R4OQ//22u2MPOmZHKyicGJvmvsIaQtYSXsu+wdZNuM4=;
 b=JX+veK95L5hFLwlJe/jXlzjJAElL6gpgNPFoVtpVFSaQjFWdyGdOCv03IyoWxLyOBD
 2lgogXj5xL16P+UEClrCRFRdQ8RTi439C7/RLrDS8QWuyCo12lS3dDpCeIIWfWCF85kn
 FiWFaI7ZeB3Jl++jrpakaHy4un5iBvjggrqVVutMRN+dYgzfASK5dzcP4TNonVA4LpOZ
 akE6NgBBuP0oKs3/m2WTq8W1p3pNN3ZMdqh7s+3y5UNuCRMFPDq3LX+cMC20tjffZzmO
 5ZxmPONZsLjnabrpOjIVKiGRlYvFJ13JNSfh4p8piKwFYqlLcjtR/br+GAyOSs9/jvEY
 jHNw==
X-Gm-Message-State: AGi0PuZ2uRcQKR0yxQ59gRDIx187suHPdaW3ICgVzMbPiKdAUugAAQ4e
 gAxayM2jP9koY6CuHPN84g==
X-Google-Smtp-Source: APiQypI5iWrU/MsQnhldGps2oxwvsnjbS3ZoaH/XAT2+pSAztESGSzhH48A1n6XI4AszMbeiLRaqlg==
X-Received: by 2002:aca:dc08:: with SMTP id t8mr521470oig.135.1587407719248;
 Mon, 20 Apr 2020 11:35:19 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q18sm100760otl.65.2020.04.20.11.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:35:18 -0700 (PDT)
Received: (nullmailer pid 10765 invoked by uid 1000);
 Mon, 20 Apr 2020 18:35:12 -0000
Date: Mon, 20 Apr 2020 13:35:12 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: thermal: Convert i.MX to json-schema
Message-ID: <20200420183512.GA5483@bogus>
References: <1586480844-19227-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586480844-19227-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_113520_572077_BB9D23EF 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, amit.kucheria@verdurent.com,
 linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, rui.zhang@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:07:24AM +0800, Anson Huang wrote:
> Convert the i.MX thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- make clock property optional.
> ---
>  .../devicetree/bindings/thermal/imx-thermal.txt    | 61 --------------
>  .../devicetree/bindings/thermal/imx-thermal.yaml   | 96 ++++++++++++++++++++++
>  2 files changed, 96 insertions(+), 61 deletions(-)
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
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	compatible = "fsl,imx6sx-ocotp", "syscon";
> -	reg = <0x021bc000 0x4000>;
> -	clocks = <&clks IMX6SX_CLK_OCOTP>;
> -
> -	tempmon_calib: calib@38 {
> -		reg = <0x38 4>;
> -	};
> -
> -	tempmon_temp_grade: temp-grade@20 {
> -		reg = <0x20 4>;
> -	};
> -};
> -
> -tempmon: tempmon {
> -	compatible = "fsl,imx6sx-tempmon", "fsl,imx6q-tempmon";
> -	interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
> -	fsl,tempmon = <&anatop>;
> -	nvmem-cells = <&tempmon_calib>, <&tempmon_temp_grade>;
> -	nvmem-cell-names = "calib", "temp_grade";
> -	clocks = <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> -};
> -
> -Legacy method (Deprecated):
> -tempmon {
> -	compatible = "fsl,imx6q-tempmon";
> -	fsl,tempmon = <&anatop>;
> -	fsl,tempmon-data = <&ocotp>;
> -	clocks = <&clks 172>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> new file mode 100644
> index 0000000..193c7e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> @@ -0,0 +1,96 @@
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
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      Phandle pointer to system controller that contains TEMPMON control
> +      registers, e.g. ANATOP on imx6q.

Really, this should have been a child of the system controller. Not too 
late to do that, but you'd need to keep this for compatibility.

> +
> +  fsl,tempmon-data:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      Deprecated property, phandle pointer to fuse controller that contains
> +      TEMPMON calibration data, e.g. OCOTP on imx6q. The details about
> +      calibration data can be found in SoC Reference Manual.

Use 'deprecated: true' for deprecated properties.

> +
> +  clocks:
> +    description: |
> +      Thermal sensor's clock source, it is optional.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - fsl,tempmon
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
