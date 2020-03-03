Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE75176993
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 01:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AxJPTRmQr68OIn46zUyQqC92zU9KxkcHhDuhDMebWSg=; b=DXEv0rOc5XYR8N
	TGGPjPQfLJ6L7LFr7RYvS95nz/NKzHUZ7UvwHim+ucf54UlzhgW2/HLedQg7TEe87toN6KCoMnML5
	JF6K1M1jUYzbhhZ5GSsgbawgMNtyIshvwLDJV9PVMDSYnrT9CmIJiStx7gJNPAEyJ+Bc6yrsqhvkU
	VHGEjT50CR+B7BhH4Hj+Hri1j0ls6z7RRnjKjDmGwlrL31eQ16mZG8RI8wNDlaSeJXoGAWtyesVAM
	0my8UYSe/Xl6GqEn46OhgzUuQHNTV5F3ua9wYOv3cNZjvGBQtjizO+klkJmqxicXvAn8MJNAtJ/Pb
	ugNn1plGiqEjj7o4uAHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vnu-0004es-79; Tue, 03 Mar 2020 00:52:58 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vnn-0004eL-3Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 00:52:53 +0000
Received: by mail-qk1-x741.google.com with SMTP id m2so1771506qka.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 16:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=massaru-org.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75lSUcP13Pt67uPW1s5ODO496/f8/lFD2CsoSXYcCLI=;
 b=Dln004/JTr1kxSkJRcH6E3EU0PcjAxhEcCyciMe/Bdk7OD0fsR48DcclIQqOUVZYde
 o+J8G023NZdZN0PA4cSOBu/JX1Idx3qq2ch+MEKOITRfgRL7KUgZziUNJZ0p19+Os7MU
 0LjdnaqWOHzOCGh+7xEnculT8ZZasSzYRMn+5UAvwjIgmKbpF4Om9mPBM67yxi+9FYTA
 iZC/Dh0TEPgoiDU/Hv8zBolIzZtLrJ2sab6a742EuXi8RLzq6hq031vREAHr2RkmMk9+
 y+shsra1aybiF7Q7a4nWj+/sIzxWg5FwFFPZpoLJI1xK5Zkv1uwAoVKTxKnJmMBeQRsa
 LCLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=75lSUcP13Pt67uPW1s5ODO496/f8/lFD2CsoSXYcCLI=;
 b=NYHhBLrNBpupE/nLI3B6dM/HRT92WWGF2UddL4ijX6pSN39dzDvxcRojXmJrJh44wU
 uXauRftqTYVvoV8+buy5YagX8LXjkUS9vJEKFji6xkG3VA/ZmVtNDPVuW3vNqE3nldBc
 P1xIr4IGFmmGnNemzaQLLkN66xoH5p7c/p+DcBNf9MeimFcBHj7crnhkRdgYFihOUBTk
 Yffji8QciwhJNbIRrHgu803GG7qnZWWRr109YoV2RxQxy1J+JHkHBroxDfcvjE3Oz+SF
 6+npgVSj1Oum/Wdi3qKnL3eoDnRpal8feARNjqPIFUagX15D99R5PYF+tCGX/a1hQ24n
 +w9Q==
X-Gm-Message-State: ANhLgQ3x01yh3Swb6TO86Yp5akvZ7ucXzfKrIIHbG8+KAJk2FEEbRlyk
 WhN16N9r4VuWsgyp6c40WHlLQg==
X-Google-Smtp-Source: ADFU+vscbmNSlKj45OtmQ9oSeaDjGM9mGDrea541vRtHvMJ6q6G/36H7oCgoamUprRx6IQCBQa1Ndw==
X-Received: by 2002:a05:620a:3dc:: with SMTP id
 r28mr1892959qkm.373.1583196768868; 
 Mon, 02 Mar 2020 16:52:48 -0800 (PST)
Received: from bbking.lan ([2804:14c:4a5:36c::cd2])
 by smtp.gmail.com with ESMTPSA id 79sm11182037qkf.129.2020.03.02.16.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 16:52:48 -0800 (PST)
From: Vitor Massaru Iha <vitor@massaru.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal support
Date: Mon,  2 Mar 2020 21:52:44 -0300
Message-Id: <20200303005244.13893-1-vitor@massaru.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165251_201247_69AF5E97 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, lkcamp@lists.libreplanetbr.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, linux-imx@nxp.com,
 marco.franchi@nxp.com, festevam@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It was based on Google Source Code for Coral Edge TPU Mendel release:
https://coral.googlesource.com/linux-imx/

It was tested on Coral Dev Board using this command:
  sudo stress --cpu 4 --timeout 3600

Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
---
v2:
 * Fix underscore in property name;
 * Add pinctrl entry for gpio-fan;
 * Removes undocumented property;

v3:
 * Fix subject pattern;
 * Fix order of pinctrl entries;
 * Fix MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 flags;
 * Typo pattern (from "gpiofanp" to "gpiofangrp");
 * Fix tabs on MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5 line;

v4:
 * Fix cpu_thermal order;

v5:
 * Add missing Reviewed-by;

BR,
Vitor
---
 .../boot/dts/freescale/imx8mq-phanbell.dts    | 64 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  2 +-
 2 files changed, 65 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
index 3f2a489a4ad8..f1fce2b1b5c8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-phanbell.dts
@@ -35,6 +35,16 @@
 		gpio = <&gpio2 19 GPIO_ACTIVE_HIGH>;
 		enable-active-high;
 	};
+
+	fan: gpio-fan {
+		compatible = "gpio-fan";
+		gpio-fan,speed-map = <0 0 8600 1>;
+		gpios = <&gpio3 5 GPIO_ACTIVE_HIGH>;
+		#cooling-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpio_fan>;
+		status = "okay";
+	};
 };
 
 &A53_0 {
@@ -53,6 +63,53 @@
 	cpu-supply = <&buck2>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_alert0: trip0 {
+			temperature = <75000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_alert1: trip1 {
+			temperature = <80000>;
+			hysteresis = <2000>;
+			type = "passive";
+		};
+
+		cpu_crit0: trip3 {
+			temperature = <90000>;
+			hysteresis = <2000>;
+			type = "critical";
+		};
+
+		fan_toggle0: trip4 {
+			temperature = <65000>;
+			hysteresis = <10000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&cpu_alert0>;
+			cooling-device =
+			<&A53_0 0 1>; /* Exclude highest OPP */
+		};
+
+		map1 {
+			trip = <&cpu_alert1>;
+			cooling-device =
+			<&A53_0 0 2>; /* Exclude two highest OPPs */
+		};
+
+		map4 {
+			trip = <&fan_toggle0>;
+			cooling-device = <&fan 0 1>;
+		};
+	};
+};
+
 &i2c1 {
 	clock-frequency = <400000>;
 	pinctrl-names = "default";
@@ -254,6 +311,12 @@
 };
 
 &iomuxc {
+	pinctrl_gpio_fan: gpiofangrp {
+		fsl,pins = <
+			MX8MQ_IOMUXC_NAND_CLE_GPIO3_IO5			0x16
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL			0x4000007f
@@ -374,3 +437,4 @@
 		>;
 	};
 };
+
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..a3bb17a6b9df 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -198,7 +198,7 @@
 	};
 
 	thermal-zones {
-		cpu-thermal {
+		cpu_thermal: cpu-thermal {
 			polling-delay-passive = <250>;
 			polling-delay = <2000>;
 			thermal-sensors = <&tmu 0>;
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
