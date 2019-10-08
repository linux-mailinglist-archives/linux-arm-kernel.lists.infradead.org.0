Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0CCFA87
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/Ddz+TAh9O4y9nsIM//Q/UdhsPnONMLHn7kaeJAwJw=; b=cBgm+xTyZBxdC1
	/PCPnmyb340EobaZg5VTtpKZ2v+K/mtNTzXf1szy9WBqWfVsXZiYPFXaoYe26cCwfSVzVBlgKCV/q
	VE8GCy8GeybH//C2wv0x9b7aCxkf9aEERt9Wa8d5x/JoyYDLzJxHyobUaiKwdATevNw5KGBDXhoRV
	XhQmMcw2yI2G3fnlDKPSOsbxyfRs16zN5k1Jppt6RgIZQIKUmdzEf/cFmap/AQCxS7gjiYmTJb/Tu
	wJqe2qddUk6pmnbXB1ar+ATNXYZ3eRZLRdMB2SBfdj4FrqOVpoEN/i2yM6j5sHbcTNbEoXgqc3X2o
	ddyNdR5266a0nuYUX9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp1d-00051u-9k; Tue, 08 Oct 2019 12:55:37 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp1S-000511-8Z
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:55:28 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 7121B1BF210;
 Tue,  8 Oct 2019 12:55:10 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Tomasz Maciej Nowak <tmn505@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2] arm64: dts: marvell: add ESPRESSObin variants
In-Reply-To: <20190603155354.3902-1-tmn505@gmail.com>
References: <20190603155354.3902-1-tmn505@gmail.com>
Date: Tue, 08 Oct 2019 14:55:09 +0200
Message-ID: <87a7abtn0y.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055526_578655_F2B24CA5 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Konstantin Porotchkin <kostap@marvell.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz Maciej Nowak,

> This commit adds dts for different variants of ESPRESSObin board:
>
> ESPRESSObin with soldered eMMC,
>
> ESPRESSObin V7, compared to prior versions some passive elements changed
> and ethernet ports labels positions have been reversed,
>
> ESPRESSObin V7 with soldered eMMC.
>
> Since most of elements are the same, one common dtsi is created and
> referenced in each dts of particular variant.
>
> Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>


Applied on mvebu/dt

Sorry for the delay.

Thanks,

Gregory

> ---
> v1 -> v2 rebase on top of:
> mvebu/dt64 + "arm64: dts: armada-3720-espressobin: correct spi node"
>
>  .../marvell/armada-3720-espressobin-emmc.dts  |  42 ++++
>  .../armada-3720-espressobin-v7-emmc.dts       |  59 ++++++
>  .../marvell/armada-3720-espressobin-v7.dts    |  36 ++++
>  .../dts/marvell/armada-3720-espressobin.dts   | 184 +-----------------
>  .../dts/marvell/armada-3720-espressobin.dtsi  | 177 +++++++++++++++++
>  5 files changed, 315 insertions(+), 183 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
>  create mode 100644 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
> new file mode 100644
> index 000000000000..bd9ed9dc9c3e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-emmc.dts
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board with eMMC
> + * Copyright (C) 2018 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + * Konstantin Porotchkin <kostap@marvell.com>
> + *
> + */
> +/*
> + * Schematic available at http://espressobin.net/wp-content/uploads/2017/08/ESPRESSObin_V5_Schematics.pdf
> + */
> +
> +#include "armada-3720-espressobin.dtsi"
> +
> +/ {
> +	model = "Globalscale Marvell ESPRESSOBin Board (eMMC)";
> +	compatible = "globalscale,espressobin-emmc", "globalscale,espressobin",
> +		     "marvell,armada3720", "marvell,armada3710";
> +};
> +
> +/* U11 */
> +&sdhci0 {
> +	non-removable;
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	mmc-hs400-1_8v;
> +	marvell,xenon-emmc;
> +	marvell,xenon-tun-count = <9>;
> +	marvell,pad-type = "fixed-1-8v";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc_pins>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	mmccard: mmccard@0 {
> +		compatible = "mmc-card";
> +		reg = <0>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
> new file mode 100644
> index 000000000000..6e876a6d9532
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7-emmc.dts
> @@ -0,0 +1,59 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board V7 with eMMC
> + * Copyright (C) 2018 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + * Konstantin Porotchkin <kostap@marvell.com>
> + *
> + */
> +/*
> + * Schematic available at http://wiki.espressobin.net/tiki-download_file.php?fileId=200
> + */
> +
> +#include "armada-3720-espressobin.dtsi"
> +
> +/ {
> +	model = "Globalscale Marvell ESPRESSOBin Board V7 (eMMC)";
> +	compatible = "globalscale,espressobin-v7-emmc", "globalscale,espressobin-v7",
> +		     "globalscale,espressobin", "marvell,armada3720",
> +		     "marvell,armada3710";
> +};
> +
> +&switch0 {
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			label = "lan1";
> +			phy-handle = <&switch0phy0>;
> +		};
> +
> +		port@3 {
> +			reg = <3>;
> +			label = "wan";
> +			phy-handle = <&switch0phy2>;
> +		};
> +	};
> +};
> +
> +/* U11 */
> +&sdhci0 {
> +	non-removable;
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	mmc-hs400-1_8v;
> +	marvell,xenon-emmc;
> +	marvell,xenon-tun-count = <9>;
> +	marvell,pad-type = "fixed-1-8v";
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc_pins>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	mmccard: mmccard@0 {
> +		compatible = "mmc-card";
> +		reg = <0>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
> new file mode 100644
> index 000000000000..0f8405d085fd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-v7.dts
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board V7
> + * Copyright (C) 2018 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + * Konstantin Porotchkin <kostap@marvell.com>
> + *
> + */
> +/*
> + * Schematic available at http://wiki.espressobin.net/tiki-download_file.php?fileId=200
> + */
> +
> +#include "armada-3720-espressobin.dtsi"
> +
> +/ {
> +	model = "Globalscale Marvell ESPRESSOBin Board V7";
> +	compatible = "globalscale,espressobin-v7", "globalscale,espressobin",
> +		     "marvell,armada3720", "marvell,armada3710";
> +};
> +
> +&switch0 {
> +	ports {
> +		port@1 {
> +			reg = <1>;
> +			label = "lan1";
> +			phy-handle = <&switch0phy0>;
> +		};
> +
> +		port@3 {
> +			reg = <3>;
> +			label = "wan";
> +			phy-handle = <&switch0phy2>;
> +		};
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> index fbcf03f86c96..1542d836c090 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> @@ -12,191 +12,9 @@
>  
>  /dts-v1/;
>  
> -#include <dt-bindings/gpio/gpio.h>
> -#include "armada-372x.dtsi"
> +#include "armada-3720-espressobin.dtsi"
>  
>  / {
>  	model = "Globalscale Marvell ESPRESSOBin Board";
>  	compatible = "globalscale,espressobin", "marvell,armada3720", "marvell,armada3710";
> -
> -	chosen {
> -		stdout-path = "serial0:115200n8";
> -	};
> -
> -	memory@0 {
> -		device_type = "memory";
> -		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
> -	};
> -
> -	vcc_sd_reg1: regulator {
> -		compatible = "regulator-gpio";
> -		regulator-name = "vcc_sd1";
> -		regulator-min-microvolt = <1800000>;
> -		regulator-max-microvolt = <3300000>;
> -		regulator-boot-on;
> -
> -		gpios = <&gpionb 4 GPIO_ACTIVE_HIGH>;
> -		gpios-states = <0>;
> -		states = <1800000 0x1
> -			  3300000 0x0>;
> -		enable-active-high;
> -	};
> -};
> -
> -/* J9 */
> -&pcie0 {
> -	status = "okay";
> -	phys = <&comphy1 0>;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie_reset_pins &pcie_clkreq_pins>;
> -};
> -
> -/* J6 */
> -&sata {
> -	status = "okay";
> -	phys = <&comphy2 0>;
> -	phy-names = "sata-phy";
> -};
> -
> -/* J1 */
> -&sdhci1 {
> -	wp-inverted;
> -	bus-width = <4>;
> -	cd-gpios = <&gpionb 3 GPIO_ACTIVE_LOW>;
> -	marvell,pad-type = "sd";
> -	vqmmc-supply = <&vcc_sd_reg1>;
> -
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&sdio_pins>;
> -	status = "okay";
> -};
> -
> -/* U11 */
> -&sdhci0 {
> -	non-removable;
> -	bus-width = <8>;
> -	mmc-ddr-1_8v;
> -	mmc-hs400-1_8v;
> -	marvell,xenon-emmc;
> -	marvell,xenon-tun-count = <9>;
> -	marvell,pad-type = "fixed-1-8v";
> -
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&mmc_pins>;
> -/*
> - * This eMMC is not populated on all boards, so disable it by
> - * default and let the bootloader enable it, if it is present
> - */
> -	status = "disabled";
> -};
> -
> -&spi0 {
> -	status = "okay";
> -
> -	flash@0 {
> -		reg = <0>;
> -		compatible = "jedec,spi-nor";
> -		spi-max-frequency = <104000000>;
> -		m25p,fast-read;
> -	};
> -};
> -
> -/* Exported on the micro USB connector J5 through an FTDI */
> -&uart0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&uart1_pins>;
> -	status = "okay";
> -};
> -
> -/*
> - * Connector J17 and J18 expose a number of different features. Some pins are
> - * multiplexed. This is the case for instance for the following features:
> - * - UART1 (pin 24 = RX, pin 26 = TX). See armada-3720-db.dts for an example of
> - *   how to enable it. Beware that the signals are 1.8V TTL.
> - * - I2C
> - * - SPI
> - * - MMC
> - */
> -
> -/* J7 */
> -&usb3 {
> -	status = "okay";
> -};
> -
> -/* J8 */
> -&usb2 {
> -	status = "okay";
> -};
> -
> -&mdio {
> -	switch0: switch0@1 {
> -		compatible = "marvell,mv88e6085";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		reg = <1>;
> -
> -		dsa,member = <0 0>;
> -
> -		ports {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			port@0 {
> -				reg = <0>;
> -				label = "cpu";
> -				ethernet = <&eth0>;
> -				phy-mode = "rgmii-id";
> -				fixed-link {
> -					speed = <1000>;
> -					full-duplex;
> -				};
> -			};
> -
> -			port@1 {
> -				reg = <1>;
> -				label = "wan";
> -				phy-handle = <&switch0phy0>;
> -			};
> -
> -			port@2 {
> -				reg = <2>;
> -				label = "lan0";
> -				phy-handle = <&switch0phy1>;
> -			};
> -
> -			port@3 {
> -				reg = <3>;
> -				label = "lan1";
> -				phy-handle = <&switch0phy2>;
> -			};
> -
> -		};
> -
> -		mdio {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -
> -			switch0phy0: switch0phy0@11 {
> -				reg = <0x11>;
> -			};
> -			switch0phy1: switch0phy1@12 {
> -				reg = <0x12>;
> -			};
> -			switch0phy2: switch0phy2@13 {
> -				reg = <0x13>;
> -			};
> -		};
> -	};
> -};
> -
> -&eth0 {
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&rgmii_pins>, <&smi_pins>;
> -	phy-mode = "rgmii-id";
> -	status = "okay";
> -
> -	fixed-link {
> -		speed = <1000>;
> -		full-duplex;
> -	};
>  };
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> new file mode 100644
> index 000000000000..53b8ac55a7f3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
> @@ -0,0 +1,177 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for Globalscale Marvell ESPRESSOBin Board
> + * Copyright (C) 2016 Marvell
> + *
> + * Romain Perier <romain.perier@free-electrons.com>
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include "armada-372x.dtsi"
> +
> +/ {
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x00000000 0x00000000 0x20000000>;
> +	};
> +
> +	vcc_sd_reg1: regulator {
> +		compatible = "regulator-gpio";
> +		regulator-name = "vcc_sd1";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +
> +		gpios = <&gpionb 4 GPIO_ACTIVE_HIGH>;
> +		gpios-states = <0>;
> +		states = <1800000 0x1
> +			  3300000 0x0>;
> +		enable-active-high;
> +	};
> +};
> +
> +/* J9 */
> +&pcie0 {
> +	status = "okay";
> +	phys = <&comphy1 0>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_reset_pins &pcie_clkreq_pins>;
> +};
> +
> +/* J6 */
> +&sata {
> +	status = "okay";
> +	phys = <&comphy2 0>;
> +	phy-names = "sata-phy";
> +};
> +
> +/* J1 */
> +&sdhci1 {
> +	wp-inverted;
> +	bus-width = <4>;
> +	cd-gpios = <&gpionb 3 GPIO_ACTIVE_LOW>;
> +	marvell,pad-type = "sd";
> +	vqmmc-supply = <&vcc_sd_reg1>;
> +
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio_pins>;
> +	status = "okay";
> +};
> +
> +&spi0 {
> +	status = "okay";
> +
> +	flash@0 {
> +		reg = <0>;
> +		compatible = "jedec,spi-nor";
> +		spi-max-frequency = <104000000>;
> +		m25p,fast-read;
> +	};
> +};
> +
> +/* Exported on the micro USB connector J5 through an FTDI */
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart1_pins>;
> +	status = "okay";
> +};
> +
> +/*
> + * Connector J17 and J18 expose a number of different features. Some pins are
> + * multiplexed. This is the case for instance for the following features:
> + * - UART1 (pin 24 = RX, pin 26 = TX). See armada-3720-db.dts for an example of
> + *   how to enable it. Beware that the signals are 1.8V TTL.
> + * - I2C
> + * - SPI
> + * - MMC
> + */
> +
> +/* J7 */
> +&usb3 {
> +	status = "okay";
> +};
> +
> +/* J8 */
> +&usb2 {
> +	status = "okay";
> +};
> +
> +&mdio {
> +	switch0: switch0@1 {
> +		compatible = "marvell,mv88e6085";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <1>;
> +
> +		dsa,member = <0 0>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "cpu";
> +				ethernet = <&eth0>;
> +				phy-mode = "rgmii-id";
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				label = "wan";
> +				phy-handle = <&switch0phy0>;
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				label = "lan0";
> +				phy-handle = <&switch0phy1>;
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				label = "lan1";
> +				phy-handle = <&switch0phy2>;
> +			};
> +
> +		};
> +
> +		mdio {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			switch0phy0: switch0phy0@11 {
> +				reg = <0x11>;
> +			};
> +			switch0phy1: switch0phy1@12 {
> +				reg = <0x12>;
> +			};
> +			switch0phy2: switch0phy2@13 {
> +				reg = <0x13>;
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&rgmii_pins>, <&smi_pins>;
> +	phy-mode = "rgmii-id";
> +	status = "okay";
> +
> +	fixed-link {
> +		speed = <1000>;
> +		full-duplex;
> +	};
> +};
> -- 
> 2.21.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
