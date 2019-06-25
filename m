Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2389455B12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 00:27:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vJuOqD+syrqIl4sewgWuW6uKbf5SQ3qPj1G/UtU5tmU=; b=JrkjaDDum5R/ht
	GMWbPbcqOhrUTLwmeB9ELzu+kutGXXqymdgLP/m+EqOEBAlZkBCCwcZJPDAkOuraJpK6IcS4DoD9n
	nIMkJDnDxa3iH6bPpIdaAtM8IgCVhR7kdRF9qN2dP9bESXdYp68RJ37IWQGcqgu7VFPuViwmVmd6z
	uzN10nsYGV31hco5EZjPm548Z8AMxpTAhB3J9zPb556o3enhNU/VxaUDzcT43OCwQguUu40+4pIGO
	tuvBo8dIPzsUh91cGHOxV6+NJTzK1LgpOaiI8C8W6Z37+VQTWU0xkLQ7SQK428hnB/smxIxjq2Rso
	oslmKd6HRa6FLsVc//lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftua-0006TY-Gu; Tue, 25 Jun 2019 22:27:36 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfttf-00064S-E8
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 22:26:45 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi6so191815plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 15:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/anjFO55mIDYGOONoYDId7ZUSVlq71MD4cw6Fl8jb+0=;
 b=RFI9Mh+Kqz56Ns4mk7izsnbRhsvzjgGefcqJT3jaFbmZpHUXxNsIwYhYSSPhnYKyCb
 k1EuQgMOJdcuOXjMh3dJoFVhrUG24+0a+JHpgejc7YOdia4jS67JRBVEZQUimxTLtRGL
 CCVp5hjAj9UAtnS3esAaX6jI81cQvtevlV2R4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/anjFO55mIDYGOONoYDId7ZUSVlq71MD4cw6Fl8jb+0=;
 b=SCG2fiCrEA6cd0sF/ykwpVFBw2v8g8ElZ1OHb2NmXrTdwIbrlZk4u9EWUzRiF5cuBN
 nbvfJuh3zUld9a8p41sTMmu20IqspduW14kr4GxvvO2hPEI8CD6yAzvrYHHglssam64o
 3W6d3jtciDMX2ei5S3ek9a/v337nWR7DtgkvFQHz3LGZfwjxVglo+sUcmVsCn74X+vqC
 tXqV0xPOq1TqOMhrY0piOOZSBasB/f4Z++Up5eT2MmkutNp9nhfq+2RrFXDudIK9z850
 f5kaLXuLNTrwM4ZZla/9vGRCDBxfFnvE1DG/G3p1XFV9ori9fb+d5YMNGhRHB/UoIens
 J6iQ==
X-Gm-Message-State: APjAAAXU3IlECIvxeV/vMbfBAWnrru+ImdupQq3q74jEfJDuBt1uWLSA
 E2SL50n6n5hVg4xZ7C+3Go9Mng==
X-Google-Smtp-Source: APXvYqx9QmVp5rnU9LB4cE5tUvtQqaAJkWidUi6Vj7FDDnBSBfEQfRc1gxS350AJnjRpUthQZirivQ==
X-Received: by 2002:a17:902:bcc4:: with SMTP id
 o4mr1129061pls.90.1561501594294; 
 Tue, 25 Jun 2019 15:26:34 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id p26sm9124466pgd.76.2019.06.25.15.26.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 15:26:33 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/2] ARM: dts: rockchip: move rk3288-veryon display settings
 into a separate file
Date: Tue, 25 Jun 2019 15:26:28 -0700
Message-Id: <20190625222629.154619-1-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_152641_762598_BCE68FD2 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
This series is based on v5.3-armsoc/dts32 (f497ab6b4bb8 "ARM:
dts: rockchip: Configure BT_HOST_WAKE as wake-up signal on
veyron") plus the display timing patches from Doug:

https://lore.kernel.org/patchwork/patch/1057055/
https://lore.kernel.org/patchwork/patch/1057053/
---
 .../boot/dts/rk3288-veyron-chromebook.dtsi    | 115 +---------------
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi      | 124 ++++++++++++++++++
 2 files changed, 125 insertions(+), 114 deletions(-)
 create mode 100644 arch/arm/boot/dts/rk3288-veyron-edp.dtsi

diff --git a/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi b/arch/arm/boot/dts/rk3288-veyron-chromebook.dtsi
index 6568b5218dd0..3cb438ab5dd2 100644
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
@@ -262,12 +155,6 @@
 		&suspend_l_sleep
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
