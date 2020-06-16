Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735711FB404
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08QxqUmc9Y4rNCfRtHTOCbq7Af5YOE7t9O3n/4BibWA=; b=CXOKod6WbHTMl7
	a/Ldkg2cN6W7GQVp9kwByoB4T7Xirzox8S34qAzHqXzxa67BuoRUxrgF/QWtbzUy6C1YiRdIfJ2Bx
	AnW1YWxLra5qXgB2msJramcLRmDYtHrvwUKW2iCx6XI3TX/73eiZDKNH1t7pz8hLlKTzt6g128M6M
	MQbeIjdZafvH8MTG/0N5iFhBRigyHPsXzP7KfwyAiVfYLP8d8FsiGJ/JRmwW2Hog/X7I+DBbcKPLw
	rs9ioZDuIUNHZm8krNl16Gwczpbxk3Y7mcjOjsykcZ9WKuxYd8h1JqcyXT26FArjhtOqrKTzWuTWU
	hex56VBhJfT5d/oqJ7+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCPp-0006OZ-8X; Tue, 16 Jun 2020 14:18:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC3p-0005CY-J8
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:55:43 +0000
Received: by mail-wm1-x343.google.com with SMTP id y20so3179573wmi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Uz0efW8iA6V8zBMtaBk0aU4WternaWXVod/MWBXLlPY=;
 b=EE4mfDSdA0ZrSOT8o19klgutHvWOj43dyB/DNktOgAqpYIkEbBubei5Njx8OxObiFr
 a9DG9BTgRhKiAr2c0ymuyC5V0LaiMOvJetTN2Vk3V72YrXSbhm5s70c58uCaPcHiVii8
 aMWcGsRlZDMEo1VrfdELoaUZz1Eo9YVQOxzE7f0Cjr8+2AaZYrJgmUwDuf9xTjWq37mx
 077IqHDL37AmL9yPEqCIxK61rNeggG9bVeklnoauV1XkNuy1vEpyIMdSj0zb0Lo/v5mV
 VgaMzY+rjlKa0Ae2DV4sukC6HYxEUEdTUsdG/u7ex0iU8Jd052PS+VAEwc405E/4zLvM
 0LIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Uz0efW8iA6V8zBMtaBk0aU4WternaWXVod/MWBXLlPY=;
 b=LD+shRS+tvtGXsEjajMAP8nESazfmiyMbAIRr75rCr2AokAXrEXllatmnjr6vLBt/Q
 E74JJ77z4qUY2DCcwSdunUWmf7cbb1RZg+/qNKGIHNuBBUnc3WgCB0foYv9WSgZGblHR
 0mzAcp7vnB2CggF9AH26B+C0+AKo+e9uSyTYcFld93dnqbf0EM0bLmGNOabwkz3iv+lV
 HnfTCF3Ae49XuhkERuAEjpyTuolXQJlXlIymryuhr6AqRZHBee28Tua+eh6XTzhrZSox
 porjU1CEnoFDcet5zxMo2DQjcnf3uWwK5rX2EdVJyWAjGu5Q46yTg1fpGKL+t33gTaH1
 aaAA==
X-Gm-Message-State: AOAM533Q7D3h+Jop3LWKWwwVk+MCXynfS+r/I+h20AGNK9pombLlpu0s
 +w3xiBkOgFq/D9gnTQBM8gM=
X-Google-Smtp-Source: ABdhPJymcGJMOYoLq3eDy8kdaHoIf86nUxQ8Hmbzn8ciSNOiUXTeReikZFFVZyjWZVsfXxpE2EN3wA==
X-Received: by 2002:a1c:e40a:: with SMTP id b10mr3246953wmh.41.1592315732244; 
 Tue, 16 Jun 2020 06:55:32 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id w10sm29435711wrp.16.2020.06.16.06.55.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:55:31 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 70/73] arm64: tegra: Various fixes for PMICs
Date: Tue, 16 Jun 2020 15:52:35 +0200
Message-Id: <20200616135238.3001888-71-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065533_827658_4971031B 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

Standardize on "pmic" as the node name for the PMIC on Tegra210 systems
and use consistent names for pinmux and GPIO hog nodes.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra210-p2894.dtsi | 31 +++++++++----------
 arch/arm64/boot/dts/nvidia/tegra210-smaug.dts | 14 ++++-----
 2 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
index 1acb9bb6c7df..41beab626d95 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210-p2894.dtsi
@@ -1328,7 +1328,7 @@ i2c@7000d000 {
 		status = "okay";
 		clock-frequency = <400000>;
 
-		max77620: max77620@3c {
+		pmic: pmic@3c {
 			compatible = "maxim,max77620";
 			reg = <0x3c>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
@@ -1343,12 +1343,12 @@ max77620: max77620@3c {
 			pinctrl-0 = <&max77620_default>;
 
 			max77620_default: pinmux@0 {
-				pin_gpio0 {
+				gpio0 {
 					pins = "gpio0";
 					function = "gpio";
 				};
 
-				pin_gpio1 {
+				gpio1 {
 					pins = "gpio1";
 					function = "fps-out";
 					drive-push-pull = <1>;
@@ -1357,34 +1357,33 @@ pin_gpio1 {
 					maxim,active-fps-power-down-slot = <0>;
 				};
 
-				pin_gpio2_3 {
-					pins = "gpio2", "gpio3";
+				gpio2 {
+					pins = "gpio2";
 					function = "fps-out";
 					drive-open-drain = <1>;
 					maxim,active-fps-source = <MAX77620_FPS_SRC_0>;
 				};
 
-				pin_gpio4 {
+				gpio3 {
+					pins = "gpio3";
+					function = "fps-out";
+					drive-open-drain = <1>;
+					maxim,active-fps-source = <MAX77620_FPS_SRC_0>;
+				};
+
+				gpio4 {
 					pins = "gpio4";
 					function = "32k-out1";
 				};
 
-				pin_gpio5_6_7 {
+				gpio5_6_7 {
 					pins = "gpio5", "gpio6", "gpio7";
 					function = "gpio";
 					drive-push-pull = <1>;
 				};
-
-				pin_gpio2 {
-					maxim,active-fps-source = <MAX77620_FPS_SRC_0>;
-				};
-
-				pin_gpio3 {
-					maxim,active-fps-source = <MAX77620_FPS_SRC_0>;
-				};
 			};
 
-			spmic-default-output-high {
+			gpio@0 {
 				gpio-hog;
 				output-high;
 				gpios = <2 GPIO_ACTIVE_HIGH>,
diff --git a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
index f7840e5e069a..a946c5c31102 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra210-smaug.dts
@@ -1354,11 +1354,11 @@ max77621_cpu: max77621@1b {
 			maxim,enable-active-discharge;
 			maxim,enable-bias-control;
 			maxim,enable-etr;
-			maxim,enable-gpio = <&max77620 5 0>;
+			maxim,enable-gpio = <&pmic 5 0>;
 			maxim,externally-enable;
 		};
 
-		max77620: max77620@3c {
+		pmic: pmic@3c {
 			compatible = "maxim,max77620";
 			reg = <0x3c>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
@@ -1372,8 +1372,8 @@ max77620: max77620@3c {
 			pinctrl-names = "default";
 			pinctrl-0 = <&max77620_default>;
 
-			max77620_default: pinmux@0 {
-				pin_gpio {
+			max77620_default: pinmux {
+				gpio0_1_2_7 {
 					pins = "gpio0", "gpio1", "gpio2", "gpio7";
 					function = "gpio";
 				};
@@ -1383,7 +1383,7 @@ pin_gpio {
 				 * sequence, So it must be sequenced up (automatically
 				 * set by OTP) and down properly.
 				 */
-				pin_gpio3 {
+				gpio3 {
 					pins = "gpio3";
 					function = "fps-out";
 					drive-open-drain = <1>;
@@ -1392,13 +1392,13 @@ pin_gpio3 {
 					maxim,active-fps-power-down-slot = <2>;
 				};
 
-				pin_gpio5_6 {
+				gpio5_6 {
 					pins = "gpio5", "gpio6";
 					function = "gpio";
 					drive-push-pull = <1>;
 				};
 
-				pin_32k {
+				gpio4 {
 					pins = "gpio4";
 					function = "32k-out1";
 				};
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
