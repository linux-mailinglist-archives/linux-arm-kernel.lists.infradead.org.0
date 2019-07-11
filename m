Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2E5652C0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 10:02:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pOixk2VRXvpLidoAr4N+WOwoNKwtjEtnHo1FxWV/qE=; b=G8LxSoWUL7TkMh
	Eh6EJELXK9gJybddyN1fum3BTkP1m5c3GHAshFzoykPKbMICBhlcZaJrbI0pvcWuJ8NY+s2G6iNi4
	WZs0oOuOpt1kREHC0XjPrd7/vi7LFXd/Av1cGSK4DGbUX1Fg7RggQ6IO9niY3uSHF4hdRJ4SSAr+k
	zbSajb5XS419fY/aEnkeiZIlfvmG7KcweGC5PV947IBsLCKyNz64B/2owenEfiRPQmyzlEpL/h9tC
	+SFkiTH2IoEHTAcQge3adpreOGtwZ3fTiXYBYAWuyNa6E4pa4kWFGV3Nt/8bOi7C3yfthPdKCC/Hd
	7I+Lv60PjkzyIQCqeBXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlU2A-0000ec-6v; Thu, 11 Jul 2019 08:02:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlU1t-0000d9-Fn; Thu, 11 Jul 2019 08:02:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id w13so4836646eds.4;
 Thu, 11 Jul 2019 01:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=08OVDUxGMB8XJd16sh5j1x7C32YMRcKvRDym2byAWpI=;
 b=nf2Nsu+IJgOC+8d7WWOLzz+uq1JFaASdE3K+gvkUzVZS6B3rkjMMqwAXNyvNS26ugW
 uDPA9ZvFkLJO4JTwOVj6qU5SbjlMbkhBBrYsURjDpsRrRv1zHhCGJG8W2epj0wKaDuUf
 s/2tfoqmzMa/2GjG8M6++yyniYPTW/1vd5zq7YEamr4RPJUPWwKxM6+d4TWmwNCNRU0f
 Ze23X7JDc+QsxcbRlTZQHUTnJCK3VZvSxPLytUn2U6xi5gFj92K6NzdfjKlMLHO1NES7
 jkQZW+n7EMcPeRNZyH9acNY0ILBr0BPf7F6MkfKp9wovegaOIOlTek/q+hHx2IFFPs/D
 80MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=08OVDUxGMB8XJd16sh5j1x7C32YMRcKvRDym2byAWpI=;
 b=WlSJIJmESzPD2SgkA5Ttu2eJ4IWPujJfE7bWEga4CWA8HOXQOefs8k2t6ZKnR2BLG5
 KMRDHQHgOk24HEAlf3LdBWBJsB9EnTnYb2NPf7k5x7MK4xgQms/VOp1P9KKVOfIL6PJL
 JoI5xNxBMgsUkD+jNBMJ4m6zmhTQsZrBNeKIIUy3GVOVXf9g7nEtDWU2XuJwlztcUtHD
 wRqK+jEEw66Ekx96lNS6q29GvygnrjIIjSivN77+Ibw3ajPtTZTnAGS/rKapaEnBJp89
 TGd5Ieq2+xJ8+KAxzjOLd+PKbreXGZ+27QkQi7XPYBdkOH47k8J0mcBI04JK+pka9tSM
 KvHg==
X-Gm-Message-State: APjAAAXEREAR/3vsWdVH/7WZ4VooDSpw59/kbPcYOnMKLr5rQbisdny0
 4xY003+NMH2UBvnOFORc7A4=
X-Google-Smtp-Source: APXvYqyu9kbrMGrMrxdDXvxx9/gyRIjViM4pmTTGmMevqGGdgqyjK+pk+Njwh0M4DokDW+nj3TEr/A==
X-Received: by 2002:a17:906:2415:: with SMTP id
 z21mr1955757eja.211.1562832131652; 
 Thu, 11 Jul 2019 01:02:11 -0700 (PDT)
Received: from ziggy.stardust ([37.223.141.54])
 by smtp.gmail.com with ESMTPSA id o22sm1461772edc.37.2019.07.11.01.02.10
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 01:02:10 -0700 (PDT)
Subject: Re: [PATCH v2] arm: dts: mediatek: add basic support for MT7629 SoC
To: ryder.lee@kernel.org, Rob Herring <robh+dt@kernel.org>
References: <ca3f4c3c25c3856e75dfb06f6a3b0e764cdc073d.1562750668.git.ryder.lee@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <0a7a3136-e720-e7ae-0a89-e3b88ff143fd@gmail.com>
Date: Thu, 11 Jul 2019 10:02:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ca3f4c3c25c3856e75dfb06f6a3b0e764cdc073d.1562750668.git.ryder.lee@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_010213_536418_B8B139D7 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Weijie Gao <weijie.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Mark-MC Lee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/07/2019 04:14, ryder.lee@kernel.org wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> 
> This adds basic support for MT7629 reference board.
> 
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>

applied to v5.3-next/dts32

Thanks!

> ---
> Changes since v2:
> - fix 'no newline at end of file'.
> - fix addresses/sizes cells.
> - update u3phy0 node.
> - add eth/pcie related nodes.
> - add the 'fixed-partitions' nodes in flash node.
> - remove arm,cpu-registers-not-fw-configured.
> 
> Changes since v1:
> -Fix unit-address warnings.
> -Put all the mmio peripherals under a simple-bus node.
> -Drop all the 'partitions' nodes in flash node.
> ---
>  arch/arm/boot/dts/Makefile                |   1 +
>  arch/arm/boot/dts/mt7629-rfb.dts          | 263 ++++++++++++
>  arch/arm/boot/dts/mt7629.dtsi             | 481 ++++++++++++++++++++++
>  include/dt-bindings/reset/mt7629-resets.h |  71 ++++
>  4 files changed, 816 insertions(+)
>  create mode 100644 arch/arm/boot/dts/mt7629-rfb.dts
>  create mode 100644 arch/arm/boot/dts/mt7629.dtsi
>  create mode 100644 include/dt-bindings/reset/mt7629-resets.h
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..080784da8ae1 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1258,6 +1258,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
>  	mt7623a-rfb-nand.dtb \
>  	mt7623n-rfb-emmc.dtb \
>  	mt7623n-bananapi-bpi-r2.dtb \
> +	mt7629-rfb.dtb \
>  	mt8127-moose.dtb \
>  	mt8135-evbp1.dtb
>  dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
> diff --git a/arch/arm/boot/dts/mt7629-rfb.dts b/arch/arm/boot/dts/mt7629-rfb.dts
> new file mode 100644
> index 000000000000..3621b7d2b22a
> --- /dev/null
> +++ b/arch/arm/boot/dts/mt7629-rfb.dts
> @@ -0,0 +1,263 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: Ryder Lee <ryder.lee@mediatek.com>
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/input/input.h>
> +#include "mt7629.dtsi"
> +
> +/ {
> +	model = "MediaTek MT7629 reference board";
> +	compatible = "mediatek,mt7629-rfb", "mediatek,mt7629";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		reset {
> +			label = "factory";
> +			linux,code = <KEY_RESTART>;
> +			gpios = <&pio 60 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		wps {
> +			label = "wps";
> +			linux,code = <KEY_WPS_BUTTON>;
> +			gpios = <&pio 58 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	memory@40000000 {
> +		device_type = "memory";
> +		reg = <0x40000000 0x10000000>;
> +	};
> +
> +	reg_3p3v: regulator-3p3v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	reg_5v: regulator-5v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-5V";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&eth {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&eth_pins>;
> +	pinctrl-1 = <&ephy_leds_pins>;
> +	status = "okay";
> +
> +	gmac1: mac@1 {
> +		compatible = "mediatek,eth-mac";
> +		reg = <1>;
> +		phy-handle = <&phy0>;
> +	};
> +
> +	mdio: mdio-bus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		phy0: ethernet-phy@0 {
> +			reg = <0>;
> +			phy-mode = "gmii";
> +		};
> +	};
> +};
> +
> +&i2c {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c_pins>;
> +	status = "okay";
> +};
> +
> +&qspi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&qspi_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "u-boot";
> +				reg = <0x00000 0x60000>;
> +				read-only;
> +			};
> +
> +			partition@60000 {
> +				label = "u-boot-env";
> +				reg = <0x60000 0x10000>;
> +				read-only;
> +			};
> +
> +			factory: partition@70000 {
> +				label = "factory";
> +				reg = <0x70000 0x40000>;
> +				read-only;
> +			};
> +
> +			partition@b0000 {
> +				label = "kernel";
> +				reg = <0xb0000 0xb50000>;
> +			};
> +		};
> +	};
> +};
> +
> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_pins>;
> +};
> +
> +&pciephy1 {
> +	status = "okay";
> +};
> +
> +&pio {
> +	eth_pins: eth-pins {
> +		mux {
> +			function = "eth";
> +			groups = "mdc_mdio";
> +		};
> +	};
> +
> +	ephy_leds_pins: ephy-leds-pins {
> +		mux {
> +			function = "led";
> +			groups = "gphy_leds_0", "ephy_leds";
> +		};
> +	};
> +
> +	i2c_pins: i2c-pins {
> +		mux {
> +			function = "i2c";
> +			groups =  "i2c_0";
> +		};
> +
> +		conf {
> +			pins = "I2C_SDA", "I2C_SCL";
> +			drive-strength = <4>;
> +			bias-disable;
> +		};
> +	};
> +
> +	pcie_pins: pcie-pins {
> +		mux {
> +			function = "pcie";
> +			groups = "pcie_clkreq",
> +				 "pcie_pereset",
> +				 "pcie_wake";
> +		};
> +	};
> +
> +	pwm_pins: pwm-pins {
> +		mux {
> +			function = "pwm";
> +			groups = "pwm_0";
> +		};
> +	};
> +
> +	/* SPI-NOR is shared pin with serial NAND */
> +	qspi_pins: qspi-pins {
> +		mux {
> +			function = "flash";
> +			groups = "spi_nor";
> +		};
> +	};
> +
> +	/* Serial NAND is shared pin with SPI-NOR */
> +	serial_nand_pins: serial-nand-pins {
> +		mux {
> +			function = "flash";
> +			groups = "snfi";
> +		};
> +	};
> +
> +	spi_pins: spi-pins {
> +		mux {
> +			function = "spi";
> +			groups = "spi_0";
> +		};
> +	};
> +
> +	uart0_pins: uart0-pins {
> +		mux {
> +			function = "uart";
> +			groups = "uart0_txd_rxd" ;
> +		};
> +	};
> +
> +	uart1_pins: uart1-pins {
> +		mux {
> +			function = "uart";
> +			groups = "uart1_0_tx_rx" ;
> +		};
> +	};
> +
> +	uart2_pins: uart2-pins {
> +		mux {
> +			function = "uart";
> +			groups = "uart2_0_txd_rxd" ;
> +		};
> +	};
> +
> +	watchdog_pins: watchdog-pins {
> +		mux {
> +			function = "watchdog";
> +			groups = "watchdog";
> +		};
> +	};
> +};
> +
> +&spi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&spi_pins>;
> +	status = "okay";
> +};
> +
> +&ssusb {
> +	vusb33-supply = <&reg_3p3v>;
> +	vbus-supply = <&reg_5v>;
> +	status = "okay";
> +};
> +
> +&u3phy0 {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pins>;
> +	status = "okay";
> +};
> +
> +&watchdog {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&watchdog_pins>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
> new file mode 100644
> index 000000000000..9608bc2ccb3f
> --- /dev/null
> +++ b/arch/arm/boot/dts/mt7629.dtsi
> @@ -0,0 +1,481 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + *
> + * Author: Ryder Lee <ryder.lee@mediatek.com>
> + */
> +
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/clock/mt7629-clk.h>
> +#include <dt-bindings/power/mt7622-power.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/reset/mt7629-resets.h>
> +
> +/ {
> +	compatible = "mediatek,mt7629";
> +	interrupt-parent = <&sysirq>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		enable-method = "mediatek,mt6589-smp";
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0x0>;
> +			clock-frequency = <1250000000>;
> +			cci-control-port = <&cci_control2>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a7";
> +			reg = <0x1>;
> +			clock-frequency = <1250000000>;
> +			cci-control-port = <&cci_control2>;
> +		};
> +	};
> +
> +	pmu {
> +		compatible = "arm,cortex-a7-pmu";
> +		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 9 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-affinity = <&cpu0>, <&cpu1>;
> +	};
> +
> +	clk20m: oscillator-0 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <20000000>;
> +		clock-output-names = "clk20m";
> +	};
> +
> +	clk40m: oscillator-1 {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <40000000>;
> +		clock-output-names = "clkxtal";
> +	};
> +
> +	timer {
> +		compatible = "arm,armv7-timer";
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
> +		clock-frequency = <20000000>;
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		infracfg: syscon@10000000 {
> +			compatible = "mediatek,mt7629-infracfg", "syscon";
> +			reg = <0x10000000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		pericfg: syscon@10002000 {
> +			compatible = "mediatek,mt7629-pericfg", "syscon";
> +			reg = <0x10002000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		scpsys: scpsys@10006000 {
> +			compatible = "mediatek,mt7629-scpsys",
> +				     "mediatek,mt7622-scpsys";
> +			#power-domain-cells = <1>;
> +			reg = <0x10006000 0x1000>;
> +			clocks = <&topckgen CLK_TOP_HIF_SEL>;
> +			clock-names = "hif_sel";
> +			assigned-clocks = <&topckgen CLK_TOP_HIF_SEL>;
> +			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL1_D2>;
> +			infracfg = <&infracfg>;
> +		};
> +
> +		timer: timer@10009000 {
> +			compatible = "mediatek,mt7629-timer",
> +				     "mediatek,mt6765-timer";
> +			reg = <0x10009000 0x60>;
> +			interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&clk20m>;
> +			clock-names = "clk20m";
> +		};
> +
> +		sysirq: interrupt-controller@10200a80 {
> +			compatible = "mediatek,mt7629-sysirq",
> +				     "mediatek,mt6577-sysirq";
> +			reg = <0x10200a80 0x20>;
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			interrupt-parent = <&gic>;
> +		};
> +
> +		apmixedsys: syscon@10209000 {
> +			compatible = "mediatek,mt7629-apmixedsys", "syscon";
> +			reg = <0x10209000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		rng: rng@1020f000 {
> +			compatible = "mediatek,mt7629-rng",
> +				     "mediatek,mt7623-rng";
> +			reg = <0x1020f000 0x100>;
> +			clocks = <&infracfg CLK_INFRA_TRNG_PD>;
> +			clock-names = "rng";
> +		};
> +
> +		topckgen: syscon@10210000 {
> +			compatible = "mediatek,mt7629-topckgen", "syscon";
> +			reg = <0x10210000 0x1000>;
> +			#clock-cells = <1>;
> +		};
> +
> +		watchdog: watchdog@10212000 {
> +			compatible = "mediatek,mt7629-wdt",
> +				     "mediatek,mt6589-wdt";
> +			reg = <0x10212000 0x100>;
> +		};
> +
> +		pio: pinctrl@10217000 {
> +			compatible = "mediatek,mt7629-pinctrl";
> +			reg = <0x10217000 0x8000>,
> +			      <0x10005000 0x1000>;
> +			reg-names = "base", "eint";
> +			gpio-controller;
> +			gpio-ranges = <&pio 0 0 79>;
> +			#gpio-cells = <2>;
> +			#interrupt-cells = <2>;
> +			interrupt-controller;
> +			interrupts = <GIC_SPI 153 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-parent = <&gic>;
> +		};
> +
> +		gic: interrupt-controller@10300000 {
> +			compatible = "arm,gic-400";
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			interrupt-parent = <&gic>;
> +			reg = <0x10310000 0x1000>,
> +			      <0x10320000 0x1000>,
> +			      <0x10340000 0x2000>,
> +			      <0x10360000 0x2000>;
> +		};
> +
> +		cci: cci@10390000 {
> +			compatible = "arm,cci-400";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			reg = <0x10390000 0x1000>;
> +			ranges = <0 0x10390000 0x10000>;
> +
> +			cci_control0: slave-if@1000 {
> +				compatible = "arm,cci-400-ctrl-if";
> +				interface-type = "ace-lite";
> +				reg = <0x1000 0x1000>;
> +			};
> +
> +			cci_control1: slave-if@4000 {
> +				compatible = "arm,cci-400-ctrl-if";
> +				interface-type = "ace";
> +				reg = <0x4000 0x1000>;
> +			};
> +
> +			cci_control2: slave-if@5000 {
> +				compatible = "arm,cci-400-ctrl-if";
> +				interface-type = "ace";
> +				reg = <0x5000 0x1000>;
> +			};
> +
> +			pmu@9000 {
> +				compatible = "arm,cci-400-pmu,r1";
> +				reg = <0x9000 0x5000>;
> +				interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>,
> +					     <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +			};
> +		};
> +
> +		uart0: serial@11002000 {
> +			compatible = "mediatek,mt7629-uart",
> +				     "mediatek,mt6577-uart";
> +			reg = <0x11002000 0x400>;
> +			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_UART_SEL>,
> +				 <&pericfg CLK_PERI_UART0_PD>;
> +			clock-names = "baud", "bus";
> +			status = "disabled";
> +		};
> +
> +		uart1: serial@11003000 {
> +			compatible = "mediatek,mt7629-uart",
> +				     "mediatek,mt6577-uart";
> +			reg = <0x11003000 0x400>;
> +			interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_UART_SEL>,
> +				 <&pericfg CLK_PERI_UART1_PD>;
> +			clock-names = "baud", "bus";
> +			status = "disabled";
> +		};
> +
> +		uart2: serial@11004000 {
> +			compatible = "mediatek,mt7629-uart",
> +				     "mediatek,mt6577-uart";
> +			reg = <0x11004000 0x400>;
> +			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_UART_SEL>,
> +				 <&pericfg CLK_PERI_UART2_PD>;
> +			clock-names = "baud", "bus";
> +			status = "disabled";
> +		};
> +
> +		i2c: i2c@11007000 {
> +			compatible = "mediatek,mt7629-i2c",
> +				     "mediatek,mt2712-i2c";
> +			reg = <0x11007000 0x90>,
> +			      <0x11000100 0x80>;
> +			interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
> +			clock-div = <4>;
> +			clocks = <&pericfg CLK_PERI_I2C0_PD>,
> +				 <&pericfg CLK_PERI_AP_DMA_PD>;
> +			clock-names = "main", "dma";
> +			assigned-clocks = <&topckgen CLK_TOP_AXI_SEL>;
> +			assigned-clock-parents = <&topckgen CLK_TOP_SYSPLL1_D2>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		spi: spi@1100a000 {
> +			compatible = "mediatek,mt7629-spi",
> +				     "mediatek,mt7622-spi";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			reg = <0x1100a000 0x100>;
> +			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_SYSPLL3_D2>,
> +				 <&topckgen CLK_TOP_SPI0_SEL>,
> +				 <&pericfg CLK_PERI_SPI0_PD>;
> +			clock-names = "parent-clk", "sel-clk", "spi-clk";
> +			status = "disabled";
> +		};
> +
> +		qspi: spi@11014000 {
> +			compatible = "mediatek,mt7629-nor",
> +				     "mediatek,mt8173-nor";
> +			reg = <0x11014000 0xe0>;
> +			clocks = <&pericfg CLK_PERI_FLASH_PD>,
> +				 <&topckgen CLK_TOP_FLASH_SEL>;
> +			clock-names = "spi", "sf";
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		ssusbsys: syscon@1a000000 {
> +			compatible = "mediatek,mt7629-ssusbsys", "syscon";
> +			reg = <0x1a000000 0x1000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		ssusb: usb@1a0c0000 {
> +			compatible = "mediatek,mt7629-xhci",
> +				     "mediatek,mtk-xhci";
> +			reg = <0x1a0c0000 0x01000>,
> +			      <0x1a0c3e00 0x0100>;
> +			reg-names = "mac", "ippc";
> +			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&ssusbsys CLK_SSUSB_SYS_EN>,
> +				 <&ssusbsys CLK_SSUSB_REF_EN>,
> +				 <&ssusbsys CLK_SSUSB_MCU_EN>,
> +				 <&ssusbsys CLK_SSUSB_DMA_EN>;
> +			clock-names = "sys_ck", "ref_ck", "mcu_ck", "dma_ck";
> +			assigned-clocks = <&topckgen CLK_TOP_AXI_SEL>,
> +					  <&topckgen CLK_TOP_SATA_SEL>,
> +					  <&topckgen CLK_TOP_HIF_SEL>;
> +			assigned-clock-parents = <&topckgen CLK_TOP_SYSPLL1_D2>,
> +						 <&topckgen CLK_TOP_UNIVPLL2_D4>,
> +						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
> +			power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF1>;
> +			phys = <&u2port0 PHY_TYPE_USB2>,
> +			       <&u3port0 PHY_TYPE_USB3>;
> +			status = "disabled";
> +		};
> +
> +		u3phy0: usb-phy@1a0c4000 {
> +			compatible = "mediatek,generic-tphy-v2";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x1a0c4000 0xe00>;
> +			status = "disabled";
> +
> +			u2port0: usb-phy@0 {
> +				reg = <0 0x700>;
> +				clocks = <&ssusbsys CLK_SSUSB_U2_PHY_EN>;
> +				clock-names = "ref";
> +				#phy-cells = <1>;
> +				status = "okay";
> +			};
> +
> +			u3port0: usb-phy@700 {
> +				reg = <0x700 0x700>;
> +				clocks = <&clk20m>;
> +				clock-names = "ref";
> +				#phy-cells = <1>;
> +				status = "okay";
> +			};
> +		};
> +
> +		pciesys: syscon@1a100800 {
> +			compatible = "mediatek,mt7629-pciesys", "syscon";
> +			reg = <0x1a100800 0x1000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		pcie: pcie@1a140000 {
> +			compatible = "mediatek,mt7629-pcie";
> +			device_type = "pci";
> +			reg = <0x1a140000 0x1000>,
> +			      <0x1a145000 0x1000>;
> +			reg-names = "subsys","port1";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&pciesys CLK_PCIE_P1_MAC_EN>,
> +				 <&pciesys CLK_PCIE_P0_AHB_EN>,
> +				 <&pciesys CLK_PCIE_P1_AUX_EN>,
> +				 <&pciesys CLK_PCIE_P1_AXI_EN>,
> +				 <&pciesys CLK_PCIE_P1_OBFF_EN>,
> +				 <&pciesys CLK_PCIE_P1_PIPE_EN>;
> +			clock-names = "sys_ck1", "ahb_ck1",
> +				      "aux_ck1", "axi_ck1",
> +				      "obff_ck1", "pipe_ck1";
> +			assigned-clocks = <&topckgen CLK_TOP_SATA_SEL>,
> +					  <&topckgen CLK_TOP_AXI_SEL>,
> +					  <&topckgen CLK_TOP_HIF_SEL>;
> +			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL2_D4>,
> +						 <&topckgen CLK_TOP_SYSPLL1_D2>,
> +						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
> +			phys = <&pcieport1 PHY_TYPE_PCIE>;
> +			phy-names = "pcie-phy1";
> +			power-domains = <&scpsys MT7622_POWER_DOMAIN_HIF0>;
> +			bus-range = <0x00 0xff>;
> +			ranges = <0x82000000 0 0x20000000 0x20000000 0 0x10000000>;
> +
> +			pcie1: pcie@1,0 {
> +				device_type = "pci";
> +				reg = <0x0800 0 0 0 0>;
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				#interrupt-cells = <1>;
> +				ranges;
> +				num-lanes = <1>;
> +				interrupt-map-mask = <0 0 0 7>;
> +				interrupt-map = <0 0 0 1 &pcie_intc1 0>,
> +						<0 0 0 2 &pcie_intc1 1>,
> +						<0 0 0 3 &pcie_intc1 2>,
> +						<0 0 0 4 &pcie_intc1 3>;
> +
> +				pcie_intc1: interrupt-controller {
> +					interrupt-controller;
> +					#address-cells = <0>;
> +					#interrupt-cells = <1>;
> +				};
> +			};
> +		};
> +
> +		pciephy1: pcie-phy@1a14a000 {
> +			compatible = "mediatek,generic-tphy-v2";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x1a14a000 0x1000>;
> +			status = "disabled";
> +
> +			pcieport1: port1phy@0 {
> +				reg = <0 0x1000>;
> +				clocks = <&clk20m>;
> +				clock-names = "ref";
> +				#phy-cells = <1>;
> +				status = "okay";
> +			};
> +		};
> +
> +		ethsys: syscon@1b000000 {
> +			compatible = "mediatek,mt7629-ethsys", "syscon";
> +			reg = <0x1b000000 0x1000>;
> +			#clock-cells = <1>;
> +			#reset-cells = <1>;
> +		};
> +
> +		eth: ethernet@1b100000 {
> +			compatible = "mediatek,mt7629-eth","syscon";
> +			reg = <0x1b100000 0x20000>;
> +			interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 224 IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_SPI 225 IRQ_TYPE_LEVEL_LOW>;
> +			clocks = <&topckgen CLK_TOP_ETH_SEL>,
> +				 <&topckgen CLK_TOP_F10M_REF_SEL>,
> +				 <&ethsys CLK_ETH_ESW_EN>,
> +				 <&ethsys CLK_ETH_GP0_EN>,
> +				 <&ethsys CLK_ETH_GP1_EN>,
> +				 <&ethsys CLK_ETH_GP2_EN>,
> +				 <&ethsys CLK_ETH_FE_EN>,
> +				 <&sgmiisys0 CLK_SGMII_TX_EN>,
> +				 <&sgmiisys0 CLK_SGMII_RX_EN>,
> +				 <&sgmiisys0 CLK_SGMII_CDR_REF>,
> +				 <&sgmiisys0 CLK_SGMII_CDR_FB>,
> +				 <&sgmiisys1 CLK_SGMII_TX_EN>,
> +				 <&sgmiisys1 CLK_SGMII_RX_EN>,
> +				 <&sgmiisys1 CLK_SGMII_CDR_REF>,
> +				 <&sgmiisys1 CLK_SGMII_CDR_FB>,
> +				 <&apmixedsys CLK_APMIXED_SGMIPLL>,
> +				 <&apmixedsys CLK_APMIXED_ETH2PLL>;
> +			clock-names = "ethif", "sgmiitop", "esw", "gp0", "gp1",
> +				      "gp2", "fe", "sgmii_tx250m", "sgmii_rx250m",
> +				      "sgmii_cdr_ref", "sgmii_cdr_fb",
> +				      "sgmii2_tx250m", "sgmii2_rx250m",
> +				      "sgmii2_cdr_ref", "sgmii2_cdr_fb",
> +				      "sgmii_ck", "eth2pll";
> +			assigned-clocks = <&topckgen CLK_TOP_ETH_SEL>,
> +					  <&topckgen CLK_TOP_F10M_REF_SEL>;
> +			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL1_D2>,
> +						 <&topckgen CLK_TOP_SGMIIPLL_D2>;
> +			power-domains = <&scpsys MT7622_POWER_DOMAIN_ETHSYS>;
> +			mediatek,ethsys = <&ethsys>;
> +			mediatek,sgmiisys = <&sgmiisys0>, <&sgmiisys1>;
> +			mediatek,infracfg = <&infracfg>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		sgmiisys0: syscon@1b128000 {
> +			compatible = "mediatek,mt7629-sgmiisys", "syscon";
> +			reg = <0x1b128000 0x3000>;
> +			#clock-cells = <1>;
> +			mediatek,physpeed = "2500";
> +		};
> +
> +		sgmiisys1: syscon@1b130000 {
> +			compatible = "mediatek,mt7629-sgmiisys", "syscon";
> +			reg = <0x1b130000 0x3000>;
> +			#clock-cells = <1>;
> +			mediatek,physpeed = "2500";
> +		};
> +	};
> +};
> diff --git a/include/dt-bindings/reset/mt7629-resets.h b/include/dt-bindings/reset/mt7629-resets.h
> new file mode 100644
> index 000000000000..6bb85734f68d
> --- /dev/null
> +++ b/include/dt-bindings/reset/mt7629-resets.h
> @@ -0,0 +1,71 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + */
> +
> +#ifndef _DT_BINDINGS_RESET_CONTROLLER_MT7629
> +#define _DT_BINDINGS_RESET_CONTROLLER_MT7629
> +
> +/* INFRACFG resets */
> +#define MT7629_INFRA_EMI_MPU_RST		0
> +#define MT7629_INFRA_UART5_RST			2
> +#define MT7629_INFRA_CIRQ_EINT_RST		3
> +#define MT7629_INFRA_APXGPT_RST			4
> +#define MT7629_INFRA_SCPSYS_RST			5
> +#define MT7629_INFRA_KP_RST			6
> +#define MT7629_INFRA_SPI1_RST			7
> +#define MT7629_INFRA_SPI4_RST			8
> +#define MT7629_INFRA_SYSTIMER_RST		9
> +#define MT7629_INFRA_IRRX_RST			10
> +#define MT7629_INFRA_AO_BUS_RST			16
> +#define MT7629_INFRA_EMI_RST			32
> +#define MT7629_INFRA_APMIXED_RST		35
> +#define MT7629_INFRA_MIPI_RST			36
> +#define MT7629_INFRA_TRNG_RST			37
> +#define MT7629_INFRA_SYSCIRQ_RST		38
> +#define MT7629_INFRA_MIPI_CSI_RST		39
> +#define MT7629_INFRA_GCE_FAXI_RST		40
> +#define MT7629_INFRA_I2C_SRAM_RST		41
> +#define MT7629_INFRA_IOMMU_RST			47
> +
> +/* PERICFG resets */
> +#define MT7629_PERI_UART0_SW_RST		0
> +#define MT7629_PERI_UART1_SW_RST		1
> +#define MT7629_PERI_UART2_SW_RST		2
> +#define MT7629_PERI_BTIF_SW_RST			6
> +#define MT7629_PERI_PWN_SW_RST			8
> +#define MT7629_PERI_DMA_SW_RST			11
> +#define MT7629_PERI_NFI_SW_RST			14
> +#define MT7629_PERI_I2C0_SW_RST			22
> +#define MT7629_PERI_SPI0_SW_RST			33
> +#define MT7629_PERI_SPI1_SW_RST			34
> +#define MT7629_PERI_FLASHIF_SW_RST		36
> +
> +/* PCIe Subsystem resets */
> +#define MT7629_PCIE1_CORE_RST			19
> +#define MT7629_PCIE1_MMIO_RST			20
> +#define MT7629_PCIE1_HRST			21
> +#define MT7629_PCIE1_USER_RST			22
> +#define MT7629_PCIE1_PIPE_RST			23
> +#define MT7629_PCIE0_CORE_RST			27
> +#define MT7629_PCIE0_MMIO_RST			28
> +#define MT7629_PCIE0_HRST			29
> +#define MT7629_PCIE0_USER_RST			30
> +#define MT7629_PCIE0_PIPE_RST			31
> +
> +/* SSUSB Subsystem resets */
> +#define MT7629_SSUSB_PHY_PWR_RST		3
> +#define MT7629_SSUSB_MAC_PWR_RST		4
> +
> +/* ETH Subsystem resets */
> +#define MT7629_ETHSYS_SYS_RST			0
> +#define MT7629_ETHSYS_MCM_RST			2
> +#define MT7629_ETHSYS_HSDMA_RST			5
> +#define MT7629_ETHSYS_FE_RST			6
> +#define MT7629_ETHSYS_ESW_RST			16
> +#define MT7629_ETHSYS_GMAC_RST			23
> +#define MT7629_ETHSYS_EPHY_RST			24
> +#define MT7629_ETHSYS_CRYPTO_RST		29
> +#define MT7629_ETHSYS_PPE_RST			31
> +
> +#endif  /* _DT_BINDINGS_RESET_CONTROLLER_MT7629 */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
