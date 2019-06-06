Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF1336913
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 03:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APK36KT2Kbd9BfaXZbOzTRz595jbdu0RZ2Vug/UPgCM=; b=Gb3is79sxUB/nL
	bVgZHHGa5i4zwrzpHqz7nrQYYXoVY8iFjGN3FtManzIHD55YUQhwzBWPnfFGEhBVb5o36RRkdXI3x
	tdB727/DrQFrhZbuEJcXFPR9klkK8rfN3u/xqLvhbb4Nr9dfrGWbalt2hX+No5sx59GUguOg9Wt1k
	pRilKcK1KBuhecdHI6KlMKtKa6xsTnxSN1YP+i03AopwNbqnYC7QQJZyNvnglT6aM7G53lmqjYWrp
	i4hDt4n2ojanxDIALRlw3s9iZ11YVMRHOKckCklcPvJhRybcx89bB3v9zphSW0iZIlSli6MadsDmy
	S8fc8l0VqXKB1OWKZG4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYgzy-0007X4-JL; Thu, 06 Jun 2019 01:15:22 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYgzq-0007Vt-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 01:15:15 +0000
Received: by mail-ed1-x543.google.com with SMTP id a8so765789edx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 18:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LQqlBhHTmz8x0FhJ39lBoK4w2qCKDb/ThTtYwto9ACI=;
 b=g8Ri3zij5o7vM+S3/dBGE3ZjRAtRQRnXddtn8tC5NUdADPnKpR7i4AnHKp4S7l5dQs
 aoekfrtZGVXTAXwkm4Ij3eZmDcKAOoeaQixbPDNKHkLtApJEzBvTsNKfIKy9LVh7i/RE
 rCgPhWvjTO7yxxoKPCRuDEcmDkPoLB3N0HPwECiiB0sLkG/dIYn05icc1q0ItNqxQXq0
 GOYi7H/vYslYCH4qqyB53cUiWuNtb8XnfU6JauzXFcKQfsUJEKWgqPRNUTPUlQUEAir3
 602K1dAiml4FwbOHHbI01xXhLFgHQ7ofFL9ZzV7rr5fOOzk9vjB0y/GjksBIujPmT6Jm
 ju2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LQqlBhHTmz8x0FhJ39lBoK4w2qCKDb/ThTtYwto9ACI=;
 b=ShzKQPnBe3nl+nl1PfyDZEtF1vE8LF+r0ce9JlxK8JR+hdktyvv8OeNDmqb4dq/LMF
 iWsN73efiwUYDm4Z1J8t7nNRUKqZN8jD3JLfyd1KgloAj0ikW0NCj+KtZUkXbh06TsF3
 IBa9LixGjuo3+IjmMB/oYlXBkJu6X1JpsN8vi4K3WUogMxiSvc0jAVtDMyRN6S5rRW7d
 RfuHxLc2VXypjpYseK9VegP4lkFnlCn1eWpnyJZBZJazAmuxgoBRb36f+23zdj0mtW9l
 ZsTvdDDtj5J11893fMPdYiLxRJFdYdM+uc3eNtXcIPI9kS7DUqMD2MVk2APs6qaneLWx
 T1gg==
X-Gm-Message-State: APjAAAXyycb9e20WbjEMIGwZSiLq9Qt+xLyLHBLYtnCBfu8CRVMOAuT6
 01v0hDGmISc34xDMqyuj4gOUkRv/kLLUDZSRLIc=
X-Google-Smtp-Source: APXvYqy2f8KwfmdxXdh1l6viqoO3HclEr1IG+M3FHJZqFBvsaZcsHyHPdwTKzWU0EeXu5e3EAhW6muJmxSZTxALBjIk=
X-Received: by 2002:a17:906:6552:: with SMTP id
 u18mr5857012ejn.300.1559783711809; 
 Wed, 05 Jun 2019 18:15:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190529221222.19276-1-olteanv@gmail.com>
 <20190606010429.GP29853@dragon>
In-Reply-To: <20190606010429.GP29853@dragon>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Thu, 6 Jun 2019 04:15:00 +0300
Message-ID: <CA+h21hr1ykigbEhVuqMMgcxNaiqDhiNuZiNURwHqOwEooU6jDQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: dts: Introduce the NXP LS1021A-TSN board
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_181514_148200_7F0361DA 
X-CRM114-Status: GOOD (  20.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 lkml <linux-kernel@vger.kernel.org>, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 04:04, Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Thu, May 30, 2019 at 01:12:22AM +0300, Vladimir Oltean wrote:
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
> > Changes from v1:
> > - Applied Shawn's feedback
> > - Introduced QSPI flash node
> >
> > v1 patch available at:
> > https://patchwork.kernel.org/patch/10930451/
> >
> >  arch/arm/boot/dts/Makefile        |   1 +
> >  arch/arm/boot/dts/ls1021a-tsn.dts | 288 ++++++++++++++++++++++++++++++
> >  2 files changed, 289 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts
> >
> > diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> > index dab2914fa293..a4eb4ca5e148 100644
> > --- a/arch/arm/boot/dts/Makefile
> > +++ b/arch/arm/boot/dts/Makefile
> > @@ -602,6 +602,7 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
> >  dtb-$(CONFIG_SOC_LS1021A) += \
> >       ls1021a-moxa-uc-8410a.dtb \
> >       ls1021a-qds.dtb \
> > +     ls1021a-tsn.dtb \
> >       ls1021a-twr.dtb
> >  dtb-$(CONFIG_SOC_VF610) += \
> >       vf500-colibri-eval-v3.dtb \
> > diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
> > new file mode 100644
> > index 000000000000..b05774eac92e
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/ls1021a-tsn.dts
> > @@ -0,0 +1,288 @@
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
> > +     reg_vdda_codec: regulator-3V3 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "3P3V";
> > +             regulator-min-microvolt = <3300000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             regulator-always-on;
> > +     };
> > +
> > +     reg_vddio_codec: regulator-2V5 {
> > +             compatible = "regulator-fixed";
> > +             regulator-name = "2P5V";
> > +             regulator-min-microvolt = <2500000>;
> > +             regulator-max-microvolt = <2500000>;
> > +             regulator-always-on;
> > +     };
> > +};
> > +
> > +&enet0 {
> > +     tbi-handle = <&tbi0>;
> > +     phy-handle = <&sgmii_phy2>;
> > +     phy-mode = "sgmii";
> > +     status = "okay";
> > +};
> > +
> > +&enet1 {
> > +     tbi-handle = <&tbi1>;
> > +     phy-handle = <&sgmii_phy1>;
> > +     phy-mode = "sgmii";
> > +     status = "okay";
> > +};
> > +
> > +/* RGMII delays added via PCB traces */
> > +&enet2 {
> > +     phy-mode = "rgmii";
> > +     status = "okay";
> > +
> > +     fixed-link {
> > +             speed = <1000>;
> > +             full-duplex;
> > +     };
> > +};
> > +
> > +&dspi0 {
> > +     bus-num = <0>;
> > +     status = "okay";
> > +
> > +     /* ADG704BRMZ 1:4 mux/demux */
> > +     sja1105: ethernet-switch@1 {
> > +             reg = <0x1>;
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             compatible = "nxp,sja1105t";
> > +             /* 12 MHz */
> > +             spi-max-frequency = <12000000>;
> > +             /* Sample data on trailing clock edge */
> > +             spi-cpha;
> > +             fsl,spi-cs-sck-delay = <1000>;
> > +             fsl,spi-sck-cs-delay = <1000>;
> > +
> > +             ports {
> > +                     #address-cells = <1>;
> > +                     #size-cells = <0>;
> > +
> > +                     port@0 {
> > +                             /* ETH5 written on chassis */
> > +                             label = "swp5";
> > +                             phy-handle = <&rgmii_phy6>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <0>;
> > +                     };
> > +
> > +                     port@1 {
> > +                             /* ETH2 written on chassis */
> > +                             label = "swp2";
> > +                             phy-handle = <&rgmii_phy3>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <1>;
> > +                     };
> > +
> > +                     port@2 {
> > +                             /* ETH3 written on chassis */
> > +                             label = "swp3";
> > +                             phy-handle = <&rgmii_phy4>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <2>;
> > +                     };
> > +
> > +                     port@3 {
> > +                             /* ETH4 written on chassis */
> > +                             label = "swp4";
> > +                             phy-handle = <&rgmii_phy5>;
> > +                             phy-mode = "rgmii-id";
> > +                             reg = <3>;
> > +                     };
> > +
> > +                     port@4 {
> > +                             /* Internal port connected to eth2 */
> > +                             ethernet = <&enet2>;
> > +                             phy-mode = "rgmii";
> > +                             reg = <4>;
> > +
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
> > +
> > +     /* AR8031 */
> > +     sgmii_phy2: ethernet-phy@2 {
> > +             reg = <0x2>;
> > +     };
> > +
> > +     /* BCM5464 quad PHY */
> > +     rgmii_phy3: ethernet-phy@3 {
> > +             reg = <0x3>;
> > +     };
> > +
> > +     rgmii_phy4: ethernet-phy@4 {
> > +             reg = <0x4>;
> > +     };
> > +
> > +     rgmii_phy5: ethernet-phy@5 {
> > +             reg = <0x5>;
> > +     };
> > +
> > +     rgmii_phy6: ethernet-phy@6 {
> > +             reg = <0x6>;
> > +     };
> > +
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
> > +     status = "okay";
> > +
> > +     /* 3 axis accelerometer */
> > +     accelerometer@1e {
> > +             compatible = "fsl,fxls8471";
> > +             position = <0>;
> > +             reg = <0x1e>;
> > +     };
> > +
> > +     /* Audio codec (SAI2) */
> > +     codec@2a {
>
> audio-codec for node name.
>
> > +             compatible = "fsl,sgtl5000";
> > +             VDDIO-supply = <&reg_vddio_codec>;
> > +             VDDA-supply = <&reg_vdda_codec>;
> > +             #sound-dai-cells = <0>;
> > +             clocks = <&sys_mclk>;
> > +             reg = <0x2a>;
> > +     };
> > +
> > +     /* Current sensing circuit for 1V VDDCORE PMIC rail */
> > +     current-sensor@44 {
> > +             compatible = "ti,ina220";
> > +             shunt-resistor = <1000>;
> > +             reg = <0x44>;
> > +     };
> > +
> > +     /* Current sensing circuit for 12V VCC rail */
> > +     current-sensor@45 {
> > +             compatible = "ti,ina220";
> > +             shunt-resistor = <1000>;
> > +             reg = <0x45>;
> > +     };
> > +
> > +     /* Thermal monitor - case */
> > +     temperature-sensor@48 {
> > +             compatible = "national,lm75";
> > +             reg = <0x48>;
> > +     };
> > +
> > +     /* Thermal monitor - chip */
> > +     temperature-sensor@4c {
> > +             compatible = "ti,tmp451";
> > +             reg = <0x4c>;
> > +     };
> > +
> > +     eeprom@51 {
> > +             compatible = "atmel,24c32";
> > +             reg = <0x51>;
> > +     };
> > +
> > +     /* Unsupported devices:
> > +      * - FXAS21002C Gyroscope at 0x20
> > +      * - TI ADS7924 4-channel ADC at 0x49
> > +      */
> > +};
> > +
> > +&qspi {
> > +     status = "okay";
> > +
> > +     flash@0 {
> > +             /* Rev. A uses 64MB flash, Rev. B & C use 32MB flash */
> > +             compatible = "jedec,spi-nor", "s25fl256s1", "s25fl512s";
> > +             spi-max-frequency = <20000000>;
> > +             #address-cells = <1>;
> > +             #size-cells = <1>;
> > +             reg = <0>;
> > +
> > +             partitions {
> > +                     compatible = "fixed-partitions";
> > +                     #address-cells = <1>;
> > +                     #size-cells = <1>;
> > +
> > +                     partition@0 {
> > +                             label = "RCW";
> > +                             reg = <0x0 0x40000>;
> > +                     };
> > +
> > +                     partition@40000 {
> > +                             label = "U-Boot";
> > +                             reg = <0x40000 0x300000>;
> > +                     };
> > +
> > +                     partition@340000 {
> > +                             label = "U-Boot Env";
> > +                             reg = <0x340000 0x100000>;
> > +                     };
> > +             };
> > +     };
> > +};
> > +
> > +&ifc {
>
> Please sort all these labelling nodes alphabetically.
>

Hi Shawn,

It's not entirely clear to me which nodes you mean.

Regards,
-Vladimir

> Shawn
>
> > +     status = "disabled";
> > +};
> > +
> > +&esdhc {
> > +     status = "okay";
> > +};
> > +
> > +&uart0 {
> > +     status = "okay";
> > +};
> > +
> > +&lpuart0 {
> > +     status = "okay";
> > +};
> > +
> > +&lpuart3 {
> > +     status = "okay";
> > +};
> > +
> > +&sai2 {
> > +     status = "okay";
> > +};
> > +
> > +&sata {
> > +     status = "okay";
> > +};
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
