Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BE1142030
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 22:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b98JGs0sg74RZ2ZEfz0HyCiAQ0Tmd9uawuCCRW2LO20=; b=HLk0kxooyqUvLq
	UUp9qBstF43jXFwe4bDMH5MzY73/mwqDrMnxhEYTKh90BYn8i7+Ahu61RGpdLrLNCC8ufOdRWLZ+H
	QCeTHUO8tF+yq5wzESRMhPLDRq/5Ka4j0Kz8OF35852Ic89uy7IroXgztgZNPZii4x7feYDdUU5LF
	jbiWw2jwCTHYK0tZBxWXTQZHENuYANzZkhbHqWGSkBWFae04AVsLx38XAnYbH3Ce7ed6k3c6JB1Yt
	moD5oQK/aa/fZqN5PJh5by/othQOic2FrIMQ9HNrjvq0APKS1Tq089LR7zdi1naVYsVr8YwpyOY5z
	gZsjbTSv59cF9HeT4sgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIAE-0000OT-8T; Sun, 19 Jan 2020 21:31:22 +0000
Received: from mx.blih.net ([212.83.155.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIA1-0000N7-As; Sun, 19 Jan 2020 21:31:11 +0000
Received: from skull.home.blih.net (lfbn-idf2-1-1164-130.w90-92.abo.wanadoo.fr
 [90.92.223.130]) by mx.blih.net (OpenSMTPD) with ESMTPSA id 0a3f8ca7
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO); 
 Sun, 19 Jan 2020 21:31:04 +0000 (UTC)
Date: Sun, 19 Jan 2020 22:31:02 +0100
From: Emmanuel Vadot <manu@bidouilliste.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
Message-Id: <20200119223102.f97ba545ebf59c14563a95c7@bidouilliste.com>
In-Reply-To: <2816238.fSnfubHXRg@diego>
References: <20200116225617.6318-1-manu@freebsd.org>
 <20200116225617.6318-2-manu@freebsd.org> <2816238.fSnfubHXRg@diego>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; amd64-portbld-freebsd13.0)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_133109_648580_463C442E 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, m.reichl@fivetechno.de,
 aballier@gentoo.org, linux-kernel@vger.kernel.org, vicencb@gmail.com,
 dianders@chromium.org, Emmanuel Vadot <manu@freebsd.org>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 kever.yang@rock-chips.com, jagan@amarulasolutions.com, nick@khadas.com,
 andy.yan@rock-chips.com, robin.murphy@arm.com, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org, pbrobinson@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 19 Jan 2020 21:17:39 +0100
Heiko St=FCbner <heiko@sntech.de> wrote:

> Hi,
> =

> overall looks good, but some small things below
> =

> Am Donnerstag, 16. Januar 2020, 23:56:17 CET schrieb Emmanuel Vadot:
> > From: Peter Robinson <pbrobinson@gmail.com>
> > =

> > Pinebook Pro is a RK3399 based laptop produced by Pine64.
> > =

> > Add a basic DTS for it.
> > =

> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 626 ++++++++++++++++++
> >  2 files changed, 627 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 48fb631d5451..9099fb7e2073 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-nanopc-t4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-nanopi-m4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-nanopi-neo4.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-orangepi.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-pinebook-pro.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-puma-haikou.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3399-roc-pc-mezzanine.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arc=
h/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > new file mode 100644
> > index 000000000000..d2e3d7b35cc6
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> > @@ -0,0 +1,626 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
> =

> You might want to clarify the copyright ... 2020 and Pine64-something?

 This is a DTS that Peter Robinson first wrote, I've just kept the
copyright.

> > + */
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/input/linux-event-codes.h>
> > +#include <dt-bindings/pwm/pwm.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3399.dtsi"
> > +#include "rk3399-opp.dtsi"
> > +
> > +/ {
> > +	model =3D "Pine64 Pinebook Pro";
> > +	compatible =3D "pine64,pinebook-pro", "rockchip,rk3399";
> > +
> > +	chosen {
> > +		stdout-path =3D "serial2:115200n8";
> > +	};
> > +
> > +	aliases {
> > +		spi0 =3D &spi1;
> =

> why is this needed ... I'd think spi can just enumerate itself?

 This was taken from u-boot and yes I think it's not needed for both
Linux and FreeBSD.

> =

> > +	};
> > +
> > +	backlight: backlight {
> > +		compatible =3D "pwm-backlight";
> > +		enable-gpios =3D <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
> > +		pwms =3D <&pwm0 0 740740 0>;
> > +	};
> > +
> > +	gpio-keys {
> > +		compatible =3D "gpio-keys";
> > +		autorepeat;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pwrbtn>;
> > +
> > +		power {
> > +			debounce-interval =3D <100>;
> > +			gpios =3D <&gpio0 RK_PA5 GPIO_ACTIVE_LOW>;
> > +			label =3D "GPIO Key Power";
> > +			linux,code =3D <KEY_POWER>;
> > +			wakeup-source;
> > +		};
> > +	};
> > +
> > +	leds {
> > +		status =3D "okay";
> =

> new board-specific nodes don't need a status property

 Ok.

> > +		compatible =3D "gpio-leds";
> > +
> > +		work-led {
> > +			label =3D "work";
> > +			gpios =3D <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
> > +		};
> > +
> > +		standby-led {
> > +			label =3D "standby";
> > +			gpios =3D <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	vcc1v8_s3: vcca1v8_s3: vcc1v8-s3 {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc1v8_s3";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <1800000>;
> > +		regulator-max-microvolt =3D <1800000>;
> > +		vin-supply =3D <&vcc_1v8>;
> > +	};
> > +
> > +	dc_12v: dc-12v {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "dc_12v";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <12000000>;
> > +		regulator-max-microvolt =3D <12000000>;
> > +	};
> > +
> > +	vcc3v3_sys: vcc3v3-sys {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc3v3_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <3300000>;
> > +		regulator-max-microvolt =3D <3300000>;
> > +		vin-supply =3D <&vcc_sys>;
> > +	};
> > +
> > +	vcc5v0_host: vcc5v0-host-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		gpio =3D <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&host_vbus_drv>;
> > +		regulator-name =3D "vcc5v0_host";
> > +	};
> > +
> > +	vcc5v0_usb3_host: vcc5v0-usb3-host-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		enable-active-high;
> > +		gpio =3D <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&host_usb3_drv>;
> > +		regulator-name =3D "vcc5v0_usb3_host";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc3v3_s0: vcc3v3-s0-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		enable-active-high;
> > +		gpio =3D <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&lcdvcc_en>;
> > +		regulator-name =3D "vcc3v3_s0";
> > +		regulator-always-on;
> > +	};
> > +
> > +	vcc_sys: vcc-sys {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +		vin-supply =3D <&dc_12v>;
> > +	};
> > +
> > +	vdd_log: vdd-log {
> > +		compatible =3D "pwm-regulator";
> > +		pwms =3D <&pwm2 0 25000 1>;
> > +		pwm-supply =3D <&vcc_sys>;
> > +		regulator-name =3D "vdd_log";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-init-microvolt =3D <950000>;
> =

> There is no init-microvolt property in mainline, I'd think bootloader sho=
uld
> already setup the pwm to a suitable setting?
> =

> Not

 I'll fix that.

> > +		regulator-min-microvolt =3D <800000>;
> > +		regulator-max-microvolt =3D <1400000>;
> > +	};
> > +};
> > +
> > +&cpu_l0 {
> > +	cpu-supply =3D <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l1 {
> > +	cpu-supply =3D <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l2 {
> > +	cpu-supply =3D <&vdd_cpu_l>;
> > +};
> > +
> > +&cpu_l3 {
> > +	cpu-supply =3D <&vdd_cpu_l>;
> > +};
> =

> what happened to cpu_b0 and cpu_b1 supplies?
> Should probably reference the cpu_b regulator below?

 Yes, sorry.

> > +
> > +&emmc_phy {
> > +	status =3D "okay";
> > +};
> > +
> > +&i2c0 {
> > +	clock-frequency =3D <400000>;
> > +	i2c-scl-rising-time-ns =3D <168>;
> > +	i2c-scl-falling-time-ns =3D <4>;
> > +	status =3D "okay";
> =

> [...]
> =

> > +	vdd_cpu_b: regulator@40 {
> > +		compatible =3D "silergy,syr827";
> > +		reg =3D <0x40>;
> > +		fcs,suspend-voltage-selector =3D <1>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&vsel1_gpio>;
> > +		vsel-gpios =3D <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> =

> This is not yet specified in the syr82x (fan5355) bindings and
> also unknown to the driver

 I'll have another look at the bindings, thanks.

> > +		regulator-compatible =3D "fan53555-reg";
> > +		regulator-name =3D "vdd_cpu_b";
> > +		regulator-min-microvolt =3D <712500>;
> > +		regulator-max-microvolt =3D <1500000>;
> > +		regulator-ramp-delay =3D <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply =3D <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +	vdd_gpu: regulator@41 {
> > +		compatible =3D "silergy,syr828";
> > +		reg =3D <0x41>;
> > +		fcs,suspend-voltage-selector =3D <1>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&vsel2_gpio>;
> > +		vsel-gpios =3D <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> =

> same
> =

> > +		regulator-compatible =3D "fan53555-reg";
> > +		regulator-name =3D "vdd_gpu";
> > +		regulator-min-microvolt =3D <712500>;
> > +		regulator-max-microvolt =3D <1500000>;
> > +		regulator-ramp-delay =3D <1000>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		vin-supply =3D <&vcc_sys>;
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +};
> =

> [...]
> =

> > +&saradc {
> > +	status =3D "okay";
> =

> needs a vref-supply
> =

> > +};
> > +
> > +&sdmmc {
> > +	bus-width =3D <4>;
> > +	status =3D "okay";
> > +	max-frequency =3D <20000000>;
> =

> vmmc / vqmmc supplies?
> Especially if one wants to achieve higher speeds on uhs cards.

 Yep, will do that.

> Heiko
> =

> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


-- =

Emmanuel Vadot <manu@bidouilliste.com> <manu@freebsd.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
