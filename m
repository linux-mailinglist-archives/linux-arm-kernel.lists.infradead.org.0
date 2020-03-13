Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E99184950
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:29:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=scX1J0+Tx3oT6UQMQQP0wIGu3fthADT9RxXYwqpEXEE=; b=O+A5whS2xTnoBBCq1u3zdQPXV
	QLpyt5xZlREqhA5WAzapUerxHMwJjc60WlnqMap3cQkCPYyMMLqRBQ3rKXeg2sRZR+XyVtn7xskm2
	+I/WSXGLLFFcr1Awgpa1IdUhj+ZpBbtZOD68A2ti+xUBSBvlYAooA9LrXI7aEktL3g5DWL2RHrj6m
	WsNRhwNTwIeQ4xyetc1Qq0cLJK/yipMvnQ7g9hI9flo6W9HBdNI4NrORHweZzp5PqgSIpz9JEzUj/
	Q3bLUVMrH1aSLdBYpxWKbTnOkdmbTkhzHss5z6gyWELCtuNu5cCLdBthjbseM8H5iDpjeHBgQQrfg
	P1rA39gog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jClJa-0007lu-0f; Fri, 13 Mar 2020 14:29:30 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClJQ-0007lM-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1584109757; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yluvy+oLK/mrZ+pqw8vA+3dPmN1/Nxps4KWhVcfC/vQ=;
 b=xJj1XKlkAbHvqn6vOgSnUuFyTlDAjyvyQ2ad5iddHZpaxWQxv+9X+Fi+WZSzHZUQDJmv5b
 1M30wNaaDfcZLzpjPMI3Mr7H8+7AjTyfhDJQraUhLmTt/OCvXCwN49MAOT0IzhLN7hFIaL
 lDR7QAK8G2J1yZyMclJ48kNevz2WO8I=
Date: Fri, 13 Mar 2020 15:29:10 +0100
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/2] ARM: DTS: Add devicetree file for the Galaxy S2
To: Marek Szyprowski <m.szyprowski@samsung.com>
Message-Id: <1584109750.3.0@crapouillou.net>
In-Reply-To: <222f90d6-effa-6ddd-f525-34516314b0e2@samsung.com>
References: <20200312153411.13535-1-paul@crapouillou.net>
 <CGME20200312153430eucas1p21948620c871efdc5edbff18a0e075d07@eucas1p2.samsung.com>
 <20200312153411.13535-2-paul@crapouillou.net>
 <222f90d6-effa-6ddd-f525-34516314b0e2@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_072920_696690_56091067 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stenkin Evgeniy <stenkinevgeniy@gmail.com>, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,


Le ven., mars 13, 2020 at 09:03, Marek Szyprowski =

<m.szyprowski@samsung.com> a =E9crit :
> =

> On 12.03.2020 16:34, Paul Cercueil wrote:
>>  From: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>> =

>>  Add devicetree file for the Exynos 4210 based Galaxy S2 (i9100 =

>> version).
>> =

>>  Signed-off-by: Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>  ---
>>    arch/arm/boot/dts/Makefile             |   1 +
>>    arch/arm/boot/dts/exynos4210-i9100.dts | 816 =

>> +++++++++++++++++++++++++
>>    2 files changed, 817 insertions(+)
>>    create mode 100644 arch/arm/boot/dts/exynos4210-i9100.dts
>> =

>>  diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
>>  index d6546d2676b9..522436d30690 100644
>>  --- a/arch/arm/boot/dts/Makefile
>>  +++ b/arch/arm/boot/dts/Makefile
>>  @@ -181,6 +181,7 @@ dtb-$(CONFIG_ARCH_EXYNOS3) +=3D \
>>    	exynos3250-monk.dtb \
>>    	exynos3250-rinato.dtb
>>    dtb-$(CONFIG_ARCH_EXYNOS4) +=3D \
>>  +	exynos4210-i9100.dtb \
>>    	exynos4210-origen.dtb \
>>    	exynos4210-smdkv310.dtb \
>>    	exynos4210-trats.dtb \
>>  diff --git a/arch/arm/boot/dts/exynos4210-i9100.dts =

>> b/arch/arm/boot/dts/exynos4210-i9100.dts
>>  new file mode 100644
>>  index 000000000000..c218e34959be
>>  --- /dev/null
>>  +++ b/arch/arm/boot/dts/exynos4210-i9100.dts
>>  @@ -0,0 +1,816 @@
>>  +// SPDX-License-Identifier: GPL-2.0
>>  +/*
>>  + * Samsung's Exynos4210 based Galaxy S2 (i9100 version) device tree
>>  + *
>>  + * Copyright (c) 2012 Samsung Electronics Co., Ltd.
>>  + *		http://www.samsung.com
>>  + * Copyright (c) 2020 Stenkin Evgeniy <stenkinevgeniy@gmail.com>
>>  + * Copyright (c) 2020 Paul Cercueil <paul@crapouillou.net>
>>  + *
>>  + * Device tree source file for Samsung's Galaxy S2 smartphone =

>> (i9100 version),
>>  + * which is based on Samsung's Exynos4210 SoC.
>>  + */
>>  +
>>  +/dts-v1/;
>>  +#include "exynos4210.dtsi"
>>  +#include "exynos4412-ppmu-common.dtsi"
>>  +
>>  +#include <dt-bindings/gpio/gpio.h>
>>  +#include <dt-bindings/input/linux-event-codes.h>
>>  +
>>  +/ {
>>  +	model =3D "Samsung Galaxy S2 (i9100)";
>>  +	compatible =3D "samsung,i9100", "samsung,exynos4210", =

>> "samsung,exynos4";
>>  +
>>  +
>>  +	memory@40000000 {
>>  +		device_type =3D "memory";
>>  +		reg =3D <0x40000000 0x40000000>;
>>  +	};
>>  +
>>  +	vemmc_reg: regulator-0 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "VMEM_VDD_2.8V";
>>  +		regulator-min-microvolt =3D <2800000>;
>>  +		regulator-max-microvolt =3D <2800000>;
>>  +		gpio =3D <&gpk0 2 GPIO_ACTIVE_HIGH>;
>>  +		enable-active-high;
>>  +	};
>>  +
>>  +	tsp_reg: regulator-1 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "TSP_FIXED_VOLTAGES";
>>  +		regulator-min-microvolt =3D <3300000>;
>>  +		regulator-max-microvolt =3D <3300000>;
>>  +		gpio =3D <&gpl0 3 GPIO_ACTIVE_HIGH>;
>>  +		startup-delay-us =3D <70000>;
>>  +		enable-active-high;
>>  +		regulator-boot-on;
>>  +		regulator-always-on;
>>  +	};
>>  +
>>  +	cam_af_28v_reg: regulator-3 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "8M_AF_2.8V_EN";
>>  +		regulator-min-microvolt =3D <2800000>;
>>  +		regulator-max-microvolt =3D <2800000>;
>>  +		gpio =3D <&gpk1 1 GPIO_ACTIVE_HIGH>;
>>  +		enable-active-high;
>>  +	};
>>  +
>>  +	cam_io_en_reg: regulator-4 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "CAM_IO_EN";
>>  +		regulator-min-microvolt =3D <2800000>;
>>  +		regulator-max-microvolt =3D <2800000>;
>>  +		gpio =3D <&gpe2 1 GPIO_ACTIVE_HIGH>;
>>  +		enable-active-high;
>>  +	};
>>  +
>>  +	cam_io_12v_reg: regulator-5 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "8M_1.2V_EN";
>>  +		regulator-min-microvolt =3D <1200000>;
>>  +		regulator-max-microvolt =3D <1200000>;
>>  +		gpio =3D <&gpe2 5 GPIO_ACTIVE_HIGH>;
>>  +		enable-active-high;
>>  +	};
>>  +
>>  +	vt_core_15v_reg: regulator-6 {
>>  +		compatible =3D "regulator-fixed";
>>  +		regulator-name =3D "VT_CORE_1.5V";
>>  +		regulator-min-microvolt =3D <1500000>;
>>  +		regulator-max-microvolt =3D <1500000>;
>>  +		gpio =3D <&gpe2 2 GPIO_ACTIVE_HIGH>;
>>  +		enable-active-high;
>>  +	};
>>  +
>>  +	gpio-keys {
>>  +		compatible =3D "gpio-keys";
>>  +
>>  +		vol-down {
>>  +			gpios =3D <&gpx2 1 GPIO_ACTIVE_LOW>;
>>  +			linux,code =3D <KEY_VOLUMEDOWN>;
>>  +			label =3D "volume down";
>>  +			debounce-interval =3D <10>;
>>  +		};
>>  +
>>  +		vol-up {
>>  +			gpios =3D <&gpx2 0 GPIO_ACTIVE_LOW>;
>>  +			linux,code =3D <KEY_VOLUMEUP>;
>>  +			label =3D "volume up";
>>  +			debounce-interval =3D <10>;
>>  +		};
>>  +
>>  +		power {
>>  +			gpios =3D <&gpx2 7 GPIO_ACTIVE_LOW>;
>>  +			linux,code =3D <KEY_POWER>;
>>  +			label =3D "power";
>>  +			debounce-interval =3D <10>;
>>  +			wakeup-source;
>>  +		};
>>  +
>>  +		ok {
>>  +			gpios =3D <&gpx3 5 GPIO_ACTIVE_LOW>;
>>  +			linux,code =3D <KEY_OK>;
>>  +			label =3D "ok";
>>  +			debounce-interval =3D <10>;
>>  +		};
>>  +	};
>>  +
>>  +	wlan_pwrseq: sdhci3-pwrseq {
>>  +		compatible =3D "mmc-pwrseq-simple";
>>  +		reset-gpios =3D <&gpl1 2 GPIO_ACTIVE_LOW>;
>>  +	};
>>  +
>>  +	i2c_max17042_fuel: i2c-gpio-3 {
>>  +		compatible =3D "i2c-gpio";
>>  +		#address-cells =3D <1>;
>>  +		#size-cells =3D <0>;
>>  +
>>  +		sda-gpios =3D <&gpy4 0 GPIO_ACTIVE_HIGH>;
>>  +		scl-gpios =3D <&gpy4 1 GPIO_ACTIVE_HIGH>;
>>  +		i2c-gpio,delay-us =3D <5>;
>>  +
>>  +		battery@36 {
>>  +			compatible =3D "maxim,max17042";
>>  +
>>  +			interrupt-parent =3D <&gpx2>;
>>  +			interrupts =3D <3 2>;
>>  +
>>  +			pinctrl-0 =3D <&max17042_fuel_irq>;
>>  +			pinctrl-names =3D "default";
>>  +
>>  +			reg =3D <0x36>;
>>  +			maxim,over-heat-temp =3D <700>;
>>  +			maxim,over-volt =3D <4500>;
>>  +
>>  +		};
>>  +	};
>>  +
>>  +	spi-lcd {
>>  +		compatible =3D "spi-gpio";
>>  +		#address-cells =3D <1>;
>>  +		#size-cells =3D <0>;
>>  +
>>  +		num-chipselects =3D <1>;
>>  +		cs-gpios =3D <&gpy4 3 GPIO_ACTIVE_HIGH>;
> LD9040 CS is active low, so this board needs probably the same fix a
> Universal C210 board: https://patchwork.kernel.org/patch/11420231/ Are
> you sure it really works now with v5.6-rcX kernels? Or you just got =

> the
> panel working only because the bootloader enabled it?

Sorry but the fix looks bogus to me. The spi-gpio driver calls =

gpiod_set_value(0) when the CS is going *active*, and =

gpiod_set_value(1) when the CS is going *inactive*. If you use the =

GPIO_ACTIVE_LOW flag, the levels are inverted, and the CS is high when =

active, which is the opposite of what you want.


>>  +		sck-gpios =3D <&gpy3 1 GPIO_ACTIVE_HIGH>;
>>  +		mosi-gpios =3D <&gpy3 3 GPIO_ACTIVE_HIGH>;
>>  +
>>  +		lcd@0 {
>>  +			compatible =3D "samsung,ld9040";
>>  +			reg =3D <0>;
>>  +
>>  +			spi-max-frequency =3D <1200000>;
>>  +			spi-cpol;
>>  +			spi-cpha;
>>  +
>>  +			vdd3-supply =3D <&vmipi_reg>;
>>  +			vci-supply =3D <&vcclcd_reg>;
>>  +
>>  +			reset-gpios =3D <&gpy4 5 GPIO_ACTIVE_HIGH>;
>>  +			power-on-delay =3D <10>;
>>  +			reset-delay =3D <10>;
>>  +
>>  +			panel-width-mm =3D <90>;
>>  +			panel-height-mm =3D <154>;
>>  +
>>  +			display-timings {
>>  +				timing {
>>  +					clock-frequency =3D <23492370>;
>>  +					hactive =3D <480>;
>>  +					vactive =3D <800>;
>>  +					hback-porch =3D <16>;
>>  +					hfront-porch =3D <16>;
>>  +					vback-porch =3D <2>;
>>  +					vfront-porch =3D <28>;
>>  +					hsync-len =3D <2>;
>>  +					vsync-len =3D <1>;
>>  +					hsync-active =3D <0>;
>>  +					vsync-active =3D <0>;
>>  +					de-active =3D <0>;
>>  +					pixelclk-active =3D <0>;
>>  +				};
>>  +			};
>>  +
>>  +			port {
>>  +				lcd_ep: endpoint {
>>  +					remote-endpoint =3D <&fimd_dpi_ep>;
>>  +				};
>>  +			};
>>  +		};
>>  +	};
>>  +
>>  +	fixed-rate-clocks {
>>  +		xxti {
>>  +			compatible =3D "samsung,clock-xxti";
>>  +			clock-frequency =3D <0>;
>>  +		};
>>  +
>>  +		xusbxti {
>>  +			compatible =3D "samsung,clock-xusbxti";
>>  +			clock-frequency =3D <24000000>;
>>  +		};
>>  +	};
>>  +
>>  +	thermal-zones {
>>  +		cpu_thermal: cpu-thermal {
>>  +			cooling-maps {
>>  +				map0 {
>>  +					/* Corresponds to 800MHz */
>>  +					cooling-device =3D <&cpu0 2 2>;
>>  +				};
>>  +				map1 {
>>  +					/* Corresponds to 200MHz */
>>  +					cooling-device =3D <&cpu0 4 4>;
>>  +				};
>>  +			};
>>  +		};
>>  +	};
>>  +
>>  +};
>>  +
>>  +&camera {
>>  +	status =3D "okay";
>>  +};
>>  +
>>  +&cpu0 {
>>  +	cpu0-supply =3D <&varm_breg>;
>>  +};
>>  +
>>  +&exynos_usbphy {
>>  +	status =3D "okay";
>>  +
>>  +	vbus-supply =3D <&safe1_sreg>;
>>  +};
>>  +
>>  +&fimc_0 {
>>  +	status =3D "okay";
>>  +
>>  +	assigned-clocks =3D <&clock CLK_MOUT_FIMC0>, <&clock =

>> CLK_SCLK_FIMC0>;
>>  +	assigned-clock-parents =3D <&clock CLK_SCLK_MPLL>;
>>  +	assigned-clock-rates =3D <0>, <160000000>;
>>  +};
>>  +
>>  +&fimc_1 {
>>  +	status =3D "okay";
>>  +
>>  +	assigned-clocks =3D <&clock CLK_MOUT_FIMC1>, <&clock =

>> CLK_SCLK_FIMC1>;
>>  +	assigned-clock-parents =3D <&clock CLK_SCLK_MPLL>;
>>  +	assigned-clock-rates =3D <0>, <160000000>;
>>  +};
>>  +
>>  +&fimc_2 {
>>  +	status =3D "okay";
>>  +
>>  +	assigned-clocks =3D <&clock CLK_MOUT_FIMC2>, <&clock =

>> CLK_SCLK_FIMC2>;
>>  +	assigned-clock-parents =3D <&clock CLK_SCLK_MPLL>;
>>  +	assigned-clock-rates =3D <0>, <160000000>;
>>  +};
>>  +
>>  +&fimc_3 {
>>  +	status =3D "okay";
>>  +
>>  +	assigned-clocks =3D <&clock CLK_MOUT_FIMC3>, <&clock =

>> CLK_SCLK_FIMC3>;
>>  +	assigned-clock-parents =3D <&clock CLK_SCLK_MPLL>;
>>  +	assigned-clock-rates =3D <0>, <160000000>;
>>  +};
>>  +
>>  +&fimd {
>>  +	status =3D "okay";
>>  +	#address-cells =3D <1>;
>>  +	#size-cells =3D <0>;
>>  +
>>  +	samsung,invert-vden;
>>  +	samsung,invert-vclk;
>>  +
>>  +	pinctrl-0 =3D <&lcd_clk>, <&lcd_data24>;
>>  +	pinctrl-names =3D "default";
>>  +
>>  +	port@3 {
>>  +		reg =3D <3>;
>>  +
>>  +		fimd_dpi_ep: endpoint {
>>  +			remote-endpoint =3D <&lcd_ep>;
>>  +		};
>>  +	};
>>  +};
>>  +
>>  +&hsotg {
>>  +	status =3D "okay";
>>  +
>>  +	dr_mode =3D "otg";
> The the host mode really works with DWC2? Afair the host mode worked
> only when it was rerouted by PHY to the EHCI (at least on =

> UniversalC210
> board, which is very similar to GS2).

I have to say that I didn't try OTG / host, but it does work fine in =

gadget mode.
I can change it to dr_mode =3D "peripheral" for now, if you prefer.

>>  +	vusb_d-supply =3D <&vusb_reg>;
>>  +	vusb_a-supply =3D <&vusbdac_reg>;
>>  +};
>>  +
>>  +&ehci {
>>  +	status =3D "okay";
>>  +
>>  +	port@0 {
>>  +		status =3D "okay";
>>  +	};
>>  +
>>  +	port@1 {
>>  +		status =3D "okay";
>>  +	};
>>  +
>>  +	port@2 {
>>  +		status =3D "okay";
>>  +	};
>>  +};
> =

> This is the old, obsolete exynos-ehci binding. Please remove 'port'
> nodes and use standard USB phy bindings like it has been done in the
> following patch: https://patchwork.kernel.org/patch/11060465/

Will do.

> BTW, do you really need all 3 phys/ports?

No idea!

>>  +
>>  +
>>  +&i2c_3 {
>>  +	status =3D "okay";
>>  +
>>  +	samsung,i2c-sda-delay =3D <100>;
>>  +	samsung,i2c-slave-addr =3D <0x10>;
>>  +	samsung,i2c-max-bus-freq =3D <100000>;
>>  +
>>  +	pinctrl-0 =3D <&i2c3_bus>;
>>  +	pinctrl-names =3D "default";
>>  +
>>  +	mxt224-touchscreen@4a {
>>  +		compatible =3D "atmel,maxtouch";
>>  +		reg =3D <0x4a>;
>>  +
>>  +		interrupt-parent =3D <&gpx0>;
>>  +		interrupts =3D <4 IRQ_TYPE_EDGE_FALLING>;
>>  +
>>  +		avdd-supply =3D <&tsp_reg>;
>>  +		vdd-supply =3D <&tsp_reg>;
>>  +	};
>>  +};
>>  +
>>  +&i2c_7 {
>>  +	status =3D "okay";
>>  +
>>  +	samsung,i2c-sda-delay =3D <100>;
>>  +	samsung,i2c-slave-addr =3D <0x10>;
>>  +	samsung,i2c-max-bus-freq =3D <400000>;
>>  +
>>  +	pinctrl-0 =3D <&i2c7_bus>;
>>  +	pinctrl-names =3D "default";
>>  +
>>  +	ak8975@c {
>>  +		compatible =3D "asahi-kasei,ak8975";
>>  +		reg =3D <0x0c>;
>>  +
>>  +		gpios =3D <&gpx2 2 GPIO_ACTIVE_HIGH>;
>>  +	};
>>  +};
>>  +
>>  +
>>  +&i2c_5 {
>>  +	status =3D "okay";
>>  +
>>  +	samsung,i2c-sda-delay =3D <100>;
>>  +	samsung,i2c-slave-addr =3D <0x10>;
>>  +	samsung,i2c-max-bus-freq =3D <100000>;
>>  +
>>  +	pinctrl-0 =3D <&i2c5_bus>;
>>  +	pinctrl-names =3D "default";
>>  +
>>  +	max8997_pmic@66 {
>>  +		compatible =3D "maxim,max8997-pmic";
>>  +		reg =3D <0x66>;
>>  +
>>  +		interrupts-extended =3D <&gpx0 7 0>, <&gpx2 3 2>;
>>  +		interrupt-parent =3D <&gpx0>;
>>  +		interrupts =3D <7 IRQ_TYPE_NONE>;
>>  +
>>  +		otg_en-gpios =3D <&gpx3 3 0>;
>>  +		usb_sel-gpios =3D <&gpl0 6 0>;
>>  +
>>  +		max8997,pmic-buck1-uses-gpio-dvs;
>>  +		max8997,pmic-buck2-uses-gpio-dvs;
>>  +		max8997,pmic-buck5-uses-gpio-dvs;
>>  +
>>  +		max8997,pmic-ignore-gpiodvs-side-effect;
>>  +		max8997,pmic-buck125-default-dvs-idx =3D <0>;
>>  +
>>  +		max8997,pmic-buck125-dvs-gpios =3D <&gpx0 5 GPIO_ACTIVE_HIGH>,
>>  +						 <&gpx0 6 GPIO_ACTIVE_HIGH>,
>>  +						 <&gpl0 0 GPIO_ACTIVE_HIGH>;
>>  +
>>  +		max8997,pmic-buck1-dvs-voltage =3D <1350000>, <1300000>,
>>  +						 <1250000>, <1200000>,
>>  +						 <1150000>, <1100000>,
>>  +						 <1000000>, <950000>;
>>  +
>>  +		max8997,pmic-buck2-dvs-voltage =3D <1100000>, <1000000>,
>>  +						 <950000>,  <900000>,
>>  +						 <1100000>, <1000000>,
>>  +						 <950000>,  <900000>;
>>  +
>>  +		max8997,pmic-buck5-dvs-voltage =3D <1200000>, <1200000>,
>>  +						 <1200000>, <1200000>,
>>  +						 <1200000>, <1200000>,
>>  +						 <1200000>, <1200000>;
>>  +
>>  +		pinctrl-0 =3D <&max8997_irq>, <&otg_gp>, <&usb_sel>;
>>  +		pinctrl-names =3D "default";
>>  +
>>  +		regulators {
>>  +			vadc_reg: LDO1 {
>>  +				regulator-name =3D "VADC_3.3V_C210";
>>  +				regulator-min-microvolt =3D <3300000>;
>>  +				regulator-max-microvolt =3D <3300000>;
>>  +				regulator-always-on;
>>  +
>>  +			};
>>  +			valive_reg: LDO2 {
>>  +				regulator-name =3D "VALIVE_1.1V_C210";
>>  +				regulator-min-microvolt =3D <1100000>;
>>  +				regulator-max-microvolt =3D <1100000>;
>>  +				regulator-always-on;
>>  +
>>  +			};
>>  +
>>  +			vusb_reg: LDO3 {
>>  +				regulator-name =3D "VUSB_1.1V_C210";
>>  +				regulator-min-microvolt =3D <1100000>;
>>  +				regulator-max-microvolt =3D <1100000>;
>>  +			};
>>  +
>>  +			vmipi_reg: LDO4 {
>>  +				regulator-name =3D "VMIPI_1.8V";
>>  +				regulator-min-microvolt =3D <1800000>;
>>  +				regulator-max-microvolt =3D <1800000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vhsic_reg: LDO5 {
>>  +				regulator-name =3D "VHSIC_1.2V";
>>  +				regulator-min-microvolt =3D <1200000>;
>>  +				regulator-max-microvolt =3D <1200000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vpda_reg: LDO6 {
>>  +				regulator-name =3D "VCC_1.8V_PDA";
>>  +				regulator-min-microvolt =3D <1800000>;
>>  +				regulator-max-microvolt =3D <1800000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vcam_reg: LDO7 {
>>  +				regulator-name =3D "CAM_ISP_1.8V";
>>  +				regulator-min-microvolt =3D <1800000>;
>>  +				regulator-max-microvolt =3D <1800000>;
>>  +			};
>>  +
>>  +			vusbdac_reg: LDO8 {
>>  +				regulator-name =3D "VUSB+VDAC_3.3V_C210";
>>  +				regulator-min-microvolt =3D <3300000>;
>>  +				regulator-max-microvolt =3D <3300000>;
>>  +			};
>>  +
>>  +			vccpda_reg: LDO9 {
>>  +				regulator-name =3D "VCC_2.8V_PDA";
>>  +				regulator-min-microvolt =3D <2800000>;
>>  +				regulator-max-microvolt =3D <2800000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vtouch_reg: LDO11 {
>>  +				regulator-name =3D "TOUCH_2.8V";
>>  +				regulator-min-microvolt =3D <2800000>;
>>  +				regulator-max-microvolt =3D <2800000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vpll_reg: LDO10 {
>>  +				regulator-name =3D "VPLL_1.1V";
>>  +				regulator-min-microvolt =3D <1100000>;
>>  +				regulator-max-microvolt =3D <1100000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vtcam_reg: LDO12 {
>>  +				regulator-name =3D "VT_CAM_1.8V";
>>  +				regulator-min-microvolt =3D <1800000>;
>>  +				regulator-max-microvolt =3D <1800000>;
>>  +			};
>>  +
>>  +			vcclcd_reg: LDO13 {
>>  +				regulator-name =3D "VCC_3.0V_LCD";
>>  +				regulator-min-microvolt =3D <3000000>;
>>  +				regulator-max-microvolt =3D <3000000>;
>>  +			};
>>  +
>>  +			vmotor_reg: LDO14 {
>>  +				regulator-name =3D "VCC_2.8V_MOTOR";
>>  +				regulator-min-microvolt =3D <2800000>;
>>  +				regulator-max-microvolt =3D <2800000>;
>>  +			};
>>  +
>>  +			vled_reg: LDO15 {
>>  +				regulator-name =3D "LED_A_2.8V";
>>  +				regulator-min-microvolt =3D <2800000>;
>>  +				regulator-max-microvolt =3D <2800000>;
>>  +			};
>>  +
>>  +			camsensor_reg: LDO16 {
>>  +				regulator-name =3D "CAM_SENSOR_IO_1.8V";
>>  +				regulator-min-microvolt =3D <1800000>;
>>  +				regulator-max-microvolt =3D <1800000>;
>>  +			};
>>  +
>>  +			vtf_reg: LDO17 {
>>  +				regulator-name =3D "VTF_2.8V";
>>  +				regulator-min-microvolt =3D <2800000>;
>>  +				regulator-max-microvolt =3D <2800000>;
>>  +			};
>>  +
>>  +			vtouchled_reg: LDO18 {
>>  +				regulator-name =3D "TOUCH_LED_3.3V";
>>  +				regulator-min-microvolt =3D <2500000>;
>>  +				regulator-max-microvolt =3D <3300000>;
>>  +			};
>>  +
>>  +			vddq_reg: LDO21 {
>>  +				regulator-name =3D "VDDQ_M1M2_1.2V";
>>  +				regulator-min-microvolt =3D <1200000>;
>>  +				regulator-max-microvolt =3D <1200000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			varm_breg: BUCK1 {
>>  +				//regulator-name =3D "VARM_1.2V_C210";
>>  +				regulator-name =3D "vdd_arm";
>>  +				regulator-min-microvolt =3D <65000>;
>>  +				regulator-max-microvolt =3D <2225000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vint_breg: BUCK2 {
>>  +				regulator-name =3D "VINT_1.1V_C210";
>>  +				regulator-min-microvolt =3D <65000>;
>>  +				regulator-max-microvolt =3D <2225000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vg3d_breg: BUCK3 {
>>  +				regulator-name =3D "G3D_1.1V";
>>  +				regulator-min-microvolt =3D <900000>;
>>  +				regulator-max-microvolt =3D <1200000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			camisp_breg: BUCK4 {
>>  +				regulator-name =3D "CAM_ISP_CORE_1.2V";
>>  +				regulator-min-microvolt =3D <1200000>;
>>  +				regulator-max-microvolt =3D <1200000>;
>>  +			};
>>  +
>>  +			vmem_breg: BUCK5 {
>>  +				regulator-name =3D "VMEM_1.2V";
>>  +				regulator-min-microvolt =3D <1200000>;
>>  +				regulator-max-microvolt =3D <1200000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			vccsub_breg: BUCK7 {
>>  +				regulator-name =3D "VCC_SUB_2.0V";
>>  +				regulator-min-microvolt =3D <2000000>;
>>  +				regulator-max-microvolt =3D <2000000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			safe1_sreg: ESAFEOUT1 {
>>  +				regulator-name =3D "SAFEOUT1";
>>  +			};
>>  +
>>  +			safe2_sreg: ESAFEOUT2 {
>>  +				regulator-name =3D "SAFEOUT2";
>>  +				regulator-boot-on;
>>  +			};
>>  +
>>  +			charger_reg: CHARGER {
>>  +				regulator-name =3D "CHARGER";
>>  +				regulator-min-microamp =3D <60000>;
>>  +				regulator-max-microamp =3D <2580000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +			chargercv_reg: CHARGER_CV {
>>  +				regulator-name =3D "CHARGER_CV";
>>  +				regulator-min-microvolt =3D <3800000>;
>>  +				regulator-max-microvolt =3D <4100000>;
>>  +				regulator-always-on;
>>  +			};
>>  +
>>  +		};
>>  +
>>  +	};
>>  +};
>>  +
>>  +
>>  +&gpu {
>>  +	status =3D "okay";
>>  +
>>  +	mali-supply =3D <&vg3d_breg>;
>>  +	regulator-microvolt-offset =3D <50000>;
>>  +	regulator-microsecs-delay =3D <50>;
>>  +};
>>  +
>>  +
>>  +&sdhci_0 {
>>  +	status =3D "okay";
>>  +
>>  +	bus-width =3D <8>;
>>  +	non-removable;
>>  +	vmmc-supply =3D <&vemmc_reg>;
>>  +
>>  +	pinctrl-0 =3D <&sd0_clk>, <&sd0_cmd>, <&sd0_bus8>;
>>  +	pinctrl-names =3D "default";
>>  +};
>>  +
>>  +&sdhci_2 {
>>  +	status =3D "okay";
>>  +
>>  +	bus-width =3D <4>;
>>  +	cd-gpios =3D <&gpx3 4 GPIO_ACTIVE_LOW>;
>>  +	vmmc-supply =3D <&vtf_reg>;
>>  +
>>  +	pinctrl-0 =3D <&sd2_clk>, <&sd2_cmd>, <&sd2_bus4>;
>>  +	pinctrl-names =3D "default";
>>  +};
>>  +
>>  +&ehci {
>>  +	port@0 {
>>  +		status =3D "okay";
>>  +	};
>>  +
>>  +	port@1 {
>>  +		status =3D "okay";
>>  +	};
>>  +
>>  +	port@2 {
>>  +		status =3D "okay";
>>  +	};
>>  +
>>  +};
> =

> This is duplicated 'ehci' node, probable an artifact from the earlier
> rebase. Please remove it.

Right, didn't even notice it.

Will remove it and send a V2.

Cheers,
-Paul

>>  +
>>  +
>>  +&sdhci_3 {
>>  +	status =3D "okay";
>>  +
>>  +	#address-cells =3D <1>;
>>  +	#size-cells =3D <0>;
>>  +
>>  +	non-removable;
>>  +	bus-width =3D <4>;
>>  +	mmc-pwrseq =3D <&wlan_pwrseq>;
>>  +	vmmc-supply =3D <&vtf_reg>;
>>  +
>>  +	pinctrl-names =3D "default";
>>  +	pinctrl-0 =3D <&sd3_clk>, <&sd3_cmd>, <&sd3_bus4>;
>>  +
>>  +	brcmf: wifi@1 {
>>  +		compatible =3D "brcm,bcm4330-fmac";
>>  +		reg =3D <1>;
>>  +
>>  +		interrupt-parent =3D <&gpx2>;
>>  +		interrupts =3D <5 IRQ_TYPE_LEVEL_HIGH>;
>>  +		interrupt-names =3D "host-wake";
>>  +	};
>>  +};
>>  +
>>  +
>>  +&serial_0 {
>>  +	status =3D "okay";
>>  +
>>  +	pinctrl-names =3D "default";
>>  +	pinctrl-0 =3D <&bt_en>, <&bt_res>, <&uart0_data>, <&uart0_fctl>;
>>  +
>>  +	bluetooth {
>>  +		compatible =3D "brcm,bcm4330-bt";
>>  +
>>  +		shutdown-gpios =3D <&gpl0 4 GPIO_ACTIVE_HIGH>;
>>  +		reset-gpios =3D <&gpl1 0 GPIO_ACTIVE_HIGH>;
>>  +		device-wakeup-gpios =3D <&gpx3 1 GPIO_ACTIVE_HIGH>;
>>  +		host-wakeup-gpios =3D <&gpx2 6 GPIO_ACTIVE_HIGH>;
>>  +	};
>>  +};
>>  +
>>  +&serial_1 {
>>  +	status =3D "okay";
>>  +};
>>  +
>>  +&serial_2 {
>>  +	status =3D "okay";
>>  +};
>>  +
>>  +&serial_3 {
>>  +	status =3D "okay";
>>  +};
>>  +
>>  +&tmu {
>>  +	status =3D "okay";
>>  +};
>>  +
>>  +
>>  +&pinctrl_0 {
>>  +	pinctrl-names =3D "default";
>>  +	pinctrl-0 =3D <&sleep0>;
>>  +
>>  +
>>  +	sleep0: sleep-states {
>>  +		gpa0-0 {
>>  +			samsung,pins =3D "gpa0-0";
>>  +			samsung,pin-con-pdn =3D <EXYNOS_PIN_PDN_INPUT>;
>>  +			samsung,pin-pud-pdn =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		};
>>  +
>>  +		gpa0-1 {
>>  +			samsung,pins =3D "gpa0-1";
>>  +			samsung,pin-con-pdn =3D <EXYNOS_PIN_PDN_OUT0>;
>>  +			samsung,pin-pud-pdn =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		};
>>  +
>>  +		gpa0-2 {
>>  +			samsung,pins =3D "gpa0-2";
>>  +			samsung,pin-con-pdn =3D <EXYNOS_PIN_PDN_INPUT>;
>>  +			samsung,pin-pud-pdn =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		};
>>  +
>>  +		gpa0-3 {
>>  +			samsung,pins =3D "gpa0-3";
>>  +			samsung,pin-con-pdn =3D <EXYNOS_PIN_PDN_OUT1>;
>>  +			samsung,pin-pud-pdn =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		};
>>  +	};
>>  +};
>>  +
>>  +&pinctrl_1 {
>>  +	mhl_int: mhl-int {
>>  +		samsung,pins =3D "gpf3-5";
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +	};
>>  +
>>  +	i2c_mhl_bus: i2c-mhl-bus {
>>  +		samsung,pins =3D "gpf0-4", "gpf0-6";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_2>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_DOWN>;
>>  +		samsung,pin-drv =3D <EXYNOS4_PIN_DRV_LV1>;
>>  +	};
>>  +
>>  +	usb_sel: usb-sel {
>>  +		samsung,pins =3D "gpl0-6";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_OUTPUT>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		samsung,pin-drv =3D <EXYNOS4_PIN_DRV_LV1>;
>>  +		samsung,pin-val =3D <0>;
>>  +	};
>>  +
>>  +	bt_en: bt-en {
>>  +		samsung,pins =3D "gpl0-4";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_OUTPUT>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		samsung,pin-drv =3D <EXYNOS4_PIN_DRV_LV4>;
>>  +		samsung,pin-val =3D <0>;
>>  +	};
>>  +
>>  +	bt_res: bt-res {
>>  +		samsung,pins =3D "gpl1-0";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_OUTPUT>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		samsung,pin-drv =3D <EXYNOS4_PIN_DRV_LV4>;
>>  +		samsung,pin-val =3D <0>;
>>  +	};
>>  +
>>  +
>>  +	otg_gp: otg-gp {
>>  +		samsung,pins =3D "gpx3-3";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_OUTPUT>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +		samsung,pin-drv =3D <EXYNOS4_PIN_DRV_LV1>;
>>  +		samsung,pin-val =3D <0>;
>>  +	};
>>  +
>>  +	mag_mhl_gpio: mag-mhl-gpio {
>>  +		samsung,pins =3D "gpd0-2";
>>  +		samsung,pin-function =3D <EXYNOS_PIN_FUNC_3>;
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +	};
>>  +
>>  +
>>  +	max8997_irq: max8997-irq {
>>  +		samsung,pins =3D "gpx0-7";
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +	};
>>  +
>>  +	max17042_fuel_irq: max17042-fuel-irq {
>>  +		samsung,pins =3D "gpx2-3";
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_NONE>;
>>  +	};
>>  +
>>  +	tsp224_irq: tsp224-irq {
>>  +		samsung,pins =3D "gpx0-4";
>>  +		samsung,pin-pud =3D <EXYNOS_PIN_PULL_UP>;
>>  +	};
>>  +};
> =

> Best regards
> --
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
> =




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
