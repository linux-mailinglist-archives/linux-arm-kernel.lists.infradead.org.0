Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8608198729
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVXCJE+Ub4ZKH54aoQ/OjKVrglh0+MDIyJHixhOICEg=; b=AjhBY+MJUk3v5K
	pltguasFTiUOPf5VmmA9F9ml7dDcBInHCLyadVVUq8Xf1VudbmO+lkP1xo+hXQwNpQeKjLzBWgT4H
	i576EjARelutKpE8W7w5y85nxOFJXONc5Plaq7ap2KshBgWHEgTF7oFYhHyQw05rW+vo9x02TZld5
	4vE4JY6DBmGYcLAloQ5croVKOEu+HIKOW+uCLQcud4Y+lyI9Tzpr34pmFhgWEY+dFVJmKVP3B/DtK
	MWM9pYZbcA0PM2hLTaS5kKm2ISAM7rlLAAqBqk204N/37q+xYL/udZbRgSUH/WFFS1zzRGDMd6lcP
	qRvpeUH3ybNVdTkRgXUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2eB-0002qC-RF; Mon, 30 Mar 2020 22:12:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d3-0001kd-IG; Mon, 30 Mar 2020 22:11:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id t128so500816wma.0;
 Mon, 30 Mar 2020 15:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rH18uADPcvY9iN4ZlqKSVAo4EwI8zrMKYS+ddwe06gM=;
 b=O2VkcrLoK9at2xeoNDR0dKr6GCXJ6GvgAIt8d5J00iWaeidqCAgYA/Ecvmzx7KpyPk
 iY1iMNaGQDy8uz5sxfZ/Kpuz9DSKPPj9ViKBS4lc0d1Oz5X1qMtEeIV/MNqjgG2CoaXv
 umHsW1zY/2z+M2ELF1oj5boUhcs1Koxg9hjF+ASA/LHYFXUlgH7LFXRqX/YHma5fdRMi
 Ls6kcDu9tq92JUWxW2Xdd78Q/DDCyRG+Oj+jmR9j7X8R8eIRQhbAiz6IZn2ECqJq2zFV
 54l5hYPtp8ork5A5rJEeXBKUdtVG+FuDrOJl+mibehlFUSKKiT9qngF9ejLc3puUy0yp
 Tz+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rH18uADPcvY9iN4ZlqKSVAo4EwI8zrMKYS+ddwe06gM=;
 b=dALfcbXQJQWN/fcHXA1HrF/WJopxE99cBHNXjljYOXIUyGVTbyUccS3OIjq3U7bK4y
 HJWYmEjp7vlegzYzRY181Vhkl6gzY2TGufRY3xxmk5mAM8Y3kJWrI6Y1JhzuA2Wlwa5G
 V82mtzWi58pr/Kq+0wBtTaXTyTvf1KrZIVXZkJllN3U9jcnooeOD0KcSIjIVMzUwj+XR
 9Uli5foGFdqGO+3+xmwb8SpoprQYdAM1DQWRd8pzGJoC53sMJvTIAstim3qW9STFJZEq
 eXkFY3li/hq+pMAlk4iWYPTXwAhHYJENrUQWD9SQAlsNQ7gdhaJ4PPYqLto6HhpRALk8
 4Opw==
X-Gm-Message-State: ANhLgQ2bQLb0hX0V4+X71qQSUzZNdViNAmktCkp9qsIz2LIeet6CW8he
 pTnBA+NXtHziIF5rPn9CDSJQ/1ax
X-Google-Smtp-Source: ADFU+vv/JR5vRCpxN4sqzSkYjKWLWQFcPK5nZzBQVW0eC/j4OvXq+vgaLQoqul21ksctM5TC0GQyXg==
X-Received: by 2002:a1c:e904:: with SMTP id q4mr234551wmc.84.1585606291646;
 Mon, 30 Mar 2020 15:11:31 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:31 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 3/5] arm64: dts: amlogic: meson-gx: add the Mali-450 OPP
 table and use DVFS
Date: Tue, 31 Mar 2020 00:11:02 +0200
Message-Id: <20200330221104.3163788-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151133_720293_08A8974E 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table for the Mali-450 GPU and drop the hardcoded initial
clock configuration. This enables GPU DVFS and thus saves power when the
GPU is not in use while still being able switch to a higher clock on
demand.

While here, make most of meson-gxl-mali re-usable to reduce the amount
of duplicate code between GXBB and GXL. This is more important now as we
don't want to duplicate the GPU OPP table.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-gx-mali450.dtsi    | 61 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 51 ++++------------
 .../boot/dts/amlogic/meson-gxl-mali.dtsi      | 46 +++-----------
 3 files changed, 81 insertions(+), 77 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi
new file mode 100644
index 000000000000..f9771b51c852
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-mali450.dtsi
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2017 BayLibre SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+/ {
+	gpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-125000000 {
+			opp-hz = /bits/ 64 <125000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-285714285 {
+			opp-hz = /bits/ 64 <285714285>;
+			opp-microvolt = <950000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-500000000 {
+			opp-hz = /bits/ 64 <500000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-666666666 {
+			opp-hz = /bits/ 64 <666666666>;
+			opp-microvolt = <950000>;
+		};
+		opp-744000000 {
+			opp-hz = /bits/ 64 <744000000>;
+			opp-microvolt = <950000>;
+		};
+	};
+};
+
+&apb {
+	mali: gpu@c0000 {
+		compatible = "arm,mali-450";
+		reg = <0x0 0xc0000 0x0 0x40000>;
+		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "gp", "gpmmu", "pp", "pmu",
+			"pp0", "ppmmu0", "pp1", "ppmmu1",
+			"pp2", "ppmmu2";
+		operating-points-v2 = <&gpu_opp_table>;
+	};
+};
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 0cb40326b0d3..e43b330129c7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include "meson-gx.dtsi"
+#include "meson-gx-mali450.dtsi"
 #include <dt-bindings/gpio/meson-gxbb-gpio.h>
 #include <dt-bindings/reset/amlogic,meson-gxbb-reset.h>
 #include <dt-bindings/clock/gxbb-clkc.h>
@@ -241,46 +242,6 @@ mux {
 	};
 };
 
-&apb {
-	mali: gpu@c0000 {
-		compatible = "amlogic,meson-gxbb-mali", "arm,mali-450";
-		reg = <0x0 0xc0000 0x0 0x40000>;
-		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "gp", "gpmmu", "pp", "pmu",
-			"pp0", "ppmmu0", "pp1", "ppmmu1",
-			"pp2", "ppmmu2";
-		clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
-		clock-names = "bus", "core";
-
-		/*
-		 * Mali clocking is provided by two identical clock paths
-		 * MALI_0 and MALI_1 muxed to a single clock by a glitch
-		 * free mux to safely change frequency while running.
-		 */
-		assigned-clocks = <&clkc CLKID_GP0_PLL>,
-				  <&clkc CLKID_MALI_0_SEL>,
-				  <&clkc CLKID_MALI_0>,
-				  <&clkc CLKID_MALI>; /* Glitch free mux */
-		assigned-clock-parents = <0>, /* Do Nothing */
-					 <&clkc CLKID_GP0_PLL>,
-					 <0>, /* Do Nothing */
-					 <&clkc CLKID_MALI_0>;
-		assigned-clock-rates = <744000000>,
-				       <0>, /* Do Nothing */
-				       <744000000>,
-				       <0>; /* Do Nothing */
-	};
-};
-
 &cbus {
 	spifc: spi@8c80 {
 		compatible = "amlogic,meson-gxbb-spifc";
@@ -362,6 +323,16 @@ &i2c_C {
 	clocks = <&clkc CLKID_I2C>;
 };
 
+&mali {
+	compatible = "amlogic,meson-gxbb-mali", "arm,mali-450";
+
+	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
+	clock-names = "bus", "core";
+
+	assigned-clocks = <&clkc CLKID_GP0_PLL>;
+	assigned-clock-rates = <744000000>;
+};
+
 &periphs {
 	pinctrl_periphs: pinctrl@4b0 {
 		compatible = "amlogic,meson-gxbb-periphs-pinctrl";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
index 6aaafff674f9..478e755cc87c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-mali.dtsi
@@ -4,42 +4,14 @@
  * Author: Neil Armstrong <narmstrong@baylibre.com>
  */
 
-&apb {
-	mali: gpu@c0000 {
-		compatible = "amlogic,meson-gxl-mali", "arm,mali-450";
-		reg = <0x0 0xc0000 0x0 0x40000>;
-		interrupts = <GIC_SPI 160 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 161 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 162 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 165 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
-			     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>;
-		interrupt-names = "gp", "gpmmu", "pp", "pmu",
-			"pp0", "ppmmu0", "pp1", "ppmmu1",
-			"pp2", "ppmmu2";
-		clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
-		clock-names = "bus", "core";
+#include "meson-gx-mali450.dtsi"
 
-		/*
-		 * Mali clocking is provided by two identical clock paths
-		 * MALI_0 and MALI_1 muxed to a single clock by a glitch
-		 * free mux to safely change frequency while running.
-		 */
-		assigned-clocks = <&clkc CLKID_GP0_PLL>,
-				  <&clkc CLKID_MALI_0_SEL>,
-				  <&clkc CLKID_MALI_0>,
-				  <&clkc CLKID_MALI>; /* Glitch free mux */
-		assigned-clock-parents = <0>, /* Do Nothing */
-					 <&clkc CLKID_GP0_PLL>,
-					 <0>, /* Do Nothing */
-					 <&clkc CLKID_MALI_0>;
-		assigned-clock-rates = <744000000>,
-				       <0>, /* Do Nothing */
-				       <744000000>,
-				       <0>; /* Do Nothing */
-	};
+&mali {
+	compatible = "amlogic,meson-gxl-mali", "arm,mali-450";
+
+	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_MALI>;
+	clock-names = "bus", "core";
+
+	assigned-clocks = <&clkc CLKID_GP0_PLL>;
+	assigned-clock-rates = <744000000>;
 };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
