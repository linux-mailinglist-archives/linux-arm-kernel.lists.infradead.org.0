Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D46B225B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNb97TL8YtpLXKNo/1my3Q7C/H+sMknAQbq3aLgWHyo=; b=GXdDzU//x6TIzT
	W0eBTDPi9lu/tcpTdq5yAvsQ0GDwa5l8V3DL4cbHqgEHrWKVi2tSgok0UKBfRx9Z5A+GNV9Rn0F9e
	E8+K7g+7z7J0XbQ2kvp3QdwmcVTZzqXGugcDFbomXdNytpUDRfG4dKvMbAN+sUD+50OJYzrHFxts3
	G4cmyNuF1WUmIR9aYks6Wg2E6GRTD2IX1b2UcZMKPCFkVUruFDW1u6zlrkZVLrqjTeV+xCClCtho1
	PbyzDq8ebXTclh41rhytOgwd+IaE/uanPoUu3iWeYYTWW/BeDap4ilzv+EAD7Xxd5PoJ381nyTPut
	OaXwKkoDCj+EeA9pe3XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mjP-0004Vj-Ri; Fri, 13 Sep 2019 14:39:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgT-0002Xk-JN
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:27 +0000
Received: by mail-oi1-f195.google.com with SMTP id o205so2778341oib.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=C5lxB1SkamjYiGhernIFi0Hwph/keSNWsiTigjVm9FM=;
 b=X1HVkfG1qbBfAurGnaOcUOBQnY+BiLQF6VNQOlMhyH9TcjM/A6P4lcaeBufaWHI/mb
 j02xhgZkkIOEl89Hn49WH1GM6nZMFQqPVZw4xiRhhyo4bkJezC2h21kSiUEpE/B85k+2
 Wh0xPaJcfcEipih1nFXJ4doPf8x9Cm8qR6rU4cruYUiz3WnAQewaPVjjcfVMhVhoeSyg
 aNmHqVh43PEQWvT5vvlfv990zpxMJt/a26pf6RLCtvJC0OHK2NvQjff3IFFX/U7XeZqI
 xn6pN/INXKc48yVJNsoDV3kIZjyRD2+Wyj4zY7yeTsga4RHs3lnIU77ez0CLFKBNeYks
 Y87A==
X-Gm-Message-State: APjAAAVTds1F0lRFbsEVMsluQdNa+i6OcvkjZF/D7l/aKnp45rhY4kxg
 Wl1gTUnNaummoLH5vUFPuA==
X-Google-Smtp-Source: APXvYqzvDKYvYkB5ScZXsHQdE+uCr/W7Tj0azlbY+saF/1MssVoS4TV7Xd9yW33r1voWLmoeCea3dA==
X-Received: by 2002:aca:4c54:: with SMTP id z81mr3487645oia.0.1568385384572;
 Fri, 13 Sep 2019 07:36:24 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d38sm10985849otb.7.2019.09.13.07.36.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:23 -0700 (PDT)
Message-ID: <5d7ba967.1c69fb81.64b1c.ab06@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:23 +0100
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: timer: Convert Exynos MCT bindings to
 json-schema
References: <20190909162537.27635-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909162537.27635-1-krzk@kernel.org>
X-Mutt-References: <20190909162537.27635-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073625_714350_02655D1F 
X-CRM114-Status: GOOD (  21.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 linux-samsung-soc@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 06:25:37PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../bindings/timer/samsung,exynos4210-mct.txt |  88 --------------
>  .../timer/samsung,exynos4210-mct.yaml         | 115 ++++++++++++++++++
>  2 files changed, 115 insertions(+), 88 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml


> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> new file mode 100644
> index 000000000000..b96d2877955f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/samsung,exynos4210-mct.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC Multi Core Timer (MCT)
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> +  global timer and CPU local timers. The global timer is a 64-bit free running
> +  up-counter and can generate 4 interrupts when the counter reaches one of the
> +  four preset counter values. The CPU local timers are 32-bit free running
> +  down-counters and generate an interrupt when the counter expires. There is
> +  one CPU local timer instantiated in MCT for every CPU in the system.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - samsung,exynos4210-mct
> +      - samsung,exynos4412-mct
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      Interrupts should be put in specific order. This is, the local timer
> +      interrupts should be specified after the four global timer interrupts
> +      have been specified:
> +      0: Global Timer Interrupt 0
> +      1: Global Timer Interrupt 1
> +      2: Global Timer Interrupt 2
> +      3: Global Timer Interrupt 3
> +      4: Local Timer Interrupt 0
> +      5: Local Timer Interrupt 1
> +      6: ..
> +      7: ..
> +      i: Local Timer Interrupt n
> +      For MCT block that uses a per-processor interrupt for local timers, such
> +      as ones compatible with "samsung,exynos4412-mct", only one local timer
> +      interrupt might be specified, meaning that all local timers use the same
> +      per processor interrupt.
> +    minItems: 5               # 4 Global + 1 local
> +    maxItems: 20              # 4 Global + 16 local
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - reg
> +
> +examples:
> +  - |
> +    // In this example, the IP contains two local timers, using separate
> +    // interrupts, so two local timer interrupts have been specified,
> +    // in addition to four global timer interrupts.
> +      mct@10050000 {

Can we clean this up and use 'timer' here.

> +        compatible = "samsung,exynos4210-mct";
> +        reg = <0x10050000 0x800>;
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>, <0 48 0>;
> +      };
> +
> +  - |
> +    // In this example, the timer interrupts are connected to two separate
> +    // interrupt controllers. Hence, an interrupt-map is created to map
> +    // the interrupts to the respective interrupt controllers.
> +
> +    mct@101c0000 {
> +      compatible = "samsung,exynos4210-mct";
> +      reg = <0x101C0000 0x800>;
> +      interrupt-parent = <&mct_map>;
> +      interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
> +
> +      mct_map: mct-map {

This needs to be documented.

Note, I don't really see any reason this needs to be a child node.

> +        #interrupt-cells = <1>;
> +        #address-cells = <0>;
> +        #size-cells = <0>;
> +        interrupt-map = <0 &gic 0 57 0>,
> +                        <1 &gic 0 69 0>,
> +                        <2 &combiner 12 6>,
> +                        <3 &combiner 12 7>,
> +                        <4 &gic 0 42 0>,
> +                        <5 &gic 0 48 0>;
> +      };
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. Only one first local
> +    // interrupt is specified.
> +
> +    mct@10050000 {
> +      compatible = "samsung,exynos4412-mct";
> +      reg = <0x10050000 0x800>;
> +
> +      interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                   <0 42 0>;
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. All the local timer
> +    // interrupts are specified.
> +
> +    mct@10050000 {
> +      compatible = "samsung,exynos4412-mct";
> +      reg = <0x10050000 0x800>;
> +
> +      interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                   <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> +    };
> -- 
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
