Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9A61D16F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyepw3q5k9j2nzedtNj+4cdnxnePhsYr57Rju37ZXLQ=; b=Zpc7FRBHisHgf9
	A9QGrRqgIAubLcw88F2H61h6RLG1zsoJUfHPpJNVpPP5yNAWuZyv95hQy88YOHmjeMB0yucfIxUlj
	KHwJzNnf+aAFjrNajPQAyfTzneAItyMa6mr5EvxW8ZIq+7U47K5sw6rtn0LXTL3OBK0eWsbeF5Nt9
	m4Is7m5njU94FqcI5mI2rZkbJ0JGdVdqGQKCRSG1zoOsNmEm4vpjgpeVfFtp9//LvMy9YDAZ0d2Rk
	XJSUZG6VFq1K/WlFJddAOgtaQcMRJB+2xAaIeFiY3plfv8/VTJJxbQpnF00IreBSmLkbr9RFe3K96
	rezhyQea5A/zYkKqJjvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrzg-0000nG-7V; Wed, 13 May 2020 14:04:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwX-0006qs-Jj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378465; x=1620914465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qbdBED/Z1XBg7VaaZopGpjjuifZRtcbEWF/Y+VJziDk=;
 b=b5pLGcc1qujrwxlC55PvCaWRuL5zswhhiBAf+L+dHdxqIhZKuepIQQon
 ghd7B6UTHM3zBCqLt69uaWcWg1/2R+A4dFeaJdzjP5YlEb7o4DM/DRRjE
 IxTQIAqf2evYaTDvD5CP0AEktWWKtTMTLhYoroXlGOry8mUEUx2BdICpG
 6/hnm/JUWM4sx8iDVpl+nTKV8/kMNue1nUYlJZ4epDbdnJfVDVoF9l48n
 21bt1j08xhQG5Hw1ORmsIFWe3/PP1GqY70PiDH+kDbX4hrqSX/Fx9njyT
 Ju+Jm5WpkVJF0BBVEYQlAG70bjcPLjUnlm/bXk6cI6/FLE9T+FOfaPYk7 g==;
IronPort-SDR: rBaFInmH5yPjnLhHZPsGcVpQf3K3KQUwci3AexoHvTqPZS4NkY7U3sK6ytEIGM7w75OuAT4Eqy
 ZSK1oGXC27mpC5lAw4/hIHehQtrDENUuytYqxhmjhWcX1vRlwnXc1K3YuylCJrBEa6YkV8ifF3
 1mEm1G3X3EDAbC+Xn3Tk3u0smVYs2gxFQ2TwPpDwUjgzNgOP6b929wHjQC46PQ92BHNMBTJl+B
 AFoxVP/K+qGNjfQXqM+ukVULGETaj9Kc55CGQ9+ZkFNEk9bt6ggf9BXZQHrX2kZwNom+nLE31k
 dog=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="73314086"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:01:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:01:04 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:01:02 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>
Subject: [PATCH 10/10] arm64: dts: sparx5: Add spi-nand devices
Date: Wed, 13 May 2020 16:00:31 +0200
Message-ID: <20200513140031.25633-11-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070105_749395_C633BFE3 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add spi-nand DT nodes to the applicable Sparx5 boards.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 20 ++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      |  7 ++++++
 .../boot/dts/microchip/sparx5_pcb134.dts      | 22 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb135.dts      | 23 +++++++++++++++++++
 4 files changed, 72 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 330fd8b096d4c..60629861a5157 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -193,6 +193,26 @@ gpio: pinctrl@6110101e0 {
 			interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 			#interrupt-cells = <2>;

+			cs1_pins: cs1-pins {
+				pins = "GPIO_16";
+				function = "si";
+			};
+
+			cs2_pins: cs2-pins {
+				pins = "GPIO_17";
+				function = "si";
+			};
+
+			cs3_pins: cs3-pins {
+				pins = "GPIO_18";
+				function = "si";
+			};
+
+			si2_pins: si2-pins {
+				pins = "GPIO_39", "GPIO_40", "GPIO_41";
+				function = "si2";
+			};
+
 			uart_pins: uart-pins {
 				pins = "GPIO_10", "GPIO_11";
 				function = "uart";
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index d8b5d23abfab0..94c4c3fd5a786 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -46,6 +46,13 @@ spi-flash@0 {
 		spi-max-frequency = <8000000>; /* input clock */
 		reg = <0>; /* CS0 */
 	};
+	spi-flash@1 {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs1_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <8000000>;
+		reg = <1>; /* CS1 */
+	};
 };

 &i2c1 {
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
index feee4e99ff57c..9e8dc725a954a 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134.dts
@@ -15,3 +15,25 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	cs14_pins: cs14-pins {
+		pins = "GPIO_44";
+		function = "si";
+	};
+};
+
+&spi0 {
+	pinctrl-0 = <&si2_pins>;
+	pinctrl-names = "default";
+	interface-mapping-mask = <0x4000>;	/* NAND CS14 = SPI2 */
+	spi-rx-delay-us = <500>;		/* Tune for speed */
+	/* Dedicated SPI2 interface */
+	spi-flash@e {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs14_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <42000000>;
+		reg = <14>;
+	};
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
index 20e409a9be196..a31e10911dbaf 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135.dts
@@ -15,3 +15,26 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	cs14_pins: cs14-pins {
+		pins = "GPIO_44";
+		function = "si";
+	};
+};
+
+&spi0 {
+	status = "okay";
+	pinctrl-0 = <&si2_pins>;
+	pinctrl-names = "default";
+	interface-mapping-mask = <0x4000>;	/* NAND CS14 = SPI2 */
+	spi-rx-delay-us = <500>;		/* Tune for speed */
+	/* Dedicated SPI2 interface */
+	spi-flash@e {
+		compatible = "spi-nand";
+		pinctrl-0 = <&cs14_pins>;
+		pinctrl-names = "default";
+		spi-max-frequency = <42000000>;
+		reg = <14>;
+	};
+};
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
