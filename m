Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A516380AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 00:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XmnoKXpDNoVITl3JZXUSp4Cy+5aRyR12Y2VjQmy6wAw=; b=Cbm
	FPi3LxhPBAoRGR//rOzBT7oT1zWD0HX/DtAc48RH2aZU/CDMQi0DQL/rHFmC1kuspMnqWCfjF6ecz
	9oDBLjnMmnoH/Q+3WQdCc30EMfGxqc2J8aDcWQsdCDy/L6Hu7s+Soe3H2tGMCxGmdbOxrUNQJbyBe
	6JqOn6j4cO0TvY8PmBI8JetwjaaEferTKNHvYC3Q4AKblhdBxAw659EE1CBq3xwJUYS8t1tOm0CKZ
	Jjw8fs0COIk2xtbWiypVu0WOrQW7MRJ+SBiOp3c5TOB4XqwQ7vV4uxV82u0Ec1xEP4ll7wa/Y4z8R
	28euAZoO2d6rxjyZ2nloa15hru7XqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hZ0sT-0001Dq-8A; Thu, 06 Jun 2019 22:28:57 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hZ0ru-0001CZ-LV
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 22:28:31 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so190776wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 15:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=K8LRZAGyxTA91e565NC0WdxUL44tT7JJZTxvCh2Q5n0=;
 b=AhtcL6cP7rZU1yX2Iu9vJzeoGJ0Bnz7Hl/floUOmKa4mZYwItJz8fNrF6Lbc1LB0fp
 XY2xFcADNY2grLi+jPcrkgawo9jn1qz0FT/Rrx0r/48eRjvUUT7HCSzcZqd9NjNOAgKb
 yfxFMAP0D9dhfRSmis03kKBUEwaL27NmtfHe6FoSxYedpmN2M4x/QzTDniI+ESEA8aXi
 Rh/X6EyJJ0OarAYkJzf4t4k9RKjQaxvD3kk+sBMN5OBZBenMJ7zscvopNCMtORWprxdj
 t7275r0jPEfhxV5JwohNn8pmb8hhTEI+k9Oc8FY/bqh2dVGkvA97qs3mvJFc/tXjTTg+
 XeLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=K8LRZAGyxTA91e565NC0WdxUL44tT7JJZTxvCh2Q5n0=;
 b=uHeSAsGnkBinfcepbWqn49dd05VfT0Vn1g9CGvuEfPffCpXx35BT7RTyZXlNHVd6mt
 IxWWSXmqF2eO2bBpC43MSxX1BJmcl9vWLPtgxxfvtWqOqpHETiJTFoKjsQ2Ipk1yVo/u
 /NIP1zs3K6AXdwnPkYpxKIT4T4PD1GECNPL+LMiU4QFrg3IEHvFY2RJQBNm0MoZExaQ2
 LhYMFdfLk0vjRgmW3xpWiSMvN0qZtOytLbG3DjhgSIfYSNm2trhfYJTIvKUr2pwiRKZ0
 mT7+6VYBXUTDqDCuxeFLKleYNdwUD4PBdxR/3gaAKE3cfKn++Irs0YAADWT8pwTCO1cJ
 TJeg==
X-Gm-Message-State: APjAAAXOiPOm8atFpcIBFFtDow469YSML9bTj9I2ZAcmKWwO3D5nEz4q
 lF0zYdhkK4Wv6vRiEDmpF2Y=
X-Google-Smtp-Source: APXvYqyvuY1RelhcBhUggjE4fxrjJ4yul8towhNZkJtNFNc5/o2oigiFGX39aGq/51KA5rgSgLsrBw==
X-Received: by 2002:adf:f50c:: with SMTP id q12mr4506022wro.300.1559860100607; 
 Thu, 06 Jun 2019 15:28:20 -0700 (PDT)
Received: from localhost.localdomain (5-12-124-26.residential.rdsnet.ro.
 [5.12.124.26])
 by smtp.gmail.com with ESMTPSA id v184sm220527wme.10.2019.06.06.15.28.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 15:28:20 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v4] ARM: dts: Introduce the NXP LS1021A-TSN board
Date: Fri,  7 Jun 2019 01:28:17 +0300
Message-Id: <20190606222817.14223-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_152823_220078_8F55938C 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LS1021A-TSN is a development board built by VVDN/Argonboards in
partnership with NXP.

It features the LS1021A SoC and the first-generation SJA1105T Ethernet
switch for prototyping implementations of a subset of IEEE 802.1 TSN
standards.

It has two regular Ethernet ports and four switched, TSN-capable ports.

It also features:
- One Arduino header
- One expansion header
- Two USB 3.0 ports
- One mini PCIe slot
- One SATA interface
- Accelerometer, gyroscope, temperature sensors

Signed-off-by: Vladimir Oltean <olteanv@gmail.com>
---
Changes from v3:
- Not all nodes were alphabetically sorted ("d->i->e" vs "d->e->i")

Changes from v2:
- Sorted nodes alphabetically
- Renamed SAI2 codec node into audio-codec

v2 patch available at:
https://lkml.org/lkml/2019/5/29/998

Changes from v1:
- Applied Shawn's feedback
- Introduced QSPI flash node

v1 patch available at:
https://patchwork.kernel.org/patch/10930451/

 arch/arm/boot/dts/Makefile        |   1 +
 arch/arm/boot/dts/ls1021a-tsn.dts | 289 ++++++++++++++++++++++++++++++
 2 files changed, 290 insertions(+)
 create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dab2914fa293..a4eb4ca5e148 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -602,6 +602,7 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
 dtb-$(CONFIG_SOC_LS1021A) += \
 	ls1021a-moxa-uc-8410a.dtb \
 	ls1021a-qds.dtb \
+	ls1021a-tsn.dtb \
 	ls1021a-twr.dtb
 dtb-$(CONFIG_SOC_VF610) += \
 	vf500-colibri-eval-v3.dtb \
diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
new file mode 100644
index 000000000000..5b7689094b70
--- /dev/null
+++ b/arch/arm/boot/dts/ls1021a-tsn.dts
@@ -0,0 +1,289 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright 2016-2018 NXP Semiconductors
+ * Copyright 2019 Vladimir Oltean <olteanv@gmail.com>
+ */
+
+/dts-v1/;
+#include "ls1021a.dtsi"
+
+/ {
+	model = "NXP LS1021A-TSN Board";
+
+	sys_mclk: clock-mclk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24576000>;
+	};
+
+	reg_vdda_codec: regulator-3V3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3P3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	reg_vddio_codec: regulator-2V5 {
+		compatible = "regulator-fixed";
+		regulator-name = "2P5V";
+		regulator-min-microvolt = <2500000>;
+		regulator-max-microvolt = <2500000>;
+		regulator-always-on;
+	};
+};
+
+&dspi0 {
+	bus-num = <0>;
+	status = "okay";
+
+	/* ADG704BRMZ 1:4 SPI mux/demux */
+	sja1105: ethernet-switch@1 {
+		reg = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "nxp,sja1105t";
+		/* 12 MHz */
+		spi-max-frequency = <12000000>;
+		/* Sample data on trailing clock edge */
+		spi-cpha;
+		/* SPI controller settings for SJA1105 timing requirements */
+		fsl,spi-cs-sck-delay = <1000>;
+		fsl,spi-sck-cs-delay = <1000>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				/* ETH5 written on chassis */
+				label = "swp5";
+				phy-handle = <&rgmii_phy6>;
+				phy-mode = "rgmii-id";
+				reg = <0>;
+			};
+
+			port@1 {
+				/* ETH2 written on chassis */
+				label = "swp2";
+				phy-handle = <&rgmii_phy3>;
+				phy-mode = "rgmii-id";
+				reg = <1>;
+			};
+
+			port@2 {
+				/* ETH3 written on chassis */
+				label = "swp3";
+				phy-handle = <&rgmii_phy4>;
+				phy-mode = "rgmii-id";
+				reg = <2>;
+			};
+
+			port@3 {
+				/* ETH4 written on chassis */
+				label = "swp4";
+				phy-handle = <&rgmii_phy5>;
+				phy-mode = "rgmii-id";
+				reg = <3>;
+			};
+
+			port@4 {
+				/* Internal port connected to eth2 */
+				ethernet = <&enet2>;
+				phy-mode = "rgmii";
+				reg = <4>;
+
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&enet0 {
+	tbi-handle = <&tbi0>;
+	phy-handle = <&sgmii_phy2>;
+	phy-mode = "sgmii";
+	status = "okay";
+};
+
+&enet1 {
+	tbi-handle = <&tbi1>;
+	phy-handle = <&sgmii_phy1>;
+	phy-mode = "sgmii";
+	status = "okay";
+};
+
+/* RGMII delays added via PCB traces */
+&enet2 {
+	phy-mode = "rgmii";
+	status = "okay";
+
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&esdhc {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	/* 3 axis accelerometer */
+	accelerometer@1e {
+		compatible = "fsl,fxls8471";
+		position = <0>;
+		reg = <0x1e>;
+	};
+
+	/* Audio codec (SAI2) */
+	audio-codec@2a {
+		compatible = "fsl,sgtl5000";
+		VDDIO-supply = <&reg_vddio_codec>;
+		VDDA-supply = <&reg_vdda_codec>;
+		#sound-dai-cells = <0>;
+		clocks = <&sys_mclk>;
+		reg = <0x2a>;
+	};
+
+	/* Current sensing circuit for 1V VDDCORE PMIC rail */
+	current-sensor@44 {
+		compatible = "ti,ina220";
+		shunt-resistor = <1000>;
+		reg = <0x44>;
+	};
+
+	/* Current sensing circuit for 12V VCC rail */
+	current-sensor@45 {
+		compatible = "ti,ina220";
+		shunt-resistor = <1000>;
+		reg = <0x45>;
+	};
+
+	/* Thermal monitor - case */
+	temperature-sensor@48 {
+		compatible = "national,lm75";
+		reg = <0x48>;
+	};
+
+	/* Thermal monitor - chip */
+	temperature-sensor@4c {
+		compatible = "ti,tmp451";
+		reg = <0x4c>;
+	};
+
+	eeprom@51 {
+		compatible = "atmel,24c32";
+		reg = <0x51>;
+	};
+
+	/* Unsupported devices:
+	 * - FXAS21002C Gyroscope at 0x20
+	 * - TI ADS7924 4-channel ADC at 0x49
+	 */
+};
+
+&ifc {
+	status = "disabled";
+};
+
+&lpuart0 {
+	status = "okay";
+};
+
+&lpuart3 {
+	status = "okay";
+};
+
+&mdio0 {
+	/* AR8031 */
+	sgmii_phy1: ethernet-phy@1 {
+		reg = <0x1>;
+	};
+
+	/* AR8031 */
+	sgmii_phy2: ethernet-phy@2 {
+		reg = <0x2>;
+	};
+
+	/* BCM5464 quad PHY */
+	rgmii_phy3: ethernet-phy@3 {
+		reg = <0x3>;
+	};
+
+	rgmii_phy4: ethernet-phy@4 {
+		reg = <0x4>;
+	};
+
+	rgmii_phy5: ethernet-phy@5 {
+		reg = <0x5>;
+	};
+
+	rgmii_phy6: ethernet-phy@6 {
+		reg = <0x6>;
+	};
+
+	/* SGMII PCS for enet0 */
+	tbi0: tbi-phy@1f {
+		reg = <0x1f>;
+		device_type = "tbi-phy";
+	};
+};
+
+&mdio1 {
+	/* SGMII PCS for enet1 */
+	tbi1: tbi-phy@1f {
+		reg = <0x1f>;
+		device_type = "tbi-phy";
+	};
+};
+
+&qspi {
+	status = "okay";
+
+	flash@0 {
+		/* Rev. A uses 64MB flash, Rev. B & C use 32MB flash */
+		compatible = "jedec,spi-nor", "s25fl256s1", "s25fl512s";
+		spi-max-frequency = <20000000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "RCW";
+				reg = <0x0 0x40000>;
+			};
+
+			partition@40000 {
+				label = "U-Boot";
+				reg = <0x40000 0x300000>;
+			};
+
+			partition@340000 {
+				label = "U-Boot Env";
+				reg = <0x340000 0x100000>;
+			};
+		};
+	};
+};
+
+&sai2 {
+	status = "okay";
+};
+
+&sata {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
