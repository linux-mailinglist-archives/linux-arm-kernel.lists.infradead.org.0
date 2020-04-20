Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF221B186D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jq0IWwtqwFKyCTc6kbz9O2/5ouTeWDR4Ktct6wcCBfk=; b=XklEvNwZc/IPWm
	EyNuezjmgbFGOHpMPeJP2vmWdXfnq9PCN/YvdOIOHtAIbioCGz2+mneVguO1QqwONf3qVhOYEr0H3
	MnWR+9xRlfPR5RjeIesR40rbRyp7d74QnYkBBDuri5v4Q2i179HBOQEmOe0tX+wjnE8hYVJU8PyNm
	k1xtMTSbBm2SkcBTIxwZgaPXnmMcXpJ8xHZhjAnpkqejmX/uA2izzBGNyufQsDNGZOKvtDRaIf0hP
	gh4kWRqTxtr/TgGslDppfUkjZBvf9ESmwkKvacvza75AD5/bKqIbPy8Gb61fAq9GDxnfPkUUJX+pn
	8ZpFhe4Lx7kp4tUk52WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdxU-0005Hy-2m; Mon, 20 Apr 2020 21:28:04 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdxK-0005Gt-36
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:27:55 +0000
Received: by mail-oi1-f195.google.com with SMTP id j16so10149608oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XubFQFGj+oE5E81AV09uEAWEQbJMsk1LmCjakkP+xS8=;
 b=PekcYfoWR+2jl4X1s1RMkX8j2RfXe1wTmKy3V8xID3YTSFEozKPxkaOosnqg4dKh2b
 z2ZZLOpDkLQgYEAa+F2ivsx6YGKzvWobz4Y2BDQil/SD2S+gbXqg/CPCWRYxWIBL0Q0K
 Az00QG0iVudrCgMygl+clgbCsUnnJEgjNMVMx7nr7Na0Lj2HwKW+YIqJ5oXkdm7LOPF+
 RVWnKaxPQDAqCeZQ9CfQim6uk1VIPZSIMrYC5TvHsHJ7LgPD9IxMzlMl8JECDioeTahS
 yjeNMY0F71PhYnUn6ebRUEBoITuJdcC85alCPFo0VUxCD4A2lpQO2jvVCitaahREiLJL
 xQ5g==
X-Gm-Message-State: AGi0PuYNO0yiyjkXp4AE+Bkq8+n0UAiDmkctKoNDGmVZWFA1lIfjb7s3
 oo04JaPz98dWEhp2kwGa95jd1eU=
X-Google-Smtp-Source: APiQypKA8/DjgklKphF/q6s1sPMusvYqMqJJGh1gdjSYDDBmjDBbaTp+L99fqFcY2mwLoCgx5i9uAQ==
X-Received: by 2002:aca:6143:: with SMTP id v64mr1039248oib.36.1587418073095; 
 Mon, 20 Apr 2020 14:27:53 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 69sm218723otm.60.2020.04.20.14.27.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:27:52 -0700 (PDT)
Received: (nullmailer pid 13638 invoked by uid 1000);
 Mon, 20 Apr 2020 21:27:51 -0000
Date: Mon, 20 Apr 2020 16:27:51 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 2/2] dt-bindings: watchdog: Convert i.MX7ULP to
 json-schema
Message-ID: <20200420212751.GA7615@bogus>
References: <1586911211-1141-1-git-send-email-Anson.Huang@nxp.com>
 <1586911211-1141-2-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586911211-1141-2-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_142754_132237_6BD194C1 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 wim@linux-watchdog.org, festevam@gmail.com, linux@roeck-us.net,
 Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 08:40:11AM +0800, Anson Huang wrote:
> Convert the i.MX7ULP watchdog binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V1:
> 	- Add 'timeout-sec' property to avoid build error.
> ---
>  .../bindings/watchdog/fsl-imx7ulp-wdt.txt          | 22 --------
>  .../bindings/watchdog/fsl-imx7ulp-wdt.yaml         | 65 ++++++++++++++++++++++
>  2 files changed, 65 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> deleted file mode 100644
> index f902508..0000000
> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -* Freescale i.MX7ULP Watchdog Timer (WDT) Controller
> -
> -Required properties:
> -- compatible : Should be "fsl,imx7ulp-wdt"
> -- reg : Should contain WDT registers location and length
> -- interrupts : Should contain WDT interrupt
> -- clocks: Should contain a phandle pointing to the gated peripheral clock.
> -
> -Optional properties:
> -- timeout-sec : Contains the watchdog timeout in seconds
> -
> -Examples:
> -
> -wdog1: watchdog@403d0000 {
> -	compatible = "fsl,imx7ulp-wdt";
> -	reg = <0x403d0000 0x10000>;
> -	interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> -	clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> -	assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> -	assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
> -	timeout-sec = <40>;
> -};
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> new file mode 100644
> index 0000000..86b4d93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx7ulp-wdt.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/fsl-imx7ulp-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX7ULP Watchdog Timer (WDT) Controller
> +
> +maintainers:
> +  - Anson Huang <Anson.Huang@nxp.com>
> +
> +allOf:
> +  - $ref: "watchdog.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx7ulp-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: |
> +      Watchdog's clock source.
> +    maxItems: 1
> +
> +  assigned-clocks:
> +    maxItems: 1
> +
> +  assigned-clocks-parents:
> +    maxItems: 1
> +
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      Contains the watchdog timeout in seconds.

This already has a definition in watchdog.yaml, just need:

timeout-sec: true

> +
> +required:
> +  - compatible
> +  - interrupts
> +  - reg
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/imx7ulp-clock.h>
> +
> +    wdog1: watchdog@403d0000 {
> +        compatible = "fsl,imx7ulp-wdt";
> +        reg = <0x403d0000 0x10000>;
> +        interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> +        assigned-clocks = <&pcc2 IMX7ULP_CLK_WDG1>;
> +        assigned-clocks-parents = <&scg1 IMX7ULP_CLK_FIRC_BUS_CLK>;
> +        timeout-sec = <40>;
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
