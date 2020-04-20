Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA251B1873
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 23:29:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uh2u2q7U9K+cBPjHFrzFxNYLnucJ3ChoNAhaj+/GYHY=; b=IUWJ98zK0nrKz4
	z5CBtRoIvJ6wXd/hubvXriZzywS6KOTpmhLq7UIzTqHXTY/LLF8zJvfKCVntrWBdULn0pgxDVPnmU
	aiiwIxUXzaNWFm2JJvxXE0WJOCXQFqz7VP/9rqVJYycKWavoUBV+mm8feudiXRSc5hxbp8a6kmHSU
	Ed2pUf1yQmMndx0kBexGowzp+yd7wXwRMh8Nwu4SNsUf4SjWTzXeMbTiTi0M3mys3yZQwBwcz57r3
	ecKcC6xEDvZF4zlJPhZ8CZAeSXcMXi9m+n+BJJi3PXU/5AsAyntRpMZj2nuAFAbT+RPsz3pWtnI7V
	fZfiQXO1zSfJkGYo623w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQdyn-0005se-7m; Mon, 20 Apr 2020 21:29:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQdyb-0005rt-4w
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 21:29:14 +0000
Received: by mail-oi1-f193.google.com with SMTP id s202so10209808oih.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 14:29:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pVvaPy9TriCxXUNOlVqLauolz3jDKaAdK4fSEUctuf0=;
 b=BDp6XH3NStFpJFxNFR4Am6/Nnyx6GiEDt3N26GaULi6MwLcXw4W28fl8xEhRRupXWV
 PWmahqI5CPDrCk20QySgzymDvRdvs5J4eSc0eHB8YwixncYg7ctF4LKXZ13hrTXgik6a
 OJCIcaWyNDyX6LlSFhv0xkPwHAZHyihDVi5nF7NeAhnfzp28xw0C0Teg0hq4NgrSyLLz
 OuEVnEjewSIDklp+YU8NfOw+nMYRH20z6VvrCeBpekk8fhZ2r/gdV5zjvViyTrBTNQrH
 pjcaXNM/v1ZZ3W5wovjLPH5GEWgDHa7Zr19BMBQWCH8Ad4Me9URjlAVTHjVOTGKdcFAQ
 gmYA==
X-Gm-Message-State: AGi0PuaXnNvHX9XPNLo3CTzAKvCtmR0sU9Gb7XMJxrTvKGqISCE1CILQ
 I4emDm4QNUt7cCMoi84Obg==
X-Google-Smtp-Source: APiQypKKosF3ptynJlahs4jhDzXsM68ALGaWcgwNZ/s1v7FiGz78riXbUIaqOwO7V7Tj/97B0k7ZMA==
X-Received: by 2002:aca:4588:: with SMTP id s130mr1047118oia.133.1587418152449; 
 Mon, 20 Apr 2020 14:29:12 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t13sm225254otr.43.2020.04.20.14.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 14:29:11 -0700 (PDT)
Received: (nullmailer pid 16602 invoked by uid 1000);
 Mon, 20 Apr 2020 21:29:10 -0000
Date: Mon, 20 Apr 2020 16:29:10 -0500
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: watchdog: Convert i.MX to json-schema
Message-ID: <20200420212910.GB7615@bogus>
References: <1586911211-1141-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586911211-1141-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_142913_187929_7C1BB753 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

On Wed, Apr 15, 2020 at 08:40:10AM +0800, Anson Huang wrote:
> Convert the i.MX watchdog binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  .../devicetree/bindings/watchdog/fsl-imx-wdt.txt   | 24 ----------
>  .../devicetree/bindings/watchdog/fsl-imx-wdt.yaml  | 56 ++++++++++++++++++++++
>  2 files changed, 56 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
>  create mode 100644 Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
> deleted file mode 100644
> index adc6b76..0000000
> --- a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.txt
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -* Freescale i.MX Watchdog Timer (WDT) Controller
> -
> -Required properties:
> -- compatible : Should be "fsl,<soc>-wdt"
> -- reg : Should contain WDT registers location and length
> -- interrupts : Should contain WDT interrupt
> -
> -Optional properties:
> -- big-endian: If present the watchdog device's registers are implemented
> -  in big endian mode, otherwise in native mode(same with CPU), for more
> -  detail please see: Documentation/devicetree/bindings/regmap/regmap.txt.
> -- fsl,ext-reset-output: If present the watchdog device is configured to
> -  assert its external reset (WDOG_B) instead of issuing a software reset.
> -- timeout-sec : Contains the watchdog timeout in seconds
> -
> -Examples:
> -
> -wdt@73f98000 {
> -	compatible = "fsl,imx51-wdt", "fsl,imx21-wdt";
> -	reg = <0x73f98000 0x4000>;
> -	interrupts = <58>;
> -	big-endian;
> -	timeout-sec = <20>;
> -};
> diff --git a/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
> new file mode 100644
> index 0000000..674d902
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/fsl-imx-wdt.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/fsl-imx-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX Watchdog Timer (WDT) Controller
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
> +      - fsl,imx21-wdt
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

Drop this. No description needed if single entry.

> +    maxItems: 1
> +
> +  fsl,ext-reset-output:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description: |
> +      If present, the watchdog device is configured to assert its
> +      external reset (WDOG_B) instead of issuing a software reset.
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/imx6qdl-clock.h>
> +
> +    wdog1: watchdog@20bc000 {

Drop the unused label.

> +        compatible = "fsl,imx21-wdt";
> +        reg = <0x020bc000 0x4000>;
> +        interrupts = <0 80 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&clks IMX6QDL_CLK_IPG>;
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
