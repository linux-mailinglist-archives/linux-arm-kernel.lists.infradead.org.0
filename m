Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9210C51A32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 20:00:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bkRgKRcmCSWkdeLAQgkZe0ccM87476F4mceB/ECAifU=; b=gK0RYus64cTaC0
	P8kgT45Tr4q2aHkHvfsrSmEgAsUduqW6PDweKGw/rCFUWjrgkY5JSRtCa9Y7dtL+9iIki321U9KYf
	Lz1qZVJ1hq9T57ZRIhnCO6DUDB12LiR0F75Z207cWAD1FjFPpkAQ9W++ZxQ/zseIypP71encgfIh6
	MG0znjE8nVR+PblsBkiKQk9U2gNhWas6pfUcmqNwqDc+8HZLEkHSR4Uy4Zncs+Xgnfrs+GR4UPAm5
	Y+g47aQDPaOgdNtLoVFD4H5beyQrtqR3zIM+kggegJzmRbqih5nGTCCvUfTDxO8sTMm0WHLdcb0IZ
	6h9fL5+RqPeVIAk8yEGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfTGh-0008MJ-Jy; Mon, 24 Jun 2019 18:00:39 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfTGT-0008Li-Ir
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 18:00:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so2939967ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 11:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lQS+mcwdr6+K9rWB8DLfUq7wFyorubR3oufJIOPvCWg=;
 b=JY2DRKGH94flv33pSHeYdyddaOo481QFwiyJ8o6lX3g7h/6DNJZAqoPIgHeQ15r6ZV
 mouh/PnYxmHnChUYuKCZR4nejwHYgt/i/bNWX6pC17WZ0LoxDyVTGx0YMgulE6tpNDRw
 gjfS8rNumoY1LjbARmjhgdabR/fRAUohhuEPsF5Nr/dCCO84wktWRsny2ZCXYN2MtDqi
 eTS+mkooyZ0jiSzdZeZgocn/u9wWoBne6+KLTECvQ2GjbVCRol6PA+LngfUb2J/yz9o4
 U98PZDF0RJF0OF+R1QsRZbXD45PFHuWdCJkIq6SO+mwgZwgoaAvXNZTGd8exHyWQZl97
 HESw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lQS+mcwdr6+K9rWB8DLfUq7wFyorubR3oufJIOPvCWg=;
 b=G/M1f/1GmMONLNQKnFjzCsm22xqDOLn+yy8uVd/6rRzgcp1sdrBbz9YXHU/2uen7/+
 M77AQAfEB68KiyAvNi2OtqN0c/VO/wAuuU+72pYyWI72QwOgfibrNiBq7G4iW+Z6Q8KI
 gUjDwNhMSsNU/7+IJtT9P5eNnOu3d8YsC+kOZCIe0UPYuLvq9wLg6hSogJwinKOq5Pb4
 ubVb/ynOEQdMz1eF4jLRmJZ4kMI/9YtfAKeVyYkjPg6dueHBoRjI8qJ2/fkXAILQkW53
 xpZA7OdNZPbSbMyJXlJTeoi95YpmB56dLXdPb7ZX4nRuRl9PdfoMP2/65edxxKTvyqpe
 qBHA==
X-Gm-Message-State: APjAAAVww8CAJ3PH776bdgZfdo3g77oALli+M21ehzgU92fnTLiWSaKf
 TGQsdhNK7BQd3qWdyQwsYeSgT8ivB9rACw4YkCk=
X-Google-Smtp-Source: APXvYqyTaMzG0mVxUrg65QsZn1VTjTUWWbIFy/3WQvE6V0DHKI6fNhNR/L3tA1eL/ZZMSCAr9fMoZtYkPVqWq8YbyeI=
X-Received: by 2002:a5d:9d90:: with SMTP id 16mr1479045ion.132.1561399223924; 
 Mon, 24 Jun 2019 11:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190617153025.12120-1-andrew.smirnov@gmail.com>
 <20190624002853.GC3800@dragon>
In-Reply-To: <20190624002853.GC3800@dragon>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jun 2019 11:00:12 -0700
Message-ID: <CAHQ1cqEPfdZZw9Tp0t78U7pRtQAsVyPU6JcSrrG4_zcLR+vsqg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] ARM: dts: Add ZII support for ZII i.MX7 RMU2 board
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_110025_631468_CAE2F291 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Rob Herring <robh@kernel.org>, Liang Pan <Liang.Pan@zii.aero>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, Bob Langer <Bob.Langer@zii.aero>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 5:29 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Jun 17, 2019 at 08:30:24AM -0700, Andrey Smirnov wrote:
> > Add support for ZII's i.MX7 based Remote Modem Unit 2 (RMU2) board.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Chris Healy <cphealy@gmail.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: Bob Langer <Bob.Langer@zii.aero>
> > Cc: Liang Pan <Liang.Pan@zii.aero>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: devicetree@vger.kernel.org
> > ---
> >
> > Changes since [v1]:
> >
> >     - Added missing #address-cells and #size-cells
> >
> >     - Replaced reset-gpio -> reset-gpios
> >
> >
> > [v1] lore.kernel.org/r/20190614080317.16850-1-andrew.smirnov@gmail.com
> >
> >  arch/arm/boot/dts/Makefile           |   1 +
> >  arch/arm/boot/dts/imx7d-zii-rmu2.dts | 361 +++++++++++++++++++++++++++
> >  2 files changed, 362 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/imx7d-zii-rmu2.dts
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index 5559028b770e..516e2912236d 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -593,6 +593,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
> >       imx7d-sdb.dtb \
> >       imx7d-sdb-reva.dtb \
> >       imx7d-sdb-sht11.dtb \
> > +     imx7d-zii-rmu2.dtb \
> >       imx7d-zii-rpu2.dtb \
> >       imx7s-colibri-eval-v3.dtb \
> >       imx7s-mba7.dtb \
> > diff --git a/arch/arm/boot/dts/imx7d-zii-rmu2.dts b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
> > new file mode 100644
> > index 000000000000..e60b3232a090
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx7d-zii-rmu2.dts
> > @@ -0,0 +1,361 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Device tree file for ZII's RMU2 board
> > + *
> > + * RMU - Remote Modem Unit
> > + *
> > + * Copyright (C) 2019 Zodiac Inflight Innovations
> > + */
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/thermal/thermal.h>
> > +#include "imx7d.dtsi"
> > +
> > +/ {
> > +     model = "ZII RMU2 Board";
> > +     compatible = "zii,imx7d-rmu2", "fsl,imx7d";
> > +
> > +     chosen {
> > +             stdout-path = &uart2;
> > +     };
> > +
> > +     gpio-leds {
> > +             compatible = "gpio-leds";
> > +             pinctrl-0 = <&pinctrl_leds_debug>;
> > +             pinctrl-names = "default";
> > +
> > +             debug {
> > +                     label = "zii:green:debug1";
> > +                     gpios = <&gpio2 8 GPIO_ACTIVE_HIGH>;
> > +                     linux,default-trigger = "heartbeat";
> > +             };
> > +     };
> > +};
> > +
> > +&cpu0 {
> > +     arm-supply = <&sw1a_reg>;
> > +};
> > +
> > +&ecspi1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_ecspi1>;
> > +     cs-gpios = <&gpio4 19 GPIO_ACTIVE_HIGH>;
> > +     status = "okay";
> > +
> > +     flash@0 {
> > +             compatible = "jedec,spi-nor";
> > +             spi-max-frequency = <20000000>;
> > +             reg = <0>;
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +     };
> > +};
> > +
> > +&fec1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_enet1>;
> > +     assigned-clocks = <&clks IMX7D_ENET1_TIME_ROOT_SRC>,
> > +                       <&clks IMX7D_ENET1_TIME_ROOT_CLK>;
> > +     assigned-clock-parents = <&clks IMX7D_PLL_ENET_MAIN_100M_CLK>;
> > +     assigned-clock-rates = <0>, <100000000>;
> > +     phy-mode = "rgmii";
> > +     phy-handle = <&fec1_phy>;
> > +     status = "okay";
> > +
> > +     mdio {
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +
> > +             fec1_phy: phy@0 {
>
> ethernet-phy for node name.
>

OK, will change.

> > +                     pinctrl-names = "default";
> > +                     pinctrl-0 = <&pinctrl_enet1_phy_reset>,
> > +                                 <&pinctrl_enet1_phy_interrupt>;
> > +                     reg = <0>;
> > +                     interrupt-parent = <&gpio1>;
> > +                     interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
> > +                     reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
> > +             };
> > +     };
> > +};
> > +
> > +&i2c1 {
> > +     clock-frequency = <100000>;
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_i2c1>;
> > +     status = "okay";
> > +
> > +     pmic: pmic@8 {
>
> Label can be more specific, so maybe:
>
>         pfuze3000: pmic@8
>

Hmm, I don't think that label is used anywhere. I may as well just drop it.

> > +             compatible = "fsl,pfuze3000";
> > +             reg = <0x08>;
> > +
> > +             regulators {
> > +                     sw1a_reg: sw1a {
> > +                             regulator-min-microvolt = <700000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                             regulator-ramp-delay = <6250>;
> > +                     };
> > +
> > +                     sw1c_reg: sw1b {
> > +                             regulator-min-microvolt = <700000>;
> > +                             regulator-max-microvolt = <1475000>;
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                             regulator-ramp-delay = <6250>;
> > +                     };
> > +
> > +                     sw2_reg: sw2 {
> > +                             regulator-min-microvolt = <1500000>;
> > +                             regulator-max-microvolt = <1850000>;
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     sw3a_reg: sw3 {
> > +                             regulator-min-microvolt = <900000>;
> > +                             regulator-max-microvolt = <1650000>;
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     swbst_reg: swbst {
> > +                             regulator-min-microvolt = <5000000>;
> > +                             regulator-max-microvolt = <5150000>;
> > +                     };
> > +
> > +                     snvs_reg: vsnvs {
> > +                             regulator-min-microvolt = <1000000>;
> > +                             regulator-max-microvolt = <3000000>;
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vref_reg: vrefddr {
> > +                             regulator-boot-on;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen1_reg: vldo1 {
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen2_reg: vldo2 {
> > +                             regulator-min-microvolt = <800000>;
> > +                             regulator-max-microvolt = <1550000>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen3_reg: vccsd {
> > +                             regulator-min-microvolt = <2850000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen4_reg: v33 {
> > +                             regulator-min-microvolt = <2850000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen5_reg: vldo3 {
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                     };
> > +
> > +                     vgen6_reg: vldo4 {
> > +                             regulator-min-microvolt = <1800000>;
> > +                             regulator-max-microvolt = <3300000>;
> > +                             regulator-always-on;
> > +                     };
> > +             };
> > +     };
> > +
> > +     eeprom@50 {
> > +             compatible = "atmel,24c04";
> > +             reg = <0x50>;
> > +     };
> > +
> > +     eeprom@52 {
> > +             compatible = "atmel,24c04";
> > +             reg = <0x52>;
> > +     };
> > +};
> > +
> > +&uart2 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart2>;
> > +     assigned-clocks = <&clks IMX7D_UART2_ROOT_SRC>;
> > +     assigned-clock-parents = <&clks IMX7D_OSC_24M_CLK>;
> > +     status = "okay";
> > +};
> > +
> > +&uart4 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_uart4>;
> > +     assigned-clocks = <&clks IMX7D_UART4_ROOT_SRC>;
> > +     assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
> > +     status = "okay";
> > +
> > +     rave-sp {
> > +             compatible = "zii,rave-sp-rdu2";
> > +             current-speed = <1000000>;
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +
> > +             watchdog {
> > +                     compatible = "zii,rave-sp-watchdog";
> > +             };
> > +
> > +             eeprom@a3 {
> > +                     compatible = "zii,rave-sp-eeprom";
> > +                     reg = <0xa3 0x4000>;
> > +                     #address-cells = <1>;
> > +                     #size-cells = <1>;
> > +                     zii,eeprom-name = "main-eeprom";
> > +             };
> > +     };
> > +};
> > +
> > +&usbotg2 {
> > +     dr_mode = "host";
> > +     disable-over-current;
> > +     status = "okay";
> > +};
> > +
> > +&usdhc1 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_usdhc1>;
> > +     bus-width = <4>;
> > +     no-1-8-v;
> > +     no-sdio;
> > +     keep-power-in-suspend;
> > +     status = "okay";
> > +};
> > +
> > +&usdhc3 {
> > +     pinctrl-names = "default";
> > +     pinctrl-0 = <&pinctrl_usdhc3>;
> > +     bus-width = <8>;
> > +     no-1-8-v;
> > +     non-removable;
> > +     no-sdio;
> > +     no-sd;
> > +     keep-power-in-suspend;
> > +     status = "okay";
> > +};
> > +
> > +&wdog1 {
> > +     status = "disabled";
> > +};
> > +
> > +&snvs_rtc {
> > +     status = "disabled";
> > +};
>
> Please sort it alphabetically in label name.
>

Will do.

> > +
> > +&snvs_pwrkey {
> > +     status = "disabled";
> > +};
>
> We already queued up the patch below to disable snvs_pwrkey by default.
>
> https://lkml.org/lkml/2019/6/13/1170
>

OK, good to know, will drop.

> > +
> > +&iomuxc {
> > +     pinctrl_ecspi1: ecspi1grp {
> > +             fsl,pins = <
> > +                     MX7D_PAD_ECSPI1_SCLK__ECSPI1_SCLK       0x2
> > +                     MX7D_PAD_ECSPI1_MOSI__ECSPI1_MOSI       0x2
> > +                     MX7D_PAD_ECSPI1_MISO__ECSPI1_MISO       0x2
> > +                     MX7D_PAD_ECSPI1_SS0__GPIO4_IO19         0x59
> > +             >;
> > +     };
> > +
> > +     pinctrl_enet1: enet1grp {
> > +             fsl,pins = <
> > +                     MX7D_PAD_SD2_CD_B__ENET1_MDIO                           0x3
> > +                     MX7D_PAD_SD2_WP__ENET1_MDC                              0x3
> > +                     MX7D_PAD_ENET1_RGMII_TXC__ENET1_RGMII_TXC               0x1
> > +                     MX7D_PAD_ENET1_RGMII_TD0__ENET1_RGMII_TD0               0x1
> > +                     MX7D_PAD_ENET1_RGMII_TD1__ENET1_RGMII_TD1               0x1
> > +                     MX7D_PAD_ENET1_RGMII_TD2__ENET1_RGMII_TD2               0x1
> > +                     MX7D_PAD_ENET1_RGMII_TD3__ENET1_RGMII_TD3               0x1
> > +                     MX7D_PAD_ENET1_RGMII_TX_CTL__ENET1_RGMII_TX_CTL         0x1
> > +                     MX7D_PAD_ENET1_RGMII_RXC__ENET1_RGMII_RXC               0x1
> > +                     MX7D_PAD_ENET1_RGMII_RD0__ENET1_RGMII_RD0               0x1
> > +                     MX7D_PAD_ENET1_RGMII_RD1__ENET1_RGMII_RD1               0x1
> > +                     MX7D_PAD_ENET1_RGMII_RD2__ENET1_RGMII_RD2               0x1
> > +                     MX7D_PAD_ENET1_RGMII_RD3__ENET1_RGMII_RD3               0x1
> > +                     MX7D_PAD_ENET1_RGMII_RX_CTL__ENET1_RGMII_RX_CTL         0x1
> > +             >;
> > +     };
> > +
> > +     pinctrl_enet1_phy_reset: enet1phyresetgrp {
> > +             fsl,pins = <
> > +                     MX7D_PAD_SD2_RESET_B__GPIO5_IO11        0x14
> > +
> > +             >;
> > +     };
> > +
> > +     pinctrl_i2c1: i2c1grp {
> > +             fsl,pins = <
> > +                     MX7D_PAD_I2C1_SDA__I2C1_SDA             0x4000007f
> > +                     MX7D_PAD_I2C1_SCL__I2C1_SCL             0x4000007f
> > +             >;
> > +     };
> > +
> > +     pinctrl_leds_debug: debuggrp {
>
> ledsgrp?
>

Sure, will change in next version.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
