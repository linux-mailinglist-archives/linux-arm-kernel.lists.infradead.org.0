Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9195DC1CA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tvAOxUwF0zs/sJgc6b0bdTWGtuoWitvv27ZElU8bMY=; b=Nbh6fCU77KNg3B
	owheaAizhOibk4gwKzhZsZ4QTZ/61LK7JVYSn2LoCySK9BrNlxwdGS6V0Zt7RUH4GBgePVr93VY6+
	XWVOl8vW9gNRqZSrXnxxP/sm621HOz6S/fZTHJ6Mi3cjacuFAX7XwroK2QLGsmfaUuZRtEcWrKWc8
	HQrIWywn8paI3Kq8jvWqi7hy+8fDDERh20XzBy9E5no43eE2M8dtOPu0xA7vACdigjgTRKe+IQbg8
	9GDrjZtDje0AWWaZD761ouT+lTpFNg6aGgK9d01ZO18ZNMvo2/vO9QLiNftbwfnT9FGiCb8poSNkD
	RKqkYitVnHXFTDEDgiag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqqQ-0003S5-Ex; Mon, 30 Sep 2019 08:15:46 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqpd-0001kC-OH
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:15:00 +0000
Received: by mail-wr1-f65.google.com with SMTP id y19so10125023wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 01:14:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3CTmC1GsXW7IrK97J31Tmt/kV7wvmrOZDcAwkkYqHXE=;
 b=aQRsx0EcFqwtIOkN01Mfmh9RPUfbc8glxHJ8JDl7OKx9jGaOZteDXyQIm4UxRbCO8Y
 qt+qvjOapsvtswuMKuKDV93luVmAoxNRjulNyvCfd4O25yPMw/rXxdpkNuHBTsRrhiNh
 FOvh8MqLe8xkAMaqwwk/iCf37OxkdmX1nD1AvrpwZrk20ghzoh53qLVYqsnHeNcIbHX9
 OAQn8zw1CMU3kQBDNMlePdp1Uf1hiq39rCH33pzworAl+m0oamSZzKrjCT1Dwrgo00hp
 A6BYE3QS4cl1XU5nUF88RQVN/el8P2cg5u8e02SDCb5FUIG20c/qIIsKRlCxKOFy55Y+
 Bttw==
X-Gm-Message-State: APjAAAXS7lhw/cmr/TX+ucXp3e5RBCQ1u6c2OCxTcMrHkthPQjMXzXaS
 /OfpNl0c/BKLjWBSAmBX/3I=
X-Google-Smtp-Source: APXvYqyf7LPtms1O8Jjd41VwHzPvoRICODDhTRieA6rYEiMiQODMkzZphFr+TqX/l6nwc1iXKYA+Wg==
X-Received: by 2002:adf:ec44:: with SMTP id w4mr11667063wrn.251.1569831295653; 
 Mon, 30 Sep 2019 01:14:55 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id x2sm15727586wrn.81.2019.09.30.01.14.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 01:14:54 -0700 (PDT)
Date: Mon, 30 Sep 2019 10:14:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: timer: Convert Exynos MCT bindings
 to json-schema
Message-ID: <20190930081452.GB23709@pi3>
References: <20190923161411.9236-1-krzk@kernel.org>
 <20190927170701.GA27397@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927170701.GA27397@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011457_937691_1E3B6399 
X-CRM114-Status: GOOD (  32.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
 linux-samsung-soc@vger.kernel.org, Sylwester Nawrocki <snawrocki@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 12:07:01PM -0500, Rob Herring wrote:
> On Mon, Sep 23, 2019 at 06:14:04PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> > using json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v3:
> > 1. Use interrupts-extended instead of interrupts-map.
> 
> This is a binding change. You should mention it in the commit.

The interrupts-map was never a part of binding. It was only mentioned in
the example to show how to route interrupts to different controllers.

The bindings are not changed. Only example.

> 
> > 
> > Changes since v1:
> > 1. Indent example with four spaces (more readable),
> > 2. Rename nodes in example to timer,
> > 3. Remove mct-map subnode.
> > ---
> >  .../bindings/timer/samsung,exynos4210-mct.txt |  88 ------------
> >  .../timer/samsung,exynos4210-mct.yaml         | 125 ++++++++++++++++++
> >  2 files changed, 125 insertions(+), 88 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> >  create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> > deleted file mode 100644
> > index 8f78640ad64c..000000000000
> > --- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> > +++ /dev/null
> > @@ -1,88 +0,0 @@
> > -Samsung's Multi Core Timer (MCT)
> > -
> > -The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> > -global timer and CPU local timers. The global timer is a 64-bit free running
> > -up-counter and can generate 4 interrupts when the counter reaches one of the
> > -four preset counter values. The CPU local timers are 32-bit free running
> > -down-counters and generate an interrupt when the counter expires. There is
> > -one CPU local timer instantiated in MCT for every CPU in the system.
> > -
> > -Required properties:
> > -
> > -- compatible: should be "samsung,exynos4210-mct".
> > -  (a) "samsung,exynos4210-mct", for mct compatible with Exynos4210 mct.
> > -  (b) "samsung,exynos4412-mct", for mct compatible with Exynos4412 mct.
> > -
> > -- reg: base address of the mct controller and length of the address space
> > -  it occupies.
> > -
> > -- interrupts: the list of interrupts generated by the controller. The following
> > -  should be the order of the interrupts specified. The local timer interrupts
> > -  should be specified after the four global timer interrupts have been
> > -  specified.
> > -
> > -	0: Global Timer Interrupt 0
> > -	1: Global Timer Interrupt 1
> > -	2: Global Timer Interrupt 2
> > -	3: Global Timer Interrupt 3
> > -	4: Local Timer Interrupt 0
> > -	5: Local Timer Interrupt 1
> > -	6: ..
> > -	7: ..
> > -	i: Local Timer Interrupt n
> > -
> > -  For MCT block that uses a per-processor interrupt for local timers, such
> > -  as ones compatible with "samsung,exynos4412-mct", only one local timer
> > -  interrupt might be specified, meaning that all local timers use the same
> > -  per processor interrupt.
> > -
> > -Example 1: In this example, the IP contains two local timers, using separate
> > -	   interrupts, so two local timer interrupts have been specified,
> > -	   in addition to four global timer interrupts.
> > -
> > -	mct@10050000 {
> > -		compatible = "samsung,exynos4210-mct";
> > -		reg = <0x10050000 0x800>;
> > -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > -			     <0 42 0>, <0 48 0>;
> > -	};
> > -
> > -Example 2: In this example, the timer interrupts are connected to two separate
> > -	   interrupt controllers. Hence, an interrupt-map is created to map
> > -	   the interrupts to the respective interrupt controllers.
> > -
> > -	mct@101c0000 {
> > -		compatible = "samsung,exynos4210-mct";
> > -		reg = <0x101C0000 0x800>;
> > -		interrupt-parent = <&mct_map>;
> > -		interrupts = <0>, <1>, <2>, <3>, <4>, <5>;
> > -
> > -		mct_map: mct-map {
> > -			#interrupt-cells = <1>;
> > -			#address-cells = <0>;
> > -			#size-cells = <0>;
> > -			interrupt-map = <0 &gic 0 57 0>,
> > -					<1 &gic 0 69 0>,
> > -					<2 &combiner 12 6>,
> > -					<3 &combiner 12 7>,
> > -					<4 &gic 0 42 0>,
> > -					<5 &gic 0 48 0>;
> > -		};
> > -	};
> > -
> > -Example 3: In this example, the IP contains four local timers, but using
> > -	   a per-processor interrupt to handle them. Either all the local
> > -	   timer interrupts can be specified, with the same interrupt specifier
> > -	   value or just the first one.
> > -
> > -	mct@10050000 {
> > -		compatible = "samsung,exynos4412-mct";
> > -		reg = <0x10050000 0x800>;
> > -
> > -		/* Both ways are possible in this case. Either: */
> > -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > -			     <0 42 0>;
> > -		/* or: */
> > -		interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > -			     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> > -	};
> > diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> > new file mode 100644
> > index 000000000000..bff3f54a398f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> > @@ -0,0 +1,125 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/timer/samsung,exynos4210-mct.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung Exynos SoC Multi Core Timer (MCT)
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +description: |+
> > +  The Samsung's Multi Core Timer (MCT) module includes two main blocks, the
> > +  global timer and CPU local timers. The global timer is a 64-bit free running
> > +  up-counter and can generate 4 interrupts when the counter reaches one of the
> > +  four preset counter values. The CPU local timers are 32-bit free running
> > +  down-counters and generate an interrupt when the counter expires. There is
> > +  one CPU local timer instantiated in MCT for every CPU in the system.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - samsung,exynos4210-mct
> > +      - samsung,exynos4412-mct
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    description: |
> > +      Interrupts should be put in specific order. This is, the local timer
> > +      interrupts should be specified after the four global timer interrupts
> > +      have been specified:
> > +      0: Global Timer Interrupt 0
> > +      1: Global Timer Interrupt 1
> > +      2: Global Timer Interrupt 2
> > +      3: Global Timer Interrupt 3
> > +      4: Local Timer Interrupt 0
> > +      5: Local Timer Interrupt 1
> > +      6: ..
> > +      7: ..
> > +      i: Local Timer Interrupt n
> > +      For MCT block that uses a per-processor interrupt for local timers, such
> > +      as ones compatible with "samsung,exynos4412-mct", only one local timer
> > +      interrupt might be specified, meaning that all local timers use the same
> > +      per processor interrupt.
> > +    minItems: 5               # 4 Global + 1 local
> > +    maxItems: 20              # 4 Global + 16 local
> > +
> > +  interrupts-extended:
> 
> No need for this. Just document 'interrupts' and the tooling takes care 
> of supporting 'interrupts-extended' too.

OK.

> 
> > +    description: |
> > +      If interrupts are coming from different controllers, this property
> > +      can be used instead of regular "interrupts" property.
> > +      The format is exactly the same as with "interrupts".
> > +      Interrupts should be put in specific order. This is, the local timer
> > +    minItems: 5               # 4 Global + 1 local
> > +    maxItems: 20              # 4 Global + 16 local
> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - reg
> > +
> > +allOf:
> > +  - if:
> > +      not:
> > +        required:
> > +          - interrupts
> > +    then:
> > +      required:
> > +        - interrupts-extended
> 
> And this is taken care of too.

Sure, thanks!

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
