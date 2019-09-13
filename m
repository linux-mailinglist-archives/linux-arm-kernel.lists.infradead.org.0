Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB53B225C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvv2VR6lT3Ulu9xYBiEJY3iAJ6t4dDfYYIWBG/EkJQw=; b=AzJj3fhAL8Q0xb
	/GNYUu+4uboHUY91NxRXqA+IyXWdqKjS4TMXVz9JDes7IMrwTNrF1t//PL0zAHM2I98xjEb9cxj/Z
	SzoVnqtyDrpWB9PwEunQZWNhDAfb/GLrsCQ5kdoRO/ByoFWjGfgM6ectcD/cDFG+P9RORWS4l5bnm
	4Tsso9WjeKKi9pT9qkev6ej7QHfSsJkTD6k0Cw5gNQ0d/YBwZzshmH5dxPOFPndkqo87F5D9Zohvr
	/lz0x60VJPVlPAUB5B4fOxOy41Ysa3/wvuIGJaU5TzMRwtfDuphjN47tg3n1BMwN9HImMPXBmRnoT
	nMtUgE/nMLpQGwrfcWbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mjg-0004iQ-PN; Fri, 13 Sep 2019 14:39:44 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgU-0002Yp-GW
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:29 +0000
Received: by mail-oi1-f196.google.com with SMTP id k9so1838928oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+gFzsRCMB/S5/2NImCatrFU6mHejOO77M/5QHXhL2CE=;
 b=brQAimX2s3nNpgtaez62zrxw5CkkyTE4hN+VG9HPLYCOhY0BhtpXg7K4dL1GRSrIXR
 wKWGBqtu6BK4/lrM65Tuia4oOXr2w++YauYXgX5b3k64OjtaRHa6I7xlsoeGqaFU1BQz
 qMGFsBo3U5MtPf4G4tXDYVd9vdVFyBjC+06ERuUZntW4wcgaBQzVx0Zq6QF8nOiWHCq0
 xo1+hvO1T7jFdvQ39k1xkSXnMf/O5O+49AvgWbBM3AUzCEWNSRo/XAN5leD3ypzTxAOl
 V4GzQ1TdKFAMKlv+KAmzEwE/8WL8xv1frGSIx3V7usDeL8OJJytqTIFtvEJEwSKmURcv
 v2jQ==
X-Gm-Message-State: APjAAAW3cy3YmkO9vUOua/RDs7Hf1j6eg+CEmOu/GEW76tcjWRP8S7/3
 VU0nxPV9mu0ygeJhcIp7gw==
X-Google-Smtp-Source: APXvYqzDJcu7XMQwyfdu88xRNFK5/eDi+cajXRPFFVqk0IhjM9XwyTsN3OWNGDYIZvHiX+LnZBRMuw==
X-Received: by 2002:a05:6808:8e3:: with SMTP id
 d3mr3373504oic.153.1568385385768; 
 Fri, 13 Sep 2019 07:36:25 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o19sm841989oic.26.2019.09.13.07.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:25 -0700 (PDT)
Date: Fri, 13 Sep 2019 15:36:24 +0100
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [RFC PATCH 2/2] dt-bindings: pwm: Convert Samsung PWM bindings
 to json-schema
Message-ID: <20190912175001.GA29884@bogus>
References: <20190909183436.9045-1-krzk@kernel.org>
 <20190909183436.9045-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909183436.9045-2-krzk@kernel.org>
X-Mutt-References: <20190909183436.9045-2-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073626_863747_2EE4EBDF 
X-CRM114-Status: GOOD (  19.63  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Maciej Falkowski <m.falkowski@samsung.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-leds@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 08:34:36PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung PWM (S3C, S5P and Exynos SoCs) bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../devicetree/bindings/pwm/pwm-samsung.txt   |  51 --------
>  .../devicetree/bindings/pwm/pwm-samsung.yaml  | 111 ++++++++++++++++++
>  2 files changed, 111 insertions(+), 51 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml


> diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> new file mode 100644
> index 000000000000..90fb467bcdd5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
> @@ -0,0 +1,111 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-samsung.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SoC PWM timers
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  Samsung SoCs contain PWM timer blocks which can be used for system clock source
> +  and clock event timers, as well as to drive SoC outputs with PWM signal. Each
> +  PWM timer block provides 5 PWM channels (not all of them can drive physical
> +  outputs - see SoC and board manual).
> +
> +  Be aware that the clocksource driver supports only uniprocessor systems.
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,s3c2410-pwm             # 16-bit, S3C24xx
> +      - samsung,s3c6400-pwm             # 32-bit, S3C64xx
> +      - samsung,s5p6440-pwm             # 32-bit, S5P64x0
> +      - samsung,s5pc100-pwm             # 32-bit, S5PC100, S5PV210, Exynos4210 rev0 SoCs
> +      - samsung,exynos4210-pwm          # 32-bit, Exynos
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  clock-names:
> +    description: |
> +      Should contain all following required clock names:
> +      - "timers" - PWM base clock used to generate PWM signals,
> +      and any subset of following optional clock names:
> +      - "pwm-tclk0" - first external PWM clock source,
> +      - "pwm-tclk1" - second external PWM clock source.
> +      Note that not all IP variants allow using all external clock sources.
> +      Refer to SoC documentation to learn which clock source configurations
> +      are available.
> +    oneOf:
> +      - items:
> +        - const: "timers"
> +      - items:
> +        - const: "timers"
> +        - const: "pwm-tclk0"
> +      - items:
> +        - const: "timers"
> +        - const: "pwm-tclk1"
> +      - items:
> +        - const: "timers"
> +        - const: "pwm-tclk0"
> +        - const: "pwm-tclk1"
> +
> +  interrupts:
> +    description:
> +      One interrupt per timer, starting at timer 0.
> +    minItems: 1
> +    maxItems: 5
> +
> +  "#pwm-cells":
> +    description:
> +      The only third cell flag supported by this binding
> +      is PWM_POLARITY_INVERTED.
> +    const: 3
> +
> +  samsung,pwm-outputs:
> +    description:
> +      A list of PWM channels used as PWM outputs on particular platform.
> +      It is an array of up to 5 elements being indices of PWM channels
> +      (from 0 to 4), the order does not matter.
> +    # TODO: Values should not repeat

uniqueItems: true

Though it looks like we have to enable that keyword. (As silently 
ignoring unknown keywords (such as typos) is 'feature' of json-schema, 
we explicitly list keywords we use.)

> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +      # FIXME: min/max limit of items does not work
> +      - items:
> +          minItems: 1
> +          maxItems: 5
> +      - items:
> +          minimum: 0
> +          maximum: 4

I think you want:

minItems: 1
maxItems: 2
items:
  minimum: 0
  maximum: 4

> +
> +required:
> +  - clocks
> +  - clock-names
> +  - compatible
> +  - interrupts
> +  - "#pwm-cells"
> +  - reg
> +
> +examples:
> +  - |
> +    pwm@7f006000 {
> +      compatible = "samsung,s3c6400-pwm";
> +      reg = <0x7f006000 0x1000>;
> +      interrupt-parent = <&vic0>;
> +      interrupts = <23>, <24>, <25>, <27>, <28>;
> +      clocks = <&clock 67>;
> +      clock-names = "timers";
> +      samsung,pwm-outputs = <0>, <1>;
> +      #pwm-cells = <3>;
> +    };
> -- 
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
