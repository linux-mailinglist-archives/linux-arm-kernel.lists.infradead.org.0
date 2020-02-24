Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCA216A47E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 12:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VDhGuylxsT9f7D4KGPU/q1U7c2YHHe6X985RIUb10Qo=; b=CaV9O9VOMEz+XUSMFICR3HJjm
	hn4mQaaDCNso+CgtFLcCaBo0XTd+lOEpnmKwVw7efmowIeC1wZ1qoCknE994WGa6tfX/8t0CvQtUQ
	2WkWu3xGf/2nYv2sI3vRuZvWtxdn4aHPastez841YYcNPo56y29V/VoRwF2Lbb0uSFB51qkFEw82j
	z4HDwgtlQZUtvPX0CtfdNPyu8R66VbyNB5txtHSoeN45+rPQQSQ88+SvO6XFy9g+ynXodWzrVzBpq
	LhDaCWMO7+zg+YBsS/3fgtbLexFm2RAVCwP4YvIv52MwaI2rHJRF+oVEDMYUoXgzKme8XU1t0rALL
	IW0h+vJwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BTg-0000Nn-5D; Mon, 24 Feb 2020 11:00:44 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BTT-0000KQ-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 11:00:33 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 72CC8700C;
 Mon, 24 Feb 2020 06:00:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 06:00:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=6ks5PrS3oCrxl+JG6PDdMPRI6wj
 8YDA6wVKNfQP9BCk=; b=kK3TH6rtGuokRs+ChsxsFv/4v5lIvJpZToAJJQYoQQm
 tspXsnOyQGEAhAqojsdNgIFqaWklIPSI/WJqy+xqIuuadewWI2/Ux17TSvJVcG4N
 Jtq5HFpknOKWXz8ejEGto2b7YkJzHitbOzdU9qdCvbCluQflDlOw0iT73i+9+UkP
 S0bi+6wNmfENbDpSRh/y6YfZqYmc9Rgh2iNUeOi4vPJ3hX1Z7mO76e7+ssMqKqAp
 PNmWS1KxHw91P/7jLG3rr80H7uXUGpG2qf9Vgj0bSoEUrTsHldV6xHHYz/VpVnEv
 dF8+HNEDdbbfLjloEqdhuK5gA7aSitN/A90pu5YXZcA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6ks5Pr
 S3oCrxl+JG6PDdMPRI6wj8YDA6wVKNfQP9BCk=; b=B0AjRA2LvX3wO6Cpby/rvb
 GGojYQsUwO5NJQUbzY1OGAOPg3k436U90LN/GfmUu1mvC6F5SfdsKDjczBds/rTG
 WmtVqZbpWazKEgJJFUImI8LZQ4Vqv64XMTMlhclm8v6RMups+fxuCM+2PUUQmUwf
 0u0cWpHTKzKacvaEE8SV0C+5zrL/r4imMSMtLoQ4NMqRQlm/cIEP0RJfLnqXdQOL
 tVSI89af70yeKHqpWH63S3hGFp7WO+m7L3Svy6Y/S3tbcqvsl0Y0uaKn6nPOIzt+
 DaTavwXjzOZsrfVFMccfGb+ZdHE1MzScRV+dSPX2PIwR/R/alADnJTf1RPD5pHKQ
 ==
X-ME-Sender: <xms:zaxTXoHPmacLr4yGm1RxHVNM3HAANqK29UuTBnRDmkALyGMoK-yhhQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtgddvfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
 hrlhcuvffnffculddutddmnecujfgurhepfffhvffukfhfgggtuggjsehgtderredttddv
 necuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhord
 htvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgep
 tdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:zaxTXmlJ1sSyAOi6jmm2s1V8g3JoqUl13BCla-Zag00qiJo3L02hAA>
 <xmx:zaxTXj03keg2gZ2dHzvm63P0DCLQTCAHWPBtXK0Zl0l3tMMlbDNNrQ>
 <xmx:zaxTXiRJ-oN9bgX4kY8IMFo5k8qTGRY4X_tXgeaiM3dNjOG97yB8Wg>
 <xmx:zqxTXrJvWDZewlAIkg_ykxyHEMrmoyDoUqcqJltOMWPLpIPmgjGy1w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0C842328005D;
 Mon, 24 Feb 2020 06:00:28 -0500 (EST)
Date: Mon, 24 Feb 2020 12:00:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Ondrej Jirman <megous@megous.com>
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: Add initial support for
 Pine64 PinePhone
Message-ID: <20200224110027.ry3v7ms76hwbdn22@gilmour.lan>
References: <20200223172916.843379-1-megous@megous.com>
 <20200223172916.843379-4-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20200223172916.843379-4-megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_030031_648477_E535DACC 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Luca Weiss <luca@z3ntu.xyz>,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>,
 Bhushan Shah <bshah@kde.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Corentin Labbe <clabbe@baylibre.com>, devicetree@vger.kernel.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8045657363520733366=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8045657363520733366==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uymrrh6prr5faoxw"
Content-Disposition: inline


--uymrrh6prr5faoxw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sun, Feb 23, 2020 at 06:29:16PM +0100, Ondrej Jirman wrote:
> At them moment PinePhone comes in two slightly incompatible variants:
>
> - 1.0: Early Developer Batch
> - 1.1: Braveheart Batch
>
> There will be at least one more incompatible variant in the very near
> future, so let's start by sharing the dtsi among multiple variants,
> right away, even though the HW description doesn't yet include the
> different bits.
>
> This is a basic DT that includes only features that are already
> supported by mainline drivers.

What are those incompatibilities? It's not really obvious from your
patch.

> Co-developed-by: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> Co-developed-by: Martijn Braam <martijn@brixit.nl>
> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> Co-developed-by: Luca Weiss <luca@z3ntu.xyz>
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Signed-off-by: Bhushan Shah <bshah@kde.org>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   2 +
>  .../allwinner/sun50i-a64-pinephone-1.0.dts    |  11 +
>  .../allwinner/sun50i-a64-pinephone-1.1.dts    |  11 +
>  .../dts/allwinner/sun50i-a64-pinephone.dtsi   | 385 ++++++++++++++++++
>  4 files changed, 409 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
>
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index cf4f78617c3f3..79ca263672c38 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -9,6 +9,8 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinebook.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.0.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.1.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-sopine-baseboard.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-teres-i.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
> new file mode 100644
> index 0000000000000..0c42272106afa
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.0.dts
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>

Given the list of authors, surely you're not the sole copyright owner
here?

> +/dts-v1/;
> +
> +#include "sun50i-a64-pinephone.dtsi"
> +
> +/ {
> +	model = "Pine64 PinePhone Developer Batch (1.0)";
> +	compatible = "pine64,pinephone-1.0", "allwinner,sun50i-a64";
> +};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
> new file mode 100644
> index 0000000000000..06a775c41664b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone-1.1.dts
> @@ -0,0 +1,11 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
> +
> +/dts-v1/;
> +
> +#include "sun50i-a64-pinephone.dtsi"
> +
> +/ {
> +	model = "Pine64 PinePhone Braveheart (1.1)";
> +	compatible = "pine64,pinephone-1.1", "allwinner,sun50i-a64";
> +};
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> new file mode 100644
> index 0000000000000..d0cf21d82c9e9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
> @@ -0,0 +1,385 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +// Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.xyz>
> +// Copyright (C) 2020 Ondrej Jirman <megous@megous.com>
> +
> +#include "sun50i-a64.dtsi"
> +#include "sun50i-a64-cpu-opp.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		blue {
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <1>;
> +			color = <LED_COLOR_ID_BLUE>;
> +			gpios = <&pio 3 20 GPIO_ACTIVE_HIGH>; /* PD20 */
> +		};
> +
> +		green {
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <2>;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 3 18 GPIO_ACTIVE_HIGH>; /* PD18 */
> +		};
> +
> +		red {
> +			function = LED_FUNCTION_INDICATOR;
> +			function-enumerator = <3>;
> +			color = <LED_COLOR_ID_RED>;
> +			gpios = <&pio 3 19 GPIO_ACTIVE_HIGH>; /* PD19 */
> +		};
> +	};

LEDs should be named using the $color:$board:$usage pattern

> +
> +	speaker_amp: audio-amplifier {
> +		compatible = "simple-audio-amplifier";
> +		enable-gpios = <&pio 2 7 GPIO_ACTIVE_HIGH>; /* PC7 */
> +		sound-name-prefix = "Speaker Amp";
> +	};
> +
> +	vibrator {
> +		compatible = "gpio-vibrator";
> +		enable-gpios = <&pio 3 2 GPIO_ACTIVE_HIGH>; /* PD2 */
> +		vcc-supply = <&reg_dcdc1>;
> +	};
> +};
> +
> +&codec {
> +	status = "okay";
> +};
> +
> +&codec_analog {
> +	cpvdd-supply = <&reg_eldo1>;
> +	status = "okay";
> +};
> +
> +&cpu0 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +&cpu1 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +&cpu2 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +&cpu3 {
> +	cpu-supply = <&reg_dcdc2>;
> +};
> +
> +&dai {
> +	status = "okay";
> +};
> +
> +&ehci0 {
> +	status = "okay";
> +};
> +
> +&ehci1 {
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c1_pins>;

That's the default

> +	status = "okay";
> +
> +	/* Magnetometer */
> +	lis3mdl@1e {
> +		compatible = "st,lis3mdl-magn";
> +		reg = <0x1e>;
> +		vdd-supply = <&reg_dldo1>;
> +		vddio-supply = <&reg_dldo1>;
> +	};
> +
> +	/* Accelerometer/gyroscope */
> +	mpu6050@68 {
> +		compatible = "invensense,mpu6050";
> +		reg = <0x68>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <7 5 IRQ_TYPE_EDGE_RISING>; /* PH5 */
> +		vdd-supply = <&reg_dldo1>;
> +		vddio-supply = <&reg_dldo1>;
> +	};
> +};
> +
> +/* Connected to pogo pins */
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c2_pins>;

That's the default as well

> +	status = "okay";
> +};

And I'm not sure what the pogo pins are?

> +
> +&lradc {
> +	vref-supply = <&reg_aldo3>;
> +	status = "okay";
> +
> +	button-200 {
> +		label = "Volume Up";
> +		linux,code = <KEY_VOLUMEUP>;
> +		channel = <0>;
> +		voltage = <200000>;
> +	};
> +
> +	button-400 {
> +		label = "Volume Down";
> +		linux,code = <KEY_VOLUMEDOWN>;
> +		channel = <0>;
> +		voltage = <400000>;
> +	};
> +};
> +
> +&mmc0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_pins>;

That's the default

> +	vmmc-supply = <&reg_dcdc1>;
> +	vqmmc-supply = <&reg_dcdc1>;
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>; /* PF6 */
> +	disable-wp;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&mmc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_pins>;

Ditto

> +	vmmc-supply = <&reg_dcdc1>;
> +	vqmmc-supply = <&reg_dcdc1>;
> +	bus-width = <8>;
> +	non-removable;
> +	cap-mmc-hw-reset;
> +	status = "okay";
> +};
> +
> +&ohci0 {
> +	status = "okay";
> +};
> +
> +&ohci1 {
> +	status = "okay";
> +};
> +
> +&pio {
> +	vcc-pb-supply = <&reg_dcdc1>;
> +	vcc-pc-supply = <&reg_dcdc1>;
> +	vcc-pd-supply = <&reg_dcdc1>;
> +	vcc-pe-supply = <&reg_aldo1>;
> +	vcc-pf-supply = <&reg_dcdc1>;
> +	vcc-pg-supply = <&reg_dldo4>;
> +	vcc-ph-supply = <&reg_dcdc1>;
> +};
> +
> +&r_pio {
> +	/*
> +	 * FIXME: We can't add that supply for now since it would
> +	 * create a circular dependency between pinctrl, the regulator
> +	 * and the RSB Bus.
> +	 *
> +	 * vcc-pl-supply = <&reg_aldo2>;
> +	 */
> +};
> +
> +&r_rsb {
> +	status = "okay";
> +
> +	axp803: pmic@3a3 {
> +		compatible = "x-powers,axp803";
> +		reg = <0x3a3>;
> +		interrupt-parent = <&r_intc>;
> +		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
> +	};
> +};
> +
> +#include "axp803.dtsi"
> +
> +&ac_power_supply {
> +	status = "okay";
> +};
> +
> +&battery_power_supply {
> +	status = "okay";
> +};
> +
> +&reg_aldo1 {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "dovdd-csi";
> +};
> +
> +&reg_aldo2 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "vcc-pl";
> +};
> +
> +&reg_aldo3 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <2700000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-pll-avcc";
> +};
> +
> +&reg_dcdc1 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-3v3";
> +};
> +
> +&reg_dcdc2 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1000000>;
> +	regulator-max-microvolt = <1300000>;
> +	regulator-name = "vdd-cpux";
> +};
> +
> +/* DCDC3 is polyphased with DCDC2 */
> +
> +&reg_dcdc5 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1200000>;
> +	regulator-max-microvolt = <1200000>;
> +	regulator-name = "vcc-dram";
> +};
> +
> +&reg_dcdc6 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1100000>;
> +	regulator-max-microvolt = <1100000>;
> +	regulator-name = "vdd-sys";
> +};
> +
> +&reg_dldo1 {
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-dsi-sensor";
> +};
> +
> +&reg_dldo2 {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "vcc-mipi-io";
> +};
> +
> +&reg_dldo3 {
> +	regulator-min-microvolt = <2800000>;
> +	regulator-max-microvolt = <2800000>;
> +	regulator-name = "avdd-csi";
> +};
> +
> +&reg_dldo4 {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-wifi-io";
> +};
> +
> +&reg_eldo1 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "vcc-lpddr";
> +};
> +
> +&reg_eldo3 {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "dvdd-1v8-csi";
> +};
> +
> +&reg_fldo1 {
> +	regulator-min-microvolt = <1200000>;
> +	regulator-max-microvolt = <1200000>;
> +	regulator-name = "vcc-1v2-hsic";
> +};
> +
> +&reg_fldo2 {
> +	regulator-always-on;
> +	regulator-min-microvolt = <1100000>;
> +	regulator-max-microvolt = <1100000>;
> +	regulator-name = "vdd-cpus";
> +};
> +
> +&reg_ldo_io0 {
> +	regulator-min-microvolt = <3300000>;
> +	regulator-max-microvolt = <3300000>;
> +	regulator-name = "vcc-lcd-ctp-stk";
> +	status = "okay";
> +};
> +
> +&reg_ldo_io1 {
> +	regulator-min-microvolt = <1800000>;
> +	regulator-max-microvolt = <1800000>;
> +	regulator-name = "vcc-1v8-typec";
> +	status = "okay";
> +};
> +
> +&reg_rtc_ldo {
> +	regulator-name = "vcc-rtc";
> +};
> +
> +&sound {
> +	status = "okay";
> +	simple-audio-card,aux-devs = <&codec_analog>, <&speaker_amp>;
> +	simple-audio-card,widgets = "Microphone", "Headset Microphone",
> +				    "Microphone", "Internal Microphone",
> +				    "Headphone", "Headphone Jack",
> +				    "Speaker", "Internal Earpiece",
> +				    "Speaker", "Internal Speaker";
> +	simple-audio-card,routing =
> +			"Headphone Jack", "HP",
> +			"Internal Earpiece", "EARPIECE",
> +			"Internal Speaker", "Speaker Amp OUTL",
> +			"Internal Speaker", "Speaker Amp OUTR",
> +			"Speaker Amp INL", "LINEOUT",
> +			"Speaker Amp INR", "LINEOUT",
> +			"Left DAC", "AIF1 Slot 0 Left",
> +			"Right DAC", "AIF1 Slot 0 Right",
> +			"AIF1 Slot 0 Left ADC", "Left ADC",
> +			"AIF1 Slot 0 Right ADC", "Right ADC",
> +			"Internal Microphone", "MBIAS",
> +			"MIC1", "Internal Microphone",
> +			"Headset Microphone", "HBIAS",
> +			"MIC2", "Headset Microphone";
> +};
> +
> +&uart0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart0_pb_pins>;
> +	status = "okay";
> +};
> +
> +/* Connected to the modem */
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&uart3_pins>;

That's the default too, and I guess you'd need hardware flow control
here?

> +	status = "okay";
> +};
> +
> +&usb_otg {
> +	dr_mode = "peripheral";
> +	status = "okay";
> +};
> +
> +&usb_power_supply {
> +	status = "okay";
> +};
> +
> +&usbphy {
> +	status = "okay";
> +};
> --
> 2.25.1
>

Looks good otherwise, thanks!
Maxime

--uymrrh6prr5faoxw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlOsywAKCRDj7w1vZxhR
xSU/AP9+Lt0tBM8l+5ZIh1vMifmm3bDSpP8AYj5WsE/e1in7GAEAwOQ8YQ8L30Y6
0nxnNMIryYRNH8tw4bYXUmHK3q3IQQc=
=lQ5J
-----END PGP SIGNATURE-----

--uymrrh6prr5faoxw--


--===============8045657363520733366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8045657363520733366==--

