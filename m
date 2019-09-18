Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DEAAB6438
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 15:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiQu0RNly4tJxaXDb67rT2UJVADqqq3ystr9pS4Y+a4=; b=cLSYe/ST2xZo08
	Rh5ubeDG6Xoyt8cX5h/XBDlOKSX8AeX2i2+q+K5VE1emRrqZPhNmccUE9LsHwNnwgO2gTnvpwUMWy
	rS1pYROugIQtCeN6cBU+4qUGl69or0/m2gb0pV8+zNp7w3LnPiQGL0cLEx2emyIPVX6jdBqZ5vWmS
	ceRWWdpIXIwbodooozXHoffJmAw9grEmdqkliY8dNrmpuMgsN9AJabxPWsb6fmtLutDc7WjYHZGoN
	g5qHHdUt/eBtEoT5EdFivdQ9HadvPJ8OfIF2OvFOx1PSF51IOHS4Q9ZVD8/cTAMPynzMeVtiMk0bo
	uqUzNFOqVCiDxr0WAftQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZqQ-0004Qp-GO; Wed, 18 Sep 2019 13:18:06 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZqB-0004Pv-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:17:56 +0000
Received: by mail-wr1-f68.google.com with SMTP id o18so6831258wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 06:17:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e6a38RN6FN8dThc0RVo5hV5uWnsoTfPqGl5eeZaZimE=;
 b=KxdfxlzJLjKFB/fMySC9/iVbpljLfVg8qXLfquLrJ0aHqujk4PXVwS4N4Qd0hZjLN2
 kYWVhtM3vWlZTvoxjS76w4n1xBtkZIgk3YRAo7fFMc2A9bx/JJcb/m8w0ia2Wgc7vP5v
 H/MqWXkf2trL19LXyApmJy9DJVfxs3musRzN9/IKCmOyIhZmG6/ZMVY+jSx+w3drR5nP
 dt6u4iecRVD1aNn+CcLpDu4ohX8kyrlGn8Ug2ZzIJ+VdDq4BEZfhpSYr3T2dRILeIAUv
 V1XIyiCF9Lw6PivFL+JPKE+fh7t7ytuuWu+0o+1/tuTzoP6AEiOfyOmUpXiktTkcp05r
 PlVQ==
X-Gm-Message-State: APjAAAWL6mMSIjzaaZJ75W4axUIcIPg5V1Y6UUyKrlfXj+97G7IqFo0W
 zFCiC2p0swtSh+U7JLpMjx4=
X-Google-Smtp-Source: APXvYqxWVPjcF1VpJfpk6Lp6k4HOBxolAT7MHjlWITs7v+8tF1+4yScFg1b7sFVdBQuKIhoXHhpLuA==
X-Received: by 2002:adf:e3c4:: with SMTP id k4mr3158989wrm.157.1568812665355; 
 Wed, 18 Sep 2019 06:17:45 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 207sm4243477wme.17.2019.09.18.06.17.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 06:17:43 -0700 (PDT)
Date: Wed, 18 Sep 2019 15:17:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 07/11] dt-bindings: arm: samsung: Convert Exynos PMU
 bindings to json-schema
Message-ID: <20190918131740.GA668@pi3>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-7-krzk@kernel.org>
 <20190918124306.GB318@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918124306.GB318@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_061751_954613_51E03EA7 
X-CRM114-Status: GOOD (  23.97  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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

On Wed, Sep 18, 2019 at 07:43:06AM -0500, Rob Herring wrote:
> On Sat, Sep 07, 2019 at 11:20:03AM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
> > format using json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v1:
> > 1. Fix clock-names to match all elements against schema (any number of
> >    any clkoutN values).
> >    This currently fails:
> >        properties:clock-names:items: {'enum': ['clkout0', 'clkout1', 'clkout2',
> >        'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7', 'clkout8',
> >        'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13', 'clkout14',
> >        'clkout15', 'clkout16']} is not of type 'array
> > 
> > 2. Add syscon reboot and poweroff nodes.
> > ---
> >  .../devicetree/bindings/arm/samsung/pmu.txt   |  72 -----------
> >  .../devicetree/bindings/arm/samsung/pmu.yaml  | 117 ++++++++++++++++++
> >  2 files changed, 117 insertions(+), 72 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.txt b/Documentation/devicetree/bindings/arm/samsung/pmu.txt
> > deleted file mode 100644
> > index 433bfd7593ac..000000000000
> > --- a/Documentation/devicetree/bindings/arm/samsung/pmu.txt
> > +++ /dev/null
> > @@ -1,72 +0,0 @@
> > -SAMSUNG Exynos SoC series PMU Registers
> > -
> > -Properties:
> > - - compatible : should contain two values. First value must be one from following list:
> > -		   - "samsung,exynos3250-pmu" - for Exynos3250 SoC,
> > -		   - "samsung,exynos4210-pmu" - for Exynos4210 SoC,
> > -		   - "samsung,exynos4412-pmu" - for Exynos4412 SoC,
> > -		   - "samsung,exynos5250-pmu" - for Exynos5250 SoC,
> > -		   - "samsung,exynos5260-pmu" - for Exynos5260 SoC.
> > -		   - "samsung,exynos5410-pmu" - for Exynos5410 SoC,
> > -		   - "samsung,exynos5420-pmu" - for Exynos5420 SoC.
> > -		   - "samsung,exynos5433-pmu" - for Exynos5433 SoC.
> > -		   - "samsung,exynos7-pmu" - for Exynos7 SoC.
> > -		second value must be always "syscon".
> > -
> > - - reg : offset and length of the register set.
> > -
> > - - #clock-cells : must be <1>, since PMU requires once cell as clock specifier.
> > -		The single specifier cell is used as index to list of clocks
> > -		provided by PMU, which is currently:
> > -			0 : SoC clock output (CLKOUT pin)
> > -
> > - - clock-names : list of clock names for particular CLKOUT mux inputs in
> > -		following format:
> > -			"clkoutN", where N is a decimal number corresponding to
> > -			CLKOUT mux control bits value for given input, e.g.
> > -				"clkout0", "clkout7", "clkout15".
> > -
> > - - clocks : list of phandles and specifiers to all input clocks listed in
> > -		clock-names property.
> > -
> > -Optional properties:
> > -
> > -Some PMUs are capable of behaving as an interrupt controller (mostly
> > -to wake up a suspended PMU). In which case, they can have the
> > -following properties:
> > -
> > -- interrupt-controller: indicate that said PMU is an interrupt controller
> > -
> > -- #interrupt-cells: must be identical to the that of the parent interrupt
> > -  controller.
> > -
> > -
> > -Optional nodes:
> > -
> > -- nodes defining the restart and poweroff syscon children
> > -
> > -
> > -Example :
> > -pmu_system_controller: system-controller@10040000 {
> > -	compatible = "samsung,exynos5250-pmu", "syscon";
> > -	reg = <0x10040000 0x5000>;
> > -	interrupt-controller;
> > -	#interrupt-cells = <3>;
> > -	interrupt-parent = <&gic>;
> > -	#clock-cells = <1>;
> > -	clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
> > -			"clkout4", "clkout8", "clkout9";
> > -	clocks = <&clock CLK_OUT_DMC>, <&clock CLK_OUT_TOP>,
> > -		<&clock CLK_OUT_LEFTBUS>, <&clock CLK_OUT_RIGHTBUS>,
> > -		<&clock CLK_OUT_CPU>, <&clock CLK_XXTI>,
> > -		<&clock CLK_XUSBXTI>;
> > -};
> > -
> > -Example of clock consumer :
> > -
> > -usb3503: usb3503@8 {
> > -	/* ... */
> > -	clock-names = "refclk";
> > -	clocks = <&pmu_system_controller 0>;
> > -	/* ... */
> > -};
> > diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > new file mode 100644
> > index 000000000000..a5a02f8237fb
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
> > @@ -0,0 +1,117 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung Exynos SoC series Power Management Unit (PMU)
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - samsung,exynos3250-pmu
> > +          - samsung,exynos4210-pmu
> > +          - samsung,exynos4412-pmu
> > +          - samsung,exynos5250-pmu
> > +          - samsung,exynos5260-pmu
> > +          - samsung,exynos5410-pmu
> > +          - samsung,exynos5420-pmu
> > +          - samsung,exynos5433-pmu
> > +          - samsung,exynos7-pmu
> > +      - const: syscon
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clock-names:
> > +    description:
> > +      List of clock names for particular CLKOUT mux inputs
> > +    minItems: 1
> > +    maxItems: 32
> > +    items:
> > +      enum:
> > +        - clkout0
> > +        - clkout1
> 
> Looking at this again, instead of enum, we can just do:
> 
> pattern: '^clkout([0-9]|[12][0-9]|3[0-1])$'

Indeed looks better.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
