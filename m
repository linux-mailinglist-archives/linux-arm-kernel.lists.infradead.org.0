Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C78217FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 14:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWYs5T6kq+tXITHYTMuX4kjmo4Bo9+3lsFxqsOcmQSk=; b=o8jV2xp/ILV95G
	8Dead+ILa7Eg1wb3ZZN3hRb/7BAKe9VfsDTcq+l1ScEU8i4fH3jKAyrAFvtPTclTa0phvH0suSWVG
	6bbX0DQNE+nBDBYbH5RpklF34Wl74udQXb3IpFtJuCD9dfy8MhUemxp3YIpAJ+HUwUDXRi+YL/xwU
	f2GjsOloCYdM/rDNeuwXDAF5lgn2NB/lEDQ/HH+s+XFij0qHq+kR2x3E0qUe4lvR5szn3nW0oXMwn
	Xsw/xuOkfoIvs/Xaz5kwRP+f4wrlh83qlu+rLilAg81X8SoMibsspcVM515dmmGtE9h+lFOzEioJb
	tF0FaD/c56WMf3BV26Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRbcz-0007Y3-9b; Fri, 17 May 2019 12:06:21 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRbcr-0007XO-D1
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 12:06:15 +0000
Received: by mail-ed1-x542.google.com with SMTP id w11so10237848edl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 05:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Xz2LRvxPp0zacQCxOX9WPIoVksCerdgKAkltB9xI7vU=;
 b=Q710WweXud4xeoDdbDKuewRxMYEvCHccfVW47o4eWpq+HqiDuyHva/46GsGyPG6Fx7
 v0use1+aguA1w8upPSJjlMRAKWZujt/lp2Cs3xeKN0ezbEUFY6hZwb/v2ZQxlNiveV3e
 aA+u4y5iPO2JhyaoEIwdhpXqo5A7AIFaecxDQPp/yoWWCcXsJwdeCF0avR3V4aFU6y5Z
 vYLIwGTAdsZizhMXEXrZjeSAHwjI0YvdasJYuuyCmVjjyI95AThi/Y8HIJWlLsoQORg7
 n1Ttv6f7ZyuUb/FQf14uU5I6jcOczPTTmpaV+jYT8D/8nSSXMKMObcNuKQckQvEWGNiY
 vvmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Xz2LRvxPp0zacQCxOX9WPIoVksCerdgKAkltB9xI7vU=;
 b=BgeGWHrEXMk/rsjQJr+5NBnUjmfPYfiWROpHpQUAO4Yirn5SY9NQQrVbuYsg+Rb0ub
 h+tfuxCsZ+PhJCCbglutDv3VYlbhqcup3TOU50Ds4hfv+W8hXsT8eXEVKO0//rALbVy/
 DxQsH+wxJzo9YfAHK5icO9bIWzG2UCmqP5JVyUqFPeMPKVeOV45bS+qM/KerkYkb9mxT
 F7nHC1WOEHpn9I6+b3uHEY+f/qY652TUTMjQdug7Gf1OU1uVsQH1WKHc+a3DOPDGayTZ
 Qd55nidQC++4hXyHCwwXUTnZXCyPKmzE9oM8xJLx+fnCG10GgJyvjrn2P7bHAJdjgkq2
 Vjew==
X-Gm-Message-State: APjAAAXe5T/s4dgTDSq5pIkmeXrULczu88BggIWTF/rvPH9aPazTbdgG
 0jwdte+hP9mGhyBBh1u8CH3X/ICEo0Fn6c22pnw=
X-Google-Smtp-Source: APXvYqwGS6/wSgFTHe/Cr8SM8sVB9mE54HcByOa3jTreHmIcoCjps+KQZllynZRBtBfo9yZKm6dgH65d32nIvGygh+g=
X-Received: by 2002:a05:6402:1610:: with SMTP id
 f16mr57531395edv.171.1558094770961; 
 Fri, 17 May 2019 05:06:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190506010800.2433-1-olteanv@gmail.com>
 <20190517010450.GT15856@dragon>
In-Reply-To: <20190517010450.GT15856@dragon>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 17 May 2019 15:05:59 +0300
Message-ID: <CA+h21hos=kHRGq089=3Js2pPnW71BBv02rqiMqPcZFe_bzBUHA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: Introduce the NXP LS1021A-TSN board
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_050613_448665_B4FD22E0 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 04:05, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, May 06, 2019 at 04:08:00AM +0300, Vladimir Oltean wrote:
> > The LS1021A-TSN is a development board built by VVDN/Argonboards in
> > partnership with NXP.
> >
> > It features the LS1021A SoC and the first-generation SJA1105T Ethernet
> > switch for prototyping implementations of a subset of IEEE 802.1 TSN
> > standards.
> >
> > It has two regular Ethernet ports and four switched, TSN-capable ports.
> >
> > It also features:
> > - One Arduino header
> > - One expansion header
> > - Two USB 3.0 ports
> > - One mini PCIe slot
> > - One SATA interface
> > - Accelerometer, gyroscope, temperature sensors
> >
> > Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
> > ---
> >  arch/arm/boot/dts/Makefile        |   3 +-
> >  arch/arm/boot/dts/ls1021a-tsn.dts | 238 ++++++++++++++++++++++++++++++
> >  2 files changed, 240 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index f4f5aeaf3298..529f0150f6b4 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -593,7 +593,8 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
> >  dtb-$(CONFIG_SOC_LS1021A) += \
> >       ls1021a-moxa-uc-8410a.dtb \
> >       ls1021a-qds.dtb \
> > -     ls1021a-twr.dtb
> > +     ls1021a-twr.dtb \
> > +     ls1021a-tsn.dtb
>
> Please keep the list alphabetically sorted.  That said, ls1021a-tsn.dtb
> should go prior to ls1021a-twr.dtb.
>
> >  dtb-$(CONFIG_SOC_VF610) += \
> >       vf500-colibri-eval-v3.dtb \
> >       vf610-bk4.dtb \
> > diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
> > new file mode 100644
> > index 000000000000..5269486699bd
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> > @@ -0,0 +1,238 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright 2016-2018 NXP Semiconductors
> > + * Copyright 2019 Vladimir Oltean <olteanv@gmail.com>
> > + */
> > +
> > +/dts-v1/;
> > +#include "ls1021a.dtsi"
> > +
> > +/ {
> > +     model = "NXP LS1021A-TSN Board";
> > +
> > +     sys_mclk: clock-mclk {
> > +             compatible = "fixed-clock";
> > +             #clock-cells = <0>;
> > +             clock-frequency = <24576000>;
> > +     };
> > +
> > +     regulators {
> > +             compatible = "simple-bus";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
>
> This is the old style of organizing fixed regulators, which has been
> complained by device tree maintainers.  Drop this container node and put
> the regulator nodes directly under root, using name schema below.
>
>         reg_xxx: regulator-xxx {
>                 ...
>         };
>
> And thus, 'reg' property in regulator node should be dropped.
>
> > +
> > +             reg_3p3v: regulator@0 {
> > +                     compatible = "regulator-fixed";
> > +                     reg = <0>;
> > +                     regulator-name = "3P3V";
> > +                     regulator-min-microvolt = <3300000>;
> > +                     regulator-max-microvolt = <3300000>;
> > +                     regulator-always-on;
> > +             };
> > +             reg_2p5v: regulator@1 {
> > +                     compatible = "regulator-fixed";
> > +                     reg = <1>;
> > +                     regulator-name = "2P5V";
> > +                     regulator-min-microvolt = <2500000>;
> > +                     regulator-max-microvolt = <2500000>;
> > +                     regulator-always-on;
> > +             };
> > +     };
> > +};
> > +
> > +&enet0 {
> > +     tbi-handle = <&tbi0>;
> > +     phy-handle = <&sgmii_phy2>;
> > +     phy-mode = "sgmii";
> > +     status = "ok";
>
> For sake of consistency, we prefer to use "okay".
>
> > +};
> > +
> > +&enet1 {
> > +     tbi-handle = <&tbi1>;
> > +     phy-handle = <&sgmii_phy1>;
> > +     phy-mode = "sgmii";
> > +     status = "ok";
> > +};
> > +
> > +/* RGMII delays added via PCB traces */
> > +&enet2 {
> > +     phy-mode = "rgmii";
> > +     status = "ok";
>
> Please have a newline between property list and child node.
>
> > +     fixed-link {
> > +             speed = <1000>;
> > +             full-duplex;
> > +     };
> > +};
> > +
> > +&dspi0 {
>
> Please sort these labeled nodes alphabetically.
>
> > +     bus-num = <0>;
> > +     status = "ok";
> > +
> > +     /* ADG704BRMZ 1:4 mux/demux */
> > +     tsn_switch: sja1105@1 {
>
> Use a generic node name, while label name can be specific.
>
> > +             reg = <0x1>;
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             compatible = "nxp,sja1105t";
>
> Undocumented compatible?
>
> > +             /* 12 MHz */
> > +             spi-max-frequency = <12000000>;
> > +             /* Sample data on trailing clock edge */
> > +             spi-cpha;
> > +             fsl,spi-cs-sck-delay = <1000>;
> > +             fsl,spi-sck-cs-delay = <1000>;
>
> Have a newline.
>
> > +             ports {
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
>
> Ditto
>
> > +                     port@0 {
> > +                             /* ETH5 written on chassis */
> > +                             label = "swp5";
> > +                             phy-handle = <&rgmii_phy6>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <0>;
> > +                     };
>
> Please have a newline between nodes as well.
>
> > +                     port@1 {
> > +                             /* ETH2 written on chassis */
> > +                             label = "swp2";
> > +                             phy-handle = <&rgmii_phy3>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <1>;
> > +                     };
> > +                     port@2 {
> > +                             /* ETH3 written on chassis */
> > +                             label = "swp3";
> > +                             phy-handle = <&rgmii_phy4>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <2>;
> > +                     };
> > +                     port@3 {
> > +                             /* ETH4 written on chassis */
> > +                             phy-handle = <&rgmii_phy5>;
> > +                             label = "swp4";
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <3>;
> > +                     };
> > +                     port@4 {
> > +                             /* Internal port connected to eth2 */
> > +                             ethernet = <&enet2>;
> > +                             phy-mode = "rgmii";
> > +                             reg = <4>;
> > +                             fixed-link {
> > +                                     speed = <1000>;
> > +                                     full-duplex;
> > +                             };
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&mdio0 {
> > +     /* AR8031 */
> > +     sgmii_phy1: ethernet-phy@1 {
> > +             reg = <0x1>;
> > +     };
> > +     /* AR8031 */
> > +     sgmii_phy2: ethernet-phy@2 {
> > +             reg = <0x2>;
> > +     };
> > +     /* BCM5464 */
> > +     rgmii_phy3: ethernet-phy@3 {
> > +             reg = <0x3>;
> > +     };
> > +     rgmii_phy4: ethernet-phy@4 {
> > +             reg = <0x4>;
> > +     };
> > +     rgmii_phy5: ethernet-phy@5 {
> > +             reg = <0x5>;
> > +     };
> > +     rgmii_phy6: ethernet-phy@6 {
> > +             reg = <0x6>;
> > +     };
> > +     /* SGMII PCS for enet0 */
> > +     tbi0: tbi-phy@1f {
> > +             reg = <0x1f>;
> > +             device_type = "tbi-phy";
> > +     };
> > +};
> > +
> > +&mdio1 {
> > +     /* SGMII PCS for enet1 */
> > +     tbi1: tbi-phy@1f {
> > +             reg = <0x1f>;
> > +             device_type = "tbi-phy";
> > +     };
> > +};
> > +
> > +&i2c0 {
> > +     status = "ok";
> > +
> > +     /* 3 axis accelerometer */
> > +     accelerometer@1e {
> > +             compatible = "fsl,fxls8471";
> > +             reg = <0x1e>;
> > +             position = <0>;
> > +     };
> > +     /* Gyroscope is at 0x20 but not supported */
> > +     /* Audio codec (SAI2) */
> > +     codec@2a {
>
> audio-codec
>
> > +             #sound-dai-cells = <0>;
>
> We usually start properties with 'compatible', so please move it behind.
>
> > +             compatible = "fsl,sgtl5000";
> > +             reg = <0x2a>;
> > +             VDDA-supply = <&reg_3p3v>;
> > +             VDDIO-supply = <&reg_2p5v>;
> > +             clocks = <&sys_mclk>;
> > +     };
> > +     /* Current sensing circuit for 1V VDDCORE PMIC rail */
> > +     current-sensor@44 {
> > +             compatible = "ti,ina220";
> > +             reg = <0x44>;
> > +             shunt-resistor = <1000>;
> > +     };
> > +     /* Current sensing circuit for 12V VCC rail */
> > +     current-sensor@45 {
> > +             compatible = "ti,ina220";
> > +             reg = <0x45>;
> > +             shunt-resistor = <1000>;
> > +     };
> > +     /* Thermal monitor - case */
> > +     temperature-sensor@48 {
> > +             compatible = "national,lm75";
> > +             reg = <0x48>;
> > +     };
> > +     /* Thermal monitor - chip */
> > +     temperature-sensor@4c {
> > +             compatible = "ti,tmp451";
> > +             reg = <0x4c>;
> > +     };
> > +     /* 4-channel ADC */
> > +     adc@49 {
> > +             compatible = "ad7924";
>
> Undocumented.
>
> Shawn
>
> > +             reg = <0x49>;
> > +     };
> > +};
> > +
> > +&ifc {
> > +     status = "disabled";
> > +};
> > +
> > +&esdhc {
> > +     status = "ok";
> > +};
> > +
> > +&uart0 {
> > +     status = "ok";
> > +};
> > +
> > +&lpuart0 {
> > +     status = "ok";
> > +};
> > +
> > +&lpuart3 {
> > +     status = "ok";
> > +};
> > +
> > +&sai2 {
> > +     status = "ok";
> > +};
> > +
> > +&sata {
> > +     status = "ok";
> > +};
> > --
> > 2.17.1
> >

Hi Shawn,

Thanks for the feedback!
Do you want a v2 now (will you merge it for 5.2) or should I send it
after the merge window closes?
The "nxp,sja1105t" compatible is not undocumented but belongs to
drivers/net/dsa/sja1105/ which was recently merged into mainline via
the netdev tree (hence it's not in your tree yet).
The situation with "ad7924" is more funny. The compatible is indeed
undocumented but belongs to drivers/iio/adc/ad7923.c. I don't know why
it lacks an entry in Documentation/devicetree/bindings/iio/adc/.
However I mistook the chip and it's not a Analog Devices AD7924 ADC
with a SPI interface, but a TI ADS7924 ADC with an I2C interface. I
can remove it from v2 since it does not have a Linux driver as far as
I can tell.

-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
