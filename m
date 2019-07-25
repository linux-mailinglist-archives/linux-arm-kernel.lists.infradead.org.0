Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271E4753FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 18:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O0E7Q7taIbdhjArSieus24O34KOEthTjXP5iKjpaZQ4=; b=fjTy5sZJvuNGls
	uHhZS/tiyqB5nJHdbTpH1e3FmPQpea5P87wpHYCdmvKmLdr2yr19Fln9A2ljs4+VOnSRFmjTSh6lm
	vB0syjGAzpPyxfniaKNF81rZePbh2l9do3L2iFTSjrC+/9+R2JtgrqehGt3KEd1oBwKc+hnJI6u1t
	xF+4uGDS0QchkrQsbGkN/88ge91wx6tcExPCOhHQ5Xtlsbjs685RXwwf5n6vV3zmnbZOTMI3tvDiV
	xS+HZAw25kyVfTgzDVH3/7oKDISarZQdeSjSkDrgB1NKNrNqdTs1LeQ73dhS0RQzFEiRaq/qlturr
	gsJdnluMCOnQtd5E5ddA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgbI-0004Ga-GH; Thu, 25 Jul 2019 16:28:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgZv-0003dd-KY
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 16:26:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id i70so12559981pgd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 09:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+nruXSogFbUPr/bbtJPO8S7l7Gizb5SYi4+EEbYPoYw=;
 b=lxCMSx/DmWmnBQXn6qVKioUSqORrnQR9Y4JbeHizqHxAiGS/eTj0LN72JAVN+HiokL
 F9Kip6bhc3JC0espCFGr8O1EecwuTwuVVSwnRt+GFAWGjkJqcBPxyFxDWsh0eI0Mf7z3
 5+36RvZl5y6WJbo6WqZpEtVPu9v7ZeM5dW35A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+nruXSogFbUPr/bbtJPO8S7l7Gizb5SYi4+EEbYPoYw=;
 b=QHuG3DFMTnsWIp4MqKI10eNlNZeKJbt+YVAFkKNq9c9PzGyddTKXKRYJu6JTQfNPM+
 EOXtAj831sYCbqviwANxhk7jLcpOmo0V3qW91oK+51OFNUcvg9O1IL3B7yvhn/dnhSg9
 pe++mJm4F4l8mmJi2HZ88BaDbXYQmPWR8WjtjehIt6Lm3j+D0PXOplzg36asznoABm4c
 Ycm1ey4XXaUJPHU/B8IE2l9n/U+uQCXS6gCExPse1fp9w7nmlNi1nFjwOEw1QzZkMZDH
 LA1UBoHhKXPahKFSOJNIa/AsfZGChnDNjDvfic+gijMbvdjQEHLQt0K/E1bYyC4bZ1Q3
 M2uQ==
X-Gm-Message-State: APjAAAUygJgFuq1fhaHTxOpcjIe6WuBVXrZfwfnuXd8J/fTDS0xUNAiJ
 cr6tMhUTwwWx0f4Xg45xIhggYQ==
X-Google-Smtp-Source: APXvYqyRz5oNDkB+L+XREaVSE//5AFspA0Zsg0An8GV59qdJbrFBSGPiSmqbg1QWm6CZu3nc3b0cKQ==
X-Received: by 2002:a63:4c17:: with SMTP id z23mr48794645pga.167.1564072010988; 
 Thu, 25 Jul 2019 09:26:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 196sm54236847pfy.167.2019.07.25.09.26.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 09:26:50 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 2/5] ARM: dts: rockchip: consolidate veyron panel and
 backlight settings
Date: Thu, 25 Jul 2019 09:26:39 -0700
Message-Id: <20190725162642.250709-3-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_092651_699449_85E24376 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
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

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- removed power-supply property from minnie's backlight node
  (it is set in the common part)
- added missing blank in pinky.dts
- added Doug's 'Reviewed-by' tag

Changes in v2:
- rebased on v5.4-armsoc/dts32 (0d19541e3b45)
---
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi   | 51 ++++++++++++++++++-
 arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 55 --------------------
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 58 ----------------------
 arch/arm/boot/dts/rk3288-veyron-minnie.dts | 52 -------------------
 arch/arm/boot/dts/rk3288-veyron-pinky.dts  | 17 +++++++
 arch/arm/boot/dts/rk3288-veyron-speedy.dts | 58 ----------------------
 6 files changed, 67 insertions(+), 224 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index c36fb0940478..719d936b7822 100644
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
@@ -117,8 +152,22 @@
 
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
index 4cc7d3659484..55955b082501 100644
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
@@ -105,7 +71,6 @@
 			232 233 234 235 236 237 238 239
 			240 241 242 243 244 245 246 247
 			248 249 250 251 252 253 254 255>;
-	power-supply = <&backlight_regulator>;
 };
 
 &i2c_tunnel {
@@ -137,7 +102,6 @@
 
 &panel {
 	compatible = "auo,b101ean01", "simple-panel";
-	power-supply= <&panel_regulator>;
 
 	/delete-node/ panel-timing;
 
@@ -411,12 +375,6 @@
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
@@ -439,16 +397,6 @@
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
index 9b6f4d9b03b6..f420499f300a 100644
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
+	power-supply = <&vcc33_lcd>;
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
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
