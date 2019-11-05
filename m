Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDA3F0A08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 00:06:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7zRtnoc2b1Netk9zW36G3HE+le47cer/IvgwYLbb18=; b=LOfwLKJjXy8vBb
	weY1fO9a6ThelwrD7k82uoCKv4w9EpZU/bfj62fEoSrGJxty0fNube6fgySUzBCFdMyeR/SwdP2xn
	bOH7k5wJBS8TE0cEgzfDgE9DG1PjhsqvQwXm/4qcjXsGNQyZX/NL5m1/6c2x9FJo2Yxck8vM2sVhF
	nK3w8zo3mbZcZNd1j4ueBuGZ1YlWYgfQ3AmGzpnDeYrNIElUQr3jwFf0vOxg4GSsRyslmjvQlyqmW
	W8gH4lzo3nHlYZi0ayIjDt/hTgnZq/sUYxHE6n4mVvXhdLbTs7Ipk+/r+ZFjlyU9ylI70TNL4rFKE
	rqBlveoRobg7F41ajXVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS7th-0005N8-5F; Tue, 05 Nov 2019 23:06:01 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS7ta-0005MV-Lj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 23:05:56 +0000
Received: by mail-oi1-f193.google.com with SMTP id l20so7124176oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 15:05:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LAi+qZUkuhq1d2wVLpPVPcbuNd2aQs6HwzUUOf0K5n0=;
 b=buu8xZY7JJvpXTouE2JSzAkN7oE7faNt7F4ZAsMfYnw+/m9BmkM67S6AuaKhzbwaBQ
 XRUx4fs3Rf8xe3Mcl2kBEUkOI1+yzWxms/y9nz2u/bSinbctpdvX43QwUEiJqyfxFUBO
 cSppsXdQGOsf4PnJ9p4J+Ury+RBF/fl3n2AGz79A/ru0tYq55IwOejXhtN9Nlnnl0qMl
 nhY8n1ALHB7nzud/QH2GaUGckngJsv3T0XqnbO1+OsSexTa37y90gVEclUW3+kgXjWrT
 vRG8+PzR0gr4UwaYVIkPsfbPuMM5ZSEjHZG3dsGOS67T+0Y38J7g3h33HvhXGNnVKFfP
 /RCg==
X-Gm-Message-State: APjAAAUtvjXx+71kbzYil+O/FqKUfhIQ1aBw83a3BTkgFSvyNKOUehgI
 +suH9Vq5qB/S9dUzb4HLZg==
X-Google-Smtp-Source: APXvYqxhGYoDJXdpfnXNnhPdoaao9UI1xI0qHKyHXJT6+QFjo/BppkWuai5Qa9e9sgoNmpyOlN7Oew==
X-Received: by 2002:aca:c4d5:: with SMTP id u204mr1189182oif.119.1572995153554; 
 Tue, 05 Nov 2019 15:05:53 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q82sm1372503oif.11.2019.11.05.15.05.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 15:05:52 -0800 (PST)
Date: Tue, 5 Nov 2019 17:05:52 -0600
From: Rob Herring <robh@kernel.org>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v2 1/5] dt-bindings: media: ti-vpe: Document VPE driver
Message-ID: <20191105230552.GA25817@bogus>
References: <20191104203841.3628-1-bparrot@ti.com>
 <20191104203841.3628-2-bparrot@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104203841.3628-2-bparrot@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_150554_712124_7667005E 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 02:38:37PM -0600, Benoit Parrot wrote:
> Device Tree bindings for the Video Processing Engine (VPE).
> 
> Signed-off-by: Benoit Parrot <bparrot@ti.com>
> ---
>  .../devicetree/bindings/media/ti,vpe.yaml     | 64 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/ti,vpe.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/ti,vpe.yaml b/Documentation/devicetree/bindings/media/ti,vpe.yaml
> new file mode 100644
> index 000000000000..eb9f3e1b7f5f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/ti,vpe.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0)

For new bindings:

# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/ti,vpe.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments DRA7x Video Processing Engine (VPE) Device Tree Bindings
> +
> +maintainers:
> +  - Benoit Parrot <bparrot@ti.com>
> +
> +description: |-
> +  The Video Processing Engine (VPE) is a key component for image post
> +  processing applications. VPE consist of a single memory to memory
> +  path which can perform chroma up/down sampling, deinterlacing,
> +  scaling and color space conversion.
> +
> +properties:
> +  compatible:
> +      const: ti,dra7-vpe
> +
> +  reg:
> +    items:
> +      - description: The VPE main register region
> +      - description: Scaler (SC) register region
> +      - description: Color Space Conversion (CSC) register region
> +      - description: Video Port Direct Memory Access (VPDMA) register region
> +
> +  reg-names:
> +    items:
> +      - const: vpe_top
> +      - const: sc
> +      - const: csc
> +      - const: vpdma
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    vpe: vpe@489d0000 {
> +        compatible = "ti,dra7-vpe";
> +        reg = <0x489d0000 0x120>,
> +              <0x489d0700 0x80>,
> +              <0x489d5700 0x18>,
> +              <0x489dd000 0x400>;
> +        reg-names = "vpe_top",
> +                    "sc",
> +                    "csc",
> +                    "vpdma";
> +        interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d360df48f9f2..baf3aac1ab7c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16316,6 +16316,7 @@ Q:	http://patchwork.linuxtv.org/project/linux-media/list/
>  S:	Maintained
>  F:	drivers/media/platform/ti-vpe/
>  F:	Documentation/devicetree/bindings/media/ti,cal.yaml
> +F:	Documentation/devicetree/bindings/media/ti,vpe.yaml
>  
>  TI WILINK WIRELESS DRIVERS
>  L:	linux-wireless@vger.kernel.org
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
