Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCBF1B14CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLk95nvjc9FBNcSKS/tmDfEO8c5WxczYVoncFxRUA+8=; b=K9DASkaBvuXGVa
	AkA03u5P7yrSkQh3vZRp9ttsBbL4i1I3cP4fIxadr7ve3IcrWEIl2bNX3hNg2GOO32CUjG4emE5aT
	rfQuFDpclOdfXK0UzFkijcSsxhqORFBcSUalIDafakqnBagdnnjH8QVK/uBCOew6RBA5nW+KZ4URj
	hfN6eo93R1jutIExlfJfFdXDz7RZ56LvwP74FB2d5B1GGXuOYtO8LSnuWF9ATEiobecMhtZnNcLef
	w6Yma8xuJHRN5zprcTMi6Ob5Kf+8oXpZB9U0NLcG9p9yQekBuK/CqbUswIDLy82rmYIC/+kv10hm7
	UrHkzUM8aYgN20xYbdWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQbIX-0002iy-RR; Mon, 20 Apr 2020 18:37:37 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQbIN-0002hu-OF
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:37:29 +0000
Received: by mail-ot1-f66.google.com with SMTP id m13so9025201otf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:37:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SwEht26LXsrYWXHN9AUzhB2LIZfMy4nj6PiaQR9cyys=;
 b=IsgJrT0jcT3o3CJHp78bcbiGquM0JOxaeLD67vqYGwnnE2eDIbOjzVnhrEcK30DmZb
 ZGRHdJZBNVPuykRjE6bHNzMJpt03rLBgH0EFY22ZOrx3zLwb5FNo0haRn2mgkZFcTr1q
 KVFKPj7DQsaaiML54r9vzvx52P46+mSaVb0N4NwMalfNbgmgpPoFPohnH8by8JNcHykF
 vIgH6bNni35SHkmeQpUHSLD7qdEzMdRS9R0AJYf6mr8I1+MdwqdHPbBGxLfe+WbFferh
 mZ1eLZS1T92Nq1uMuKJH3+8SkH2+9evAhFvkTWKVS7hxtUgsTy/ssg1ikApuuU7R3sil
 BHwg==
X-Gm-Message-State: AGi0PuZ7FIIBUm6ZH3MSgbItrJBf71vQrMRWHPjvzQPQgIPKpj5scGfS
 XiexkCF9jS/GmEdnJRRMsg==
X-Google-Smtp-Source: APiQypITmTVLmCHUT2eoWbm+5j8UVDm4ArOIAfxEx6QVgHNIjF0wocTSMcaN3A1FjSNLuRxTVjRewg==
X-Received: by 2002:a9d:2d89:: with SMTP id g9mr10268404otb.367.1587407846953; 
 Mon, 20 Apr 2020 11:37:26 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r21sm106975otg.67.2020.04.20.11.37.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:37:26 -0700 (PDT)
Received: (nullmailer pid 13827 invoked by uid 1000);
 Mon, 20 Apr 2020 18:37:25 -0000
Date: Mon, 20 Apr 2020 13:37:25 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: thermal: Convert i.MX8MM to json-schema
Message-ID: <20200420183725.GA11019@bogus>
References: <1586481044-19283-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586481044-19283-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_113727_792609_4D4D6E3D 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Fri, Apr 10, 2020 at 09:10:44AM +0800, Anson Huang wrote:
> Convert the i.MX8MM thermal binding to DT schema format using json-schema
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Add description to mention that i.MX8MM thermal driver supports
> 	  both i.MX8MM(1 sensor) and i.MX8MP(2 sensors).
> 	- Remove ./thermal.txt reference.
> ---
>  .../devicetree/bindings/thermal/imx8mm-thermal.txt | 15 ------
>  .../bindings/thermal/imx8mm-thermal.yaml           | 62 ++++++++++++++++++++++
>  2 files changed, 62 insertions(+), 15 deletions(-)
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
> -	compatible = "fsl,imx8mm-tmu";
> -	reg = <0x30260000 0x10000>;
> -	clocks = <&clk IMX8MM_CLK_TMU_ROOT>;
> -	#thermal-sensor-cells = <0>;
> -};
> diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> new file mode 100644
> index 0000000..71807e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
> @@ -0,0 +1,62 @@
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
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx8mm-tmu
> +              - fsl,imx8mp-tmu

Just:

compatible:
  enum:
    - fsl,imx8mm-tmu
    - fsl,imx8mp-tmu

> +  reg:
> +    description: |
> +      Address range of TMU registers.

Drop this.

> +    maxItems: 1

Blank line here.

> +  clocks:
> +    description: |
> +      TMU's clock source.

Drop

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
> +    tmu: tmu@30260000 {

thermal-sensor@...

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
