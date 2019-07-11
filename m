Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 624AA661D0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 00:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ywt5g+PQ9zLI9MYO+O2xkx6CUGRPbpjXq0evZ5YvCIw=; b=NMdf/cY5YhNTkU
	juhU3Drqjauundu5+sssZzORll7TSOAup5Iu2dIOxU/xxCg3VtnnS7Edn8fs3dc2eOjnDbdK9cXZ4
	2wxYwYoL4js09vDLqL0NJGC7AGwfJZiVFV7Km1xOXU2stHxW6tPMNnLjFbBt3SjxcUwp6p947tlBN
	cNncRlrxkChocY/MEfVeLCkz+FUp6hl/I80m9phD1S2l+SowF5lupRwdI843G3e7eQp4TuXLHapxW
	YfXHd4apjGb1xRarB0u58CSpL+BBwKTD05VWw5uYOd0NPEzupvtoaXQcUvbp7bB6XZPUEoM1a5rol
	uoYv1XVg/UqK55v8SHvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlhfQ-000346-Tr; Thu, 11 Jul 2019 22:35:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlhes-0002qT-6T
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 22:35:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id az7so3758871plb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 15:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dz0KnHgWpyKz8NfSR138KX/PtrwhvrlzsrqJp04ekYY=;
 b=lka+F9IslSN3mtvNCCSePgEMXyqpd/Ck10y50EErd3zK1yLIYMicqvXvZV+663GQZL
 TR/2+07Fy8SK4hLNzWAn6hhgBzRyFPFuyOVpXek/mVIx9QNlsy4akPcHjVJyGC2cM8oI
 mc06eXt5qv3rJO+RtwS9xWIrDWGmqIsrIwByQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dz0KnHgWpyKz8NfSR138KX/PtrwhvrlzsrqJp04ekYY=;
 b=YNPN9eYkbK3zc/O8tEt96exp2Rcct7E2tlLpyulw2M+Iu+drTAdBgL1RBk31LPuni3
 3cdwBVBadJd0gwGnE+zR0rySB8e67YWWTY1S026Nd1wqLdDdImGVWfGTsl8Y0I5xHxsy
 WLGJuNE7XLA9AkUU3dPpZ2zYD8y4Gkm3T2sodb0tJ6KPYSnC0NxLC3dWjEMblX70q66B
 h3eld31NHUI44cOrx6ObGplYM73xZkxQdFWTulPw3b5/1YVHDBQK5rjUAGUkUMnrwAfA
 UVRZn35y0QpQbeMRD1nyvF03mrcHMJz2cuku0/u4kgNpz26rwTJBacKbl/rmF3V1taL1
 oPbQ==
X-Gm-Message-State: APjAAAWV4RaolqxMl+CQ9ZHK+GtljUdWDZglPJKViWBy1w8uMan2yfI1
 42UmEX3btVysp10Y+VQ/oryIsg==
X-Google-Smtp-Source: APXvYqywkD2qW/nNSCx42LT9JWEmpwfeT9s7L6iB8oof9B5AyJgOsF2cBXbEwe3JRA5ZnKZ4oKSYjA==
X-Received: by 2002:a17:902:7781:: with SMTP id
 o1mr7320713pll.205.1562884521192; 
 Thu, 11 Jul 2019 15:35:21 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id i14sm12003623pfk.0.2019.07.11.15.35.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 15:35:20 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/2] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
Date: Thu, 11 Jul 2019 15:34:55 -0700
Message-Id: <20190711223455.12210-2-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190711223455.12210-1-mka@chromium.org>
References: <20190711223455.12210-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_153522_237782_91ED781B 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

veyron jaq, jerry, minnie and speedy have mostly redundant regulator
and pinctrl configurations for the panel/backlight. Consolidate these
pieces in the eDP .dtsi.

Also change the default power supply for the panel to
'panel_regulator', instead of overriding it in all the board files.
pinky is the only device that uses 'vcc33_lcd' (the prior default),
so overwrite it in this case. pinky doesn't have a complete display
configuration, to keep things as they were delete the common nodes
that didn't exist previously in pinky's board file.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- rebased on v5.4-armsoc/dts32 (0d19541e3b45)
---
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 51 ++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 55 --------------------
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 58 ----------------------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 51 -------------------
 arch/arm/boot/dts/rk3288-veyron-pinky.dts  | 17 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 58 ----------------------
 6 files changed, 67 insertions(+), 223 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index 5d812e9e78aa..39f56d36a701 100644
--- a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -6,6 +6,40 @@
  */
 
 / {
+	backlight_regulator: backlight-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_pwr_en>;
+		regulator-name = "backlight_regulator";
+		vin-supply = <&vcc33_sys>;
+		startup-delay-us = <15000>;
+	};
+
+	panel_regulator: panel-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_enable_h>;
+		regulator-name = "panel_regulator";
+		startup-delay-us = <100000>;
+		vin-supply = <&vcc33_sys>;
+	};
+
+	vcc18_lcd: vcc18-lcd {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&avdd_1v8_disp_en>;
+		regulator-name = "vcc18_lcd";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vcc18_wl>;
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		brightness-levels = <
@@ -48,12 +82,13 @@
 		pwms = <&pwm0 0 1000000 0>;
 		post-pwm-on-delay-ms = <10>;
 		pwm-off-delay-ms = <10>;
+		power-supply = <&backlight_regulator>;
 	};
 
 	panel: panel {
 		compatible ="innolux,n116bge", "simple-panel";
 		status = "okay";
-		power-supply = <&vcc33_lcd>;
+		power-supply = <&panel_regulator>;
 		backlight = <&backlight>;
 
 		panel-timing {
@@ -105,10 +140,24 @@
 
 &pinctrl {
 	backlight {
+		bl_pwr_en: bl_pwr_en {
+			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		bl_en: bl-en {
 			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	lcd {
+		lcd_enable_h: lcd-en {
+			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		avdd_1v8_disp_en: avdd-1v8-disp-en {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm0 {
diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index fcd119168cb6..80386203e85b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -16,40 +16,6 @@
 		     "google,veyron-jaq-rev3", "google,veyron-jaq-rev2",
 		     "google,veyron-jaq-rev1", "google,veyron-jaq",
 		     "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
 };
 
 &backlight {
@@ -87,11 +53,6 @@
 		232 233 234 235 236 237 238 239
 		240 241 242 243 244 245 246 247
 		248 249 250 251 252 253 254 255>;
-	power-supply = <&backlight_regulator>;
-};
-
-&panel {
-	power-supply = <&panel_regulator>;
 };
 
 &rk808 {
@@ -343,12 +304,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -361,16 +316,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index 164561f04c1d..a8f55aec09ee 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -18,48 +18,6 @@
 		     "google,veyron-jerry-rev5", "google,veyron-jerry-rev4",
 		     "google,veyron-jerry-rev3", "google,veyron-jerry",
 		     "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-};
-
-&backlight {
-	power-supply = <&backlight_regulator>;
-};
-
-&panel {
-	power-supply= <&panel_regulator>;
 };
 
 &rk808 {
@@ -311,12 +269,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -329,16 +281,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 4cc7d3659484..2b0801a539c9 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -15,40 +15,6 @@
 		     "google,veyron-minnie-rev0", "google,veyron-minnie",
 		     "google,veyron", "rockchip,rk3288";
 
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
 	volume_buttons: volume-buttons {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -137,7 +103,6 @@
 
 &panel {
 	compatible = "auo,b101ean01", "simple-panel";
-	power-supply= <&panel_regulator>;
 
 	/delete-node/ panel-timing;
 
@@ -411,12 +376,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -439,16 +398,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index 9b6f4d9b03b6..06af58e37a4b 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -14,7 +14,14 @@
 	compatible = "google,veyron-pinky-rev2", "google,veyron-pinky",
 		     "google,veyron", "rockchip,rk3288";
 
+	/delete-node/backlight-regulator;
+	/delete-node/panel-regulator;
 	/delete-node/emmc-pwrseq;
+	/delete-node/vcc18-lcd;
+};
+
+&backlight {
+	/delete-property/power-supply;
 };
 
 &emmc {
@@ -52,7 +59,17 @@
 	i2c-scl-rising-time-ns = <300>;
 };
 
+&panel {
+	power-supply= <&vcc33_lcd>;
+};
+
 &pinctrl {
+	/delete-node/ lcd;
+
+	backlight {
+		/delete-node/ bl_pwr_en;
+	};
+
 	buttons {
 		pwr_key_h: pwr-key-h {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index 9b140db04456..2f2989bc3f9c 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -16,44 +16,6 @@
 		     "google,veyron-speedy-rev5", "google,veyron-speedy-rev4",
 		     "google,veyron-speedy-rev3", "google,veyron-speedy-rev2",
 		     "google,veyron-speedy", "google,veyron", "rockchip,rk3288";
-
-	panel_regulator: panel-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio7 RK_PB6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&lcd_enable_h>;
-		regulator-name = "panel_regulator";
-		startup-delay-us = <100000>;
-		vin-supply = <&vcc33_sys>;
-	};
-
-	vcc18_lcd: vcc18-lcd {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&avdd_1v8_disp_en>;
-		regulator-name = "vcc18_lcd";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc18_wl>;
-	};
-
-	backlight_regulator: backlight-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_pwr_en>;
-		regulator-name = "backlight_regulator";
-		vin-supply = <&vcc33_sys>;
-		startup-delay-us = <15000>;
-	};
-};
-
-&backlight {
-	power-supply = <&backlight_regulator>;
 };
 
 &cpu_alert0 {
@@ -83,10 +45,6 @@
 	temperature = <90000>;
 };
 
-&panel {
-	power-supply= <&panel_regulator>;
-};
-
 &rk808 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pmic_int_l>;
@@ -321,12 +279,6 @@
 };
 
 &pinctrl {
-	backlight {
-		bl_pwr_en: bl_pwr_en {
-			rockchip,pins = <2 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buck-5v {
 		drv_5v: drv-5v {
 			rockchip,pins = <7 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -339,16 +291,6 @@
 		};
 	};
 
-	lcd {
-		lcd_enable_h: lcd-en {
-			rockchip,pins = <7 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		avdd_1v8_disp_en: avdd-1v8-disp-en {
-			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	pmic {
 		dvs_1: dvs-1 {
 			rockchip,pins = <7 RK_PB4 RK_FUNC_GPIO &pcfg_pull_down>;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
