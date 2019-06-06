Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DF236900
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:05:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0x9l4oZJLa2Zi9Nr1Dfvre+Yo4A4mCV7QllPqxhPz2Q=; b=Kz5qVpwDzy4XI0
	y0Kj2Y5KDTav/c4zb4K4d1wQ9vm91lrdrPkL+WBjB/ZE4trAvQceky/O8A0FSlXo6Nv7tt67LlwHm
	cznHgekRJRZhuU2GnD5vxZiJybVhj6hKlqDZsGQj3NqcTYyJJukMveBXrM7M0zvBthgCqG6KRocGd
	KT1FhkxB05ezNWnajXfzVk1SpdKT/W69yFTg6gHDOG65HO0cWzczBpsvjR6C9ucgAgbfX3VlTo5XV
	1QBp41J7sSPa0l8IB/1s4A1RV+qzNdD3QuxJjYYVcpT/6pYwoMGbTAzgz9AaMz3cUpOM03WwzHOou
	GzB5eIwSfgoWbx40qV/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYgps-000325-Tk; Thu, 06 Jun 2019 01:04:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYgpk-00031j-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:04:50 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6E4C20872;
 Thu,  6 Jun 2019 01:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559783088;
 bh=y9Y0nBtkXWOsuZydgoYTvSFfbBFosYnVEbiVlseLM8g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p31hObTrXcg6hWOauZjRUqsNHUY3x8RpYwXE80eyhKsmjbwDSMshcjY5iLZO52jZh
 ijE5QnTtbZH0NcmOC3ih2M2UjVHhM1ZwYBXV6/Kitupdfg82xufJEGudb7gpvsx2pC
 2bIt+2F0W6eqxa00vNo3ud44TnUY5Hx6tS/uce88=
Date: Thu, 6 Jun 2019 09:04:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: Introduce the NXP LS1021A-TSN board
Message-ID: <20190606010429.GP29853@dragon>
References: <20190529221222.19276-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529221222.19276-1-olteanv@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_180448_834891_00D8C872 
X-CRM114-Status: GOOD (  19.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 01:12:22AM +0300, Vladimir Oltean wrote:
> The LS1021A-TSN is a development board built by VVDN/Argonboards in
> partnership with NXP.
> 
> It features the LS1021A SoC and the first-generation SJA1105T Ethernet
> switch for prototyping implementations of a subset of IEEE 802.1 TSN
> standards.
> 
> It has two regular Ethernet ports and four switched, TSN-capable ports.
> 
> It also features:
> - One Arduino header
> - One expansion header
> - Two USB 3.0 ports
> - One mini PCIe slot
> - One SATA interface
> - Accelerometer, gyroscope, temperature sensors
> 
> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> ---
> Changes from v1:
> - Applied Shawn's feedback
> - Introduced QSPI flash node
> 
> v1 patch available at:
> https://patchwork.kernel.org/patch/10930451/
> 
>  arch/arm/boot/dts/Makefile        |   1 +
>  arch/arm/boot/dts/ls1021a-tsn.dts | 288 ++++++++++++++++++++++++++++++
>  2 files changed, 289 insertions(+)
>  create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..a4eb4ca5e148 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -602,6 +602,7 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
>  dtb-$(CONFIG_SOC_LS1021A) += \
>  	ls1021a-moxa-uc-8410a.dtb \
>  	ls1021a-qds.dtb \
> +	ls1021a-tsn.dtb \
>  	ls1021a-twr.dtb
>  dtb-$(CONFIG_SOC_VF610) += \
>  	vf500-colibri-eval-v3.dtb \
> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
> new file mode 100644
> index 000000000000..b05774eac92e
> --- /dev/null
> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> @@ -0,0 +1,288 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright 2016-2018 NXP Semiconductors
> + * Copyright 2019 Vladimir Oltean <olteanv@gmail.com>
> + */
> +
> +/dts-v1/;
> +#include "ls1021a.dtsi"
> +
> +/ {
> +	model = "NXP LS1021A-TSN Board";
> +
> +	sys_mclk: clock-mclk {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <24576000>;
> +	};
> +
> +	reg_vdda_codec: regulator-3V3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3P3V";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_vddio_codec: regulator-2V5 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "2P5V";
> +		regulator-min-microvolt = <2500000>;
> +		regulator-max-microvolt = <2500000>;
> +		regulator-always-on;
> +	};
> +};
> +
> +&enet0 {
> +	tbi-handle = <&tbi0>;
> +	phy-handle = <&sgmii_phy2>;
> +	phy-mode = "sgmii";
> +	status = "okay";
> +};
> +
> +&enet1 {
> +	tbi-handle = <&tbi1>;
> +	phy-handle = <&sgmii_phy1>;
> +	phy-mode = "sgmii";
> +	status = "okay";
> +};
> +
> +/* RGMII delays added via PCB traces */
> +&enet2 {
> +	phy-mode = "rgmii";
> +	status = "okay";
> +
> +	fixed-link {
> +		speed = <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +&dspi0 {
> +	bus-num = <0>;
> +	status = "okay";
> +
> +	/* ADG704BRMZ 1:4 mux/demux */
> +	sja1105: ethernet-switch@1 {
> +		reg = <0x1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "nxp,sja1105t";
> +		/* 12 MHz */
> +		spi-max-frequency = <12000000>;
> +		/* Sample data on trailing clock edge */
> +		spi-cpha;
> +		fsl,spi-cs-sck-delay = <1000>;
> +		fsl,spi-sck-cs-delay = <1000>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				/* ETH5 written on chassis */
> +				label = "swp5";
> +				phy-handle = <&rgmii_phy6>;
> +				phy-mode = "rgmii-id";
> +				reg = <0>;
> +			};
> +
> +			port@1 {
> +				/* ETH2 written on chassis */
> +				label = "swp2";
> +				phy-handle = <&rgmii_phy3>;
> +				phy-mode = "rgmii-id";
> +				reg = <1>;
> +			};
> +
> +			port@2 {
> +				/* ETH3 written on chassis */
> +				label = "swp3";
> +				phy-handle = <&rgmii_phy4>;
> +				phy-mode = "rgmii-id";
> +				reg = <2>;
> +			};
> +
> +			port@3 {
> +				/* ETH4 written on chassis */
> +				label = "swp4";
> +				phy-handle = <&rgmii_phy5>;
> +				phy-mode = "rgmii-id";
> +				reg = <3>;
> +			};
> +
> +			port@4 {
> +				/* Internal port connected to eth2 */
> +				ethernet = <&enet2>;
> +				phy-mode = "rgmii";
> +				reg = <4>;
> +
> +				fixed-link {
> +					speed = <1000>;
> +					full-duplex;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdio0 {
> +	/* AR8031 */
> +	sgmii_phy1: ethernet-phy@1 {
> +		reg = <0x1>;
> +	};
> +
> +	/* AR8031 */
> +	sgmii_phy2: ethernet-phy@2 {
> +		reg = <0x2>;
> +	};
> +
> +	/* BCM5464 quad PHY */
> +	rgmii_phy3: ethernet-phy@3 {
> +		reg = <0x3>;
> +	};
> +
> +	rgmii_phy4: ethernet-phy@4 {
> +		reg = <0x4>;
> +	};
> +
> +	rgmii_phy5: ethernet-phy@5 {
> +		reg = <0x5>;
> +	};
> +
> +	rgmii_phy6: ethernet-phy@6 {
> +		reg = <0x6>;
> +	};
> +
> +	/* SGMII PCS for enet0 */
> +	tbi0: tbi-phy@1f {
> +		reg = <0x1f>;
> +		device_type = "tbi-phy";
> +	};
> +};
> +
> +&mdio1 {
> +	/* SGMII PCS for enet1 */
> +	tbi1: tbi-phy@1f {
> +		reg = <0x1f>;
> +		device_type = "tbi-phy";
> +	};
> +};
> +
> +&i2c0 {
> +	status = "okay";
> +
> +	/* 3 axis accelerometer */
> +	accelerometer@1e {
> +		compatible = "fsl,fxls8471";
> +		position = <0>;
> +		reg = <0x1e>;
> +	};
> +
> +	/* Audio codec (SAI2) */
> +	codec@2a {

audio-codec for node name.

> +		compatible = "fsl,sgtl5000";
> +		VDDIO-supply = <&reg_vddio_codec>;
> +		VDDA-supply = <&reg_vdda_codec>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&sys_mclk>;
> +		reg = <0x2a>;
> +	};
> +
> +	/* Current sensing circuit for 1V VDDCORE PMIC rail */
> +	current-sensor@44 {
> +		compatible = "ti,ina220";
> +		shunt-resistor = <1000>;
> +		reg = <0x44>;
> +	};
> +
> +	/* Current sensing circuit for 12V VCC rail */
> +	current-sensor@45 {
> +		compatible = "ti,ina220";
> +		shunt-resistor = <1000>;
> +		reg = <0x45>;
> +	};
> +
> +	/* Thermal monitor - case */
> +	temperature-sensor@48 {
> +		compatible = "national,lm75";
> +		reg = <0x48>;
> +	};
> +
> +	/* Thermal monitor - chip */
> +	temperature-sensor@4c {
> +		compatible = "ti,tmp451";
> +		reg = <0x4c>;
> +	};
> +
> +	eeprom@51 {
> +		compatible = "atmel,24c32";
> +		reg = <0x51>;
> +	};
> +
> +	/* Unsupported devices:
> +	 * - FXAS21002C Gyroscope at 0x20
> +	 * - TI ADS7924 4-channel ADC at 0x49
> +	 */
> +};
> +
> +&qspi {
> +	status = "okay";
> +
> +	flash@0 {
> +		/* Rev. A uses 64MB flash, Rev. B & C use 32MB flash */
> +		compatible = "jedec,spi-nor", "s25fl256s1", "s25fl512s";
> +		spi-max-frequency = <20000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		reg = <0>;
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			partition@0 {
> +				label = "RCW";
> +				reg = <0x0 0x40000>;
> +			};
> +
> +			partition@40000 {
> +				label = "U-Boot";
> +				reg = <0x40000 0x300000>;
> +			};
> +
> +			partition@340000 {
> +				label = "U-Boot Env";
> +				reg = <0x340000 0x100000>;
> +			};
> +		};
> +	};
> +};
> +
> +&ifc {

Please sort all these labelling nodes alphabetically.

Shawn

> +	status = "disabled";
> +};
> +
> +&esdhc {
> +	status = "okay";
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&lpuart0 {
> +	status = "okay";
> +};
> +
> +&lpuart3 {
> +	status = "okay";
> +};
> +
> +&sai2 {
> +	status = "okay";
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
