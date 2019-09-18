Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0EAB6379
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFvBGBZ5XYJTnNfld8HsrPMEEwICc2SJgIbWLmSuQzU=; b=BcN+DJu47sjh+K
	fu7pjcBb00QmRD13KZrbybiiKXdzQS4p0cNXr+e3QQtpRMLREUhk0Q5hkXOFdAM3Ybako6wOJ9rTr
	y/4lJ+/PaTk9L8etNqAG5WKa+GdG2dZCM+h3HbpkXO8V0+AgQ5DeCffm+oguv2ZowjRKVzlQxMMz5
	6Btrydf5JhLe0pYMzGG5r3Ly1dt/uzeFQ8NRnRizZNMaf0eUAShRdc9RJSaznq0Cxdk9Vq9V+U4e8
	3y7/lHfajN+3oveqRF8g6AEHF90KeeTygRCP8hLAC3ANCHWQAExejVHAylWKwmgct4jWgmygS4Fj3
	fSfwxjbAUQwC91Av9Brw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZIt-0005wb-WC; Wed, 18 Sep 2019 12:43:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZIc-0005w7-SC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:43:12 +0000
Received: by mail-ot1-f65.google.com with SMTP id z6so6191307otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:43:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dQLBtHEU+osif2HgwpAVUo09y3LmJZa4XGIRdzXOOCU=;
 b=BulMCAoOiX0TBqobbwY+43uyUCUunhc+YQ1CMHg2L9ZGuY5k4UmSsmVMZ1QA0D2k5x
 pJ10MMl+cK8V9y17Npb86nRzHo56OE3PyuEQG0lPQ/srMSeQ70KEeJlhVLK3hG2TqQ0a
 6oMv3P2YUDMJB7AZVTcDUjN10E2NGfe7i9naH3XHlENc2hLvJFdJtYj+WLUdII2HNG/T
 oETe+VfRll5EawGD7Mi7Ljs3c/bxsPIhZ0m8KEBgzShroxcdnZ+Yo6Iy+LuWaYxPzrKA
 jK97xw378SLwsGKu1ewKPggPXWkYVy1IB6IluJzGdQPVIXGNenUCkd39CTIUYom0WwqL
 5leg==
X-Gm-Message-State: APjAAAWhKQUaFQrurckKTVVcFjuHItygIopr5T6SSiYlr0Pw3Vk0uLzl
 HxqLkx56212e56eqMJafYg==
X-Google-Smtp-Source: APXvYqwr7J+BRArYksfa4NZtmtP1+GxcCXUKrmBesah37ssS2SqV0TZVl3oxDj8UdQW/sUR8plgfDA==
X-Received: by 2002:a05:6830:1041:: with SMTP id
 b1mr2910939otp.30.1568810589361; 
 Wed, 18 Sep 2019 05:43:09 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 34sm1949561ots.47.2019.09.18.05.43.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:43:07 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:43:06 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 07/11] dt-bindings: arm: samsung: Convert Exynos PMU
 bindings to json-schema
Message-ID: <20190918124306.GB318@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-7-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-7-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_054310_917766_C4C69EB7 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rtc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 11:20:03AM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Fix clock-names to match all elements against schema (any number of
>    any clkoutN values).
>    This currently fails:
>        properties:clock-names:items: {'enum': ['clkout0', 'clkout1', 'clkout2',
>        'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7', 'clkout8',
>        'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13', 'clkout14',
>        'clkout15', 'clkout16']} is not of type 'array
> 
> 2. Add syscon reboot and poweroff nodes.
> ---
>  .../devicetree/bindings/arm/samsung/pmu.txt   |  72 -----------
>  .../devicetree/bindings/arm/samsung/pmu.yaml  | 117 ++++++++++++++++++
>  2 files changed, 117 insertions(+), 72 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.txt b/Documentation/devicetree/bindings/arm/samsung/pmu.txt
> deleted file mode 100644
> index 433bfd7593ac..000000000000
> --- a/Documentation/devicetree/bindings/arm/samsung/pmu.txt
> +++ /dev/null
> @@ -1,72 +0,0 @@
> -SAMSUNG Exynos SoC series PMU Registers
> -
> -Properties:
> - - compatible : should contain two values. First value must be one from following list:
> -		   - "samsung,exynos3250-pmu" - for Exynos3250 SoC,
> -		   - "samsung,exynos4210-pmu" - for Exynos4210 SoC,
> -		   - "samsung,exynos4412-pmu" - for Exynos4412 SoC,
> -		   - "samsung,exynos5250-pmu" - for Exynos5250 SoC,
> -		   - "samsung,exynos5260-pmu" - for Exynos5260 SoC.
> -		   - "samsung,exynos5410-pmu" - for Exynos5410 SoC,
> -		   - "samsung,exynos5420-pmu" - for Exynos5420 SoC.
> -		   - "samsung,exynos5433-pmu" - for Exynos5433 SoC.
> -		   - "samsung,exynos7-pmu" - for Exynos7 SoC.
> -		second value must be always "syscon".
> -
> - - reg : offset and length of the register set.
> -
> - - #clock-cells : must be <1>, since PMU requires once cell as clock specifier.
> -		The single specifier cell is used as index to list of clocks
> -		provided by PMU, which is currently:
> -			0 : SoC clock output (CLKOUT pin)
> -
> - - clock-names : list of clock names for particular CLKOUT mux inputs in
> -		following format:
> -			"clkoutN", where N is a decimal number corresponding to
> -			CLKOUT mux control bits value for given input, e.g.
> -				"clkout0", "clkout7", "clkout15".
> -
> - - clocks : list of phandles and specifiers to all input clocks listed in
> -		clock-names property.
> -
> -Optional properties:
> -
> -Some PMUs are capable of behaving as an interrupt controller (mostly
> -to wake up a suspended PMU). In which case, they can have the
> -following properties:
> -
> -- interrupt-controller: indicate that said PMU is an interrupt controller
> -
> -- #interrupt-cells: must be identical to the that of the parent interrupt
> -  controller.
> -
> -
> -Optional nodes:
> -
> -- nodes defining the restart and poweroff syscon children
> -
> -
> -Example :
> -pmu_system_controller: system-controller@10040000 {
> -	compatible = "samsung,exynos5250-pmu", "syscon";
> -	reg = <0x10040000 0x5000>;
> -	interrupt-controller;
> -	#interrupt-cells = <3>;
> -	interrupt-parent = <&gic>;
> -	#clock-cells = <1>;
> -	clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
> -			"clkout4", "clkout8", "clkout9";
> -	clocks = <&clock CLK_OUT_DMC>, <&clock CLK_OUT_TOP>,
> -		<&clock CLK_OUT_LEFTBUS>, <&clock CLK_OUT_RIGHTBUS>,
> -		<&clock CLK_OUT_CPU>, <&clock CLK_XXTI>,
> -		<&clock CLK_XUSBXTI>;
> -};
> -
> -Example of clock consumer :
> -
> -usb3503: usb3503@8 {
> -	/* ... */
> -	clock-names = "refclk";
> -	clocks = <&pmu_system_controller 0>;
> -	/* ... */
> -};
> diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> new file mode 100644
> index 000000000000..a5a02f8237fb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> @@ -0,0 +1,117 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC series Power Management Unit (PMU)
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - samsung,exynos3250-pmu
> +          - samsung,exynos4210-pmu
> +          - samsung,exynos4412-pmu
> +          - samsung,exynos5250-pmu
> +          - samsung,exynos5260-pmu
> +          - samsung,exynos5410-pmu
> +          - samsung,exynos5420-pmu
> +          - samsung,exynos5433-pmu
> +          - samsung,exynos7-pmu
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clock-names:
> +    description:
> +      List of clock names for particular CLKOUT mux inputs
> +    minItems: 1
> +    maxItems: 32
> +    items:
> +      enum:
> +        - clkout0
> +        - clkout1

Looking at this again, instead of enum, we can just do:

pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'

> +        - clkout2
> +        - clkout3
> +        - clkout4
> +        - clkout5
> +        - clkout6
> +        - clkout7
> +        - clkout8
> +        - clkout9
> +        - clkout10
> +        - clkout11
> +        - clkout12
> +        - clkout13
> +        - clkout14
> +        - clkout15
> +        - clkout16
> +        - clkout17
> +        - clkout18
> +        - clkout19
> +        - clkout20
> +        - clkout21
> +        - clkout22
> +        - clkout23
> +        - clkout24
> +        - clkout25
> +        - clkout26
> +        - clkout27
> +        - clkout28
> +        - clkout29
> +        - clkout30
> +        - clkout31

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
