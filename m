Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469BB1DEC61
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PTP6MpDW9y71iVGE4EwlV46kk9agWfvyemW513QaFJk=; b=fHr
	dcIVWgPNZFOEGbTwn3Sw6quzKkWBz23jFWIz4+6fODI2VFJD52UKgWaPfWANYdUGsHEnW+MraA8SC
	w5HAJ28Ck1+2mTYzvkpM8KYaCXYmy2yH/hKNrmz8jO33axs4X5orCUjCR+8lflnyW3ne4T6mUEsST
	zuRWyS4rbtUniXuEDANjlhbqDS3tLUkubZxG3SurhCMw8546TTSFS/cGBL+aGFwFlKrHsIODZiuoE
	1uOYMIFstuAs8TyqeQ0jf77sYUZ71tMUZ4V10Fg7odRySIg6XjM3FG0NTza2J9C1wZH47mWDM+D4r
	8c+6NriOZUNovEUUynYZlLXZzlCcmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9tF-00068n-6j; Fri, 22 May 2020 15:47:17 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9t4-00067z-VI; Fri, 22 May 2020 15:47:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id e10so9599281edq.0;
 Fri, 22 May 2020 08:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qwlZdKUtG9hIaYKjrN5RMCIPKH2TLwxT9v7URTVXs9Y=;
 b=qPa3zQjSEi9a/EsgmMgPl4eA4N+ULhTJsySmjTkW284WWZwDU8Hoc7oKcm9mqGvcms
 Fd7xcHQTzV20f+keATE3oqg1xBlF6SOpc20FDvbGv6G+dCLgQAftHQoUyxQl1CwVP4T/
 Uz35pWmgXnLm348oQp+3M7iKeWKlVYhkYnVogG9Sbs0bPOBLlNmtRFGTVcY7UPnVWovq
 FjtA8LTJt1DrVyqoUI7X5qJxu1lYBvwgXJGCEuCh1OqVVXxW4Gfq316NYhUj4RCHoLl5
 mKriNIM5K2SttvOxpNA9doeGGr4+4agF4PDkuUL1KSdgu5M6Bd//ZY8i6TNdvNyfi7My
 wIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qwlZdKUtG9hIaYKjrN5RMCIPKH2TLwxT9v7URTVXs9Y=;
 b=cyxx7VGXzjGnm2XTpvmXD7edIZB59dV4grLIw8R1vBiqNtCPHOVOiB7iOKvc6tymoW
 OXQYFK5u/dkposTLwzqJmbb3SwJq2TkPc7vywdVZ4f/E+R1SmliNraahIHF8ijHJI8Hf
 ULQs3DJiMvve2vd7MGpNxqWJhpTpNuprquPXYeU+I7dc+quLGVZUy/MtZn8kku4sPW81
 mAPm6P0gxWQIjY+Tam93KA9r1CRJP/4YtWvOlVELeZllxp+yRJ3oiEsDKxgy38kybl8k
 bAPYzIYNfD2pAjiFzQ4q8KonUyVpWwDegkEEOpYd1HHmZ+FjTAWNQDMhdHGVcbRPA08x
 7dhA==
X-Gm-Message-State: AOAM533MJP//Pg7aH1CZcZvmFeugNTKFsVgyehfrcQ3+IiuGusplHY7Y
 1/d4R91PlZnCNOZA8MCUE5M=
X-Google-Smtp-Source: ABdhPJzGBHW0gaivOWBdJo79fO66DCHU8peg1XEfk/2EohqKyJyFcXoPlPEhaigApWokLbxCCqly4A==
X-Received: by 2002:aa7:c0d4:: with SMTP id j20mr3313931edp.155.1590162424129; 
 Fri, 22 May 2020 08:47:04 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x5sm7283055eds.8.2020.05.22.08.47.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 May 2020 08:47:03 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rename and label gpio-led subnodes part
 2
Date: Fri, 22 May 2020 17:46:57 +0200
Message-Id: <20200522154657.9472-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_084707_011912_D7C9A5EC 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
for pattern properties was added. In part 2 rename and label
gpio-led subnodes that passed the regex, but still don't have
the preferred form. Any pin subnode that ends with '-gpio'
in the pinctrl node generates a warning.

Fix with help of the following rules:

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

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/gpio/gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts  |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi        |  8 ++++----
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi     |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts  |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi        |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi      | 14 +++++++-------
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi   | 10 +++++-----
 8 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index cbde279ae..e8774347b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -25,9 +25,9 @@
 	};
 
 	leds {
-		pinctrl-0 = <&led_pins_module>, <&led_sd_haikou>;
+		pinctrl-0 = <&module_led_pins>, <&sd_card_led_pin>;
 
-		sd-card-led {
+		sd_card_led: led-3 {
 			label = "sd_card_led";
 			gpios = <&gpio0 RK_PD2 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
@@ -118,7 +118,7 @@
 	};
 
 	leds {
-		led_sd_haikou: led-sd-gpio {
+		sd_card_led_pin: sd-card-led-pin {
 			rockchip,pins =
 				<0 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
index e17311e09..eeef64e35 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
@@ -76,16 +76,16 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pins_module>;
+		pinctrl-0 = <&module_led_pins>;
 
-		module_led1 {
+		module_led1: led-1 {
 			label = "module_led1";
 			gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			panic-indicator;
 		};
 
-		module_led2 {
+		module_led2: led-2 {
 			label = "module_led2";
 			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
@@ -270,7 +270,7 @@
 
 &pinctrl {
 	leds {
-		led_pins_module: led-module-gpio {
+		module_led_pins: module-led-pins {
 			rockchip,pins =
 				<2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>,
 				<3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index e87a04477..e36837c04 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -141,15 +141,15 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&sys_led_gpio>, <&user_led_gpio>;
+		pinctrl-0 = <&sys_led_pin>, <&user_led_pin>;
 
-		sys-led {
+		sys_led: led-0 {
 			label = "sys_led";
 			linux,default-trigger = "heartbeat";
 			gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		};
 
-		user-led {
+		user_led: led-1 {
 			label = "user_led";
 			default-state = "off";
 			gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_HIGH>;
@@ -586,11 +586,11 @@
 	};
 
 	leds {
-		sys_led_gpio: sys_led-gpio {
+		sys_led_pin: sys-led-pin {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		user_led_gpio: user_led-gpio {
+		user_led_pin: user-led-pin {
 			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index c88018a0e..b24d54570 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -117,9 +117,9 @@
 	leds: gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&leds_gpio>;
+		pinctrl-0 = <&status_led_pin>;
 
-		status {
+		status_led: led-0 {
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 			label = "status_led";
 			linux,default-trigger = "heartbeat";
@@ -520,7 +520,7 @@
 	};
 
 	gpio-leds {
-		leds_gpio: leds-gpio {
+		status_led_pin: status-led-pin {
 			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index d80d6b726..a8d363568 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -15,9 +15,9 @@
 	};
 
 	leds {
-		pinctrl-0 = <&led_pin_module>, <&led_sd_haikou>;
+		pinctrl-0 = <&module_led_pin>, <&sd_card_led_pin>;
 
-		sd-card-led {
+		sd_card_led: led-1 {
 			label = "sd_card_led";
 			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
@@ -179,7 +179,7 @@
 	};
 
 	leds {
-		led_sd_haikou: led-sd-gpio {
+		sd_card_led_pin: sd-card-led-pin {
 			rockchip,pins =
 			  <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 07694b196..ae31299cb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -11,9 +11,9 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&led_pin_module>;
+		pinctrl-0 = <&module_led_pin>;
 
-		module-led {
+		module_led: led-0 {
 			label = "module_led";
 			gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
@@ -450,7 +450,7 @@
 	};
 
 	leds {
-		led_pin_module: led-module-gpio {
+		module_led_pin: module-led-pin {
 			rockchip,pins =
 			  <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 9f225e9c3..cec70f2bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -61,23 +61,23 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>, <&yellow_led_gpio>;
+		pinctrl-0 = <&work_led_pin>, <&diy_led_pin>, <&yellow_led_pin>;
 
-		work-led {
+		work_led: led-0 {
 			label = "green:work";
 			gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
 			linux,default-trigger = "heartbeat";
 		};
 
-		diy-led {
+		diy_led: led-1 {
 			label = "red:diy";
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
 			linux,default-trigger = "mmc1";
 		};
 
-		yellow-led {
+		yellow_led: led-2 {
 			label = "yellow:yellow-led";
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
 			default-state = "off";
@@ -595,15 +595,15 @@
 	};
 
 	leds {
-		diy_led_gpio: diy_led-gpio {
+		diy_led_pin: diy-led-pin {
 			rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		work_led_gpio: work_led-gpio {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		yellow_led_gpio: yellow_led-gpio {
+		yellow_led_pin: yellow-led-pin {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index 6788ab28f..c39d0f411 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -39,15 +39,15 @@
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-		pinctrl-0 = <&work_led_gpio>, <&diy_led_gpio>;
+		pinctrl-0 = <&work_led_pin>, <&diy_led_pin>;
 
-		work-led {
+		work_led: led-0 {
 			label = "work";
 			default-state = "on";
 			gpios = <&gpio0 RK_PB3 GPIO_ACTIVE_HIGH>;
 		};
 
-		diy-led {
+		diy_led: led-1 {
 			label = "diy";
 			default-state = "off";
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
@@ -588,11 +588,11 @@
 	};
 
 	leds {
-		work_led_gpio: work_led-gpio {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		diy_led_gpio: diy_led-gpio {
+		diy_led_pin: diy-led-pin {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
