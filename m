Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47B9D3171
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 21:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byuwp4Bmjo9kkXFgB3wyvLSRpd8ooASlTlsIH1jdqj8=; b=kyJz3gUGGpl2qV
	f5U4av4inmUCiVkDYWUlWdtVBZAtWeVabf1Ffd2OWGdva8evoH69QI+4mrg0yvDzhLXEqmU5656ed
	nleBb15DNL5mcYSVoqQ519zKqpXUY6HKXFDvFdrGQ0leeTk3+yuL2UvN3yF0F4qKcKk5v2AQVu2Az
	ZW/hlbyI7JbEXF8huBgHPRZqH4kQ33xTG/gfirBE0cFmCt7VPi/CMJDlzIjcXu/X1woLNs0tyhwwQ
	93hJlLUT6X3nZnRraDdMFLFwxt+MkrDiKCn/1Boz48tzwBHnoPcxqJ5g9s90aj5mSnVlSnP3CvKNM
	BelvutxhXR+jsFiHPsOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIeCP-00020z-PX; Thu, 10 Oct 2019 19:34:09 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIeCE-00020d-SH
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 19:34:00 +0000
Received: by mail-oi1-f193.google.com with SMTP id 83so5979268oii.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 12:33:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7ET4N4h1mz+QXnjZEYhffwJ+S0rSM6M0DCW5sXhGLr4=;
 b=XHEx7pmJK6W40GtzhxnUUrAtSUw12Q9i2OTBVFwFZnobj8VfPDWaFs8HuizOrYmgu6
 LcZmOZoY+SjG0hivJYWew80r2chOCeqvDSUHr9qFf41UKZrYKfp5lNOtpLL3fUfSxPDA
 IuSMFpfamicJ8fMz6qCtN4d7zl/iWHDIDsnJZSSKV0GytuV936QVDSAKVlIgdaYlKTUV
 rC9ct6B/sKn9n/m74Vb0XECyPaCs00ZD6SuXmJBi9s2Uwba/BmLxJVD7mcQfTXyxQS5D
 VFvxuz3oKkAFyXw2iV6eH6QA7aPEm810B/TEYHPa2MUOVDCx+E2sSlgepV/3uCgMYnzn
 Zozw==
X-Gm-Message-State: APjAAAVAzfOh32PhWNSBLBS/3wSFKEdrV3FrkaVu6JYVnZWKkjI1cCdi
 auwhsG93YzZM6c2IzJ1yDw==
X-Google-Smtp-Source: APXvYqyuT5yi9lOX+HY+jMDUqyMXIegTNgwLUO2uJeseCSix9lpmMgQ5/3duA7qI2l/FDDlVpw2grA==
X-Received: by 2002:aca:36d5:: with SMTP id d204mr8794400oia.51.1570736038102; 
 Thu, 10 Oct 2019 12:33:58 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n186sm2042419oih.58.2019.10.10.12.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 12:33:57 -0700 (PDT)
Date: Thu, 10 Oct 2019 14:33:56 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v3 02/10] dt-bindings: sram: Convert Samsung Exynos
 SYSRAM bindings to json-schema
Message-ID: <20191010193356.GA9975@bogus>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002164316.14905-2-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_123358_921410_74477E1F 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Tony Lindgren <tony@atomide.com>, Thierry Reding <thierry.reding@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-tegra@vger.kernel.org,
 =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:43:08PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos SYSRAM bindings to DT schema format using
> json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v2:
> 1. Use sram as name of node in example.
> 
> Changes since v1:
> 1. Indent example with four spaces (more readable).
> ---
>  .../devicetree/bindings/sram/samsung-sram.txt | 38 ------------
>  .../bindings/sram/samsung-sram.yaml           | 58 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 59 insertions(+), 39 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/samsung-sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/samsung-sram.yaml


> diff --git a/Documentation/devicetree/bindings/sram/samsung-sram.yaml b/Documentation/devicetree/bindings/sram/samsung-sram.yaml
> new file mode 100644
> index 000000000000..3e77c434ecca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sram/samsung-sram.yaml
> @@ -0,0 +1,58 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sram/samsung-sram.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC SYSRAM for SMP bringup
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  Samsung SMP-capable Exynos SoCs use part of the SYSRAM for the bringup
> +  of the secondary cores. Once the core gets powered up it executes the
> +  code that is residing at some specific location of the SYSRAM.
> +
> +  Therefore reserved section sub-nodes have to be added to the mmio-sram
> +  declaration. These nodes are of two types depending upon secure or
> +  non-secure execution environment.
> +
> +allOf:
> +  - $ref: "sram.yaml#"
> +
> +properties:
> +  $nodename:
> +    pattern: "^sysram(@.*)?"

As you are renaming all the node names, this will no longer work. If you 
change it to 'sram', that's going to match others, but would still work 
as long as the child node names are unique to Samsung. If you change 
them to '*-sram' then, you'd have to come up with something else. That 
probably means using 'compatible' strings. At that point, it's kind of 
silly to just be validating what your are using to select the schema. It 
may be better to just add the compatible strings into sram.yaml if 
that's the only difference.

> +
> +patternProperties:
> +  "^([a-z]*-)?sysram@[a-f0-9]$":
> +    type: object
> +
> +    properties:
> +      compatible:
> +        description:
> +          Depending upon boot mode
> +        enum:
> +          - samsung,exynos4210-sysram                 # for Secure SYSRAM
> +          - samsung,exynos4210-sysram-ns              # for Non-secure SYSRAM
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
