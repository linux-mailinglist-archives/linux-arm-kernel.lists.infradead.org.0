Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B572118E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 03:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC2NN0ch2tIo712l/cBuJD1SiLHP0l70AgyPzOjweOk=; b=FzOkXMdoEpSPUh
	M2Z3GQEecC+Jo9BUnMfgKO4Zx565CI3kZqdtTNN/VRCyZGwh6OFdomQkC6K8ZDyhS7hGCL8+y0cfM
	dPWGCTeQFMTEghBGrdpqtY6MhIfB3L3JNGiMfOC0utBZrVTweRyW/1JmdxYkTkvsYIxie4wQlMMG2
	6dmPE2w+atovXukAlRP7GJDR+rhmMxqziBF6Dm29h+YiDgDTGDdHkJwEXlVh3eKZD66qrta1qzq/V
	qU9lh5E/avlyepuuk6XQW8zJUv3Guxcrj6I7xjoM4eXe0q7g/DEAMHMkWy57/qgZaNqj5cxU3/cmp
	/J1IY6vorGPYFVAucvEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRRJd-0004Ih-KQ; Fri, 17 May 2019 01:05:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRRJV-0004I3-Nu
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 01:05:35 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1990E206BF;
 Fri, 17 May 2019 01:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558055133;
 bh=Eg4Xg+bGB5hNj+YaIcs4eXthYP4ERQYZLl2oaJ2INLA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iq3jbFIO4S3np4qR1FlYgagpviIHVuHePQYyx+86DPxdzq6wC70GXoxPcOAYKC0jf
 hutlRCJUO5w0KY1R0ovk0Bg8DbDLTqqIX+Pvyp6JFeIWpbLgnI3a+kvHKqTLalmwVg
 y89JKD6iKYXfZe9OYoAhrgBg8snEv+WPdybguyEU=
Date: Fri, 17 May 2019 09:04:52 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: Introduce the NXP LS1021A-TSN board
Message-ID: <20190517010450.GT15856@dragon>
References: <20190506010800.2433-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190506010800.2433-1-olteanv@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_180533_820298_39025BC6 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Mon, May 06, 2019 at 04:08:00AM +0300, Vladimir Oltean wrote:
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
>  arch/arm/boot/dts/Makefile        |   3 +-
>  arch/arm/boot/dts/ls1021a-tsn.dts | 238 ++++++++++++++++++++++++++++++
>  2 files changed, 240 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index f4f5aeaf3298..529f0150f6b4 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -593,7 +593,8 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
>  dtb-$(CONFIG_SOC_LS1021A) += \
>  	ls1021a-moxa-uc-8410a.dtb \
>  	ls1021a-qds.dtb \
> -	ls1021a-twr.dtb
> +	ls1021a-twr.dtb \
> +	ls1021a-tsn.dtb

Please keep the list alphabetically sorted.  That said, ls1021a-tsn.dtb
should go prior to ls1021a-twr.dtb.

>  dtb-$(CONFIG_SOC_VF610) += \
>  	vf500-colibri-eval-v3.dtb \
>  	vf610-bk4.dtb \
> diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
> new file mode 100644
> index 000000000000..5269486699bd
> --- /dev/null
> +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> @@ -0,0 +1,238 @@
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
> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

This is the old style of organizing fixed regulators, which has been
complained by device tree maintainers.  Drop this container node and put
the regulator nodes directly under root, using name schema below.

	reg_xxx: regulator-xxx {
		...
	};

And thus, 'reg' property in regulator node should be dropped.

> +
> +		reg_3p3v: regulator@0 {
> +			compatible = "regulator-fixed";
> +			reg = <0>;
> +			regulator-name = "3P3V";
> +			regulator-min-microvolt = <3300000>;
> +			regulator-max-microvolt = <3300000>;
> +			regulator-always-on;
> +		};
> +		reg_2p5v: regulator@1 {
> +			compatible = "regulator-fixed";
> +			reg = <1>;
> +			regulator-name = "2P5V";
> +			regulator-min-microvolt = <2500000>;
> +			regulator-max-microvolt = <2500000>;
> +			regulator-always-on;
> +		};
> +	};
> +};
> +
> +&enet0 {
> +	tbi-handle = <&tbi0>;
> +	phy-handle = <&sgmii_phy2>;
> +	phy-mode = "sgmii";
> +	status = "ok";

For sake of consistency, we prefer to use "okay".

> +};
> +
> +&enet1 {
> +	tbi-handle = <&tbi1>;
> +	phy-handle = <&sgmii_phy1>;
> +	phy-mode = "sgmii";
> +	status = "ok";
> +};
> +
> +/* RGMII delays added via PCB traces */
> +&enet2 {
> +	phy-mode = "rgmii";
> +	status = "ok";

Please have a newline between property list and child node.

> +	fixed-link {
> +		speed = <1000>;
> +		full-duplex;
> +	};
> +};
> +
> +&dspi0 {

Please sort these labeled nodes alphabetically.

> +	bus-num = <0>;
> +	status = "ok";
> +
> +	/* ADG704BRMZ 1:4 mux/demux */
> +	tsn_switch: sja1105@1 {

Use a generic node name, while label name can be specific.

> +		reg = <0x1>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "nxp,sja1105t";

Undocumented compatible?

> +		/* 12 MHz */
> +		spi-max-frequency = <12000000>;
> +		/* Sample data on trailing clock edge */
> +		spi-cpha;
> +		fsl,spi-cs-sck-delay = <1000>;
> +		fsl,spi-sck-cs-delay = <1000>;

Have a newline.

> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;

Ditto

> +			port@0 {
> +				/* ETH5 written on chassis */
> +				label = "swp5";
> +				phy-handle = <&rgmii_phy6>;
> +				phy-mode = "rgmii-id";
> +				reg = <0>;
> +			};

Please have a newline between nodes as well.

> +			port@1 {
> +				/* ETH2 written on chassis */
> +				label = "swp2";
> +				phy-handle = <&rgmii_phy3>;
> +				phy-mode = "rgmii-id";
> +				reg = <1>;
> +			};
> +			port@2 {
> +				/* ETH3 written on chassis */
> +				label = "swp3";
> +				phy-handle = <&rgmii_phy4>;
> +				phy-mode = "rgmii-id";
> +				reg = <2>;
> +			};
> +			port@3 {
> +				/* ETH4 written on chassis */
> +				phy-handle = <&rgmii_phy5>;
> +				label = "swp4";
> +				phy-mode = "rgmii-id";
> +				reg = <3>;
> +			};
> +			port@4 {
> +				/* Internal port connected to eth2 */
> +				ethernet = <&enet2>;
> +				phy-mode = "rgmii";
> +				reg = <4>;
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
> +	/* AR8031 */
> +	sgmii_phy2: ethernet-phy@2 {
> +		reg = <0x2>;
> +	};
> +	/* BCM5464 */
> +	rgmii_phy3: ethernet-phy@3 {
> +		reg = <0x3>;
> +	};
> +	rgmii_phy4: ethernet-phy@4 {
> +		reg = <0x4>;
> +	};
> +	rgmii_phy5: ethernet-phy@5 {
> +		reg = <0x5>;
> +	};
> +	rgmii_phy6: ethernet-phy@6 {
> +		reg = <0x6>;
> +	};
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
> +	status = "ok";
> +
> +	/* 3 axis accelerometer */
> +	accelerometer@1e {
> +		compatible = "fsl,fxls8471";
> +		reg = <0x1e>;
> +		position = <0>;
> +	};
> +	/* Gyroscope is at 0x20 but not supported */
> +	/* Audio codec (SAI2) */
> +	codec@2a {

audio-codec

> +		#sound-dai-cells = <0>;

We usually start properties with 'compatible', so please move it behind.

> +		compatible = "fsl,sgtl5000";
> +		reg = <0x2a>;
> +		VDDA-supply = <&reg_3p3v>;
> +		VDDIO-supply = <&reg_2p5v>;
> +		clocks = <&sys_mclk>;
> +	};
> +	/* Current sensing circuit for 1V VDDCORE PMIC rail */
> +	current-sensor@44 {
> +		compatible = "ti,ina220";
> +		reg = <0x44>;
> +		shunt-resistor = <1000>;
> +	};
> +	/* Current sensing circuit for 12V VCC rail */
> +	current-sensor@45 {
> +		compatible = "ti,ina220";
> +		reg = <0x45>;
> +		shunt-resistor = <1000>;
> +	};
> +	/* Thermal monitor - case */
> +	temperature-sensor@48 {
> +		compatible = "national,lm75";
> +		reg = <0x48>;
> +	};
> +	/* Thermal monitor - chip */
> +	temperature-sensor@4c {
> +		compatible = "ti,tmp451";
> +		reg = <0x4c>;
> +	};
> +	/* 4-channel ADC */
> +	adc@49 {
> +		compatible = "ad7924";

Undocumented.

Shawn

> +		reg = <0x49>;
> +	};
> +};
> +
> +&ifc {
> +	status = "disabled";
> +};
> +
> +&esdhc {
> +	status = "ok";
> +};
> +
> +&uart0 {
> +	status = "ok";
> +};
> +
> +&lpuart0 {
> +	status = "ok";
> +};
> +
> +&lpuart3 {
> +	status = "ok";
> +};
> +
> +&sai2 {
> +	status = "ok";
> +};
> +
> +&sata {
> +	status = "ok";
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
