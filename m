Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C117F1FB41B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSTG++LQPaWRzIxmlwo54xbmyrYFmBz187eFujqSvBY=; b=cvJw3wTKSw+7DH
	eQwMbjTJRqOg9epBxmJ1R3nPWsNMeBwOHNJn14Do0WIG+TYxuIU/8zoAzVn3VdqrQSLhlVQdVu8FI
	1m2yqj3kz+0cpBrFqAvZtTDKEApRN08FOZBi8TL25tuulsKYK3EGWJz+QlGzaDLlmdffY3Woliurf
	iluSElfLHK/EZlpb3VZCrlpBwZg6CSoKBr8R1YDmLw4bZxC1FvsE0twKzPCA5xSvkNOYoYL4fKZ9g
	IvcOjn09PNxczLjHbeTlvefVmu+xkGy+g4d7XDIRSegLvZOyiXMOQ19z9lM/GWdOY1vzD4cmmxlWQ
	VQuwsVPHenOKITj9dIfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCSx-0002pd-5U; Tue, 16 Jun 2020 14:21:31 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC8q-0002Kp-I9
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592316044; x=1623852044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xXlRuWDsgHzsC/cK9WaU+YzlpcD2wIPLoPF5OvjRa5Y=;
 b=bV4oyi9fHbm3LM8UkZ2NJEC2NeGJplRoMApwHhHYe724gFSXTNq94isy
 dvfBkBifuBDSjMSCMY8tSHVJzesp95QbrfFnpN/ccGRQKPJncfLSD7kRC
 sGErqdQgZmZj9lffLw9CDUuhiscdwYhvkfq+bFTf9e7zZtyrkvdtKNlA0
 aOSHq1fTvY5W1E7/h8Ga0FZbs4WswDzym0qGUh+6BUKL89A7sm4MOl+ex
 zv0p7gu3XyVr57iTp7MOPQnbagf6AYTQMvWGD/h1ba90xEL8D4IgftTA8
 w//qph009oOHYDFlGGpOAO5RyVp2ThTnpkl5ygGUBdyzv5WNuNqYavS6G Q==;
IronPort-SDR: uY6g/8+zHQx2OtaDYvTdpzDMcDYqcyFmfGRLTYLmbrghuptB1K/p3lOIexnQ7kgGtHeK7o+YVm
 IpT05gLi4DDdBvo1e285JX5oOauyxpYE59u2E7mLXGVHZgz+dgB8UvSSAaCWlub+TLP8neAuWY
 auOxweCzt+zq33PkKGYJa4dm8mjoD04WSKaW96jAcRIBriLr4kFqav5LKx5CwCOwPcS8GIAgkG
 PHVLdmG5fL61DrZ+o2F+9GVmmKYM/JpV+FeNwV/QtkH/kzK162fGhxtbO/AAhKL3cINj8aocx5
 rpU=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="15973195"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 07:00:40 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 07:00:40 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 07:00:34 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH v3 3/3] arm64: dts: sparx5: Add Sparx5 eMMC support
Date: Tue, 16 Jun 2020 16:00:27 +0200
Message-ID: <20200616140027.4949-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616140027.4949-1-lars.povlsen@microchip.com>
References: <20200616140027.4949-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070044_939793_64736F40 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds eMMC support to the applicable Sparx5 board configuration
files.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 24 +++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      | 23 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts | 23 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts | 23 ++++++++++++++++++
 4 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 84bca999420ef..c9dbd1a8b22b6 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/microchip,sparx5.h>
 
 / {
 	compatible = "microchip,sparx5";
@@ -162,6 +163,20 @@ timer1: timer@600105000 {
 			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		sdhci0: sdhci@600800000 {
+			compatible = "microchip,dw-sparx5-sdhci";
+			status = "disabled";
+			reg = <0x6 0x00800000 0x1000>;
+			pinctrl-0 = <&emmc_pins>;
+			pinctrl-names = "default";
+			clocks = <&clks CLK_ID_AUX1>;
+			clock-names = "core";
+			assigned-clocks = <&clks CLK_ID_AUX1>;
+			assigned-clock-rates = <800000000>;
+			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+			bus-width = <8>;
+		};
+
 		gpio: pinctrl@6110101e0 {
 			compatible = "microchip,sparx5-pinctrl";
 			reg = <0x6 0x110101e0 0x90>, <0x6 0x10508010 0x100>;
@@ -191,6 +206,15 @@ i2c2_pins: i2c2-pins {
 				pins = "GPIO_28", "GPIO_29";
 				function = "twi2";
 			};
+
+			emmc_pins: emmc-pins {
+				pins = "GPIO_34", "GPIO_35", "GPIO_36",
+					"GPIO_37", "GPIO_38", "GPIO_39",
+					"GPIO_40", "GPIO_41", "GPIO_42",
+					"GPIO_43", "GPIO_44", "GPIO_45",
+					"GPIO_46", "GPIO_47";
+				function = "emmc";
+			};
 		};
 
 		i2c0: i2c@600101000 {
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
index 91ee5b6cfc37a..573309fe45823 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb125.dts
@@ -16,6 +16,29 @@ memory@0 {
 	};
 };
 
+&gpio {
+	emmc_pins: emmc-pins {
+		/* NB: No "GPIO_35", "GPIO_36", "GPIO_37"
+		 * (N/A: CARD_nDETECT, CARD_WP, CARD_LED)
+		 */
+		pins = "GPIO_34", "GPIO_38", "GPIO_39",
+			"GPIO_40", "GPIO_41", "GPIO_42",
+			"GPIO_43", "GPIO_44", "GPIO_45",
+			"GPIO_46", "GPIO_47";
+		drive-strength = <3>;
+		function = "emmc";
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+	bus-width = <8>;
+	non-removable;
+	pinctrl-0 = <&emmc_pins>;
+	max-frequency = <8000000>;
+	microchip,clock-delay = <10>;
+};
+
 &i2c1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
index 10081a66961bb..bbb9852c1f151 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb134_emmc.dts
@@ -15,3 +15,26 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	emmc_pins: emmc-pins {
+		/* NB: No "GPIO_35", "GPIO_36", "GPIO_37"
+		 * (N/A: CARD_nDETECT, CARD_WP, CARD_LED)
+		 */
+		pins = "GPIO_34", "GPIO_38", "GPIO_39",
+			"GPIO_40", "GPIO_41", "GPIO_42",
+			"GPIO_43", "GPIO_44", "GPIO_45",
+			"GPIO_46", "GPIO_47";
+		drive-strength = <3>;
+		function = "emmc";
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>;
+	non-removable;
+	max-frequency = <52000000>;
+	bus-width = <8>;
+	microchip,clock-delay = <10>;
+};
diff --git a/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts b/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
index 741f0e12260e5..f82266fe2ad49 100644
--- a/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
+++ b/arch/arm64/boot/dts/microchip/sparx5_pcb135_emmc.dts
@@ -15,3 +15,26 @@ memory@0 {
 		reg = <0x00000000 0x00000000 0x10000000>;
 	};
 };
+
+&gpio {
+	emmc_pins: emmc-pins {
+		/* NB: No "GPIO_35", "GPIO_36", "GPIO_37"
+		 * (N/A: CARD_nDETECT, CARD_WP, CARD_LED)
+		 */
+		pins = "GPIO_34", "GPIO_38", "GPIO_39",
+			"GPIO_40", "GPIO_41", "GPIO_42",
+			"GPIO_43", "GPIO_44", "GPIO_45",
+			"GPIO_46", "GPIO_47";
+		drive-strength = <3>;
+		function = "emmc";
+	};
+};
+
+&sdhci0 {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>;
+	non-removable;
+	max-frequency = <52000000>;
+	bus-width = <8>;
+	microchip,clock-delay = <10>;
+};
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
