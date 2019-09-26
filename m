Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50650BEE54
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUnRX4kv81hlmNHO82F8ikyCetSxGMkntyuWACoAs4g=; b=N9U1dxkDpFO15r
	S2ZFJG4c/i/FaiTXVg3eO7txBLTEC7FqnajMd7iQiil0xKKO7JWLAWcG8xOXus2R9KqjG3g+K2CC/
	YNiTgco52mu1eswSB9HvBNl/+nMql0cBCbVm46+EvINAuZkzo3ct9HXzY2D0uTC/zCopHUgu4YLmP
	OnIWDrleHSYDu+Qg/dOYLrnGqlROR/selJos4s6OjoC9i2dntcqhkCIdlxZ6yqXCPhXECV0ZL+LBF
	g1B56UsofNU/bQ6OzxrIx5pwLMY+i0AsKhE/JKTHupS0JqKp8BOQY7y6PRcwAJlymv3jUq8ay5KP5
	2F6XVTzhvXGbMPXPAEPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPxp-0005ji-Hf; Thu, 26 Sep 2019 09:21:29 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPxM-0005hq-Qj
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:21:03 +0000
Received: by mail-wr1-f68.google.com with SMTP id q17so1542266wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 02:20:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0yFgoWaDFqXC6Q4Iw65F2epQQ4rqVPkyo8j0S3UI0fw=;
 b=XdsAdFH9LUJmmbs6o7+pGJU0oH1bv7aGV7iH+Moar/sDFqo+wDyNT/Xcusgpcx3D9h
 +6KOi+MN7h6zkF2lqrpqvrilSWYpdYOJ8RiuV9ai2ANu2aV7/mTB6ZNCrzwKWI52Rajd
 QxsvPvMmE98cMRtj8J2B8ehSi9EYl+6xQF4Z4mjJxMm7Ns7vVFTSfYY+u7NEu2PlvC94
 IrMpSZaWYmA/A/I6i/YlIqsmjFVLS7T3l4p0xian2MA4K7/zI0BVhxlCW55S601luJGT
 mLTynEUBurFgTwVoMz/0/mIrzHE2Guls/VxesuXVkT6zwLa0JM/OT6iGG39iCo61s4/T
 PgBA==
X-Gm-Message-State: APjAAAVdGHtbsZvxMRndXOytSYTbO6ZWmVsu2Q1bGvlHkJdD+3Mm9qYY
 aosW9uEvCSE+TKMOntsVIt8=
X-Google-Smtp-Source: APXvYqxXI3Jvln6ixBkRS1hL3oyOLtrK3tUaJhrXOIGErzBhakNRh0Xi682urKxf2Nm4Kl/qlmBfYQ==
X-Received: by 2002:a5d:4646:: with SMTP id j6mr1975308wrs.173.1569489658421; 
 Thu, 26 Sep 2019 02:20:58 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id d28sm2678651wrb.95.2019.09.26.02.20.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 02:20:57 -0700 (PDT)
Date: Thu, 26 Sep 2019 11:20:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 1/8] dt-bindings: timer: Convert Exynos MCT bindings
 to json-schema
Message-ID: <20190926092055.GA15552@pi3>
References: <CGME20190923161449epcas3p4bf25ddc76d4893a93b9472c3a286f410@epcas3p4.samsung.com>
 <20190923161411.9236-1-krzk@kernel.org>
 <aa4acd33-eff3-175f-b86a-459ba8c1d17c@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa4acd33-eff3-175f-b86a-459ba8c1d17c@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_022100_868536_78EF955A 
X-CRM114-Status: GOOD (  32.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
 Rob Herring <robh+dt@kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 03:40:52PM +0200, Marek Szyprowski wrote:
> Hi Krzysztof,
> 
> On 23.09.2019 18:14, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos Soc Multi Core Timer bindings to DT schema format
> > using json-schema.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> >
> > ---
> >
> > Changes since v3:
> > 1. Use interrupts-extended instead of interrupts-map.
> >
> > Changes since v1:
> > 1. Indent example with four spaces (more readable),
> > 2. Rename nodes in example to timer,
> > 3. Remove mct-map subnode.
> > ---
> >   .../bindings/timer/samsung,exynos4210-mct.txt |  88 ------------
> >   .../timer/samsung,exynos4210-mct.yaml         | 125 ++++++++++++++++++
> >   2 files changed, 125 insertions(+), 88 deletions(-)
> >   delete mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.txt
> >   create mode 100644 Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
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
> > +
> > +examples:
> > +  - |
> > +    // In this example, the IP contains two local timers, using separate
> > +    // interrupts, so two local timer interrupts have been specified,
> > +    // in addition to four global timer interrupts.
> > +
> > +    timer@10050000 {
> > +        compatible = "samsung,exynos4210-mct";
> > +        reg = <0x10050000 0x800>;
> > +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > +                     <0 42 0>, <0 48 0>;
> > +    };
> > +
> > +  - |
> > +    // In this example, the timer interrupts are connected to two separate
> > +    // interrupt controllers. Hence, an interrupts-extended is needed.
> > +
> > +    timer@101c0000 {
> > +        compatible = "samsung,exynos4210-mct";
> > +        reg = <0x101C0000 0x800>;
> > +        interrupts-extended = <&gic 0 57 0>,
> > +                              <&gic 0 69 0>,
> > +                              <&combiner 12 6>,
> > +                              <&combiner 12 7>,
> > +                              <&gic 0 42 0>,
> > +                              <&gic 0 48 0>;
> > +    };
> > +
> > +  - |
> > +    // In this example, the IP contains four local timers, but using
> > +    // a per-processor interrupt to handle them. Only one first local
> > +    // interrupt is specified.
> > +
> > +    timer@10050000 {
> > +        compatible = "samsung,exynos4412-mct";
> > +        reg = <0x10050000 0x800>;
> > +
> > +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > +                     <0 42 0>;
> > +    };
> > +
> > +  - |
> > +    // In this example, the IP contains four local timers, but using
> > +    // a per-processor interrupt to handle them. All the local timer
> > +    // interrupts are specified.
> > +
> > +    timer@10050000 {
> > +        compatible = "samsung,exynos4412-mct";
> > +        reg = <0x10050000 0x800>;
> > +
> > +        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> > +                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> > +    };
> I would add "#include <dt-bindings/interrupt-controller/arm-gic.h>" and
> replace zeros with proper defines like GIC_SPI and GIC_PPI. The last two
> examples describes per-processor-interrupts, but have 0 in the specifier
> cell 0. I would also use proper IRQ_TYPE_LEVEL_HIGH at cell 3 instead
> of 0. I would also consider adding artificial 'interrupt-parent = &git'
> property to the 1st, 3rd and 4th examples to make it clear that they
> refer to ARM GIC bindings.

Makes sense, but how about doing this in separate patch? The example code
was like this amd this just converts the bindings so I think it is better
to reduce the amount of feature-like improvements.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
