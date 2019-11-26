Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D30A5109E3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QI/LALoXysTfwAXZSZBfflCVbRk/PK1K9woEFIn+oNs=; b=QpVrTGq7APah7Z
	NNG2kab9PqhdxXj4XY14A7mAwfGNziowuOf8JkPPqvUdHPNVnSiC5YUcbUERwW/bx4T4V+a1Lpjjj
	WuDcoRONNMkx9us6NeQQAHtnLqLtXZ23jsc656Wy0W2NhXnJzx2KvsoywyueysJJ2sB4fxdc57hOK
	bkbBUB8YFubYwEsxTRyw3ezy9A9FiprCd4zuAFnz3BXfENkFeMx4+BVp1QncpTsSt+hXIxSO9o3l/
	vEGJhREDg494NvPLEi1U2+MfbhQ1uPPFb93f2zTARY0mYxuotjbdQKLWKCQyVmTBao5zbDHhmZ8Ru
	y3sDFHki+tzGY8gNn+aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaGg-000315-Nr; Tue, 26 Nov 2019 12:48:34 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaFw-0001qW-Pj
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:47:50 +0000
Received: by mail-lf1-x12c.google.com with SMTP id q28so13973223lfa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g6uM1+pKTVRrvPoZDIiQiCYct3FytdLjpBqRoInTyxE=;
 b=Se70UsZ/wgEaoONls7OdlSWj0+NnGwQ72WH2RJJGpdNx6hXJpJ4fiwIURbKBfCWFlb
 YNbEkVznknmsD9YuXWFSAtUqigLp+iWOZD0SDIEKx/XXTdUt5UxQmnsXSV7vwzk6yMQH
 J3BJ80AXubFweXDWbxXEypq6z2NnlauO2hic9vsgXmEDxnHxwPMkXRt/reCYnAsftAO7
 pdG/RbJuhh5y6csQLvzA+gNqfuCY9bWPrMzc3QDLFXPjQZRDwl79L+h1lOAxZ/1iBLC5
 HPfa8hNNRHpYU8S6Ym3bSMM0Y8Ah8+9KYq/7eyxgmmE+krkp624JnReLxhwgef30yUts
 NS3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g6uM1+pKTVRrvPoZDIiQiCYct3FytdLjpBqRoInTyxE=;
 b=ZoD3CX4jsSMmdbyhlip7z6WtaX0374H8cCSX74n3NPN8OufLEWBfHzXcahD0fxK9X5
 Yx4knYcGcFqGaAydAKcUKQ6u21fKULJXbF+e3wiUq+L426X5eXfcIBeaDiMWx1PlBaCe
 rk+O6U6PuZ4OQJmi5DqqWXrz5Lb5gcPJs1hJLssHgf8zeyq3Tuoeue9B5OAlkQSRBUH1
 0uyU8yyxeeSAY1PB0INDQuKOqZ411jlzf0h9b+0/ekXSVw7WGUDqod3W9UB8QFYhBUqk
 tSwc4xjS8NI1hr/BVfu5Fi2SVwNmY6SDf/W6VBUP+3z5ug+gsJgwR9CtG1d+HloydPLN
 OgJQ==
X-Gm-Message-State: APjAAAW/ayJvShJokoT9mRjOO4XbMhw1MxIK9vKmNUZWmPOSqn+kz3/5
 XdxXqA83uJjskwpekUZod0zuzAW31yI=
X-Google-Smtp-Source: APXvYqwCB3CWTXWlV3AJli45oxAIdZygsLijEEF30cyU1qQP8TEWju15z1WpLn6H9LUSZG/LQSKcpw==
X-Received: by 2002:ac2:484a:: with SMTP id 10mr23687291lfy.80.1574772466300; 
 Tue, 26 Nov 2019 04:47:46 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j10sm14874lfc.53.2019.11.26.04.47.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 04:47:45 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] ARM: dts: ux500: Split TVK DTSI files in two
Date: Tue, 26 Nov 2019 13:47:36 +0100
Message-Id: <20191126124738.77690-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126124738.77690-1-linus.walleij@linaro.org>
References: <20191126124738.77690-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_044748_843853_8D1A2B54 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TVK1281618 was made in R1, R2 and R3 variants. The most
commonly used variants are R2 and R3 so split out these to
their own files.

The R3 version has a totally different display than R1 and
R2 and a different set of sensors.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi | 79 +++++++++++++++++++
 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi | 58 ++++++++++++++
 arch/arm/boot/dts/ste-href-tvk1281618.dtsi    | 71 +----------------
 arch/arm/boot/dts/ste-hrefprev60-tvk.dts      |  2 +-
 arch/arm/boot/dts/ste-hrefv60plus-tvk.dts     |  2 +-
 5 files changed, 141 insertions(+), 71 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
 create mode 100644 arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi

diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
new file mode 100644
index 000000000000..e024520f4d47
--- /dev/null
+++ b/arch/arm/boot/dts/ste-href-tvk1281618-r2.dtsi
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device Tree for the TVK1281618 R2 UIB
+ */
+
+#include "ste-href-tvk1281618.dtsi"
+
+/ {
+	soc {
+		i2c@80128000 {
+			lsm303dlh@18 {
+				/* Accelerometer */
+				compatible = "st,lsm303dlh-accel";
+				st,drdy-int-pin = <1>;
+				drive-open-drain;
+				reg = <0x18>;
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&db8500_vsmps2_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&accel_tvk_mode>;
+				/*
+				 * These interrupts cannot be used: the other component
+				 * ST-Micro L3D4200D gyro that is connected to the same lines
+				 * cannot set its DRDY line to open drain, so it cannot be
+				 * shared with other peripherals. The should be defined for
+				 * the falling edge if they could be wired together.
+				 *
+				 * interrupts-extended =
+				 * <&gpio1 0 IRQ_TYPE_EDGE_FALLING>,
+				 * <&gpio2 19 IRQ_TYPE_EDGE_FALLING>;
+				 */
+			};
+			lsm303dlh@1e {
+				/* Magnetometer */
+				compatible = "st,lsm303dlh-magn";
+				reg = <0x1e>;
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&db8500_vsmps2_reg>;
+				/*
+				 * These interrupts cannot be used: the other component
+				 * ST-Micro L3D4200D gyro that is connected to the same lines
+				 * cannot set its DRDY line to open drain, so it cannot be
+				 * shared with other peripherals. The should be defined for
+				 * the falling edge if they could be wired together.
+				 *
+				 * interrupts-extended =
+				 * <&gpio1 0 IRQ_TYPE_EDGE_FALLING>,
+				 * <&gpio2 19 IRQ_TYPE_EDGE_FALLING>;
+				 */
+			};
+			lis331dl@1c {
+				/* Accelerometer */
+				compatible = "st,lis331dl-accel";
+				st,drdy-int-pin = <1>;
+				reg = <0x1c>;
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&db8500_vsmps2_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&accel_tvk_mode>;
+				interrupt-parent = <&gpio2>;
+				/* INT2 would need to be open drain */
+				interrupts = <18 IRQ_TYPE_EDGE_RISING>,
+					     <19 IRQ_TYPE_EDGE_RISING>;
+			};
+		};
+		mcde@a0350000 {
+			status = "okay";
+
+			dsi@a0351000 {
+				panel {
+					compatible = "samsung,s6d16d0";
+					reg = <0>;
+					vdd1-supply = <&ab8500_ldo_aux1_reg>;
+					reset-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
new file mode 100644
index 000000000000..cb3677f0a1cb
--- /dev/null
+++ b/arch/arm/boot/dts/ste-href-tvk1281618-r3.dtsi
@@ -0,0 +1,58 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device Tree for the TVK1281618 R2 UIB
+ */
+
+#include "ste-href-tvk1281618.dtsi"
+
+/ {
+	soc {
+		i2c@80128000 {
+			/* Marked:
+			 * 129
+			 * M35
+			 * L3GD20
+			 */
+			l3gd20@6a {
+				/* Gyroscope */
+				compatible = "st,l3gd20";
+				status = "disabled";
+				st,drdy-int-pin = <1>;
+				drive-open-drain;
+				reg = <0x6a>; // 0x6a or 0x6b
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&db8500_vsmps2_reg>;
+			};
+			/*
+			 * Marked:
+			 * 2122
+			 * C3H
+			 * DQEEE
+			 * LIS3DH?
+			 */
+			lis3dh@18 {
+				/* Accelerometer */
+				compatible = "st,lis3dh-accel";
+				st,drdy-int-pin = <1>;
+				reg = <0x18>;
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&db8500_vsmps2_reg>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&accel_tvk_mode>;
+			};
+		};
+
+		mcde@a0350000 {
+			status = "okay";
+
+			dsi@a0351000 {
+				panel {
+					compatible = "sony,acx424akp";
+					reg = <0>;
+					vddi-supply = <&ab8500_ldo_aux1_reg>;
+					reset-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
+				};
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-href-tvk1281618.dtsi b/arch/arm/boot/dts/ste-href-tvk1281618.dtsi
index 3bafd26b4824..e1dbfae22595 100644
--- a/arch/arm/boot/dts/ste-href-tvk1281618.dtsi
+++ b/arch/arm/boot/dts/ste-href-tvk1281618.dtsi
@@ -2,7 +2,7 @@
 /*
  * Copyright 2012 ST-Ericsson AB
  *
- * Device Tree for the TVK1281618 UIB
+ * Device Tree for the TVK1281618 family of UIBs
  */
 
 #include <dt-bindings/interrupt-controller/irq.h>
@@ -81,62 +81,8 @@
 				};
 			};
 		};
-		/* Sensors mounted on this board variant */
+		/* Sensors mounted on all board variants */
 		i2c@80128000 {
-			lsm303dlh@18 {
-				/* Accelerometer */
-				compatible = "st,lsm303dlh-accel";
-				st,drdy-int-pin = <1>;
-				drive-open-drain;
-				reg = <0x18>;
-				vdd-supply = <&ab8500_ldo_aux1_reg>;
-				vddio-supply = <&db8500_vsmps2_reg>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&accel_tvk_mode>;
-				/*
-				 * These interrupts cannot be used: the other component
-				 * ST-Micro L3D4200D gyro that is connected to the same lines
-				 * cannot set its DRDY line to open drain, so it cannot be
-				 * shared with other peripherals. The should be defined for
-				 * the falling edge if they could be wired together.
-				 *
-				 * interrupts-extended =
-				 * <&gpio1 0 IRQ_TYPE_EDGE_FALLING>,
-				 * <&gpio2 19 IRQ_TYPE_EDGE_FALLING>;
-				 */
-			};
-			lsm303dlh@1e {
-				/* Magnetometer */
-				compatible = "st,lsm303dlh-magn";
-				reg = <0x1e>;
-				vdd-supply = <&ab8500_ldo_aux1_reg>;
-				vddio-supply = <&db8500_vsmps2_reg>;
-				/*
-				 * These interrupts cannot be used: the other component
-				 * ST-Micro L3D4200D gyro that is connected to the same lines
-				 * cannot set its DRDY line to open drain, so it cannot be
-				 * shared with other peripherals. The should be defined for
-				 * the falling edge if they could be wired together.
-				 *
-				 * interrupts-extended =
-				 * <&gpio1 0 IRQ_TYPE_EDGE_FALLING>,
-				 * <&gpio2 19 IRQ_TYPE_EDGE_FALLING>;
-				 */
-			};
-			lis331dl@1c {
-				/* Accelerometer */
-				compatible = "st,lis331dl-accel";
-				st,drdy-int-pin = <1>;
-				reg = <0x1c>;
-				vdd-supply = <&ab8500_ldo_aux1_reg>;
-				vddio-supply = <&db8500_vsmps2_reg>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&accel_tvk_mode>;
-				interrupt-parent = <&gpio2>;
-				/* INT2 would need to be open drain */
-				interrupts = <18 IRQ_TYPE_EDGE_RISING>,
-					     <19 IRQ_TYPE_EDGE_RISING>;
-			};
 			ak8974@f {
 				/* Magnetometer */
 				compatible = "asahi-kasei,ak8974";
@@ -268,18 +214,5 @@
 				};
 			};
 		};
-
-		mcde@a0350000 {
-			status = "okay";
-
-			dsi@a0351000 {
-				panel {
-					compatible = "samsung,s6d16d0";
-					reg = <0>;
-					vdd1-supply = <&ab8500_ldo_aux1_reg>;
-					reset-gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
-				};
-			};
-		};
 	};
 };
diff --git a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
index 8b88c91dca6c..142f5475521f 100644
--- a/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefprev60-tvk.dts
@@ -6,7 +6,7 @@
 /dts-v1/;
 #include "ste-db8500.dtsi"
 #include "ste-hrefprev60.dtsi"
-#include "ste-href-tvk1281618.dtsi"
+#include "ste-href-tvk1281618-r2.dtsi"
 
 / {
 	model = "ST-Ericsson HREF (pre-v60) and TVK1281618 UIB";
diff --git a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
index b31e43d5ff89..5d4b8245f02c 100644
--- a/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
+++ b/arch/arm/boot/dts/ste-hrefv60plus-tvk.dts
@@ -8,7 +8,7 @@
 /dts-v1/;
 #include "ste-db8500.dtsi"
 #include "ste-hrefv60plus.dtsi"
-#include "ste-href-tvk1281618.dtsi"
+#include "ste-href-tvk1281618-r2.dtsi"
 
 / {
 	model = "ST-Ericsson HREF (v60+) and TVK1281618 UIB";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
