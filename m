Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B06DE92A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 23:06:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=glSV/L2yLMpu6uA9stJzVkpcZsV5LMkM2ZuPQYydeIk=; b=ax8AeQvFvbR5gt
	+ETAaR5o2xVoLJfTfUWFCxSvOknDtzEU7F+g9kPMfm69MWiLbBbcYRo8YfJlw0ph6m0c+pYBDEdbG
	/E/jDdG/z7B6HEuP/ZAQ7n9nZYg4xOPmGfYut2qoP4ekar0dPp8RcWIuQZuVl39qKq0DICg7naaxl
	wyUkDuVRgLaAH3HSc9bdYyP6XmtGl67YBVmRMjwCIH3/CLVfr5JDDzXMHm7PWyPfOmZ7G/W5VouPn
	E0wOcBGiC+GO4HLtmEEw4r8DdvjCuy60SDr+R9gb+eRQprdIp8vkSyMjBRMaUl04mHqLzjoBs7cFG
	aroQfdOeKUiZQaVg3EwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZdK-0006Fp-A1; Tue, 29 Oct 2019 22:06:34 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZdA-0006EO-Py
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 22:06:26 +0000
Received: by mail-oi1-f195.google.com with SMTP id v186so234782oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 15:06:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vfqb9iayrD7twK1Yov7mjax5KVdTInGQjQseAedA/Nc=;
 b=Rta9s5Z03uDImgYBhioXJ9UQI8l4iafAlZJFrilwOL4L1fu2qZlWSlmAOWAm1WetS6
 TN9LArrjalvX3d7fCRSGGqpySUFtbkQwud7oZqYIXpjavARdTP05Yb/0Rz8a+WYC5K6F
 n8D1DGX2gBO/FXn1xGWSoENYxMapjE82jVcpps1YjZvumZY+6d5OEe4ndgGYIakL2K5A
 oMcCAor7CWwKVItcCLF7ZzUm7fqTL6rihoE+OWO6FgMaQJ19eDVBlAziGi9JVLd2Qrfw
 YL2vXntwAUj9G5Jo7221dkBYd8uN9CoPkTLBAZm2yfPSLaK257J+Qpr2rZzf5NWGZ+cQ
 qfGg==
X-Gm-Message-State: APjAAAXs5A0Njoj5+/KnenJ6xA4dwlsPBDl0Llh2Px8vWYM6h9rfHzde
 qkzMU7VPomu18y73taJZTT5XzDtyWw==
X-Google-Smtp-Source: APXvYqxwuc2I1yytREdN+EWBcO63dl9Z8r2Iv+fVZtPjjtDikI1+tT3JcyRAJk+RU3PXiiEyUtzOXg==
X-Received: by 2002:aca:e104:: with SMTP id y4mr6256504oig.117.1572386781514; 
 Tue, 29 Oct 2019 15:06:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h3sm90777otj.64.2019.10.29.15.06.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 15:06:20 -0700 (PDT)
Date: Tue, 29 Oct 2019 17:06:20 -0500
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v11 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Message-ID: <20191029220620.GA14316@bogus>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
 <20191025175625.8011-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025175625.8011-2-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_150624_848835_07E3602E 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 11:26:19PM +0530, Jagan Teki wrote:
> The MIPI DSI controller in Allwinner A64 is similar to A33.
> 
> But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> to have separate compatible for A64 on the same driver.
> 
> DSI_SCLK uses mod clock-names on dt-bindings, so the same
> is not required for A64.
> 
> On that note
> - A64 require minimum of 1 clock like the bus clock
> - A33 require minimum of 2 clocks like both bus, mod clocks
> 
> So, update dt-bindings so-that it can document both A33,
> A64 bindings requirements.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> index dafc0980c4fa..2b7016ca382c 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> @@ -15,7 +15,9 @@ properties:
>    "#size-cells": true
>  
>    compatible:
> -    const: allwinner,sun6i-a31-mipi-dsi
> +    oneOf:
> +      - const: allwinner,sun6i-a31-mipi-dsi
> +      - const: allwinner,sun50i-a64-mipi-dsi

Use 'enum' instead of oneOf+const.

With that fixed,

Reviewed-by: Rob Herring <robh@kernel.org>

>  
>    reg:
>      maxItems: 1
> @@ -24,6 +26,8 @@ properties:
>      maxItems: 1
>  
>    clocks:
> +    minItems: 1
> +    maxItems: 2
>      items:
>        - description: Bus Clock
>        - description: Module Clock
> @@ -63,13 +67,25 @@ required:
>    - reg
>    - interrupts
>    - clocks
> -  - clock-names
>    - phys
>    - phy-names
>    - resets
>    - vcc-dsi-supply
>    - port
>  
> +allOf:
> +  - if:
> +      properties:
> +         compatible:
> +           contains:
> +             const: allwinner,sun6i-a31-mipi-dsi
> +      then:
> +        properties:
> +          clocks:
> +            minItems: 2
> +        required:
> +          - clock-names
> +
>  additionalProperties: false
>  
>  examples:
> -- 
> 2.18.0.321.gffc6fa0e3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
