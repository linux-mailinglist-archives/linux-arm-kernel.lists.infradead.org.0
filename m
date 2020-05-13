Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 319E01D14FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pfUZdHLldLNWYudm8q0ES2GKP3dYjQeb90bdRlVz0bM=; b=ntQIgecKk9yVmL
	6FzEDfFw/xWXERdIO6Sse5qwk5xNazSse5CcuSF9GJB/m4itmwbwIJPIIfFYbEj7NRDj9yFPdE8kG
	HdekOocAzhXdKC45ja1uey/LMDprNZB/k82w2uKI1DB8Vf++hSXXxq1l70FnSnQm9iHXWnSjUEO6X
	WtTevyawiOFmTrnlBQ4tSadbcuPIRHYwqQOAZLcuQJgq0lZBDwgAn6WL7wpPiPSpqQmP/wnNfDso/
	7pz0zWuvaohwdaQqsZBx8pyb7UKmS+F5FPLR/F4R4fwrUk9zy/7kXJDCdQaK/GO5oUxvbe3Uoyqhf
	SL2ib3jeKV3HAMTX+wNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrVC-00011n-Nk; Wed, 13 May 2020 13:32:50 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrU9-0000JP-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:31:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589376706; x=1620912706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TCs5xQ14bvTR7/FIdlrnC54EzExnsRiTdR5p1t9z2r0=;
 b=EGO9TAK+Zcr6qllgic/YO9gNO9kOKsNazoHGcDbIwWhBi2mg8Ml3I8lJ
 VYXo+HF57wmS42FiVhx8CLODpmHR1GvHf4wbjzolgZY9Q2+ScvTVjJfbP
 qb0X9DfrWU0WpYZlHY42u/fFEJHhF4nvFHKtJIchQIf5VqF9ab9ESN5Fe
 bnRtbnJ8NvJ2Fdfb6tfk3BC+dx9NePJH9WfOKa9SYYnwDcCbKMIooFAD2
 OM0a1VqJGIlgzBZoxwfWo0b4jLER2d0DvY5GeuCJnu703+sJ3TYMNOqdX
 UZ7VAA/kFmSMfZYHanalzda/sWUadPgl9qV79i9KOHemLQS+H7IDoAoxf w==;
IronPort-SDR: BHbrpwrZHZL1tZv25WFNX/YakRXze4CAn171M37amxdxeMGb569HFFJv4+vzS5AJEXTx4yKU45
 8FDBBFy6bpxmLaW72f7yd3GAn7KtUP3RXzDv0kkVB6LurlauUcO8gLkM6suxyqMVSqeTKqpztY
 Y7oYTeVyerrcMQCgiqjHwfPADHKmYRjqKcAWkdQ2WVvCLyXWCxYawJdUTRi9JirPk+Q0frrr7U
 yz2iuL38l6KBeSAsAD57PV7fVs9VFxI0bkEm8UniDi4W2jAuA3uG9kg6Gm41XtJR3IJ4rLwVSH
 TD8=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75770681"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:31:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:31:43 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:31:40 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH 3/3] arm64: dts: sparx5: Add Sparx5 eMMC support
Date: Wed, 13 May 2020 15:31:22 +0200
Message-ID: <20200513133122.25121-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513133122.25121-1-lars.povlsen@microchip.com>
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063145_635681_5CAB70CD 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi     | 24 +++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb125.dts      | 23 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb134_emmc.dts | 23 ++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb135_emmc.dts | 23 ++++++++++++++++++
 4 files changed, 93 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 3e94ac9e7dd51..f09a49c41ce19 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -5,6 +5,7 @@

 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/microchip,sparx5.h>

 / {
 	compatible = "microchip,sparx5";
@@ -151,6 +152,20 @@ timer1: timer@600105000 {
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
@@ -180,6 +195,15 @@ i2c2_pins: i2c2-pins {
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
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
