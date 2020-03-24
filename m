Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF06190B86
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:53:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1leGsoIUN0B2nLJNnULxsGXWW+LZf/Y5G1/Io/qUSl8=; b=fE+d7wNcvwaahQcJrlDqw7MK+
	gZn4fIxbeellQ6OIICQi+kTfDcCGsVB9zN160LryYqQba8rgZYoSqolhiWNtmdmMXua402IFeClHD
	uQKG67KatgkslHc2cgWqMAvXMlsUJjQIKeGAIXF/wwL00S5qolqmP94cBY9O7YvUWvVfOD7vCt+dn
	qgZkluLmrS4AAiqV3kHWJEkZyRiHRExtyOhpAjlenZWlgFLiZNITOVOwY02++y5txAeTjEE8F79g0
	ORKaQibIidEpuZzYiaKqOFNT5bdNi2bhIHKBD51Z9fqRFVbHBTi54Mlvydmv1pVwpK9M+/Df4PMz6
	BjSQ/rhGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhB6-0004Bc-7e; Tue, 24 Mar 2020 10:53:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGh9s-0003JP-Eb
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:51:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jGh9i-0007XZ-Ny; Tue, 24 Mar 2020 11:51:34 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jGh9g-0000Kz-I6; Tue, 24 Mar 2020 11:51:32 +0100
Date: Tue, 24 Mar 2020 11:51:32 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200324105132.frqvg66bjyxlmqpz@pengutronix.de>
References: <20200319055636.7573-1-o.rempel@pengutronix.de>
 <20200319055636.7573-3-o.rempel@pengutronix.de>
 <20200319102109.GB2071@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200319102109.GB2071@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:39:23 up 125 days,  1:57, 158 users,  load average: 0.05, 0.04,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_035144_847405_8E04A21B 
X-CRM114-Status: GOOD (  24.84  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7599403559549465822=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7599403559549465822==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hda2czln2jcxpm3d"
Content-Disposition: inline


--hda2czln2jcxpm3d
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 11:21:09AM +0100, Marco Felsch wrote:
> Hi Oleksij,
>=20
> thanks for your patche. In general you should use generic node names,
> sort the properties, nodes, phandles correctly except the iomux node.
> Finally, pls don't mix dts and dtsi files. If the dts needs the iomux
> than pls mux it within the dts file :) Pls see my comments below.
>=20
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/*
> > + * Copyright (c) 2014 Protonic Holland
> > + */
> > +
> > +/dts-v1/;
> > +#include "imx6q.dtsi"
> > +#include "imx6qdl-prti6q.dtsi"
> > +
> > +/ {
> > +	model =3D "Protonic PRTI6Q board";
> > +	compatible =3D "prt,prti6q", "fsl,imx6q";
> > +
> > +	memory@10000000 {
> > +		device_type =3D "memory";
> > +		reg =3D <0x10000000 0xf0000000>;
> > +	};
> > +
> > +	sound-spdif {
> > +		compatible =3D "fsl,imx-audio-spdif";
> > +		model =3D "imx-spdif";
> > +		spdif-controller =3D <&spdif>;
> > +		spdif-in;
> > +		spdif-out;
> > +	};
> > +
> > +	clocks {
>=20
> Is this container necessary?

removed.

> > +		spi3_crystal: spi3clk {
>=20
> Should we name the clock extcanclk?=20

i synced it with schematics name

> > +			compatible =3D "fixed-clock";
> > +			#clock-cells =3D <0>;
> > +			clock-frequency =3D <25000000>;
> > +		};
> > +	};
> > +
> > +	panel {
> > +		compatible =3D "kyo,tcg121xglp";
> > +		backlight =3D <&backlight_lcd>;
> > +
> > +		port {
> > +			panel_in: endpoint {
> > +				remote-endpoint =3D <&lvds0_out>;
> > +			};
> > +		};
> > +	};
> > +
> > +	reg_wl12xx: regulator-wl12xx {
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_wl1271_npd>;
>=20
> Does npd mean no-power-down?

ACK

>=20
> > +		compatible =3D "regulator-fixed";
>=20
> The "compatible" property should be the 1st property.

done

> > +		regulator-name =3D "regulator-WL12xx";
> > +		regulator-min-microvolt =3D <1800000>;
> > +		regulator-max-microvolt =3D <1800000>;
> > +		gpio =3D <&gpio1 26 0>;
> > +		startup-delay-us =3D <70000>;
> > +		enable-active-high;
> > +	};
>=20
> Please sort all nodes and phandles alphabetical, this applies to all
> your .dts(i) files except the iomux node. I saw some dt files moving
> that node to the end. @Shawn is this a unwritten rule?

done

>=20
> > +};
> > +
> > +&ecspi2 {
> > +	cs-gpios =3D <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio4 25 GPIO_ACTIVE_HIG=
H>;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_ecspi2>;
> > +	status =3D "okay";
> > +
> > +	can3: mcp2515@0 {
>=20
> Where is this phandle used? Please name the node more generic e.g. like
> the phandle and drop the phandle if not used.

done

> > +		compatible =3D "microchip,mcp2515";
> > +		spi-max-frequency =3D <5000000>;
> > +		interrupt-parent =3D <&gpio3>;
> > +		interrupts =3D <20 IRQ_TYPE_LEVEL_LOW>;
> > +		reg =3D <0>;
>=20
> The "reg" property should be listed after the "compatible" property.

done

> > +		clocks =3D <&spi3_crystal>;
> > +	};
> > +
> > +	adc128: adc128@1 {
> > +		compatible =3D "ti,adc128s052";
> > +		reg =3D <1>;
> > +		vref-supply =3D <&reg_3v3>;
> > +		spi-max-frequency =3D <2000000>;
> > +	};
> > +};
> > +
> > +&iomuxc {
> > +	prti6q {
>=20
> Is this container necessary?

removed

> > +		pinctrl_nand: nandgrp {
>=20
> Where is this node used?

removed and other nodes are reworked as well

> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_NANDF_CLE__NAND_CLE		0xb0b1
> > +				MX6QDL_PAD_NANDF_ALE__NAND_ALE		0xb0b1
> > +				MX6QDL_PAD_NANDF_WP_B__NAND_WP_B	0xb0b1
> > +				MX6QDL_PAD_NANDF_RB0__NAND_READY_B	0xb000
> > +				MX6QDL_PAD_NANDF_CS0__NAND_CE0_B	0xb0b1
> > +				MX6QDL_PAD_NANDF_CS1__NAND_CE1_B	0xb0b1
> > +				MX6QDL_PAD_SD4_CMD__NAND_RE_B		0xb0b1
> > +				MX6QDL_PAD_SD4_CLK__NAND_WE_B		0xb0b1
> > +				MX6QDL_PAD_NANDF_D0__NAND_DATA00	0xb0b1
> > +				MX6QDL_PAD_NANDF_D1__NAND_DATA01	0xb0b1
> > +				MX6QDL_PAD_NANDF_D2__NAND_DATA02	0xb0b1
> > +				MX6QDL_PAD_NANDF_D3__NAND_DATA03	0xb0b1
> > +				MX6QDL_PAD_NANDF_D4__NAND_DATA04	0xb0b1
> > +				MX6QDL_PAD_NANDF_D5__NAND_DATA05	0xb0b1
> > +				MX6QDL_PAD_NANDF_D6__NAND_DATA06	0xb0b1
> > +				MX6QDL_PAD_NANDF_D7__NAND_DATA07	0xb0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_usbotg: usbotggrp {
>=20
> Here we are mixing dtsi and dts files and the dtsi is not self-contained
> anymore. This isn't a good idea.

done

>=20
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
> > +				MX6QDL_PAD_EIM_D21__USB_OTG_OC		0x1b0b0
> > +				/* power enable, high active */
> > +				MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x000b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_hdmi: hdmigrp {
> > +			fsl,pins =3D <
> > +				/* NOTE: DDC is done via I2C2, so DON'T
> > +				 * configure DDC pins for HDMI!
> > +				 */
> > +				MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_spdif: spdifgrp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_GPIO_16__SPDIF_IN		0x1b0b0
> > +				MX6QDL_PAD_GPIO_19__SPDIF_OUT		0x1b0b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_leds: ledsgrp {
>=20
> Here we are mixing it too.

done

> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b0
> > +				MX6QDL_PAD_DI0_PIN15__GPIO4_IO17	0x1b0b0
> > +			>;
> > +		};
> > +
> > +		/* DDC */
> > +		pinctrl_i2c2: i2c2grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
> > +				MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_ecspi2: ecspi2grp {
>=20
> Most of the node is already defined in your dtsi file and again
> mixing dtsi and dts file. Pls check that for all your files. I
> would mux the common things like miso,mosi,clk within the dtsi and the
> cs signals here. Also we can use the phandle to extend the node.

done

> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> > +				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> > +				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> > +				/* CAN3 CS */
> > +				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> > +				/* ADC128S022 CS */
> > +				MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
> > +				/* CAN3_nINT */
> > +				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_enet: enetgrp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
> > +				MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
> > +				MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
> > +				MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
> > +				MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
> > +				MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
> > +				MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
> > +				MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
> > +				MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
> > +				MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
> > +				MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
> > +				MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x10030
> > +				MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x10030
> > +				MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
> > +				MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
> > +
> > +				/* Phy reset */
> > +				MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> > +				MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc2: usdhc2grp {
>=20
> Why is this node needed? We only add the IRQ line. You only need to use
> the phandle to extend the node or add a new wl1271grp. I would prefer
> the 2nd.

done

> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> > +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> > +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> > +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> > +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> > +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> > +				/* WL12xx IRQ */
> > +				MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x10880
> > +			>;
> > +		};
> > +
> > +		pinctrl_wl1271_npd: wl1271_npd {
>=20
> Pls don't use '_' within node names.

done

> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b8b0
> > +			>;
> > +		};
> > +	};
> > +};
> > +
> > +&hdmi {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_hdmi>;
> > +	ddc-i2c-bus =3D <&i2c2>;
> > +	status =3D "okay";
> > +};
> > +
> > +&spdif {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_spdif>;
> > +	status =3D "okay";
> > +};
> > +
> > +/* DDC */
> > +&i2c2 {
> > +	clock-frequency =3D <100000>;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_i2c2>;
> > +	status =3D "okay";
> > +};
> > +
> > +&sata {
> > +	status =3D "okay";
> > +};
> > +
> > +&fec {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_enet>;
> > +	phy-mode =3D "rgmii-id";
> > +	phy-handle =3D <&rgmii_phy>;
> > +	status =3D "okay";
> > +
> > +	mdio {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		/* Microchip KSZ9031RNX PHY */
> > +		rgmii_phy: ethernet-phy@0 {
> > +			reg =3D <0>;
> > +			interrupts-extended =3D <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
> > +			reset-gpios =3D <&gpio1 25 GPIO_ACTIVE_LOW>;
> > +			reset-assert-us =3D <10000>;
> > +			reset-deassert-us =3D <300>;
> > +		};
> > +	};
> > +};
> > +
> > +&ldb {
> > +	status =3D "okay";
> > +
> > +	lvds-channel@0 {
> > +		status =3D "okay";
> > +
> > +		port@4 {
> > +			reg =3D <4>;
> > +
> > +			lvds0_out: endpoint {
> > +				remote-endpoint =3D <&panel_in>;
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +&usdhc2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> > +	vmmc-supply =3D <&reg_wl12xx>;
> > +	non-removable;
> > +	cap-power-off-card;
> > +	keep-power-in-suspend;
> > +	status =3D "okay";
> > +
> > +	wl1271 {
> > +		compatible =3D "ti,wl1271";
> > +		irq-gpio =3D <&gpio1 30 GPIO_ACTIVE_HIGH>;
> > +		ref-clock-frequency =3D "38400000";
> > +		tcxo-clock-frequency =3D "19200000";
> > +	};
> > +};
> > +
> > +&snvs_poweroff {
> > +	status =3D "okay";
> > +};
> > diff --git a/arch/arm/boot/dts/imx6qdl-prti6q.dtsi b/arch/arm/boot/dts/=
imx6qdl-prti6q.dtsi
> > new file mode 100644
> > index 000000000000..6515b96fa0a5
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/imx6qdl-prti6q.dtsi
>=20
> Should we add the .dtsi file seperate?

better no. it is useless as standalone file any way.

> > @@ -0,0 +1,489 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> > +/*
> > + * Copyright (c) 2014 Protonic Holland
> > + */
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/input.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/sound/fsl-imx-audmux.h>
> > +
> > +/ {
> > +	chosen {
> > +		stdout-path =3D &uart4;
> > +	};
> > +
> > +	reg_3v3: regulator-3v3 {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "3v3";
> > +		regulator-min-microvolt =3D <3300000>;
> > +		regulator-max-microvolt =3D <3300000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_1v8: regulator-1v8 {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "1v8";
> > +		regulator-min-microvolt =3D <1800000>;
> > +		regulator-max-microvolt =3D <1800000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_1v2: regulator-1v2 {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "1v2";
> > +		regulator-min-microvolt =3D <1200000>;
> > +		regulator-max-microvolt =3D <1200000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	reg_usb_otg_vbus: regulator-otg-vbus {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "otg-vbus";
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +		gpio =3D <&gpio3 22 0>;
> > +		enable-active-high;
> > +	};
> > +
> > +	reg_usb_h1_vbus: regulator-h1-vbus {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "h1-vbus";
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +		regulator-always-on;
> > +	};
> > +
> > +	sound {
> > +		compatible =3D "simple-audio-card";
> > +		simple-audio-card,name =3D "prti6q-sgtl5000";
> > +		simple-audio-card,format =3D "i2s";
> > +		simple-audio-card,widgets =3D
> > +			"Microphone", "Microphone Jack",
> > +			"Line", "Line In Jack",
> > +			"Headphone", "Headphone Jack",
> > +			"Speaker", "External Speaker";
> > +		simple-audio-card,routing =3D
> > +			"MIC_IN", "Microphone Jack",
> > +			"LINE_IN", "Line In Jack",
> > +			"Headphone Jack", "HP_OUT",
> > +			"External Speaker", "LINE_OUT";
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai =3D <&ssi1>;
> > +			system-clock-frequency =3D <0>;
> > +		};
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai =3D <&codec>;
> > +			bitclock-master;
> > +			frame-master;
> > +		};
> > +	};
> > +
> > +	backlight_lcd: backlight-lcd {
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_backlight>;
> > +		compatible =3D "pwm-backlight";
>=20
> Should be the first property.

done

> > +		pwms =3D <&pwm1 0 5000000>;
> > +		brightness-levels =3D <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192
> > +                                     255>;
> > +		default-brightness-level =3D <15>;
>=20
> Can you check the num-interpolated-steps property?

done

> > +		power-supply =3D <&reg_3v3>;
> > +		status =3D "okay";
>=20
> Should be the last property.

done

> > +		enable-gpios =3D <&gpio4 28 GPIO_ACTIVE_HIGH>;
> > +	};
> > +
> > +	leds: led-controller {
>=20
> led-controller?

renamed to leds

> > +		compatible =3D "gpio-leds";
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pinctrl_leds>;
> > +
> > +		led-hb0 {
>=20
> Do we need the led- prefix here?

if i interpret it properly, then yes:
Documentation/devicetree/bindings/leds/leds-gpio.yaml

> > +			function =3D LED_FUNCTION_STATUS;
> > +			gpios =3D <&gpio4 16 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "heartbeat";
> > +		};
> > +
> > +		led-mmc0 {
> > +			function =3D LED_FUNCTION_SD;
> > +			gpios =3D <&gpio4 17 GPIO_ACTIVE_HIGH>;
> > +			linux,default-trigger =3D "disk-activity";
> > +		};
> > +	};
> > +};
> > +
> > +&audmux {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_audmux>;
> > +	status =3D "okay";
> > +
> > +	mux_ssi1 {
> > +		fsl,audmux-port =3D <0>;
> > +		fsl,port-config =3D <
> > +			IMX_AUDMUX_V2_PTCR_SYN 		0
> > +			IMX_AUDMUX_V2_PTCR_TFSEL(2) 	0
> > +			IMX_AUDMUX_V2_PTCR_TCSEL(2) 	0
> > +			IMX_AUDMUX_V2_PTCR_TFSDIR 	0
> > +			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> > +		>;
> > +	};
> > +
> > +	mux_pins3 {
> > +		fsl,audmux-port =3D <2>;
> > +		fsl,port-config =3D <
> > +			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
> > +			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
> > +		>;
> > +	};
> > +};
> > +
> > +&ecspi1 {
> > +	cs-gpios =3D <&gpio3 19 GPIO_ACTIVE_HIGH>;
>=20
> Nitpick, it is uncommon to list cs-gpios first.

git grep -B1 "cs-gpios" arch/arm/boot/dts/
shows, it is common.

> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_ecspi1>;
> > +	status =3D "okay";
> > +
> > +	flash: s25sl032p@0 {
>=20
> Please use a generic name like spi-flash or flash.

done

> > +		compatible =3D "spansion,m25p80";
> > +		spi-max-frequency =3D <20000000>;
> > +		reg =3D <0>;
>=20
> After the compatible string.

done

> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <1>;
> > +
> > +		partition@0 {
> > +			label =3D "boot";
> > +			reg =3D <0x0 0x80000>;
> > +		};
> > +
> > +		partition@80000 {
> > +			label =3D "env";
> > +			reg =3D <0x80000 0x10000>;
> > +		};
> > +
> > +		partition@90000 {
> > +			label =3D "spare";
> > +			reg =3D <0x90000 0x370000>;
> > +		};
>=20
> The partitions should be listed under the partitions node.

done

> > +	};
> > +};
> > +
> > +&i2c1 {
> > +	clock-frequency =3D <100000>;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_i2c1>;
> > +	status =3D "okay";
> > +
> > +	codec: sgtl5000@a {
>=20
> Pls use generic names for all nodes, pls check that for all your dts(i)
> files.

done

> > +		#sound-dai-cells =3D <0>;
> > +		compatible =3D "fsl,sgtl5000";
> > +		reg =3D <0xa>;
>=20
> Compatible and reg should be moved to the begin.

done

> > +		clocks =3D <&clks 201>;
> > +		VDDA-supply =3D <&reg_3v3>;
> > +		VDDIO-supply =3D <&reg_3v3>;
> > +		VDDD-supply =3D <&reg_1v8>;
> > +	};
> > +};
> > +
> > +&i2c3 {
> > +	clock-frequency =3D <100000>;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_i2c3>;
> > +	status =3D "okay";
> > +
> > +	can_adc: ads1015@49 {
>=20
> Do we need the phandle here? Also node name is not generic and the
> phandle is a bit odd can_adc listed under an i2c-node?

removed and renamed

> > +		compatible =3D "ti,ads1015";
> > +		reg =3D <0x49>;
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +
> > +		channel@4 {
> > +			reg =3D <4>;
> > +			ti,gain =3D <3>;
> > +			ti,datarate =3D <3>;
> > +		};
> > +
> > +		channel@5 {
> > +			reg =3D <5>;
> > +			ti,gain =3D <3>;
> > +			ti,datarate =3D <3>;
> > +		};
> > +
> > +		channel@6 {
> > +			reg =3D <6>;
> > +			ti,gain =3D <3>;
> > +			ti,datarate =3D <3>;
> > +		};
> > +
> > +		channel@7 {
> > +			reg =3D <7>;
> > +			ti,gain =3D <3>;
> > +			ti,datarate =3D <3>;
> > +		};
> > +	};
> > +
> > +	tmp103: tmp103@70 {
> > +		compatible =3D "ti,tmp103";
> > +		reg =3D <0x70>;
> > +	};
> > +};
> > +
> > +&iomuxc {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_hog>;
> > +
> > +	prti6q {
>=20
> Is this container needed.

removed

> > +		pinctrl_hog: hoggrp {
>=20
> Pls, don't use hoggrps..

removed

> > +			fsl,pins =3D <
> > +				/* SGTL5000 sys_mclk */
> > +				MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> > +				MX6QDL_PAD_EIM_A24__GPIO5_IO04		0x100b0
> > +				MX6QDL_PAD_EIM_WAIT__GPIO5_IO00		0x100b0
> > +				MX6QDL_PAD_EIM_LBA__GPIO2_IO27		0x1b0b0
> > +				MX6QDL_PAD_EIM_EB0__GPIO2_IO28		0x1b0b0
> > +				MX6QDL_PAD_EIM_EB1__GPIO2_IO29		0x1b0b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_audmux: audmuxgrp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> > +				MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> > +				MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> > +				MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_ecspi1: ecspi1grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> > +				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> > +				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> > +				/* CS */
> > +				MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_ecspi2: ecspi2grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> > +				MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> > +				MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> > +				/* CS */
> > +				MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> > +				/* CAN3_nINT */
> > +				MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c1: i2c1grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA	0x4001f8b1
> > +				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL	0x4001f8b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_i2c3: i2c3grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_GPIO_5__I2C3_SCL	0x4001b8b1
> > +				MX6QDL_PAD_GPIO_6__I2C3_SDA	0x4001b8b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart2: uart2grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
> > +				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
> > +				MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
> > +				MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart4: uart4grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
> > +				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_uart5: uart5grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
> > +				MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc1: usdhc1grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
> > +				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
> > +				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
> > +				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
> > +				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
> > +				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
> > +				MX6QDL_PAD_GPIO_1__SD1_CD_B		0x1b0b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc2: usdhc2grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> > +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> > +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> > +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> > +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> > +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> > +			>;
> > +		};
> > +
> > +		pinctrl_usdhc3: usdhc3grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
> > +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
> > +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
> > +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
> > +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
> > +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
> > +				MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
> > +				MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
> > +				MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
> > +				MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
> > +			>;
> > +		};
> > +
> > +		pinctrl_can1: can1grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX 0x80000000
> > +				MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX 0x80000000
> > +			>;
> > +		};
> > +
> > +		pinctrl_can2: can2grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
> > +				MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
> > +			>;
> > +		};
> > +
> > +		pinctrl_pwm1: pwm1grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_backlight: backlightgrp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0
> > +			>;
> > +		};
> > +
> > +		pinctrl_ipu1_csi0: ipu1csi0grp {
> > +			fsl,pins =3D <
> > +				MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
> > +				MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
> > +				MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
> > +			>;
> > +		};
> > +	};
> > +};
> > +
> > +&pcie {
> > +	status =3D "okay";
> > +};
> > +
> > +&pwm1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_pwm1>;
> > +	status =3D "okay";
> > +};
> > +
> > +&ssi1 {
> > +	#sound-dai-cells =3D <0>;
> > +	fsl,mode =3D "i2s-slave";
> > +	status =3D "okay";
> > +};
> > +
> > +&uart2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_uart2>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart4 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_uart4>;
> > +	status =3D "okay";
> > +};
> > +
> > +&uart5 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_uart5>;
> > +	status =3D "okay";
> > +};
> > +
> > +&usbh1 {
> > +	vbus-supply =3D <&reg_usb_h1_vbus>;
> > +	phy_type =3D "utmi";
> > +	dr_mode =3D "host";
> > +	status =3D "okay";
> > +};
> > +
> > +&usbotg {
> > +	vbus-supply =3D <&reg_usb_otg_vbus>;
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usbotg>;
> > +	phy_type =3D "utmi";
> > +	dr_mode =3D "host";
> > +	disable-over-current;
> > +	status =3D "okay";
> > +};
> > +
> > +&usdhc1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usdhc1>;
> > +	cd-gpios =3D <&gpio1 1 GPIO_ACTIVE_LOW>;
> > +	status =3D "okay";
> > +};
> > +
> > +&usdhc2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> > +	non-removable;
> > +	status =3D "okay";
> > +};
> > +
> > +&usdhc3 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_usdhc3>;
> > +	bus-width =3D <8>;
> > +	non-removable;
> > +	status =3D "okay";
> > +
> > +	partitions {
> > +		compatible =3D "fixed-partitions";
> > +		#size-cells =3D <1>;
> > +		#address-cells =3D <1>;
> > +
> > +		bootstate_backend: bootstate_backend@f0000 {
> > +			reg =3D <0xf0000 0x10000>;
> > +			label =3D "bootstate";
> > +		};
> > +	};
> > +};
> > +
> > +&can1 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_can1>;
> > +	status =3D "okay";
> > +};
> > +
> > +&can2 {
> > +	pinctrl-names =3D "default";
> > +	pinctrl-0 =3D <&pinctrl_can2>;
> > +	status =3D "okay";
> > +};
>=20
> Regards,
>   Marco
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--hda2czln2jcxpm3d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl555jAACgkQ4omh9DUa
UbMScA//cm7zCAVQUswNYIwXHthCqM0IwKsZEeNg4vGcWgozhgj1fP1PV2LE5vwM
X/chMIZ+3m3oX/yDpDWgAyCYBNGgzR1DkhnuMKViVb27u4n8w4zz6bAYWpWBRYbV
qOvz4b5pjopTBaSfYa/7wXNbRpXRU/I0ReWX/ZbkWcxNmeb1Gn3utm4vcIkXYTK3
YLGPlEphtJ+Vh5Zx8J+z9XTLzG/jn7FxgsVU4x6pl7v3maVPUG6x6D4MZ7c88NG8
rkTswWQeA4/V6GG3qQ9APy1x4xn13LMG6d/9QyDv/sBcbThsxErHSYeSLS75rRmc
iyZpR2jhy/0zMVgfm5UbrC969esYgba1wSK5FKykXnfqLOIqlSeBePOeRGWy4qLM
+Z5Ykf9f9Fnu7lJuDBMO//X2TMb3I/5GPVuVUotPfeAKg6PTEdKsLjVIcbuUGOiu
pElinlnPVJmdNWkKUqS00IW4yW3Ie+aUOf5XOpEUJ4yIi+nb2lWIuGrata71x7CC
R+9HtPVGUFCntlE6W7pSq38ac33VzZbNk7UVel3g+YFdpiGNCsSE0Sc3stmpU9GL
/DiKw5+aQxbt6u6iuRUePXl5rNXwc97Yd60wFGqO1wRrNdL/+Xy2XZDYqeCU25Sd
trYm1cx2n5S5C7gowyjWY7ed4TKt7kwmSIkesSzxoMt42PqTpHw=
=bBrU
-----END PGP SIGNATURE-----

--hda2czln2jcxpm3d--


--===============7599403559549465822==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7599403559549465822==--

