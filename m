Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEF67592C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 22:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gu2kKfF64j7XrMTw7foraNzSODkNb/tkdE+9AmMLOx4=; b=cjMK/PduJanuv6
	sPRR3M5YbADJJuIdqxCaRHUsdE3UvA9xAb230AZAm+aBrh3puCQ3GgMFqbAqy7x4HR1DIkuQXoqxU
	r3jv32X1MiQ4uofe4y/wBqn8W9QjNO/jfUBOBXzCjZIPVdEn1cwRMnyZw12QZqpdVoM7ML1wGjVxn
	K0NSnsCbV7PSB9oVgn4m+bi0HR6NA8pbenCjxjKJA0PnWMOWHsgWRC5rVb3MUMzDy5NfmKtbwn10J
	ktbnf7JqiD0DSGJWrlHFpZXk336zNOAeqoHDb7N8vf5fEM+t8Xs92eBP7HbbrZbMiPTPf7vixfZuW
	b5eoPaNYRrv5WG9M99yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkli-0005wM-Oe; Thu, 25 Jul 2019 20:55:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqklW-0005Qr-O5; Thu, 25 Jul 2019 20:55:08 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqklT-00021r-MY; Thu, 25 Jul 2019 22:55:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3 4/5] ARM: dts: rockchip: add veyron-fievel board
Date: Thu, 25 Jul 2019 22:55:02 +0200
Message-ID: <7491854.XWRlesuLgG@phil>
In-Reply-To: <20190725162642.250709-5-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-5-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_135506_948832_A93D0217 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 25. Juli 2019, 18:26:41 CEST schrieb Matthias Kaehlcke:
> Also known as AOpen Chromebox Mini.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Changes in v3:
> - patch added to the series
> ---
>  arch/arm/boot/dts/Makefile                 |   1 +
>  arch/arm/boot/dts/rk3288-veyron-fievel.dts | 299 +++++++++++++++++++++
>  2 files changed, 300 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rk3288-veyron-fievel.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 9159fa2cea90..9fd1e075c624 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -919,6 +919,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
>  	rk3288-tinker.dtb \
>  	rk3288-tinker-s.dtb \
>  	rk3288-veyron-brain.dtb \
> +	rk3288-veyron-fievel.dtb \
>  	rk3288-veyron-jaq.dtb \
>  	rk3288-veyron-jerry.dtb \
>  	rk3288-veyron-mickey.dtb \
> diff --git a/arch/arm/boot/dts/rk3288-veyron-fievel.dts b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
> new file mode 100644
> index 000000000000..a9716fc3f50a
> --- /dev/null
> +++ b/arch/arm/boot/dts/rk3288-veyron-fievel.dts
> @@ -0,0 +1,299 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Veyron Fievel Rev 0+ board device tree source
> + *
> + * Copyright 2016 Google, Inc
> + */
> +
> +/dts-v1/;
> +#include "rk3288-veyron.dtsi"
> +#include "rk3288-veyron-analog-audio.dtsi"
> +
> +/ {
> +	model = "Google Fievel";
> +	compatible = "google,veyron-fievel-rev8", "google,veyron-fievel-rev7",
> +		     "google,veyron-fievel-rev6", "google,veyron-fievel-rev5",
> +		     "google,veyron-fievel-rev4", "google,veyron-fievel-rev3",
> +		     "google,veyron-fievel-rev2", "google,veyron-fievel-rev1",
> +		     "google,veyron-fievel-rev0", "google,veyron-fievel",
> +		     "google,veyron", "rockchip,rk3288";
> +
> +	/delete-node/ bt-activity;
> +
> +	ext_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <125000000>;
> +		clock-output-names = "ext_gmac";
> +	};
> +
> +	/*
> +	 * vcc33_pmuio and vcc33_io is sourced directly from vcc33_sys,
> +	 * enabled by vcc_18
> +	 */
> +	vcc33_io: vcc33-io {
> +		compatible = "regulator-fixed";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-name = "vcc33_io";
> +	};
> +
> +	vcc5_host1: vcc5-host1-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio5 RK_PC1 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hub_usb1_pwr_en>;
> +		regulator-name = "vcc5_host1";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc5_host2: vcc5-host2-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio5 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hub_usb2_pwr_en>;
> +		regulator-name = "vcc5_host2";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
> +	vcc5v_otg: vcc5v-otg-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_otg_pwr_en>;
> +		regulator-name = "vcc5_otg";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +};
> +
> +&gmac {
> +	status = "okay";
> +
> +	assigned-clocks = <&cru SCLK_MAC>;
> +	assigned-clock-parents = <&ext_gmac>;
> +	clock_in_out = "input";
> +	phy-handle = <&ethphy>;
> +	phy-mode = "rgmii";
> +	phy-supply = <&vcc33_lan>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>, <&phy_rst>, <&phy_pmeb>, <&phy_int>;
> +	resets = <&cru SRST_MAC>;
> +	reset-names = "stmmaceth";
> +	rx_delay = <0x10>;
> +	tx_delay = <0x30>;
> +
> +	/* Reset for the RTL8211 PHY which requires a 10-ms reset pulse (low)
> +	 * with a 30ms settling time. */
> +	snps,reset-gpio = <&gpio4 RK_PB0 0>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 30000>;
> +	wakeup-source;
> +
> +	mdio0 {
> +		compatible = "snps,dwmac-mdio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy: ethernet-phy@1 {
> +			reg = <1>;
> +		};
> +	};
> +};
> +
> +&rk808 {
> +	dvs-gpios = <&gpio7 RK_PB4 GPIO_ACTIVE_HIGH>,
> +		    <&gpio7 RK_PB7 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pmic_int_l &dvs_1 &dvs_2>;
> +
> +	vcc6-supply = <&vcc33_sys>;
> +	vcc10-supply = <&vcc33_sys>;
> +	vcc11-supply = <&vcc_5v>;
> +	vcc12-supply = <&vcc33_sys>;
> +
> +	regulators {
> +		/delete-node/ LDO_REG1;
> +
> +		/* According to the schematic, vcc18_lcdt is for
> +		 * HDMI_AVDD_1V8
> +		 */
> +		vcc18_lcdt: LDO_REG2 {
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1800000>;
> +			regulator-name = "vdd18_lcdt";
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <1800000>;
> +			};
> +		};
> +
> +		/* This is not a pwren anymore, but the real power supply,
> +		 * vdd10_lcd for HDMI_AVDD_1V0
> +		 */
> +		vdd10_lcd: LDO_REG7 {
> +			regulator-always-on;
> +			regulator-boot-on;
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1000000>;
> +			regulator-name = "vdd10_lcd";
> +			regulator-state-mem {
> +				regulator-on-in-suspend;
> +				regulator-suspend-microvolt = <1000000>;
> +			};
> +

I've dropped this unnecessary newline

> +		};

and applied the result for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
