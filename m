Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 968CC661CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 00:35:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JhHxPIAxo1zEE98lB8Jq0fQa8ohbD4A4LL5Nw38+YuE=; b=jr6jCql4RfF13q
	Dgo8wMWm8Bx0+o7q7wl23rZkzXjHGYKqM2h4w39sNXc45qTEs9jxtCivoCXhHKAf/YISQzckxjWWf
	29ktNIxXbq2Pp3Gwd5KgDoRQqOQnoZuk+7br/kT8TRmX9kTfp+PRrVgKybYRzW/dbzdAcKDsR90KQ
	hNKihQgjnGv4CoBPTOQLsUA68RF4syMXB4s1cd8HhoivZHLMEN85Y7ADISvK4GBe0N2gu/6sCcaVM
	q1asDZcyH3SjKah9gS4Q974LT0LUg3zrhXiXmPgGkY3veD/nbT+hw1hLn6CwL3dupyuRTOg/WdyuV
	VKnILi0kodF07eASglQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlhf6-0002rV-0P; Thu, 11 Jul 2019 22:35:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlheq-0002pw-N8
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 22:35:22 +0000
Received: by mail-pf1-x443.google.com with SMTP id u14so3412245pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 15:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JFuSIJRy0Q70Lc5eV+IaXCY1aA219ryYcOzrVBKkU0E=;
 b=moYBXVQNdcwbOXpjrjcF08CcBZwBVJwkfkdTr0eOBL65eVafX0QFVqMjMCp+FRITDv
 7EB1E2RgGSpVzF6aBppp97dzW0GlAfTx+wGuGeZM0PrF/ya/7PcxIRQszIK5du3jaVl5
 G2ACQ3JXo0w2WJl1HWrprNi1KCGHigCG3YNKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JFuSIJRy0Q70Lc5eV+IaXCY1aA219ryYcOzrVBKkU0E=;
 b=WAxCaBc307wEYU7/SUk4DSrjh4VYpWtsLNct0Omdnz+fT40D+0Fn+vsI/3dAQY2gdC
 RQpT7/C7PmQU77MwlkVeiqfOL82BVufAfKPSUot3vsWiTyyqbdfS43tdV2sUzpfOUNAA
 oP+sJE1fT4311KklIIlr8qkcYBVwze2DL4UG5JbaS48hVBxMUadrdAb8uFwfhR3ahoAe
 oA2rDpvtK512qk/IybL9gLTto3Z+g7P2Qc9ZAaeAmKohV/UW2bI9/XgX1i4bz+p2KY16
 0dpmZmv7lrlYufwXIttut8KRAEd16yIMlU9biglJ7WgSdrm/pK3aLDvwQUJfKllh/1y3
 013g==
X-Gm-Message-State: APjAAAVYLQk8cVDF7JnU9v4sw7jrHM+j1yJIFYOueJAZ/z9MQrXJj8Cy
 47VNV2hJc8+Olzg+8fzwftMiaA==
X-Google-Smtp-Source: APXvYqwDJDaouQsBRIqqk+FnUnPQpePxX66GoTx6nErFZlG7We3Vs/MRJTLWEud3VPaRsVDC6eklDw==
X-Received: by 2002:a17:90a:8c92:: with SMTP id
 b18mr7328507pjo.97.1562884519120; 
 Thu, 11 Jul 2019 15:35:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id r7sm7412638pfl.134.2019.07.11.15.35.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 15:35:18 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Date: Thu, 11 Jul 2019 15:34:54 -0700
Message-Id: <20190711223455.12210-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_153520_775774_6D189A1C 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

The chromebook .dtsi file contains common settings for veyron
Chromebooks with eDP displays. Some veyron devices with a display
aren't Chromebooks (e.g. 'tiger' aka 'AOpen Chromebase Mini'), move
display related bits from the chromebook .dtsi into a separate file
to avoid redundant DT settings.

The new file is included from the chromebook .dtsi and can be
included by non-Chromebook devices with a display.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- rebased on v5.4-armsoc/dts32 (0d19541e3b45)
---
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +---------------
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 124 ++++++++++++++++++
 2 files changed, 125 insertions(+), 114 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-edp.dtsi

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index 6a28ce345ba0..ffb60f880b39 100644
--- a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include "rk3288-veyron.dtsi"
 #include "rk3288-veyron-analog-audio.dtsi"
+#include "rk3288-veyron-edp.dtsi"
 #include "rk3288-veyron-sdmmc.dtsi"
 
 / {
@@ -18,50 +19,6 @@
 		i2c20 = &i2c_tunnel;
 	};
 
-	backlight: backlight {
-		compatible = "pwm-backlight";
-		brightness-levels = <
-			  0   1   2   3   4   5   6   7
-			  8   9  10  11  12  13  14  15
-			 16  17  18  19  20  21  22  23
-			 24  25  26  27  28  29  30  31
-			 32  33  34  35  36  37  38  39
-			 40  41  42  43  44  45  46  47
-			 48  49  50  51  52  53  54  55
-			 56  57  58  59  60  61  62  63
-			 64  65  66  67  68  69  70  71
-			 72  73  74  75  76  77  78  79
-			 80  81  82  83  84  85  86  87
-			 88  89  90  91  92  93  94  95
-			 96  97  98  99 100 101 102 103
-			104 105 106 107 108 109 110 111
-			112 113 114 115 116 117 118 119
-			120 121 122 123 124 125 126 127
-			128 129 130 131 132 133 134 135
-			136 137 138 139 140 141 142 143
-			144 145 146 147 148 149 150 151
-			152 153 154 155 156 157 158 159
-			160 161 162 163 164 165 166 167
-			168 169 170 171 172 173 174 175
-			176 177 178 179 180 181 182 183
-			184 185 186 187 188 189 190 191
-			192 193 194 195 196 197 198 199
-			200 201 202 203 204 205 206 207
-			208 209 210 211 212 213 214 215
-			216 217 218 219 220 221 222 223
-			224 225 226 227 228 229 230 231
-			232 233 234 235 236 237 238 239
-			240 241 242 243 244 245 246 247
-			248 249 250 251 252 253 254 255>;
-		default-brightness-level = <128>;
-		enable-gpios = <&gpio7 RK_PA2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bl_en>;
-		pwms = <&pwm0 0 1000000 0>;
-		post-pwm-on-delay-ms = <10>;
-		pwm-off-delay-ms = <10>;
-	};
-
 	gpio-charger {
 		compatible = "gpio-charger";
 		charger-type = "mains";
@@ -85,35 +42,6 @@
 		};
 	};
 
-	panel: panel {
-		compatible ="innolux,n116bge", "simple-panel";
-		status = "okay";
-		power-supply = <&vcc33_lcd>;
-		backlight = <&backlight>;
-
-		panel-timing {
-			clock-frequency = <74250000>;
-			hactive = <1366>;
-			hfront-porch = <136>;
-			hback-porch = <60>;
-			hsync-len = <30>;
-			hsync-active = <0>;
-			vactive = <768>;
-			vfront-porch = <8>;
-			vback-porch = <12>;
-			vsync-len = <12>;
-			vsync-active = <0>;
-		};
-
-		ports {
-			panel_in: port {
-				panel_in_edp: endpoint {
-					remote-endpoint = <&edp_out_panel>;
-				};
-			};
-		};
-	};
-
 	/* A non-regulated voltage from power supply or battery */
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
@@ -155,33 +83,6 @@
 	};
 };
 
-&edp {
-	status = "okay";
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&edp_hpd>;
-
-	ports {
-		edp_out: port@1 {
-			reg = <1>;
-			#address-cells = <1>;
-			#size-cells = <0>;
-			edp_out_panel: endpoint@0 {
-				reg = <0>;
-				remote-endpoint = <&panel_in_edp>;
-			};
-		};
-	};
-};
-
-&edp_phy {
-	status = "okay";
-};
-
-&pwm0 {
-	status = "okay";
-};
-
 &rk808 {
 	vcc11-supply = <&vcc_5v>;
 
@@ -234,14 +135,6 @@
 	};
 };
 
-&vopl {
-	status = "okay";
-};
-
-&vopl_mmu {
-	status = "okay";
-};
-
 &pinctrl {
 	pinctrl-0 = <
 		/* Common for sleep and wake, but no owners */
@@ -264,12 +157,6 @@
 		&bt_dev_wake_sleep
 	>;
 
-	backlight {
-		bl_en: bl-en {
-			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	buttons {
 		ap_lid_int_l: ap-lid-int-l {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
new file mode 100644
index 000000000000..5d812e9e78aa
--- /dev/null
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Google Veyron (and derivatives) fragment for the edp displays
+ *
+ * Copyright 2019 Google LLC
+ */
+
+/ {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		brightness-levels = <
+			  0   1   2   3   4   5   6   7
+			  8   9  10  11  12  13  14  15
+			 16  17  18  19  20  21  22  23
+			 24  25  26  27  28  29  30  31
+			 32  33  34  35  36  37  38  39
+			 40  41  42  43  44  45  46  47
+			 48  49  50  51  52  53  54  55
+			 56  57  58  59  60  61  62  63
+			 64  65  66  67  68  69  70  71
+			 72  73  74  75  76  77  78  79
+			 80  81  82  83  84  85  86  87
+			 88  89  90  91  92  93  94  95
+			 96  97  98  99 100 101 102 103
+			104 105 106 107 108 109 110 111
+			112 113 114 115 116 117 118 119
+			120 121 122 123 124 125 126 127
+			128 129 130 131 132 133 134 135
+			136 137 138 139 140 141 142 143
+			144 145 146 147 148 149 150 151
+			152 153 154 155 156 157 158 159
+			160 161 162 163 164 165 166 167
+			168 169 170 171 172 173 174 175
+			176 177 178 179 180 181 182 183
+			184 185 186 187 188 189 190 191
+			192 193 194 195 196 197 198 199
+			200 201 202 203 204 205 206 207
+			208 209 210 211 212 213 214 215
+			216 217 218 219 220 221 222 223
+			224 225 226 227 228 229 230 231
+			232 233 234 235 236 237 238 239
+			240 241 242 243 244 245 246 247
+			248 249 250 251 252 253 254 255>;
+		default-brightness-level = <128>;
+		enable-gpios = <&gpio7 RK_PA2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bl_en>;
+		pwms = <&pwm0 0 1000000 0>;
+		post-pwm-on-delay-ms = <10>;
+		pwm-off-delay-ms = <10>;
+	};
+
+	panel: panel {
+		compatible ="innolux,n116bge", "simple-panel";
+		status = "okay";
+		power-supply = <&vcc33_lcd>;
+		backlight = <&backlight>;
+
+		panel-timing {
+			clock-frequency = <74250000>;
+			hactive = <1366>;
+			hfront-porch = <136>;
+			hback-porch = <60>;
+			hsync-len = <30>;
+			hsync-active = <0>;
+			vactive = <768>;
+			vfront-porch = <8>;
+			vback-porch = <12>;
+			vsync-len = <12>;
+			vsync-active = <0>;
+		};
+
+		ports {
+			panel_in: port {
+				panel_in_edp: endpoint {
+					remote-endpoint = <&edp_out_panel>;
+				};
+			};
+		};
+	};
+};
+
+&edp {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&edp_hpd>;
+
+	ports {
+		edp_out: port@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			edp_out_panel: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&panel_in_edp>;
+			};
+		};
+	};
+};
+
+&edp_phy {
+	status = "okay";
+};
+
+&pinctrl {
+	backlight {
+		bl_en: bl-en {
+			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pwm0 {
+	status = "okay";
+};
+
+&vopl {
+	status = "okay";
+};
+
+&vopl_mmu {
+	status = "okay";
+};
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
