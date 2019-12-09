Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E8E1164CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 02:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bm2ozSwsiMLAPR/vObtgBEGtGmyXw85xO8otM8LwVI8=; b=IU2lq7WmijjDSh
	M39TFdaPCBOrsBSNdtrXmgVOw4rMnUc6pPDx7rEhc5XyPVM3vLTRLWm8O1t8WiBExnj1blzYAXBwb
	Auo+gZslavL4Vy8k86w/zEuq3ZWRv4jr2KzY9r/6ttThMQSWaTu6LCxWSYo612z2FyvOyVyQT8oLW
	cr8kwvfKldImNUQne8I2a7jnpzcjtCuhzoinzph/ViAx5Tli9lRe3k1LzZATvIJj2g/5kDVWCloJP
	zQhGes8wlULS03VcVR4MSiaA8dpy9T4AhGxj2Us4dl7DInIOSBL2rUQ2idXyqF5nPurrws/EZSzaf
	NGoYPfkWmLtnuB4H2TcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie7wk-0002Hc-HE; Mon, 09 Dec 2019 01:34:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie7wd-0002H2-IC
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 01:34:41 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02F8E206D5;
 Mon,  9 Dec 2019 01:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575855278;
 bh=sKsbh4vc/QZhOZJyY/0BORyBPkmadVe3B7hraBzztg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lKf1mIb2SqAWACNuPVUY1ktnLHHEmFexV8r6ikBgQIuFtdn0SNNzCCqj6jkas90CX
 GceHqWOLg67Irl0jmT4GhWgGhqOiSHc9t1muWFtnYo0Rf4yHTdDybmN8Urdm5Y6iFl
 SGFvVYsBo5WUNzVge1giUq/uPuwG8BUzIOnuN2Z0=
Date: Mon, 9 Dec 2019 09:34:15 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v7 5/5] arm64: dts: imx8m: Add ddr controller nodes
Message-ID: <20191209013414.GS3365@dragon>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <23e46c12c98947315229c20dea6784ad40d294c4.1574458460.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23e46c12c98947315229c20dea6784ad40d294c4.1574458460.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_173439_650387_49D3E6D9 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 11:45:04PM +0200, Leonard Crestez wrote:
> This is used by the imx-ddrc devfreq driver to implement dynamic
> frequency scaling of DRAM.
> 
> Support for proactive scaling via interconnect will come later. The
> high-performance bus masters which need that (display, vpu, gpu) are
> mostly not yet enabled in upstream anyway.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     | 10 ++++++++
>  .../boot/dts/freescale/imx8mn-ddr4-evk.dts    | 18 ++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 10 ++++++++
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  | 24 +++++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     | 10 ++++++++
>  6 files changed, 90 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 28ab17a277bb..ecf0d385c164 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -75,10 +75,28 @@
>  
>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-25M {
> +			opp-hz = /bits/ 64 <25000000>;
> +		};

As an idiomatic practice, we have newline between nodes.

I fixed it up and applied the patch.

Shawn

> +		opp-100M {
> +			opp-hz = /bits/ 64 <100000000>;
> +		};
> +		opp-750M {
> +			opp-hz = /bits/ 64 <750000000>;
> +		};
> +	};
> +};
> +
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index 6edbdfe2d0d7..3d4802375715 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -856,10 +856,20 @@
>  			#interrupt-cells = <3>;
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		ddrc: memory-controller@3d400000 {
> +			compatible = "fsl,imx8mm-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;
> +			clock-names = "core", "pll", "alt", "apb";
> +			clocks = <&clk IMX8MM_CLK_DRAM_CORE>,
> +				 <&clk IMX8MM_DRAM_PLL>,
> +				 <&clk IMX8MM_CLK_DRAM_ALT>,
> +				 <&clk IMX8MM_CLK_DRAM_APB>;
> +		};
> +
>  		ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupt-parent = <&gic>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> index 071949412caf..b051c927c11e 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
> @@ -15,10 +15,28 @@
>  
>  &A53_0 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
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
> +};
> +
>  &i2c1 {
>  	pmic@4b {
>  		compatible = "rohm,bd71847";
>  		reg = <0x4b>;
>  		pinctrl-0 = <&pinctrl_pmic>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> index e91625063f8e..3a79fdddc72b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
> @@ -757,10 +757,20 @@
>  			#interrupt-cells = <3>;
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  		};
>  
> +		ddrc: memory-controller@3d400000 {
> +			compatible = "fsl,imx8mn-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;
> +			clock-names = "core", "pll", "alt", "apb";
> +			clocks = <&clk IMX8MN_CLK_DRAM_CORE>,
> +				 <&clk IMX8MN_DRAM_PLL>,
> +				 <&clk IMX8MN_CLK_DRAM_ALT>,
> +				 <&clk IMX8MN_CLK_DRAM_APB>;
> +		};
> +
>  		ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
>  		};
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> index c36685916683..ee6dc5f07622 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-evk.dts
> @@ -103,10 +103,34 @@
>  
>  &A53_3 {
>  	cpu-supply = <&buck2_reg>;
>  };
>  
> +&ddrc {
> +	operating-points-v2 = <&ddrc_opp_table>;
> +
> +	ddrc_opp_table: opp-table {
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
> +};
> +
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 7f9319452b58..d1fcf9887f8b 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1111,10 +1111,20 @@
>  			interrupt-controller;
>  			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>  			interrupt-parent = <&gic>;
>  		};
>  
> +		ddrc: memory-controller@3d400000 {
> +			compatible = "fsl,imx8mq-ddrc", "fsl,imx8m-ddrc";
> +			reg = <0x3d400000 0x400000>;
> +			clock-names = "core", "pll", "alt", "apb";
> +			clocks = <&clk IMX8MQ_CLK_DRAM_CORE>,
> +				 <&clk IMX8MQ_DRAM_PLL_OUT>,
> +				 <&clk IMX8MQ_CLK_DRAM_ALT>,
> +				 <&clk IMX8MQ_CLK_DRAM_APB>;
> +		};
> +
>  		ddr-pmu@3d800000 {
>  			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
>  			reg = <0x3d800000 0x400000>;
>  			interrupt-parent = <&gic>;
>  			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
