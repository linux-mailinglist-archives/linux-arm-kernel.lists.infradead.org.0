Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D675164777
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 15:52:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqfHqM0NuZUlhLsMAw7DRtocpGxE9WDnf2fxqqpnYNs=; b=rVJOtIu/ggNLJh
	vU2TMRuRoZJzS2ZW3dNse4cl8LzC4Vt07KtRYLwnp7nUh13J3jrOXyvm2i1EERfmjJFyM/FKUI6xQ
	LMWnMCOn4l+S092135tnUNjhZ+jVCwJSxcdrOks4MMBECPdKA2vYsbQ64NCSFmtAuqrsRxOskvv3p
	rL4y6Vjj+gv4ry48r0vd5qrgCuQfxt7w9MHF3BXUvH252voOMm5x2KuaVQEjVZlgVxkK27lILlOLP
	AloJ4bv9jjhyRxW07k1w+mMlX4MXq6r9/amdDVuDfSeVHHkowiVjWhet9Yrva58A+Y8GJja00ZOfE
	AMV4AcnAYZnPav51OCFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QiQ-0007oG-Ny; Wed, 19 Feb 2020 14:52:42 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4QiH-0007mn-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 14:52:35 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so357321otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 06:52:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QQd+mLOG3Djgf9pAJU1+5MgOvviH0euD+JIlNG66B4U=;
 b=AB6jXRnZQcnsL/jj1Lmk6Ym3jwZoL04cu/ix//5D6DIDQCSzekaZl6iQSjuZ3C+MFQ
 AdFRZXJibCo82UhHI7zshhwZcFbmAMqfBMXpbunyjC2IXcUNgDnCLtLVa2xZTxeSKKuv
 X+7o3bhbYZeZz3UTEObdRBrrHOEk03MQrN0U4zKNxMVcRuTHt3LZmNWWhcgYHrJOfZGt
 lmjeahCKo+SCw5JejQD35hwogF3IoFJ51/8Ps8rg1UYcppAhEHnzb7RwPCR+6uvTwenz
 AsWiN4EtOfXHmf5d4t7pOBth4MVkUoPIAUO4aslYMmyuw1Sdi6z2tg5CpN+s8Fo/axg0
 Y+aw==
X-Gm-Message-State: APjAAAUxLAoDYDpgiqxU2DGD0+Lyhr597XI1h6LoN3j6ZZmZH9vtAsSR
 YmWd13Uk/xaD38te8a4Zjg==
X-Google-Smtp-Source: APXvYqxLc1uqkSdx5A61GndakpE7hENl4nGHvYyySsvT2z371AUhrfW4GKZzZgnB1JAXwHj26eqB9w==
X-Received: by 2002:a05:6830:22ca:: with SMTP id
 q10mr21274221otc.280.1582123951275; 
 Wed, 19 Feb 2020 06:52:31 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r17sm691926otq.70.2020.02.19.06.52.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 06:52:28 -0800 (PST)
Received: (nullmailer pid 4462 invoked by uid 1000);
 Wed, 19 Feb 2020 14:52:27 -0000
Date: Wed, 19 Feb 2020 08:52:27 -0600
From: Rob Herring <robh@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
Message-ID: <20200219145227.GA1317@bogus>
References: <20200219074314.22829-1-j-keerthy@ti.com>
 <20200219074314.22829-2-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219074314.22829-2-j-keerthy@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_065233_874255_E2E877FD 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, t-kristo@ti.com,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 01:13:11PM +0530, Keerthy wrote:
> Add VTM bindings documentation. In the Voltage Thermal
> Management Module(VTM), K3 AM654 supplies a voltage
> reference and a temperature sensor feature that are gathered in the band
> gap voltage and temperature sensor (VBGAPTS) module. The band
> gap provides current and voltage reference for its internal
> circuits and other analog IP blocks. The analog-to-digital
> converter (ADC) produces an output value that is proportional
> to the silicon temperature.
> 
> Signed-off-by: Keerthy <j-keerthy@ti.com>
> ---
> 
> Changes in v3:
> 
>   * Fixed errors seen with:
>     dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> 
>  .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> 
> diff --git a/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> new file mode 100644
> index 000000000000..b6dc95c3acab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/thermal/ti,am654-thermal.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments AM654 VTM (DTS) binding
> +
> +maintainers:
> +  - Keerthy <j-keerthy@ti.com>
> +
> +properties:
> +  compatible:
> +    const: ti,am654-vtm
> +
> +  reg:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +    description: phandle to the associated power domain

No need to redefine a standard property description.

> +
> +  "#thermal-sensor-cells":
> +    const: 1
> +
> +required:
> +  - "#thermal-sensor-cells"
> +  - compatible
> +  - reg
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +    vtm: wkup_vtm0@42050000 {

thermal-sensor@...

Use generic node names and don't use '_' in node names.

> +        compatible = "ti,am654-vtm";
> +        reg = <0x0 0x42050000 0x0 0x25c>;
> +        power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
> +        #thermal-sensor-cells = <1>;
> +    };
> +
> +    mpu0_thermal: mpu0_thermal {
> +        polling-delay-passive = <250>; /* milliseconds */
> +        polling-delay = <500>; /* milliseconds */
> +        thermal-sensors = <&vtm0 0>;
> +
> +        trips {
> +                mpu0_crit: mpu0_crit {
> +                        temperature = <125000>; /* milliCelsius */
> +                        hysteresis = <2000>; /* milliCelsius */
> +                        type = "critical";
> +                };
> +        };
> +    };
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
