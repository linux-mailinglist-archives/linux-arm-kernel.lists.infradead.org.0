Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7415E1434B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 03:08:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nOp+nDNyDirKmCLpcRjvwZt7CdLaAmtZB4jtd5Tzgc4=; b=ipA
	EA5g/796yTJ5X1X52dKGC7d92Eu/uudAUGJTrh1hrzfo+SYfITAl+A90wcLGIBneoKj29X7gUz2bN
	etEVUdfRdeRAdbgDzOQu7LmUIHNETcAsnJDlTR9cNW4UzdKEALJXwsrUm61V7pwN1ip/C4O8Ij0YS
	AxU7cNCgCnj6O47QaRVDoittiAgMXnAYhhbTaudL/TtLkjgyOWkNTHTxxCFOFoyxjWjrREBB8zINF
	YUJtZ6fcz/nIPmsrpaatL827Wc2FPEEdQQg0NAAJmgpRdvxP5t1jNuyvRiiCXO4eKwiO2qynp8Tn8
	Eb2HBwfvMyrrguIcH5gT9CffeIDGiuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNS7L-0004dI-Je; Mon, 06 May 2019 01:08:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNS7F-0004cn-Av
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 01:08:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id h4so15072612wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 18:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FKTE+cin9FPr9rrkGNck3/B4OfvJ0E5J1uTuf06jUr0=;
 b=MehMSNyzIm3kJejGtxa1wWUuqoTT5OAVQGn9fTLAIffKTMQLBF+NbfWEbor8EuslcC
 iKIUF7ahkSIa0y41I/OT2kD80+GkBhtk6K2pgRrn/MZ/yhlbHjxNzQ18tcsjL7FLesi3
 NIDBLxN3V1n3LbdkMPhK7bNofEyByqeo2kskg2ITd0exWD4zcfnmRcrbBjXzu8bT10mP
 iG/EoXIRB+GTn9xlUjGOpfoz6aiJ1cHN7cBONIbwtl9AtnYXG8hGJGAwd83FLyPV0Wfh
 zz0Zu1d6FOH09WUcPgP1PJCXTyXem9vReqgvI/WuWToBVwAvoaShiMej0L3KtAo8YXkX
 rNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FKTE+cin9FPr9rrkGNck3/B4OfvJ0E5J1uTuf06jUr0=;
 b=TCZzO9y+tNgLBbSiwJbrY5r149Y4bsf3mRDv1ddKYwMoWLV8ltB+wGSRoI3bKIrE9H
 t7ua4BanahAVNsGuG16nVJQEqNxoCJ2QDXd3Lxj/31otEQqHc53T8uFc86qdshKo909T
 vkDXYO671/05TOFw7NUcH+QubCtPouGFoRKkWlynFWBHg60AQy95peswAmb1KTG4reLI
 eAm50IZM5efXhLZoi9IebG20FOWZm6I5cX1EPWi2nxhSHmY90Wuuypo6i4MRruo6jz0C
 d3dVO1vpRtKy0sViv6tr9KvkgC81ECLtTVdxIJRex1SLUfYeG4GOu0imvIKcQwKY2dIi
 Xkqg==
X-Gm-Message-State: APjAAAWri6MxGArqCaiOVI2AKLn6OOiVoenAORW5PXbXspE1Mcr7mqdz
 p33r6WcC1ZNj9mu6RiNcmZ0=
X-Google-Smtp-Source: APXvYqzUAV/YDoSG4WtLzgy5WotRZ7dUv3Ed9/JUh+5zCDDk/CuWb3I8YDOI/iPHXky47Z359+REAg==
X-Received: by 2002:adf:f383:: with SMTP id m3mr2298118wro.164.1557104902871; 
 Sun, 05 May 2019 18:08:22 -0700 (PDT)
Received: from localhost.localdomain (5-12-225-227.residential.rdsnet.ro.
 [5.12.225.227])
 by smtp.gmail.com with ESMTPSA id z5sm20955384wre.70.2019.05.05.18.08.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 18:08:22 -0700 (PDT)
From: Vladimir Oltean <olteanv@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: Introduce the NXP LS1021A-TSN board
Date: Mon,  6 May 2019 04:08:00 +0300
Message-Id: <20190506010800.2433-1-olteanv@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_180825_404634_250D984F 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 arch/arm/boot/dts/Makefile        |   3 +-
 arch/arm/boot/dts/ls1021a-tsn.dts | 238 ++++++++++++++++++++++++++++++
 2 files changed, 240 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/ls1021a-tsn.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index f4f5aeaf3298..529f0150f6b4 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -593,7 +593,8 @@ dtb-$(CONFIG_SOC_IMX7ULP) += \
 dtb-$(CONFIG_SOC_LS1021A) += \
 	ls1021a-moxa-uc-8410a.dtb \
 	ls1021a-qds.dtb \
-	ls1021a-twr.dtb
+	ls1021a-twr.dtb \
+	ls1021a-tsn.dtb
 dtb-$(CONFIG_SOC_VF610) += \
 	vf500-colibri-eval-v3.dtb \
 	vf610-bk4.dtb \
diff --git a/arch/arm/boot/dts/ls1021a-tsn.dts b/arch/arm/boot/dts/ls1021a-tsn.dts
new file mode 100644
index 000000000000..5269486699bd
--- /dev/null
+++ b/arch/arm/boot/dts/ls1021a-tsn.dts
@@ -0,0 +1,238 @@
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
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_3p3v: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "3P3V";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+		reg_2p5v: regulator@1 {
+			compatible = "regulator-fixed";
+			reg = <1>;
+			regulator-name = "2P5V";
+			regulator-min-microvolt = <2500000>;
+			regulator-max-microvolt = <2500000>;
+			regulator-always-on;
+		};
+	};
+};
+
+&enet0 {
+	tbi-handle = <&tbi0>;
+	phy-handle = <&sgmii_phy2>;
+	phy-mode = "sgmii";
+	status = "ok";
+};
+
+&enet1 {
+	tbi-handle = <&tbi1>;
+	phy-handle = <&sgmii_phy1>;
+	phy-mode = "sgmii";
+	status = "ok";
+};
+
+/* RGMII delays added via PCB traces */
+&enet2 {
+	phy-mode = "rgmii";
+	status = "ok";
+	fixed-link {
+		speed = <1000>;
+		full-duplex;
+	};
+};
+
+&dspi0 {
+	bus-num = <0>;
+	status = "ok";
+
+	/* ADG704BRMZ 1:4 mux/demux */
+	tsn_switch: sja1105@1 {
+		reg = <0x1>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		compatible = "nxp,sja1105t";
+		/* 12 MHz */
+		spi-max-frequency = <12000000>;
+		/* Sample data on trailing clock edge */
+		spi-cpha;
+		fsl,spi-cs-sck-delay = <1000>;
+		fsl,spi-sck-cs-delay = <1000>;
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				/* ETH5 written on chassis */
+				label = "swp5";
+				phy-handle = <&rgmii_phy6>;
+				phy-mode = "rgmii-id";
+				reg = <0>;
+			};
+			port@1 {
+				/* ETH2 written on chassis */
+				label = "swp2";
+				phy-handle = <&rgmii_phy3>;
+				phy-mode = "rgmii-id";
+				reg = <1>;
+			};
+			port@2 {
+				/* ETH3 written on chassis */
+				label = "swp3";
+				phy-handle = <&rgmii_phy4>;
+				phy-mode = "rgmii-id";
+				reg = <2>;
+			};
+			port@3 {
+				/* ETH4 written on chassis */
+				phy-handle = <&rgmii_phy5>;
+				label = "swp4";
+				phy-mode = "rgmii-id";
+				reg = <3>;
+			};
+			port@4 {
+				/* Internal port connected to eth2 */
+				ethernet = <&enet2>;
+				phy-mode = "rgmii";
+				reg = <4>;
+				fixed-link {
+					speed = <1000>;
+					full-duplex;
+				};
+			};
+		};
+	};
+};
+
+&mdio0 {
+	/* AR8031 */
+	sgmii_phy1: ethernet-phy@1 {
+		reg = <0x1>;
+	};
+	/* AR8031 */
+	sgmii_phy2: ethernet-phy@2 {
+		reg = <0x2>;
+	};
+	/* BCM5464 */
+	rgmii_phy3: ethernet-phy@3 {
+		reg = <0x3>;
+	};
+	rgmii_phy4: ethernet-phy@4 {
+		reg = <0x4>;
+	};
+	rgmii_phy5: ethernet-phy@5 {
+		reg = <0x5>;
+	};
+	rgmii_phy6: ethernet-phy@6 {
+		reg = <0x6>;
+	};
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
+&i2c0 {
+	status = "ok";
+
+	/* 3 axis accelerometer */
+	accelerometer@1e {
+		compatible = "fsl,fxls8471";
+		reg = <0x1e>;
+		position = <0>;
+	};
+	/* Gyroscope is at 0x20 but not supported */
+	/* Audio codec (SAI2) */
+	codec@2a {
+		#sound-dai-cells = <0>;
+		compatible = "fsl,sgtl5000";
+		reg = <0x2a>;
+		VDDA-supply = <&reg_3p3v>;
+		VDDIO-supply = <&reg_2p5v>;
+		clocks = <&sys_mclk>;
+	};
+	/* Current sensing circuit for 1V VDDCORE PMIC rail */
+	current-sensor@44 {
+		compatible = "ti,ina220";
+		reg = <0x44>;
+		shunt-resistor = <1000>;
+	};
+	/* Current sensing circuit for 12V VCC rail */
+	current-sensor@45 {
+		compatible = "ti,ina220";
+		reg = <0x45>;
+		shunt-resistor = <1000>;
+	};
+	/* Thermal monitor - case */
+	temperature-sensor@48 {
+		compatible = "national,lm75";
+		reg = <0x48>;
+	};
+	/* Thermal monitor - chip */
+	temperature-sensor@4c {
+		compatible = "ti,tmp451";
+		reg = <0x4c>;
+	};
+	/* 4-channel ADC */
+	adc@49 {
+		compatible = "ad7924";
+		reg = <0x49>;
+	};
+};
+
+&ifc {
+	status = "disabled";
+};
+
+&esdhc {
+	status = "ok";
+};
+
+&uart0 {
+	status = "ok";
+};
+
+&lpuart0 {
+	status = "ok";
+};
+
+&lpuart3 {
+	status = "ok";
+};
+
+&sai2 {
+	status = "ok";
+};
+
+&sata {
+	status = "ok";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
