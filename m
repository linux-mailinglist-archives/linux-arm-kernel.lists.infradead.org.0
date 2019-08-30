Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E64A3C85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sM3BFKh4trl67ZFfbHA0fG3ZuCB5rKo9B16XaoQXg0E=; b=aKSjyGaixidRcn
	YCUSDm29dfOmzAGvc4GHOAGKkQTrvZELvvKLHKAw42L/l+n8pYw0+2rSwxTpYKsjrMUKQJ3Bbs8cc
	IDo3cRlGNWN6XjwADws797BcL0kl//RIDI6e1i7gmbZUpnxNvMslUyc/uhrSrUI4Jq29mTA8nINTj
	LBxoEfC5aKtiXnMiWqwtv4R08OTlkEOXSIJ4FeYc5Oteg4JZNudNw8RjigAJejowq+TyVWY37D2cx
	42hyg8BiaN7Vwvg6YCbKQFi1bjx9mR7FP4U4U50mQoRqT7+mlXAolQ6J8vth+wzEVKKulxe3K2MUi
	3eqgLkygvLlRoQn9f+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k4u-0007hi-2i; Fri, 30 Aug 2019 16:48:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k4W-0007b0-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:48:26 +0000
Received: by mail-pf1-x442.google.com with SMTP id c81so4972802pfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 09:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X7EDJjP3/P5ucP5sd8p8wuc1drYUxSpuIcMdq/6dO0M=;
 b=Sddob+AJCKGltY0Zsrisq3Z1TRnqs0+05kJFI4B56UHJuVOSilol58uW+WFEBOjc5m
 W8aV5M/V5Sl2Jl+w/HGeek+X4CpCFoXvfyYd2lY5dNnJDhDfN9IRI5pq+MgGa5xaKvv6
 nCh9ja4loFd0AZwPpLePl+oIiTlwFwSWc5gMqa9IYSblkDtCtRpmu9NopAepr5hg0g+K
 O4LPrd1EhLbsJ270lkPEPWjrsl9vhVsYXsc8JzZTQFEkCVZzN+Xyzpgq7hpckewbiGIC
 EjA+391h5NZlNiX5C6k7y44+xV/82NDK+G7Sts48BBNMm5SQeY5Lfp5ERBj0iGEPy9Ny
 Fdcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=X7EDJjP3/P5ucP5sd8p8wuc1drYUxSpuIcMdq/6dO0M=;
 b=COQtO4lt02slgiZdzkVJKE9bo0fDxrWVIy9PHiP6zgLuN8J36z5LOPy+uToBwSRuRA
 Z0TqAsZ/PRzG4k0mtYSoz34q/bK1oPT2eVcIioxRVP6+O3d0l2Xz+fFuKRPHHVP5Q7yU
 FVinKD+bS0f6rh0BdH5dv3v/5eBan3RAKTh/NKigHUsEEsDd9l4EfUiotWN1Erx40q7X
 aAshfaRQFc/Ivn9Gu8VvoHnlk80/iwGT7C2X6uRnuLeLgfy8S1llfUYffAOYcNPuA9Qz
 8DafpbXOayAF64bzvZiA8IU+TaksxVI8PPsR5RUgstP3Rf48/c+b6SeGn5JlSbuHFMzr
 uO+w==
X-Gm-Message-State: APjAAAW/5FZ6ZoO5UHpTe8b7G7JiJpO9Y5wL81jDy0WUzTKRo+XYlzYT
 kylNxK8xaztzrbQ9EPC194E=
X-Google-Smtp-Source: APXvYqzPPf2dUoFRMdmXRU3rc61sMZX9+mXPDGqgD+nEdBzoVzjxT08cS8auaqYT6Wxdf0dEv0wl+g==
X-Received: by 2002:aa7:9524:: with SMTP id c4mr19821409pfp.225.1567183703055; 
 Fri, 30 Aug 2019 09:48:23 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id q4sm6952325pff.183.2019.08.30.09.48.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 30 Aug 2019 09:48:22 -0700 (PDT)
Date: Fri, 30 Aug 2019 09:48:21 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH RESEND v2 2/6] dt-bindings: watchdog: Convert Allwinner
 watchdog to a schema
Message-ID: <20190830164821.GB7911@roeck-us.net>
References: <20190821143835.7294-1-mripard@kernel.org>
 <20190821143835.7294-2-mripard@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821143835.7294-2-mripard@kernel.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094824_698318_68CE6B72 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 wim@linux-watchdog.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:38:31PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
> 
> The Allwinner SoCs have a watchdog supported in Linux, with a matching
> Device Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> 
Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes from v1:
>   - Use generic watchdog schema
>   - Use unevaluatedProperties instead of additionalProperties
> ---
>  .../watchdog/allwinner,sun4i-a10-wdt.yaml     | 48 +++++++++++++++++++
>  .../bindings/watchdog/sunxi-wdt.txt           | 22 ---------
>  2 files changed, 48 insertions(+), 22 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
>  delete mode 100644 Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> new file mode 100644
> index 000000000000..dc7553f57708
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/allwinner,sun4i-a10-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A10 Watchdog Device Tree Bindings
> +
> +allOf:
> +  - $ref: "watchdog.yaml#"
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun4i-a10-wdt
> +      - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,sun50i-a64-wdt
> +          - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,sun50i-h6-wdt
> +          - const: allwinner,sun6i-a31-wdt
> +      - items:
> +          - const: allwinner,suniv-f1c100s-wdt
> +          - const: allwinner,sun4i-a10-wdt
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    wdt: watchdog@1c20c90 {
> +        compatible = "allwinner,sun4i-a10-wdt";
> +        reg = <0x01c20c90 0x10>;
> +        timeout-sec = <10>;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt b/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> deleted file mode 100644
> index e65198d82a2b..000000000000
> --- a/Documentation/devicetree/bindings/watchdog/sunxi-wdt.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -Allwinner SoCs Watchdog timer
> -
> -Required properties:
> -
> -- compatible : should be one of
> -	"allwinner,sun4i-a10-wdt"
> -	"allwinner,sun6i-a31-wdt"
> -	"allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
> -	"allwinner,sun50i-h6-wdt","allwinner,sun6i-a31-wdt"
> -	"allwinner,suniv-f1c100s-wdt", "allwinner,sun4i-a10-wdt"
> -- reg : Specifies base physical address and size of the registers.
> -
> -Optional properties:
> -- timeout-sec : Contains the watchdog timeout in seconds
> -
> -Example:
> -
> -wdt: watchdog@1c20c90 {
> -	compatible = "allwinner,sun4i-a10-wdt";
> -	reg = <0x01c20c90 0x10>;
> -	timeout-sec = <10>;
> -};
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
