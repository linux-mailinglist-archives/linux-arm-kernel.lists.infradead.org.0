Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520AB1374AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oGUSGWx0W8eTfRI610/W7cr3l2MFAG11OM3tKy4MzgU=; b=WT9NA6J9OBIq5CxVf3aIvA/Id
	MAVngfzws/vzOd40E21G9GSfC3KPyBsaJuj7OgL9gd/aRWtyJ4l43DTdA6ORwW34Eu263xotYmglE
	TcIcmt2osHgW9rJY3fwlwWFj11UjLtflmD53UOWs627vhd3x7iYdBw6Mf/p/X6Mdwc3UsRVdjipDB
	p3mGx3bFoQdvSg7g8zU8Mm0rj0pLDeoUhbdYhUrf6rE4P/LHkP4xb+UE3x1xnAtSA06O2KNStK9rB
	gMlKH78hyMgBzSyqjc0bxSpXcCFqPwpn+32TT1uXdZe2I8945v3a/Tg+bBEcZ99xJtU3rJg9bd4Py
	a0Yk0ZGyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipy0W-00026P-FN; Fri, 10 Jan 2020 17:23:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipy0P-00025n-2s
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:23:30 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 51E41206ED;
 Fri, 10 Jan 2020 17:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578677008;
 bh=rHPYbG02URRLCw0nb1EuUODTBvDRsydVaOWW7leWqUU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7oB24/UF1pSVRYdi4Dfw013OwhiImwWV9Lf+qboUZCndl8xIL9jWKW5n1gtdwu7a
 3ZhWpp+8s6jhaq0SfctaCwYU5Hpk8hRhHk2TVESsZfptdleXPOcVfgVWa5ITLg9tZt
 KdxoyGX4BUjus8iLLZvyDo696CBBE/7z+cTshkp0=
Date: Fri, 10 Jan 2020 18:23:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 5/5] arm64: dts: allwinner: a64: add support for PineTab
Message-ID: <20200110172325.er7kdlfc4fvjbl6x@gilmour.lan>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-6-icenowy@aosc.io>
MIME-Version: 1.0
In-Reply-To: <20200110155225.1051749-6-icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_092329_171297_25267DF0 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: aosc.xyz (xyz)]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4457151354582987628=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4457151354582987628==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="x7pug4yqpkmc5pl7"
Content-Disposition: inline


--x7pug4yqpkmc5pl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Jan 10, 2020 at 11:52:25PM +0800, Icenowy Zheng wrote:
> PineTab is a 10.1" tablet by Pine64 with Allwinner A64 inside.
>
> It includes the following peripherals:
>
> USB:
> - A microUSB Type-B port connected to the OTG-capable USB PHY of
> Allwinner A64. The ID pin is connected to a GPIO of the A64 SoC, and the
> Vbus is connected to the Vbus of AXP803 PMIC. These enables OTG
> functionality on this port.
> - A USB Type-A port is connected to the internal hub attached to the
> non-OTG USB PHY of Allwinner A64.
> - There are reserved pins for an external keyboard connected to the
> internal hub.
>
> Power:
> - The microUSB port has its Vbus connected to AXP803, mentioned above.
> - A DC jack (of a strange size, 2.5mm outer diameter) is connected to
> the ACIN of AXP803.
> - A Li-Polymer battery is connected to the battery pins of AXP803.
>
> Storage:
> - An tradition Pine64 eMMC slot is on the board, mounted with an eMMC
> module by factory.
> - An external microSD slot is hidden under a protect case.
>
> Display:
> - A MIPI-DSI LCD panel (800x1280) is connected to the DSI port of A64 SoC.
> - A mini HDMI port.
>
> Input:
> - A touch panel attached to a Goodix GT9271 touch controller.
> - Volume keys connected to the LRADC of the A64 SoC.
>
> Camera:
> - An OV5640 CMOS camera is at rear, connected to the CSI bus of A64 SoC.
> - A GC2145 CMOS camera is at front, shares the same CSI bus with OV5640.
>
> Audio:
> - A headphone jack is conencted to the SoC's internal codec.
> - A speaker connected is to the Line Out port of SoC's internal codec, via
> an amplifier.
>
> Misc:
> - Debug UART is muxed with the headphone jack, with the switch next to
> the microSD slot.
> - A bosch BMA223 accelerometer is connected to the I2C bus of A64 SoC.
> - Wi-Fi and Bluetooth are available via a RTL8723CS chip, similar to the
> one in Pinebook.
>
> This commit adds a basically usable device tree for it, implementing
> most of the features mentioned above. HDMI is not supported now because
> bad LCD-HDMI coexistence situation of mainline A64 display driver, and
> the front camera currently lacks a driver and a facility to share the
> bus with the rear one.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  arch/arm64/boot/dts/allwinner/Makefile        |   1 +
>  .../boot/dts/allwinner/sun50i-a64-pinetab.dts | 461 ++++++++++++++++++
>  2 files changed, 462 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
>
> diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
> index cf4f78617c3f..6dad63881cd3 100644
> --- a/arch/arm64/boot/dts/allwinner/Makefile
> +++ b/arch/arm64/boot/dts/allwinner/Makefile
> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinebook.dtb
> +dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinetab.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-sopine-baseboard.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-teres-i.dtb
>  dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h5-bananapi-m2-plus.dtb
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
> new file mode 100644
> index 000000000000..1dfa3668636e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
> @@ -0,0 +1,461 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.xyz>
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include "sun50i-a64.dtsi"
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	model = "PineTab";
> +	compatible = "pine64,pinetab", "allwinner,sun50i-a64";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		ethernet0 = &rtl8723cs;
> +	};
> +
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
> +		brightness-levels = <0 10 20 30 40 50 60 70 80 90 100>;

Each step should be a perceived step, not a decimal one. So let's say,
if you have 10 steps, each step should be seen as a 10% increase in
brightness. Usually a quadratic increase works better there.

> +&dsi {
> +	vcc-dsi-supply = <&reg_dldo1>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";

address-cells and size-cells aren't in the DTSI? They should be.

> +
> +	panel@0 {
> +		compatible = "feixin,k101-im2ba02";
> +		reg = <0>;
> +		avdd-supply = <&reg_dc1sw>;
> +		dvdd-supply = <&reg_dc1sw>;
> +		cvdd-supply = <&reg_ldo_io1>;
> +		reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* PD24 */
> +		backlight = <&backlight>;
> +	};
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
> +&i2c0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c0_pins>;

That should be set in the DTSI already?

> +	status = "okay";
> +
> +	touchscreen@5d {
> +		compatible = "goodix,gt9271";
> +		reg = <0x5d>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <7 4 IRQ_TYPE_LEVEL_HIGH>; /* PH4 */
> +		irq-gpios = <&pio 7 4 GPIO_ACTIVE_HIGH>; /* PH4 */
> +		reset-gpios = <&pio 7 8 GPIO_ACTIVE_HIGH>; /* PH8 */
> +		AVDD28-supply = <&reg_ldo_io1>;
> +	};
> +};
> +
> +&i2c0_pins {
> +	bias-pull-up;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2c1_pins>;

Ditto

> +	status = "okay";
> +
> +	bma223@18 {
> +		compatible = "bosch,bma223", "bosch,bma222e";
> +		reg = <0x18>;
> +		interrupt-parent = <&pio>;
> +		interrupts = <7 5 IRQ_TYPE_LEVEL_HIGH>; /* PH5 */
> +		mount-matrix = "0", "-1", "0",
> +			       "-1", "0", "0",
> +			       "0", "0", "-1";
> +	};
> +};
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
> +&mixer1 {
> +	status = "okay";
> +};
> +
> +&mmc0 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_pins>;

Ditto

> +	vmmc-supply = <&reg_dcdc1>;
> +	cd-gpios = <&pio 5 6 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	bus-width = <4>;
> +	status = "okay";
> +};
> +
> +&mmc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc1_pins>;

Ditto

> +	vmmc-supply = <&reg_dldo4>;
> +	vqmmc-supply = <&reg_eldo1>;
> +	mmc-pwrseq = <&wifi_pwrseq>;
> +	bus-width = <4>;
> +	non-removable;
> +	status = "okay";
> +
> +	rtl8723cs: wifi@1 {
> +		reg = <1>;
> +	};
> +};
> +
> +&mmc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_pins>;

Ditto

Looks good otherwise, thanks!
Maxime

--x7pug4yqpkmc5pl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhizDQAKCRDj7w1vZxhR
xSa+AQDxmVfX7/N4LXf2dmyOjkWdFPi2lil3agh6JmKfYenkSAEA/5gILjn67VjB
0pyAS0uYl/jzyQ83E1Hq+tqZCVmLCg8=
=iCFh
-----END PGP SIGNATURE-----

--x7pug4yqpkmc5pl7--


--===============4457151354582987628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4457151354582987628==--

