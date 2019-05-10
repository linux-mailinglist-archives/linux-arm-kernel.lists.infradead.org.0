Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8C319704
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:19:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dB1gwwlhPKyXuZbljAO0m3RL3ezDSWaLqonduOzR+0U=; b=EKSzIaqFuy/6Vb
	2m34mvcKSN3UHPiLfR/Flo54bpJ9bHUx3eMRzW7UDxis+YACinSmBpw19ZCdUhlXfQcCA6UPILdxG
	saGJ+6eVPpNhrWbaifDCiN9CuiJ2UtZARhWf3VdGcKxuUUKIVpqyYoDh6IdozCPRPH/s2Eh7iGRo2
	kkdjkymF3vmmcbmO3+NpzhNL7SeoTDVOk4XybhBjTI7svtOZi2t7t4aznXSGdIBmhIyMWi9bT4Z8Y
	uzcOaD4G21kPZaGhxRKqjiKr9OIG2e8p05wTlEERD6W0D2swb0q93GxMp9jSCooTEcVjBhm3u0IMc
	1VE/qn2/yrDoIr6+45/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOw4Q-0007jv-Td; Fri, 10 May 2019 03:19:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOw4J-0007jS-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 03:19:33 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC8E5217F5;
 Fri, 10 May 2019 03:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557458371;
 bh=fLdUr+OSyOmILZVsa8SLTruQQJwvO3j8O8Mlk6xWtck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w1azHgxEpImpoYGQ/8Lm7Iso+Deq9V43vpIvoqItQITv9vDEUdW6KddNbj2gcoKqw
 IX5v7X17MFgHYA+ECeJ3A8g/FFPa90Ty6LogwaI1vk10TOQof6GUKjrF1t34JaxJbq
 X3ydEaT++UsAyCeM1NeWZBm/efQ2u27trFojl0c8=
Date: Fri, 10 May 2019 11:19:07 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mm-evk: Add BD71847 PMIC
Message-ID: <20190510031905.GE15856@dragon>
References: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d809d10676011d1d35c3f78fe3e0ec47b73398d6.1556028030.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_201931_740940_33A956D1 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 02:16:48PM +0000, Leonard Crestez wrote:
> The BUCK2 regulator is used for cpufreq voltage control, otherwise
> configuration is mostly static.
> 
> This uses the newly-implemented rohm,reset-snvs-powered property to
> properly handle the SNVS state of imx8mm.
> 
> Between BD71837 and BD71847 the BUCK3/4 regulators were removed but
> datasheet and board schematics kept the names for BUCK5/6/7/8. The
> driver however renumbered 5/6/7/8 to 3/4/5/6. Use the names from DT
> bindings and add comments to signal this.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Acked-By: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> 
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 131 +++++++++++++++++++
>  1 file changed, 131 insertions(+)
> 
> Changes since v1:
>  - Move compatible property first
>  - Remove address/size numbering from regulators list
> Link: https://marc.info/?l=linux-clk&m=155530430429151&w=2
> 
> Other imx8mm cpufreq patches in that series already accepted.
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> index 2d5d89475b76..623254786c2d 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
> @@ -37,10 +37,14 @@
>  		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
>  		enable-active-high;
>  	};
>  };
>  
> +&A53_0 {
> +	cpu-supply = <&buck2_reg>;
> +};
> +
>  &fec1 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pinctrl_fec1>;
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&ethphy0>;
> @@ -93,10 +97,124 @@
>  	pinctrl-0 = <&pinctrl_wdog>;
>  	fsl,ext-reset-output;
>  	status = "okay";
>  };
>  
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	pmic@4b {
> +		compatible = "rohm,bd71847";
> +		reg = <0x4b>;
> +		pinctrl-0 = <&pinctrl_pmic>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <3 GPIO_ACTIVE_LOW>;
> +		rohm,reset-snvs-powered;
> +
> +		regulators {
> +			buck1_reg: BUCK1 {
> +				regulator-compatible = "BUCK1";

bindings/regulator/regulator.txt says that regulator-compatible is a
deprecated property.

Shawn

> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +			};
> +
> +			buck2_reg: BUCK2 {
> +				regulator-compatible = "BUCK2";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +				regulator-ramp-delay = <1250>;
> +				rohm,dvs-run-voltage = <1000000>;
> +				rohm,dvs-idle-voltage = <900000>;
> +			};
> +
> +			buck3_reg: BUCK3 {
> +				// BUCK5 in datasheet
> +				regulator-compatible = "BUCK3";
> +				regulator-min-microvolt = <700000>;
> +				regulator-max-microvolt = <1350000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck4_reg: BUCK4 {
> +				// BUCK6 in datasheet
> +				regulator-compatible = "BUCK4";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck5_reg: BUCK5 {
> +				// BUCK7 in datasheet
> +				regulator-compatible = "BUCK5";
> +				regulator-min-microvolt = <1605000>;
> +				regulator-max-microvolt = <1995000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			buck6_reg: BUCK6 {
> +				// BUCK8 in datasheet
> +				regulator-compatible = "BUCK6";
> +				regulator-min-microvolt = <800000>;
> +				regulator-max-microvolt = <1400000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo1_reg: LDO1 {
> +				regulator-compatible = "LDO1";
> +				regulator-min-microvolt = <3000000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo2_reg: LDO2 {
> +				regulator-compatible = "LDO2";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <900000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo3_reg: LDO3 {
> +				regulator-compatible = "LDO3";
> +				regulator-min-microvolt = <1800000>;
> +				regulator-max-microvolt = <3300000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo4_reg: LDO4 {
> +				regulator-compatible = "LDO4";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +
> +			ldo6_reg: LDO6 {
> +				regulator-compatible = "LDO6";
> +				regulator-min-microvolt = <900000>;
> +				regulator-max-microvolt = <1800000>;
> +				regulator-boot-on;
> +				regulator-always-on;
> +			};
> +		};
> +	};
> +};
> +
>  &iomuxc {
>  	pinctrl-names = "default";
>  
>  	pinctrl_fec1: fec1grp {
>  		fsl,pins = <
> @@ -122,10 +240,23 @@
>  		fsl,pins = <
>  			MX8MM_IOMUXC_NAND_READY_B_GPIO3_IO16	0x19
>  		>;
>  	};
>  
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_I2C1_SCL_I2C1_SCL			0x400001c3
> +			MX8MM_IOMUXC_I2C1_SDA_I2C1_SDA			0x400001c3
> +		>;
> +	};
> +
> +	pinctrl_pmic: pmicirq {
> +		fsl,pins = <
> +			MX8MM_IOMUXC_GPIO1_IO03_GPIO1_IO3		0x41
> +		>;
> +	};
> +
>  	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
>  		fsl,pins = <
>  			MX8MM_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
>  		>;
>  	};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
