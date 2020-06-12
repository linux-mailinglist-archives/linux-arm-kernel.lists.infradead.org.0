Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E98C1F7E97
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 23:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf29iK4MpaZBwr81aR4gixhvX9Ay2uezC4B5J49EEGQ=; b=aerwteBzmJCUSZ
	+VhbhORtnR+L/1o2VzOs8SLSAiT5B5uA4Mome4sc9TKUOXdcR8BliMj0aU7+tUGbTHVtzPQtMRxwV
	95GTSA4O+8aNTLG5FvVROt5olsMSrGSIFK/2yUAwuA4znWq2pDi/1Og83YurKa4OUg2ZE5uXMqPe2
	SUGYDk3kDFJnIKKvo6FHayY7knKptXMJNamkGbPCJXq5+1QqIMoB1cUEBKO9I4QLzZCgqjtqMg/k0
	3Wfsx0sHnUddWCm6sRQzIi94O69xtqKVeA9tc1x+54PIWdqeb1x/nwc+GlcR6ssh3ZQmXLuVm+kfD
	2F9rkNmKq1iOxyhRU71w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjrfh-0006C6-PF; Fri, 12 Jun 2020 21:57:09 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjrfX-0006Bc-LC
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 21:57:01 +0000
Received: by mail-il1-f193.google.com with SMTP id e11so10145856ilr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 14:56:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=+ERj0Rs2fBV1qZjih5Ki74R7VK7giFh3Euk5Qsf66JA=;
 b=QCt4nFi+VK1tHAk/69Khr6tgEb1DzBBg1RIq3bUz1QWTt74tWTdDJq9UAXfNH5P4Rv
 rGSCXnBCFmOGL+v2HOtSeYJT6RUr5DWEjBvhrHvlrKPhlCcH9QbDE8x51B+Fkfl5PJKm
 CTQ4L+/EVVa/V41fEVYKgs4nIW1Fn1iPnee6n+4HH0j9rktS6jJ2r50sN49f7x0biQJp
 svVV/X1D2322l/Qh0+ePR3KRGDRmWzbWScLj4nWHxnAEd0uED0p+17vLlV4BxFR3/SfM
 2VgjrI0lKXttnhvYARppiClzeTo+X7cfgCiODisPfAoW60Fe6un/3ZowGnoZhp2wfbyc
 iLWw==
X-Gm-Message-State: AOAM5328jNhGHOBGzntSvgFiS6KcMzKFR/UPVLPLgbVbSD7y9vri+UBK
 VayS6kayky4VhfF91J6Q7g==
X-Google-Smtp-Source: ABdhPJxl0sSVvAJJyMg0adHj0Sf5cuUGj9Wcok8qKjC3vDCQNiH7E/L2mz9vX5+UwoQgJheAsUTMQg==
X-Received: by 2002:a92:c78b:: with SMTP id c11mr14999885ilk.56.1591999018567; 
 Fri, 12 Jun 2020 14:56:58 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id y2sm3652530ilg.69.2020.06.12.14.56.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 14:56:58 -0700 (PDT)
Received: (nullmailer pid 3884138 invoked by uid 1000);
 Fri, 12 Jun 2020 21:56:56 -0000
Date: Fri, 12 Jun 2020 15:56:56 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?=C1lvaro_Fern=E1ndez?= Rojas <noltari@gmail.com>
Subject: Re: [PATCH v3 1/9] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
Message-ID: <20200612215656.GB3881384@bogus>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
 <20200610171630.465579-2-noltari@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610171630.465579-2-noltari@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_145659_694087_470B33D3 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, hauke@hauke-m.de,
 zajec5@gmail.com, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 tsbogend@alpha.franken.de, bcm-kernel-feedback-list@broadcom.com,
 jonas.gorski@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 07:16:22PM +0200, =C1lvaro Fern=E1ndez Rojas wrote:
> BCM6318, BCM6328, BCM6362 and BCM63268 SoCs have a power domain controller
> to enable/disable certain components in order to save power.
> =

> Signed-off-by: =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  v3: fix reg maxItems and quote #power-domain-cells.
>  v2: Add separate YAML file.
> =

>  .../bindings/soc/bcm/brcm,bcm63xx-power.yaml  | 44 +++++++++++++++++++

Goes in bindings/power/

>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm63x=
x-power.yaml
> =

> diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm63xx-power=
.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm63xx-power.yaml
> new file mode 100644
> index 000000000000..fd4204d9aaf6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm63xx-power.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later

Okay with GPLv9? Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/soc/brcm/brcm,bcm63xx-power.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: BCM63xx power domain driver
> +
> +maintainers:
> +  - =C1lvaro Fern=E1ndez Rojas <noltari@gmail.com>
> +
> +description: |
> +  BCM6318, BCM6328, BCM6362 and BCM63268 SoCs have a power domain contro=
ller
> +  to enable/disable certain components in order to save power.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - brcm,bcm6318-power-controller
> +          - brcm,bcm6328-power-controller
> +          - brcm,bcm6362-power-controller
> +          - brcm,bcm63268-power-controller
> +
> +  reg:
> +    maxItems: 2
> +
> +  "#power-domain-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#power-domain-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    periph_pwr: power-controller@10001848 {
> +        compatible =3D "brcm,bcm6328-power-controller";
> +        reg =3D <0x10001848 0x4>;
> +        #power-domain-cells =3D <1>;
> +    };
> -- =

> 2.26.2
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
