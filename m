Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E802C09FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 19:07:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VrekkiLyv65RTe965R5z5LZgpZNsFbqCGXPBKcnte4=; b=lo03nIPnhMu/a+
	zPfzQUPtfq2Sr08qYiEirjj/JH6TGxyvs/Ugl5DBge8rfZ/Wvgib60ItH2JFvN9UFum6W8DllRCAm
	rsgcA9d4LXgQRvNgQxQXvoaDO5Lf9UcBkex9Kubvi12uE5ZhG7tgLBC/uV8sFkgyXievSE+BxFUQT
	ixPkRYmuhqfNdjSZT+N/4jr8zwGMi5yB71fqaIXpPCP+8ssXQKDkpn7Hj/4fqHyPk7pXADzBmZTMu
	IyC8jZVgsWkWVeOitC6WQQqntwTrZQ8cXR4t1u8PVqyuKPaBAWP35oDFbuVqo0f+Z0dsuOIQC7udS
	q16sDAm/ygOUX7LpAnZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDtiA-00057U-DO; Fri, 27 Sep 2019 17:07:18 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDthz-00056V-Ew
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 17:07:09 +0000
Received: by mail-ot1-f67.google.com with SMTP id 21so2838752otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 10:07:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s9jZa7L1SPVwl5gIjsK2sUiHrUvMn6vrOzETT5igrfY=;
 b=jI8MtOOBuoKFqVAlp51Kl/a3jOYLfV108gxIPEmGh69Xj2Newm0MRLWPaU9fRi5GVz
 yb4AB99yRnkLZRyDWRvMuMj1vBXg5iryw8cwrYUhfakP6GzmJCshFQ9K6E6dnBA1CrBx
 nTagKrmrvOdHU2TvPJ2+EsbmPFkwZtT3VrgSqG4hh22DYLlLOqhtVmBWsQ4iemeoXDvt
 kgDL4+f1dcB0c8HmlYD9T85WxaxtuKMI8O9g1lvP4bI5dXPL4DVvpbA40Aurnc/Q9GKW
 yuiM90OY85yVHj2XjQHfLl93z9oluYIPU79TQ/k51Ff6l3agnLGEVFdpyRofhKuiNxtj
 TAVQ==
X-Gm-Message-State: APjAAAUSu6Dk1OXaCXJ/qdfxNILCyYDUrxualYbYiWmgV1+5ArSY/Rpd
 NRlljUEmNWwgmhDBed+/+w==
X-Google-Smtp-Source: APXvYqxrslnQ9UBZ4HNinJxn5nvRcJVHKOVKFxy4EaoTDuCZDrqtAxCctkuCo5DqunoUlCnNvqK/hQ==
X-Received: by 2002:a9d:200c:: with SMTP id n12mr4165968ota.334.1569604022352; 
 Fri, 27 Sep 2019 10:07:02 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k19sm1719599oiw.31.2019.09.27.10.07.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 10:07:01 -0700 (PDT)
Date: Fri, 27 Sep 2019 12:07:01 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: timer: Convert Exynos MCT bindings
 to json-schema
Message-ID: <20190927170701.GA27397@bogus>
References: <20190923161411.9236-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923161411.9236-1-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_100707_501337_C2C8C2C3 
X-CRM114-Status: GOOD (  28.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-samsung-soc@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 06:14:04PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v3:
> 1. Use interrupts-extended instead of interrupts-map.

This is a binding change. You should mention it in the commit.

> 
> Changes since v1:
> 1. Indent example with four spaces (more readable),
> 2. Rename nodes in example to timer,
> 3. Remove mct-map subnode.
> ---
>  .../bindings/timer/samsung,exynos4210-mct.txt |  88 ------------
>  .../timer/samsung,exynos4210-mct.yaml         | 125 ++++++++++++++++++
>  2 files changed, 125 insertions(+), 88 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> deleted file mode 100644
> index 8f78640ad64c..000000000000
> --- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> +++ /dev/null
> @@ -1,88 +0,0 @@
> -Samsung's Multi Core Timer (MCT)
> -
> -The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> -global timer and CPU local timers. The global timer is a 64-bit free running
> -up-counter and can generate 4 interrupts when the counter reaches one of the
> -four preset counter values. The CPU local timers are 32-bit free running
> -down-counters and generate an interrupt when the counter expires. There is
> -one CPU local timer instantiated in MCT for every CPU in the system.
> -
> -Required properties:
> -
> -- compatible: should be "samsung,exynos4210-mct".
> -  (a) "samsung,exynos4210-mct", for mct compatible with Exynos4210 mct.
> -  (b) "samsung,exynos4412-mct", for mct compatible with Exynos4412 mct.
> -
> -- reg: base address of the mct controller and length of the address space
> -  it occupies.
> -
> -- interrupts: the list of interrupts generated by the controller. The following
> -  should be the order of the interrupts specified. The local timer interrupts
> -  should be specified after the four global timer interrupts have been
> -  specified.
> -
> -	0: Global Timer Interrupt 0
> -	1: Global Timer Interrupt 1
> -	2: Global Timer Interrupt 2
> -	3: Global Timer Interrupt 3
> -	4: Local Timer Interrupt 0
> -	5: Local Timer Interrupt 1
> -	6: ..
> -	7: ..
> -	i: Local Timer Interrupt n
> -
> -  For MCT block that uses a per-processor interrupt for local timers, such
> -  as ones compatible with "samsung,exynos4412-mct", only one local timer
> -  interrupt might be specified, meaning that all local timers use the same
> -  per processor interrupt.
> -
> -Example 1: In this example, the IP contains two local timers, using separate
> -	   interrupts, so two local timer interrupts have been specified,
> -	   in addition to four global timer interrupts.
> -
> -	mct@10050000 {
> -		compatible = "samsung,exynos4210-mct";
> -		reg = <0x10050000 0x800>;
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>, <0 48 0>;
> -	};
> -
> -Example 2: In this example, the timer interrupts are connected to two separate
> -	   interrupt controllers. Hence, an interrupt-map is created to map
> -	   the interrupts to the respective interrupt controllers.
> -
> -	mct@101c0000 {
> -		compatible = "samsung,exynos4210-mct";
> -		reg = <0x101C0000 0x800>;
> -		interrupt-parent = <&mct_map>;
> -		interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
> -
> -		mct_map: mct-map {
> -			#interrupt-cells = <1>;
> -			#address-cells = <0>;
> -			#size-cells = <0>;
> -			interrupt-map = <0 &gic 0 57 0>,
> -					<1 &gic 0 69 0>,
> -					<2 &combiner 12 6>,
> -					<3 &combiner 12 7>,
> -					<4 &gic 0 42 0>,
> -					<5 &gic 0 48 0>;
> -		};
> -	};
> -
> -Example 3: In this example, the IP contains four local timers, but using
> -	   a per-processor interrupt to handle them. Either all the local
> -	   timer interrupts can be specified, with the same interrupt specifier
> -	   value or just the first one.
> -
> -	mct@10050000 {
> -		compatible = "samsung,exynos4412-mct";
> -		reg = <0x10050000 0x800>;
> -
> -		/* Both ways are possible in this case. Either: */
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>;
> -		/* or: */
> -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -			     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> new file mode 100644
> index 000000000000..bff3f54a398f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> @@ -0,0 +1,125 @@
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
> +  interrupts-extended:

No need for this. Just document 'interrupts' and the tooling takes care 
of supporting 'interrupts-extended' too.

> +    description: |
> +      If interrupts are coming from different controllers, this property
> +      can be used instead of regular "interrupts" property.
> +      The format is exactly the same as with "interrupts".
> +      Interrupts should be put in specific order. This is, the local timer
> +    minItems: 5               # 4 Global + 1 local
> +    maxItems: 20              # 4 Global + 16 local
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - reg
> +
> +allOf:
> +  - if:
> +      not:
> +        required:
> +          - interrupts
> +    then:
> +      required:
> +        - interrupts-extended

And this is taken care of too.

> +
> +examples:
> +  - |
> +    // In this example, the IP contains two local timers, using separate
> +    // interrupts, so two local timer interrupts have been specified,
> +    // in addition to four global timer interrupts.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4210-mct";
> +        reg = <0x10050000 0x800>;
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>, <0 48 0>;
> +    };
> +
> +  - |
> +    // In this example, the timer interrupts are connected to two separate
> +    // interrupt controllers. Hence, an interrupts-extended is needed.
> +
> +    timer@101c0000 {
> +        compatible = "samsung,exynos4210-mct";
> +        reg = <0x101C0000 0x800>;
> +        interrupts-extended = <&gic 0 57 0>,
> +                              <&gic 0 69 0>,
> +                              <&combiner 12 6>,
> +                              <&combiner 12 7>,
> +                              <&gic 0 42 0>,
> +                              <&gic 0 48 0>;
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. Only one first local
> +    // interrupt is specified.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4412-mct";
> +        reg = <0x10050000 0x800>;
> +
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>;
> +    };
> +
> +  - |
> +    // In this example, the IP contains four local timers, but using
> +    // a per-processor interrupt to handle them. All the local timer
> +    // interrupts are specified.
> +
> +    timer@10050000 {
> +        compatible = "samsung,exynos4412-mct";
> +        reg = <0x10050000 0x800>;
> +
> +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> +                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
