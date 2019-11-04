Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E36EECFA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cz1kfBSn/lTPoCt53UbGcfE9k/cb0acTc+XPJESs7c=; b=bJ3UKxvyGZW29D
	DfgysJzhD3NtnhzDEhpDu6zOebA/igW3UZKUfOIjLx9cKt2eOaKnpGeqf3Hn2pEp/OIkS3CPB5m22
	MJOB75XklI/NdYbXPnlgaJg3yfArPAmuMdka/maB4J3BSaRKF/rX/W66AbGnM9zT/XC9/92b7wJPG
	2cuY7cbzcH9oYyG1ShDRbr4QvKzzkBW7Z0yxnEPk3tNnWCQffAj3PJfo+RxJrzgjc9v3oP/UPRlRl
	Yik5JzB4rmWw3jhM9U1XxL2AS33PCBL69pUn8moP24EOZG/RnYur4iU1W9boVxNG1klHv4Fdo3aoz
	QyRvwVPjsN1P1ovCjFqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkQ6-00023J-V5; Mon, 04 Nov 2019 22:01:54 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkPz-00022Y-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 22:01:49 +0000
Received: by mail-oi1-f194.google.com with SMTP id v186so15624566oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 14:01:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gICVn3u8ASpKk8yKpGUgqNBScOIqpiBNd4WtMocjQ8o=;
 b=LMi/nHgF+hzL3TA2iQyjwn/RXJw3gw1ljIQSP0Bi/JlB7Hi4i4oLJb9yf2J0CNDwCc
 ++nxZVVBx34Xj/04ZHMyfaBZhkVVlX9prcpwtuVnA/PNKKsSjufrLBWV9HFXC4Gt7vUJ
 hjT3AGDFG869A6UMpWN/jsQwy2qfltb/huJs+n3O7Fp5bJW2PjJoGX3B2pgCj6mNuBBi
 8tS1Mk29QngwoNPYU0C+Xao21O7rQEY+PFgmYXFSke49wVYukljwGvPAbcwEiSHYYBNJ
 Vopgb79CT707uXqkp1P6kOsIXiJTp0zMQpRbpbZ5muexNCEyfPyp3oolkE3dzBKALWQh
 a39A==
X-Gm-Message-State: APjAAAW4hjFerHOWQtUHUfAOMj26tAlGOZCYRXUux0mi3LtIsc0y/K/H
 iHSSO0F5zl46pHTYkHcwsA==
X-Google-Smtp-Source: APXvYqwLHKhqTibA1uW3XY9c8wtsWQIYuDLFvJINilMATw8yBBYyhOv5hhkQXaGX5VRglnSSyVHobw==
X-Received: by 2002:a54:4484:: with SMTP id v4mr1058881oiv.49.1572904905923;
 Mon, 04 Nov 2019 14:01:45 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 68sm5857904otw.56.2019.11.04.14.01.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 14:01:45 -0800 (PST)
Date: Mon, 4 Nov 2019 16:01:44 -0600
From: Rob Herring <robh@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 6/6] arm64: dts: imx8m: Add ddr controller nodes
Message-ID: <20191104220144.GA5218@bogus>
References: <cover.1572558427.git.leonard.crestez@nxp.com>
 <44dcab5a136f5b046092e6ed456d8e206413059f.1572558427.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <44dcab5a136f5b046092e6ed456d8e206413059f.1572558427.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_140147_552674_B50D41CB 
X-CRM114-Status: GOOD (  22.96  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:50:27PM +0200, Leonard Crestez wrote:
> This is used by the imx-ddrc devfreq driver to implement dynamic
> frequency scaling of DRAM.
> 
> Add a devfreq-event link to the dram PMU in order to support on-demand
> scaling of ddrc based on measured dram bandwidth usage.
> 
> Support for proactive scaling via interconnect will come later. The
> high-performance bus masters which need that (display, vpu, gpu) are not
> yet enabled in upstream anyway.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 17 ++++++++++++-
>  .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 16 ++++++++++++-
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 16 ++++++++++++-
>  6 files changed, 106 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 4f5e408d6e6a..be9abd8e4478 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -69,16 +69,34 @@
>  		simple-audio-card,codec {
>  			sound-dai = <&wm8524>;
>  			clocks = <&clk IMX8MM_CLK_SAI3_ROOT>;
>  		};
>  	};
> +
> +	ddrc_opp_table: ddrc-opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
>  };
>  
>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +};
> +
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 6edbdfe2d0d7..5404870d80d5 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -856,11 +856,26 @@
>  			#interrupt-cells = <3>;
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> -		ddr-pmu@3d800000 {
> +		ddrc: dram-controller@3d400000 {
> +			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;

Do you really need the OS to map 4MB of register space? Virtual 
space on 64-bit doesn't matter, but it's still wasting 2KB of memory 
just to map all that if only a few pages are needed. Adds up if the 
whole DT is done this way.

> +			clock-names = "dram_core",
> +				      "dram_pll",
> +				      "dram_alt",
> +				      "dram_apb";
> +			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +				 <&clk IMX8MM_DRAM_PLL>,
> +				 <&clk IMX8MM_CLK_DRAM_ALT>,
> +				 <&clk IMX8MM_CLK_DRAM_APB>;
> +			devfreq-events = <&ddr_pmu>;
> +			operating-points-v2 = <&ddrc_opp_table>;
> +		};
> +
> +		ddr_pmu: ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupt-parent = <&gic>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> index 071949412caf..ab2060667671 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -9,16 +9,34 @@
>  #include "imx8mn-evk.dtsi"
>  
>  / {
>  	model = "NXP i.MX8MNano DDR4 EVK board";
>  	compatible = "fsl,imx8mn-ddr4-evk", "fsl,imx8mn";
> +
> +	ddrc_opp_table: ddrc-opp-table {

I think it would be better to put this under the ddrc node (and named 
'opp-table'). Yes, it's kind of silly to have a phandle to a child node, 
but that still works.

> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +		opp-600M {
> +			opp-hz = /bits/ 64 <600000000>;
> +		};
> +	};
>  };
>  
>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +};
> +
>  &i2c1 {
>  	pmic@4b {
>  		compatible = "rohm,bd71847";
>  		reg = <0x4b>;
>  		pinctrl-0 = <&pinctrl_pmic>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index e91625063f8e..344dd777635f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -757,11 +757,25 @@
>  			#interrupt-cells = <3>;
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> -		ddr-pmu@3d800000 {
> +		ddrc: dram-controller@3d400000 {
> +			compatible = "fsl,imx8mn-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;
> +			clock-names = "dram_core",
> +				      "dram_pll",
> +				      "dram_alt",
> +				      "dram_apb";
> +			clocks = <&clk IMX8MN_CLK_DRAM_CORE>,
> +				 <&clk IMX8MN_DRAM_PLL>,
> +				 <&clk IMX8MN_CLK_DRAM_ALT>,
> +				 <&clk IMX8MN_CLK_DRAM_APB>;
> +			devfreq-events = <&ddr_pmu>;
> +		};
> +
> +		ddr_pmu: ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  	};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index c36685916683..fc4c12ab8991 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -85,10 +85,30 @@
>  		link_codec: simple-audio-card,codec {
>  			sound-dai = <&wm8524>;
>  			clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
>  		};
>  	};
> +
> +	ddrc_opp_table: ddrc-opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};
> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +		/*
> +		 * On imx8mq B0 PLL can't be bypassed so low bus is 166M
> +		 */
> +		opp-166M {
> +			opp-hz = /bits/ 64 <166935483>;
> +		};
> +		opp-800M {
> +			opp-hz = /bits/ 64 <800000000>;
> +		};
> +	};
>  };
>  
>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
> @@ -103,10 +123,14 @@
>  
>  &A53_3 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +};
> +
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 7f9319452b58..6ef1af41ef68 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1111,11 +1111,25 @@
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
>  		};
>  
> -		ddr-pmu@3d800000 {
> +		ddrc: dram-controller@3d400000 {
> +			compatible = "fsl,imx8mq-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;
> +			clock-names = "dram_core",
> +				      "dram_pll",
> +				      "dram_alt",
> +				      "dram_apb";
> +			clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
> +				 <&clk IMX8MQ_DRAM_PLL_OUT>,
> +				 <&clk IMX8MQ_CLK_DRAM_ALT>,
> +				 <&clk IMX8MQ_CLK_DRAM_APB>;
> +			devfreq-events = <&ddr_pmu>;
> +		};
> +
> +		ddr_pmu: ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupt-parent = <&gic>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
