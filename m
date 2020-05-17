Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C7E1D68DA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 May 2020 18:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRoTUQf1glNSxx1fEYqBvD+8LELTxjxQnxKyzc7qaaY=; b=jf7wl2ad4gMsmc
	5W8G8SZ6PDWzKNZEY3tfC/CfQCPb9xN2Al2XkfKx3Tk1huzyc8rITkYxaGQ4Bm0ueMyA9Q3l7gFrK
	E+sd2m/gUEoSBul2uzkdhadZ2q8OwRQ9DUOwoIJ+Id/fRBxnHmruW2Re9GKg0tc6N9+6rR76BTPfc
	QImccAkEcL8mBGQT3i23UmJFn/VRxrtD7Mv7ZouZbc0A6xqMt4c1Tjrh+hdf6yiuHakz94yAxnWY+
	xi5SpcTocOOt2QNGynBZ1Rvlx1tO3bT+Xr5f4ImwOvZtVQuh1005LTK/PMtPnURKnqCP+qQ11HZgM
	xltXVKzGd6ohC0aL0Cuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaM8p-0003QD-LN; Sun, 17 May 2020 16:27:55 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaM8h-0003Pb-5q
 for linux-arm-kernel@lists.infradead.org; Sun, 17 May 2020 16:27:49 +0000
X-Originating-IP: 91.175.115.186
Received: from localhost (91-175-115-186.subs.proxad.net [91.175.115.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id E27A220006;
 Sun, 17 May 2020 16:27:44 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Pawel Dembicki <paweldembicki@gmail.com>
Subject: Re: [PATCH v3] ARM: dts: kirkwood: Add Check Point L-50 board
In-Reply-To: <20200422150007.29119-1-paweldembicki@gmail.com>
References: <20200422150007.29119-1-paweldembicki@gmail.com>
Date: Sun, 17 May 2020 18:27:44 +0200
Message-ID: <878shqh6gv.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_092747_487639_3C3DE9BF 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Pawel Dembicki <paweldembicki@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Pawel,

> This patch adds dts for the Check Point L-50 from 600/1100 series
> routers.
>
> Specification:
> -CPU: Marvell Kirkwood 88F6821 1200MHz
> -RAM: 512MB
> -Flash: NAND 512MB
> -WiFi: mPCIe card based on Atheros AR9287 b/g/n
> -WAN: 1 Gigabit Port (Marvell 88E1116R PHY)
> -LAN: 9 Gigabit Ports (2x Marvell 88E6171(5+4))
> -USB: 2x USB2.0
> -Express card slot
> -SD card slot
> -Serial console: RJ-45 115200 8n1
> -Unsupported DSL
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

I've missed there was a v3, so I replaced the v2 patch by this patch.

Gregory

> ---
> Changes in v3:
> - fix typo and code style issues pointed by OpenWrt guys
> Changes in v2:
> - none
>
>  arch/arm/boot/dts/Makefile          |   1 +
>  arch/arm/boot/dts/kirkwood-l-50.dts | 438 ++++++++++++++++++++++++++++
>  2 files changed, 439 insertions(+)
>  create mode 100644 arch/arm/boot/dts/kirkwood-l-50.dts
>
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index e8dd99201397..eba030b3ba69 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -279,6 +279,7 @@ dtb-$(CONFIG_MACH_KIRKWOOD) += \
>  	kirkwood-iomega_ix2_200.dtb \
>  	kirkwood-is2.dtb \
>  	kirkwood-km_kirkwood.dtb \
> +	kirkwood-l-50.dtb \
>  	kirkwood-laplug.dtb \
>  	kirkwood-linkstation-lsqvl.dtb \
>  	kirkwood-linkstation-lsvl.dtb \
> diff --git a/arch/arm/boot/dts/kirkwood-l-50.dts b/arch/arm/boot/dts/kirkwood-l-50.dts
> new file mode 100644
> index 000000000000..0d81c43a6a73
> --- /dev/null
> +++ b/arch/arm/boot/dts/kirkwood-l-50.dts
> @@ -0,0 +1,438 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Check Point L-50 Board Description
> + * Copyright 2020 Pawel Dembicki <paweldembicki@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "kirkwood.dtsi"
> +#include "kirkwood-6281.dtsi"
> +
> +/ {
> +	model = "Check Point L-50";
> +	compatible = "checkpoint,l-50", "marvell,kirkwood-88f6281", "marvell,kirkwood";
> +
> +	memory {
> +		device_type = "memory";
> +		reg = <0x00000000 0x20000000>;
> +	};
> +
> +	chosen {
> +		bootargs = "console=ttyS0,115200n8";
> +		stdout-path = &uart0;
> +	};
> +
> +	ocp@f1000000 {
> +		pinctrl: pin-controller@10000 {
> +			pinctrl-0 = <&pmx_led38 &pmx_sysrst &pmx_button29>;
> +			pinctrl-names = "default";
> +
> +			pmx_sysrst: pmx-sysrst {
> +				marvell,pins = "mpp6";
> +				marvell,function = "sysrst";
> +			};
> +
> +			pmx_button29: pmx_button29 {
> +				marvell,pins = "mpp29";
> +				marvell,function = "gpio";
> +			};
> +
> +			pmx_led38: pmx_led38 {
> +				marvell,pins = "mpp38";
> +				marvell,function = "gpio";
> +			};
> +
> +			pmx_sdio_cd: pmx-sdio-cd {
> +				marvell,pins = "mpp46";
> +				marvell,function = "gpio";
> +			};
> +		};
> +
> +		serial@12000 {
> +			status = "okay";
> +		};
> +
> +		mvsdio@90000 {
> +			status = "okay";
> +			cd-gpios = <&gpio1 14 9>;
> +		};
> +
> +		i2c@11000 {
> +			status = "okay";
> +			clock-frequency = <400000>;
> +
> +			gpio2: gpio-expander@20{
> +				#gpio-cells = <2>;
> +				#interrupt-cells = <2>;
> +				compatible = "semtech,sx1505q";
> +				reg = <0x20>;
> +
> +				gpio-controller;
> +			};
> +
> +			/* Three GPIOs from 0x21 exp. are undescribed in dts:
> +			 * 1: DSL module reset (active low)
> +			 * 5: mPCIE reset (active low)
> +			 * 6: Express card reset (active low)
> +			 */
> +			gpio3: gpio-expander@21{
> +				#gpio-cells = <2>;
> +				#interrupt-cells = <2>;
> +				compatible = "semtech,sx1505q";
> +				reg = <0x21>;
> +
> +				gpio-controller;
> +			};
> +
> +			rtc@30 {
> +				compatible = "s35390a";
> +				reg = <0x30>;
> +			};
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		status_green {
> +			label = "l-50:green:status";
> +			gpios = <&gpio1 6 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		status_red {
> +			label = "l-50:red:status";
> +			gpios = <&gpio3 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wifi {
> +			label = "l-50:green:wifi";
> +			gpios = <&gpio2 7 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "phy0tpt";
> +		};
> +
> +		internet_green {
> +			label = "l-50:green:internet";
> +			gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		internet_red {
> +			label = "l-50:red:internet";
> +			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		usb1_green {
> +			label = "l-50:green:usb1";
> +			gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "usbport";
> +			trigger-sources = <&hub_port3>;
> +		};
> +
> +		usb1_red {
> +			label = "l-50:red:usb1";
> +			gpios = <&gpio2 4 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		usb2_green {
> +			label = "l-50:green:usb2";
> +			gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger = "usbport";
> +			trigger-sources = <&hub_port1>;
> +		};
> +
> +		usb2_red {
> +			label = "l-50:red:usb2";
> +			gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	usb2_pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb2_pwr";
> +
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio3 3 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +	};
> +
> +	usb1_pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "usb1_pwr";
> +
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio3 4 GPIO_ACTIVE_LOW>;
> +		regulator-always-on;
> +	};
> +
> +	mpcie_pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "mpcie_pwr";
> +
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 5 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	express_card_pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "express_card_pwr";
> +
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		gpio = <&gpio3 7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +
> +		factory_defaults {
> +			label = "factory_defaults";
> +			gpios = <&gpio0 29 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_RESTART>;
> +		};
> +	};
> +};
> +
> +&mdio {
> +	status = "okay";
> +
> +	ethphy8: ethernet-phy@8 {
> +		reg = <0x08>;
> +	};
> +
> +	switch0: switch@10 {
> +		compatible = "marvell,mv88e6085";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x10>;
> +		dsa,member = <0 0>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "lan5";
> +			};
> +
> +			port@1 {
> +			       reg = <1>;
> +			       label = "lan1";
> +			};
> +
> +			port@2 {
> +			       reg = <2>;
> +			       label = "lan6";
> +			};
> +
> +			port@3 {
> +			       reg = <3>;
> +			       label = "lan2";
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +				label = "lan7";
> +			};
> +
> +			switch0port5: port@5 {
> +				reg = <5>;
> +				phy-mode = "rgmii-txid";
> +				link = <&switch1port5>;
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@6 {
> +				reg = <6>;
> +				label = "cpu";
> +				phy-mode = "rgmii-id";
> +				ethernet = <&eth1port>;
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
> +		};
> +	};
> +
> +	switch@11 {
> +		compatible = "marvell,mv88e6085";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <0x11>;
> +		dsa,member = <0 1>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "lan3";
> +			};
> +
> +			port@1 {
> +			       reg = <1>;
> +			       label = "lan8";
> +			};
> +
> +			port@2 {
> +			       reg = <2>;
> +			       label = "lan4";
> +			};
> +
> +			port@3 {
> +			       reg = <3>;
> +			       label = "dmz";
> +			};
> +
> +			switch1port5: port@5 {
> +				reg = <5>;
> +				phy-mode = "rgmii-txid";
> +				link = <&switch0port5>;
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
> +
> +			port@6 {
> +				reg = <6>;
> +				label = "dsl";
> +				fixed-link {
> +					speed = <100>;
> +					full-duplex;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&eth0 {
> +	status = "okay";
> +	ethernet0-port@0 {
> +		phy-handle = <&ethphy8>;
> +	};
> +};
> +
> +&eth1 {
> +	status = "okay";
> +	ethernet1-port@0 {
> +		speed = <1000>;
> +		duplex = <1>;
> +	};
> +};
> +
> +&nand {
> +	status = "okay";
> +	pinctrl-0 = <&pmx_nand>;
> +	pinctrl-names = "default";
> +
> +	partition@0 {
> +		label = "u-boot";
> +		reg = <0x00000000 0x000c0000>;
> +	};
> +
> +	partition@a0000 {
> +		label = "bootldr-env";
> +		reg = <0x000c0000 0x00040000>;
> +	};
> +
> +	partition@100000 {
> +		label = "kernel-1";
> +		reg = <0x00100000 0x00800000>;
> +	};
> +
> +	partition@900000 {
> +		label = "rootfs-1";
> +		reg = <0x00900000 0x07100000>;
> +	};
> +
> +	partition@7a00000 {
> +		label = "kernel-2";
> +		reg = <0x07a00000 0x00800000>;
> +	};
> +
> +	partition@8200000 {
> +		label = "rootfs-2";
> +		reg = <0x08200000 0x07100000>;
> +	};
> +
> +	partition@f300000 {
> +		label = "default_sw";
> +		reg = <0x0f300000 0x07900000>;
> +	};
> +
> +	partition@16c00000 {
> +		label = "logs";
> +		reg = <0x16c00000 0x01800000>;
> +	};
> +
> +	partition@18400000 {
> +		label = "preset_cfg";
> +		reg = <0x18400000 0x00100000>;
> +	};
> +
> +	partition@18500000 {
> +		label = "adsl";
> +		reg = <0x18500000 0x00100000>;
> +	};
> +
> +	partition@18600000 {
> +		label = "storage";
> +		reg = <0x18600000 0x07a00000>;
> +	};
> +};
> +
> +&rtc {
> +	status = "disabled";
> +};
> +
> +&pciec {
> +	status = "okay";
> +};
> +
> +&pcie0 {
> +	status = "okay";
> +};
> +
> +&sata_phy0 {
> +	status = "disabled";
> +};
> +
> +&sata_phy1 {
> +	status = "disabled";
> +};
> +
> +&usb0 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	port@1 {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		reg = <1>;
> +		#trigger-source-cells = <0>;
> +
> +		hub_port1: port@1 {
> +			reg = <1>;
> +			#trigger-source-cells = <0>;
> +		};
> +
> +		hub_port3: port@3 {
> +			reg = <3>;
> +			#trigger-source-cells = <0>;
> +		};
> +	};
> +};
> --
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
