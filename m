Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3817F1F7E52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 23:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNbbJHXboxFbmI96+9m5kZfIORbc63QbQocBMx4zRh8=; b=kxtCy1qqsK8dh0
	mvD8eOZGlVMKryG+g7a3swveEAZBJiBA9Z8UvfJSW3G0UvFQXACcbpRybxKk+ctuJnpDCdVK7JL+J
	FcdG/4HmoGfqMmnyHVcifZ73N4a7yfmF5pgsLv7KJcTrU3Hr1HZc0vP5JC1iiQpBARlNmWHtV6+aC
	WNat+wXPe6dJnHVO8/Hlzxcx8MQpHjQ6CrIRIGDl97ud8FjIaPx1ls8lVG7Vr/QtwZpa+YQbLXFff
	631DYuR8VDkEXx3GQoTYTCDa1LZ0UBGmeWNl43imKntJtwyiEWnPRMom536jXuwU7sZsnTkT3Qrun
	v4CYJ6vhW4gaVbE2/YoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjqxF-0005a1-Sr; Fri, 12 Jun 2020 21:11:13 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjqx8-0005Za-4M; Fri, 12 Jun 2020 21:11:08 +0000
Received: by mail-io1-f66.google.com with SMTP id q8so11739784iow.7;
 Fri, 12 Jun 2020 14:11:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=LdO+yABvrQyODTNWEnFCNLq5SRWaCDFSeyJReNxOrN4=;
 b=UFQgidd8hXbN617MbuDurBEVSDaNdhQjCBYalDKPlOOExJ7QD72rWN+8G1sqy0+cG1
 jO1b9U5L1buMBCVqviU1JpvqXAjKUglvJ/pNfezOfL/lPp4nw7nsGXvQh8hge5qqRQfu
 9pct+Qi339kD98+8zBF/29NK/aVpwSaQGF5f9GLVIAPFHdsJSwjjBLo86A8Pt8GtnUsg
 mUC+wmDDm/B9bGhktqp2+NHuUFOVMYZN0+ye3rGFINOjG/PphoSoCBQhKBv47oLZsfwv
 uvKRJJuNRngu4o5ukDqXw19lgB7cjRvY0zNxf6P9TclBrDa0sXwyz1ekNHpZQzTcDLUl
 JiwA==
X-Gm-Message-State: AOAM530wGwvQCfOnA4AQBhye4E83daj0Ilivhtwk1TsQ+ZZ8DpacCDfC
 +fmPXzVU7PC2IYExn1c82A==
X-Google-Smtp-Source: ABdhPJyTLPwHiCPMWBDlg3TIAXPWsywr4DNWk8QAGkvpv7/LiQJCR/XEW/hsc3A/ByLjKLXUmh/i0w==
X-Received: by 2002:a05:6638:406:: with SMTP id
 q6mr10161463jap.125.1591996263990; 
 Fri, 12 Jun 2020 14:11:03 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id d66sm3628624iof.27.2020.06.12.14.11.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 14:11:02 -0700 (PDT)
Received: (nullmailer pid 3820221 invoked by uid 1000);
 Fri, 12 Jun 2020 21:11:01 -0000
Date: Fri, 12 Jun 2020 15:11:01 -0600
From: Rob Herring <robh@kernel.org>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v9 05/11] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
Message-ID: <20200612211101.GA3808755@bogus>
References: <20200609174959.955926-1-adrian.ratiu@collabora.com>
 <20200609174959.955926-6-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609174959.955926-6-adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_141106_171170_D380198E 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Andrzej Hajda <a.hajda@samsung.com>,
 Martyn Welch <martyn.welch@collabora.com>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 08:49:53PM +0300, Adrian Ratiu wrote:
> This provides an example DT binding for the MIPI DSI host controller

It's not an example. It defines the exact binding for this peripheral.

> present on the i.MX6 SoC based on Synopsis DesignWare v1.01 IP.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: devicetree@vger.kernel.org
> Tested-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
> Changes since v8:
>   - Fixed small compatible string typo caught by checkpatch
>   - Added custom select for 'fsl,imx6-mipi-dsi' (Rob)
>   - Replaced additionalProperties -> unevaluatedProperties (Rob)
>   - Dropped all nodes not adding any new constraints apart from
>   the recently upstreamed snps,dw-mipi-dsi.yaml (Rob)
> 
> Changes since v7:
>   - Clarified port@0,1 descriptions, marked them as required and
>   added missing port@0 in example (Laurent)
> 
> Changes since v6:
>   - Added ref to the newly created snps,dw-mipi-dsi.yaml (Laurent)
>   - Moved *-cells properties outside patternProperties (Laurent)
>   - Removed the panel port documentation (Laurent)
>   - Wrapped lines at 80 chars, typo fixes, sort includes (Laurent)
> 
> Changes since v5:
>   - Fixed missing reg warning (Fabio)
>   - Updated dt-schema and fixed warnings (Rob)
> 
> Changes since v4:
>   - Fixed yaml binding to pass `make dt_binding_check dtbs_check`
>   and addressed received binding feedback (Rob)
> 
> Changes since v3:
>   - Added commit message (Neil)
>   - Converted to yaml format (Neil)
>   - Minor dt node + driver fixes (Rob)
>   - Added small panel example to the host controller binding
> 
> Changes since v2:
>   - Fixed commit tags (Emil)
> ---
>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 112 ++++++++++++++++++
>  1 file changed, 112 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> new file mode 100644
> index 0000000000000..86093729fd5f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml
> @@ -0,0 +1,112 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX6 DW MIPI DSI Host Controller
> +
> +maintainers:
> +  - Adrian Ratiu <adrian.ratiu@collabora.com>
> +
> +description: |
> +  The i.MX6 DSI host controller is a Synopsys DesignWare MIPI DSI v1.01
> +  IP block with a companion PHY IP.
> +
> +  These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
> +  Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
> +  the following device-specific properties.
> +
> +allOf:
> +  - $ref: ../bridge/snps,dw-mipi-dsi.yaml#
> +
> +# Need a custom select here or 'snps,dw-mipi-dsi' will match lots of nodes
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - fsl,imx6-mipi-dsi
> +  required:
> +    - compatible
> +
> +properties:

> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0

These 2 are covered by dsi-controller.yaml, so you can drop them.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
