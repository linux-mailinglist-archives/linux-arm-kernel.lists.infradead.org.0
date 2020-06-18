Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB8C1FF478
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSTG++LQPaWRzIxmlwo54xbmyrYFmBz187eFujqSvBY=; b=QdXuhMp/cMJPl8
	/OiSz8TzXIZvuO3jVi5aUXDtTqGBIKYWQTvgEFrz0YHC1h/DRX1RYmBX02y1PEAmDjZhPi+8WuEDY
	SrqoMnNQjbgYzg6CotiM6V1JQX7TYNWteOYlu7ipCnhfPiry2HjoqwpjxETJn5LZ+W57KvBhTsM8x
	IWkiuGLioZ3UFn8eCd8n29LKzX2p44pU4wUKBm+lpTEyo0fexnxJs/n9MTvVbWN5JziVVTkZueS9E
	0rNsCFQBxl1Syq3Zsu4rwYE9kKE+yl/lYBzdxp2o9aAANdFtLoLS3kVnfTXLfliCF1YE0MC/1wpK8
	VE6fRH8lToZapT3Wx2XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlvJf-0008Ea-Ez; Thu, 18 Jun 2020 14:14:55 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlvIn-0007Xp-1f
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592489640; x=1624025640;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xXlRuWDsgHzsC/cK9WaU+YzlpcD2wIPLoPF5OvjRa5Y=;
 b=eeLzJOe09Qz4Y+cBG6qxXPhDXnGtZDkSg+zDSVpGCzdC1NePZGoHKi6n
 m1fPySNuB/IgkFJT2UhCxL/CEtZ+FqZTqd8CUjkduZh7dC9cIc+h40z9p
 GalekisjQYXibDrs5il4p50fojof5UGHAMDgzFTRhLPvXoBqcdn7zJ4uw
 gDXnmpnAKC/vy1nGYfe6wPhKsTxUZmzKABxpe2VqB6zzQy3A36ngEEpvs
 qGulrVr5Ar8u9vriWB6xBJVriMi4UJGQpVI4EMtSd2RChoWIEUsW+O09G
 WCNc4QbQ3KJn6CuOnKjJxCjwNLIUAZDf2lsQFGEcDeIDp4t0CHwvw+q+X Q==;
IronPort-SDR: 35EFXpDv5rWakdQUkUCRxWM0ZzuOx/gfmCp8J5dvbSiaJVvcaUDiePTZzz7EKzfJh3P3+l7+1c
 08B/l+nSGHojSCwVCtPwoBAY6U6kkdEdGJvAPpj1rgjsLmOlwbNGxRd1IFWOrn/Wg9sb15YQ1K
 Lo6j14ILgBTdNeAmoivvQ0MDuhUhTpvrQvCT53gwGPLF5cpIcMCGeHWCCx6zhLk1KVMuCpd4jM
 /aU+1QMhH1ZXjAsfP0IO5+a781yk7yQNpX+z16el6OUcvI051iKWaYKhpeF1thtvFvIXnLoXRO
 xL0=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="78953903"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 07:14:00 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 07:13:53 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 07:13:51 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>
Subject: [PATCH v4 3/3] arm64: dts: sparx5: Add Sparx5 eMMC support
Date: Thu, 18 Jun 2020 16:13:26 +0200
Message-ID: <20200618141326.25723-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618141326.25723-1-lars.povlsen@microchip.com>
References: <20200618141326.25723-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_071401_200646_0A3304E9 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
