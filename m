Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430641BC1CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cZObcqJRn5pU/gKyjZ/j4D8c/8r/6of2qNByLV+C13A=; b=Lqd
	BIW1XA/JZ05ERpAED29z9cjzhXx8DcjwNrC3Jd/vkC+X7tmbYMwpLf+ePFPz2ssJo5hrTtZ3fUyXQ
	5f2W60j86mJlOEKKWUevdo9LyfCJNalTzKeU7hlzw6XMQjJ+vNg62LE0CS25I77BW0W+bFUkdrL+A
	kOiy/uyFVer4XPzB4nypGS+/NUhOItm2HvW8TIbm826T04esvdyb9FGESL+koAcVxKE7LSGYJuUna
	1DztShxDOJj1poyqvillIaL/YQEZUnXXV73gwN4Ao/deAoEpQ9Tf3txxMxJLGTM4s3djwJ1U73xlf
	dwPIAbmAaxg1AjOO82yVx5ZTDmEUpNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRYy-0008Ih-An; Tue, 28 Apr 2020 14:50:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYN-0008DG-8g; Tue, 28 Apr 2020 14:49:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so3168611wmh.3;
 Tue, 28 Apr 2020 07:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=J3QFlJHQxyblSAKFcby4n2BdhC/OIDlr14v3xcvEKMs=;
 b=c0sO6lRtAuqtBjZRSNQfRm/Pzp1kIsKdjOE+HlZN/+k2huybqplV1iSiEkeQ74EoC4
 sGRnJWZS1DqceFsoKKHaG5yzy00cT+HtC8kiCUAZEY0gJo+LKtQ8r8nRFnkM83x5x1bm
 SQYILQcYd/F3Ch4pLEUl/nybxigfWDhIOF+BjVDUr1btPNUkFztaUssreBnNg+1+4NDh
 QXTkXnL1+S/x5Sz6S+gqHGtvG6b7EgaqMB3wTU5xq4JeKv/62uDpAMSx+KSZ2hUAkMU6
 1r7TgZp8HCIRpevF3+UhrJnJjXQ8TdS/z+JRTXjgdvOoGaV87XMixJjHZ4PH4DRwnCLU
 lRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=J3QFlJHQxyblSAKFcby4n2BdhC/OIDlr14v3xcvEKMs=;
 b=YkkZgSvSKz2kcCTuINRkadFurJOVrSRy3ladTVfvLcUByuBMPWW32YrV7S+I1Grbou
 YScd2N0wk2YBvhYLE3f8Pi3qk/nyr/jbV9qpjz1HWokFgT/QR1ft8ow24uV0SEvGKxrd
 f2jS2nfwO/FVqjPtHR+Fvwh9QQFaKfEZQ00RBBEkQQO5Mu7ASDkz9H+dCP8Ov757Clr+
 gHY9rPYZTMh7W0cnLbJxoBF4vjElZdkYqodiETReMergmmGtkJWMUE475KBI8cXeiiVB
 NtuF8ArreWUWqBVqlbQSBcnPX28aQmNyj6mm6whUGeiyjsNSm32EqZW8Ywn99gHu9+P+
 TJaw==
X-Gm-Message-State: AGi0PuYy7kbqMOrZYeqIcgbJpICeCcvMNXVGJX5WWphbCC1Cpext78dH
 gsHxo/vRoZFaednsnJlypjg=
X-Google-Smtp-Source: APiQypJAKyJqf2PrCUMAYFRdSOzlF+gZWRuzX6TH1+FLVLdS5km6gvLw0fFUb2v9zmrI5Pw3scoQfw==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr5041718wmf.77.1588085381239; 
 Tue, 28 Apr 2020 07:49:41 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id l9sm25458592wrq.83.2020.04.28.07.49.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 28 Apr 2020 07:49:40 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/2] ARM: dts: rockchip: rename and label gpio-led subnodes
Date: Tue, 28 Apr 2020 16:49:32 +0200
Message-Id: <20200428144933.10953-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074943_422512_B024B133 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

arch/arm/boot/dts/rk3188-radxarock.dt.yaml: gpio-leds:
'blue', 'green', 'sleep'
do not match any of the regexes:
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

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts          |  2 +-
 arch/arm/boot/dts/rk3066a-mk808.dts         |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts      |  6 +++---
 arch/arm/boot/dts/rk3229-xms6.dts           |  2 +-
 arch/arm/boot/dts/rk3288-firefly-reload.dts | 12 ++++++------
 arch/arm/boot/dts/rk3288-firefly.dtsi       | 12 ++++++------
 arch/arm/boot/dts/rk3288-miqi.dts           |  2 +-
 arch/arm/boot/dts/rk3288-phycore-som.dtsi   |  6 +++---
 arch/arm/boot/dts/rk3288-rock2-square.dts   |  4 ++--
 arch/arm/boot/dts/rk3288-tinker.dtsi        |  6 +++---
 10 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 2ff9f152d..7154b827e 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -16,7 +16,7 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 			label = "kylin:red:led";
 			pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/rk3066a-mk808.dts b/arch/arm/boot/dts/rk3066a-mk808.dts
index 365eff621..eed9e60cf 100644
--- a/arch/arm/boot/dts/rk3066a-mk808.dts
+++ b/arch/arm/boot/dts/rk3066a-mk808.dts
@@ -22,7 +22,7 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			label = "mk808:blue:power";
 			gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index c9a7f5409..b0fef82c0 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -33,19 +33,19 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		green {
+		green_led: led-0 {
 			label = "rock:green:user1";
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		blue {
+		blue_led: led-1 {
 			label = "rock:blue:user2";
 			gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_LOW>;
 			default-state = "off";
 		};
 
-		sleep {
+		sleep_led: led-2 {
 			label = "rock:red:power";
 			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
index 933ef69da..637245324 100644
--- a/arch/arm/boot/dts/rk3229-xms6.dts
+++ b/arch/arm/boot/dts/rk3229-xms6.dts
@@ -33,7 +33,7 @@
 	power-led {
 		compatible = "gpio-leds";
 
-		blue {
+		blue_led: led-0 {
 			gpios = <&gpio3 21 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 		};
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rk3288-firefly-reload.dts
index 8c38bda21..9a4a9749c 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rk3288-firefly-reload.dts
@@ -45,20 +45,20 @@
 	leds {
 		compatible = "gpio-leds";
 
-		power {
+		power_led: led-0 {
 			gpios = <&gpio8 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:power";
 			pinctrl-names = "default";
-			pinctrl-0 = <&power_led>;
+			pinctrl-0 = <&power_led_pin>;
 			panic-indicator;
 		};
 
-		work {
+		work_led: led-1 {
 			gpios = <&gpio8 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:user";
 			linux,default-trigger = "rc-feedback";
 			pinctrl-names = "default";
-			pinctrl-0 = <&work_led>;
+			pinctrl-0 = <&work_led_pin>;
 		};
 	};
 
@@ -334,11 +334,11 @@
 	};
 
 	leds {
-		power_led: power-led {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <8 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		work_led: work-led {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <8 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index 5e0a19004..e5c4fd4ea 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -62,20 +62,20 @@
 	leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio8 RK_PA1 GPIO_ACTIVE_LOW>;
 			label = "firefly:blue:user";
 			linux,default-trigger = "rc-feedback";
 			pinctrl-names = "default";
-			pinctrl-0 = <&work_led>;
+			pinctrl-0 = <&work_led_pin>;
 		};
 
-		power {
+		power_led: led-1 {
 			gpios = <&gpio8 RK_PA2 GPIO_ACTIVE_LOW>;
 			label = "firefly:green:power";
 			linux,default-trigger = "default-on";
 			pinctrl-names = "default";
-			pinctrl-0 = <&power_led>;
+			pinctrl-0 = <&power_led_pin>;
 		};
 	};
 
@@ -429,11 +429,11 @@
 	};
 
 	leds {
-		power_led: power-led {
+		power_led_pin: power-led-pin {
 			rockchip,pins = <8 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		work_led: work-led {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <8 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index c41d012c8..213c9eb84 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -30,7 +30,7 @@
 	leds {
 		compatible = "gpio-leds";
 
-		work {
+		work_led: led-0 {
 			gpios = <&gpio7 RK_PA2 GPIO_ACTIVE_HIGH>;
 			label = "miqi:green:user";
 			linux,default-trigger = "timer";
diff --git a/arch/arm/boot/dts/rk3288-phycore-som.dtsi b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
index 77a47b9b7..e43887c96 100644
--- a/arch/arm/boot/dts/rk3288-phycore-som.dtsi
+++ b/arch/arm/boot/dts/rk3288-phycore-som.dtsi
@@ -36,9 +36,9 @@
 	leds: user-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&user_led>;
+		pinctrl-0 = <&user_led_pin>;
 
-		user {
+		user_led: led-0 {
 			label = "green_led";
 			gpios = <&gpio7 2 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
@@ -372,7 +372,7 @@
 	};
 
 	leds {
-		user_led: user-led {
+		user_led_pin: user-led-pin {
 			rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_output_high>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index cdcdc921e..3cca4d0f9 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -41,13 +41,13 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		heartbeat {
+		heartbeat_led: led-0 {
 			gpios = <&gpio7 RK_PB7 GPIO_ACTIVE_LOW>;
 			label = "rock2:green:state1";
 			linux,default-trigger = "heartbeat";
 		};
 
-		mmc {
+		mmc_led: led-1 {
 			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_LOW>;
 			label = "rock2:blue:state2";
 			linux,default-trigger = "mmc0";
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index acfaa12ec..90e9be443 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -46,17 +46,17 @@
 	gpio-leds {
 		compatible = "gpio-leds";
 
-		act-led {
+		act_led: led-0 {
 			gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
 		};
 
-		heartbeat-led {
+		heartbeat_led: led-1 {
 			gpios = <&gpio1 RK_PD1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
 
-		pwr-led {
+		pwr_led: led-2 {
 			gpios = <&gpio0 RK_PA3 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "default-on";
 		};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
