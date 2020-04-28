Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 426181BC1D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJwJhCg5Epr6ozHy6WbgZrDdX1HG/cej5pAWPdcAmaE=; b=tkiOR5qg7I1EfltLis0kBYwF+K
	86AT9H4F3OsuFHXyTmz/m4jVYjb5EOpfnmFwjDPmiYGi7s6WlCU8kv4H/PVUZ8CyG3VW/UPxq1xIG
	t52taqCYtDiL2J3ew5hfhnYfll1ZmpnXZPJmxPhmXouPAmJgs6Ctfop5QJitZ4+8LQT9c3KYXAwXE
	n+cc1tWznUHJq+2rtdwQ7SCUZuEhDAqj1nBuJGj8DUE6DO2JrAS2QL/InpMUlnRBSRLRipdOMNKg6
	FYwAsnQGFw1ZgF7xTCI9RXPSWI76ftqjXnM8FgrV6E+W7LbgVsGF7II84WvwCXa8bmqMquj2JzqDh
	N+Iso3Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRZM-0002hK-GM; Tue, 28 Apr 2020 14:50:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYO-0008Eg-FE; Tue, 28 Apr 2020 14:49:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id g12so3168723wmh.3;
 Tue, 28 Apr 2020 07:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qeGtKru8bhxB6/hDq4XVMeEBIdxLu70ja6sTJBKnbuw=;
 b=cTDMe2gmciox+mmosAc+rUsRLdZtto/BhFA1nlkHEFN6yQOsMDSLDu6C8cCpe0e/Uj
 Fup6Ll/GutARKyljOMW+rAjExEbmBQv2zq51kSpXG+zrwD8FbApCWItyaA9WGh16I03w
 3btllkPpLeCT7osJyhUKQqChCLYYCf6oPh5kBrz+gVL91cxLMOaBmFJW8fXNDRjBmZhZ
 w6hD7w7sJzE8YDTUnkQeIkVE/AM3IgeXWGAf/FAhURsIEcgY0eK4qbBVQZQS3gSa1BjN
 Khfun3W38YL96lpaGA2nn/AScSgSwD8wGTW4M4np7AWJ2Bbe038Ri7hdS/nOdJZI4zvR
 OWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qeGtKru8bhxB6/hDq4XVMeEBIdxLu70ja6sTJBKnbuw=;
 b=EWCv44fLG7RSbvOWd9VFWBOKy0HC+NlblpQFRq/0vTOZXCwKgy8ctJb52OrYra6t8w
 TpPEysTTj9z76xpHlb2EmL3gXyWMQrsiwYrSfgwKCuxXfyxQIwaRbBXLeI43CAxr87dZ
 OuIAwUFiiXmz3vw1RRHeyjcOJwQyNK881uib1DwuoWjdUnzZefB+r5QE8nIL2jkXA+SE
 K8ERrXM+F1YvL0tru1ot06tXpyPWwTURvPr6FizSRzAuhsZ9I8Dcac8WLsojvnFus7g0
 KGlVya+BGhr0gKw31je22QSu9O0esgXLck4nVmmAjnq8jE5EXAslxi6SpVCt63dLn9CF
 h2Pw==
X-Gm-Message-State: AGi0PuavxRQdljm6K1pPBtJu9YpN/FD/J6FI1py8NA76gKCM+oiKUzym
 IKnWnYFhEpd8vFm4CRZUHx0=
X-Google-Smtp-Source: APiQypLoRFwYkp13h4RrlQcpO/AjHJ33BIdLB18A7STBz9fUHxw3w2aN5mBzTEaSXKPJFxzJurF8Hg==
X-Received: by 2002:a1c:bc09:: with SMTP id m9mr4836453wmf.145.1588085382352; 
 Tue, 28 Apr 2020 07:49:42 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l9sm25458592wrq.83.2020.04.28.07.49.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 07:49:41 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/2] arm64: dts: rockchip: rename and label gpio-led
 subnodes
Date: Tue, 28 Apr 2020 16:49:33 +0200
Message-Id: <20200428144933.10953-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200428144933.10953-1-jbx6244@gmail.com>
References: <20200428144933.10953-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074944_533482_3DAC20E6 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'gpio-led' nodes were manually verified.
In order to automate this process leds-gpio.txt
has been converted to yaml. With this conversion a check
for pattern properties was added. A test with the command
below gives a screen full of warnings like:

arch/arm64/boot/dts/rockchip/rk3368-r88.dt.yaml: gpio-leds:
'work' does not match any of the regexes:
'(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Fix these errors with help of the following rules:

1: Add nodename in the preferred form.

2: Always add a label that ends with '_led' to prevent conflicts
   with other labels such as 'power' and 'mmc'

3: If leds need pinctrl add a label that ends with '_led_pin'
   also to prevent conflicts with other labels.

patternProperties:
  # The first form is preferred, but fall back to just 'led'
  # anywhere in the node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts |  6 ++---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |  4 +--
 arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts    |  4 +--
 .../boot/dts/rockchip/rk3368-orion-r68-meta.dts    |  4 +--
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts        |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      | 29 +++++++++++-----------
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    | 10 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  6 ++---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      | 10 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    | 29 +++++++++++-----------
 12 files changed, 57 insertions(+), 55 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 8011e9b12..ccb27023c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -28,14 +28,14 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			label = "firefly:red:power";
 			linux,default-trigger = "ir-power-click";
 			default-state = "on";
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		};
 
-		user {
+		user_led: led-1 {
 			label = "firefly:blue:user";
 			linux,default-trigger = "ir-user-click";
 			default-state = "off";
diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index cf20aac5f..fe253669b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -128,9 +128,9 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "led_pins";
-		pinctrl-0 = <&led_pins>;
+		pinctrl-0 = <&blue_led_pin>;
 
-		led-0 {
+		blue_led: led-0 {
 			label = "blue:heartbeat";
 			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
@@ -528,7 +528,7 @@
 	};
 
 	leds {
-		led_pins: led-pins {
+		blue_led_pin: blue-led-pin {
 			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 8d553c921..34db48c27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -86,7 +86,7 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			label = "firefly:blue:power";
 			linux,default-trigger = "heartbeat";
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
@@ -94,7 +94,7 @@
 			mode = <0x23>;
 		};
 
-		user {
+		user_led: led-1 {
 			label = "firefly:yellow:user";
 			linux,default-trigger = "mmc1";
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index ebf3eb222..6e09c223e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -73,12 +73,12 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			gpios = <&rk805 1 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "mmc0";
 		};
 
-		standby {
+		standby_led: led-1 {
 			gpios = <&rk805 0 GPIO_ACTIVE_LOW>;
 			linux,default-trigger = "heartbeat";
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
index 1d0778ff2..46357d1d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
@@ -50,13 +50,13 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
 			label = "geekbox:blue:led";
 			default-state = "on";
 		};
 
-		red {
+		red_led: led-1 {
 			gpios = <&gpio2 RK_PA3 GPIO_ACTIVE_HIGH>;
 			label = "geekbox:red:led";
 			default-state = "off";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 6cc310255..b058ce999 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -50,7 +50,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		red {
+		red_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "orion:red:led";
 			pinctrl-names = "default";
@@ -58,7 +58,7 @@
 			default-state = "on";
 		};
 
-		blue {
+		blue_led: led-1 {
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
 			label = "orion:blue:led";
 			pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 006a1fb6a..236ab0f1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -43,7 +43,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "r88:green:led";
 			pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
index ebe2ee77b..1ce85a581 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-ficus.dts
@@ -27,42 +27,43 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led1>, <&user_led2>, <&user_led3>,
-			    <&user_led4>, <&wlan_led>, <&bt_led>;
+		pinctrl-0 = <&user_led1_pin>, <&user_led2_pin>,
+			    <&user_led3_pin>, <&user_led4_pin>,
+			    <&wlan_led_pin>, <&bt_led_pin>;
 
-		user_led1 {
+		user_led1: led-1 {
 			label = "red:user1";
 			gpios = <&gpio4 25 0>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		user_led2 {
+		user_led2: led-2 {
 			label = "red:user2";
 			gpios = <&gpio4 26 0>;
 			linux,default-trigger = "mmc0";
 		};
 
-		user_led3 {
+		user_led3: led-3 {
 			label = "red:user3";
 			gpios = <&gpio4 30 0>;
 			linux,default-trigger = "mmc1";
 		};
 
-		user_led4 {
+		user_led4: led-4 {
 			label = "red:user4";
 			gpios = <&gpio1 0 0>;
 			panic-indicator;
 			linux,default-trigger = "none";
 		};
 
-		wlan_active_led {
+		wlan_active_led: led-5 {
 			label = "red:wlan";
 			gpios = <&gpio1 1 0>;
 			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
-		bt_active_led {
+		bt_active_led: led-6 {
 			label = "red:bt";
 			gpios = <&gpio1 4 0>;
 			linux,default-trigger = "hci0-power";
@@ -114,32 +115,32 @@
 	};
 
 	leds {
-		user_led1: user_led1 {
+		user_led1_pin: user-led1-pin {
 			rockchip,pins =
 				<4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led2: user_led2 {
+		user_led2_pin: user-led2-pin {
 			rockchip,pins =
 				<4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led3: user_led3 {
+		user_led3_pin: user-led3-pin {
 			rockchip,pins =
 				<4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led4: user_led4 {
+		user_led4_pin: user-led4-pin {
 			rockchip,pins =
 				<1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		wlan_led: wlan_led {
+		wlan_led_pin: wlan-led-pin {
 			rockchip,pins =
 				<1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_led: bt_led {
+		bt_led_pin: bt-led-pin {
 			rockchip,pins =
 				<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index d63faf38c..20b5599f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -91,15 +91,15 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
+		pinctrl-0 = <&work_led_pin>, <&diy_led_pin>;
 
-		work-led {
+		work_led: led-0 {
 			label = "work";
 			default-state = "on";
 			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		};
 
-		diy-led {
+		diy_led: led-1 {
 			label = "diy";
 			default-state = "off";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
@@ -629,11 +629,11 @@
 	};
 
 	leds {
-		work_led_gpio: work_led-gpio {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		diy_led_gpio: diy_led-gpio {
+		diy_led_pin: diy-led-pin {
 			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 4b4a38e59..bf87fa32d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -39,9 +39,9 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&power_led_gpio>;
+		pinctrl-0 = <&power_led_pin>;
 
-		led-0 {
+		power_led: led-0 {
 			label = "blue:power";
 			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
@@ -510,7 +510,7 @@
 	};
 
 	leds {
-		power_led_gpio: power-led-gpio {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index d44c73521..cb0245d22 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -90,9 +90,9 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pwrled_gpio &slpled_gpio>;
+		pinctrl-0 = <&pwr_led_pin &slp_led_pin>;
 
-		green-led {
+		green_led: led-0 {
 			color = <LED_COLOR_ID_GREEN>;
 			default-state = "on";
 			function = LED_FUNCTION_POWER;
@@ -100,7 +100,7 @@
 			label = "green:power";
 		};
 
-		red-led {
+		red_led: led-1 {
 			color = <LED_COLOR_ID_RED>;
 			default-state = "off";
 			function = LED_FUNCTION_STANDBY;
@@ -825,11 +825,11 @@
 	};
 
 	leds {
-		pwrled_gpio: pwrled_gpio {
+		pwr_led_pin: pwr-led-pin {
 			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		slpled_gpio: slpled_gpio {
+		slp_led_pin: slp-led-pin {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index 437a75f31..c88295782 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -17,42 +17,43 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led1>, <&user_led2>, <&user_led3>,
-			    <&user_led4>, <&wlan_led>, <&bt_led>;
+		pinctrl-0 = <&user_led1_pin>, <&user_led2_pin>,
+			    <&user_led3_pin>, <&user_led4_pin>,
+			    <&wlan_led_pin>, <&bt_led_pin>;
 
-		user_led1 {
+		user_led1: led-1 {
 			label = "green:user1";
 			gpios = <&gpio4 RK_PC2 0>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		user_led2 {
+		user_led2: led-2 {
 			label = "green:user2";
 			gpios = <&gpio4 RK_PC6 0>;
 			linux,default-trigger = "mmc0";
 		};
 
-		user_led3 {
+		user_led3: led-3 {
 			label = "green:user3";
 			gpios = <&gpio4 RK_PD0 0>;
 			linux,default-trigger = "mmc1";
 		};
 
-		user_led4 {
+		user_led4: led-4 {
 			label = "green:user4";
 			gpios = <&gpio4 RK_PD4 0>;
 			panic-indicator;
 			linux,default-trigger = "none";
 		};
 
-		wlan_active_led {
+		wlan_active_led: led-5 {
 			label = "yellow:wlan";
 			gpios = <&gpio4 RK_PD5 0>;
 			linux,default-trigger = "phy0tx";
 			default-state = "off";
 		};
 
-		bt_active_led {
+		bt_active_led: led-6 {
 			label = "blue:bt";
 			gpios = <&gpio4 RK_PD6 0>;
 			linux,default-trigger = "hci0-power";
@@ -68,32 +69,32 @@
 
 &pinctrl {
 	leds {
-		user_led1: user_led1 {
+		user_led1_pin: user-led1-pin {
 			rockchip,pins =
 				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led2: user_led2 {
+		user_led2_pin: user-led2-pin {
 			rockchip,pins =
 				<4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led3: user_led3 {
+		user_led3_pin: user-led3-pin {
 			rockchip,pins =
 				<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led4: user_led4 {
+		user_led4_pin: user-led4-pin {
 			rockchip,pins =
 				<4 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		wlan_led: wlan_led {
+		wlan_led_pin: wlan-led-pin {
 			rockchip,pins =
 				<4 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_led: bt_led {
+		bt_led_pin: bt-led-pin {
 			rockchip,pins =
 				<4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
