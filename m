Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771421E0067
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 18:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+AzShXGLjS3XBbanq5jjUaEYO7yEuyJ7UqcHu6fXLBI=; b=UY1tAsqJ19RgSnsvsjKsRzsFV8
	WbSHpb/gCSXRTO9xbl9nEGJR//MdWcn7YhLWdCdDaq4u6QnRGL9R+xzYIb/bdzRAx1S2vag3/5w99
	LmdQP5HbTo+m1HWCWJtnPgFj/NH7R4xM5ZxQO5mQD/pNlyBKCfdZGdxxKeh9PpIKiSOTvdvZROr7J
	T10XrhoOR6NxRGkUr8HbMjQ3dG7zD36MzoOg8zd8Qrd0J/+CKWShxy0N8+lIYTxWkOBSmtDEmTeII
	4e3b92IYfyeqd6GrIEg29rfyHZwsXMXCw9eFzdMrMzrvZKqC7g3dgAKHeGXUkdmT3GV71aRx2nJ4s
	MKa4jzrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jct9g-00046Q-JV; Sun, 24 May 2020 16:07:16 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jct9E-0003sf-NL; Sun, 24 May 2020 16:06:51 +0000
Received: by mail-ed1-x534.google.com with SMTP id h16so13160043eds.5;
 Sun, 24 May 2020 09:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KQMYkbgYOlNypp7wBTB+R5wwx2ncAeBJw2oIFLKryYc=;
 b=ddK1+T6LOeTO7ORgB1IzmsH+lqgIimVylGex7zp+hyZvGLcwp8MR6G0YIMGKer892D
 GXZH2ObGATPDZ+YCTQqTsth/rsZIoWyxD3sJ9ZPVxWBVWI6umZIkTklib+B+5sBjqbKV
 5THLOFsBVv9z6rbR++lIplNlWm1nct8FLve6OTNN8rcIP27uuWB59ltFojGXJcEoCHAw
 I5Ai1ZZj43YKejKwyqrG7AkZ/Wgy6dFIv3sXDTefO7i8+XLLCaKvDfZyppWfJvqKjpYr
 b4DjYtdBFbu2d63e7clKh3UMnTw/kMIkciVE33GGEbH6b7OW4Hj0boMu6vhs/mJDBFUB
 /vZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KQMYkbgYOlNypp7wBTB+R5wwx2ncAeBJw2oIFLKryYc=;
 b=ZWc+wwe8wDsFNeRP7W/rDUX3WKsM8TBmBemc89lNR0n/E/vxZylGrI/54Z5yNK8zRQ
 4SEhDTwtWTfHom/3W77gbH6laftgzXD0IEBY5nWdv60SkasbvbaHzjtuDVIH+4Zblpq2
 Pg9BYsSf4IV59kg/50Gh+YvULP9q6uhN9vNDuQO+c7ZjzjncH5XKX43eq35cvtkqMHmx
 voUmVvd07/3EWLOx+0KbDYo4591BqzncylN9vXRYflnHBq82Tw7jDDurWfuKRcvaTDHG
 mo1UYFXzPdGowK3yK/gKVn8t5YKN5Vg1XqbvGX/0rE6oy5Djdg7dYtrIl8TpK30krAYT
 L1hg==
X-Gm-Message-State: AOAM530zlWWdh39fsofNYIKGU6vBG63H3qEenOwbLVrAE187QkilZPOW
 Jj/XurKPJGd/Cl+SU0NN7ck=
X-Google-Smtp-Source: ABdhPJwWb3ODiLRuTCP7sNF5pDSLNfTK7RHqzWPsrK56YjkiotafSGsQ50ytgICQ0LwTPZSXyUMxoA==
X-Received: by 2002:aa7:d691:: with SMTP id d17mr11753308edr.273.1590336406224; 
 Sun, 24 May 2020 09:06:46 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qn17sm13252855ejb.125.2020.05.24.09.06.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 09:06:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: rename label and nodename pinctrl
 subnodes that end with gpio
Date: Sun, 24 May 2020 18:06:36 +0200
Message-Id: <20200524160636.16547-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200524160636.16547-1-jbx6244@gmail.com>
References: <20200524160636.16547-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_090648_760831_631215F4 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dt.yaml:
tsadc: tsadc-otp-gpio:
{'phandle': [[90]], 'rockchip,pins': [[0, 6, 0, 123]]}
is not of type 'array'

'gpio' is a sort of reserved nodename and should not be used
for pinctrl in combination with 'rockchip,pins', so change
nodes that end with 'gpio' to end with 'pin' or 'pins'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/
dtschema/schemas/gpio/gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  6 +-
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  6 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts        |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           | 24 +++----
 .../arm64/boot/dts/rockchip/rk3368-lion-haikou.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  6 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    |  4 +-
 .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi      |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  4 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts |  8 +--
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  |  8 +--
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      | 74 +++++++++++-----------
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    |  8 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts  |  8 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  4 +-
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi |  8 +--
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  |  4 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  6 +-
 20 files changed, 94 insertions(+), 94 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index f8ad67194..2d4728cf8 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -733,9 +733,9 @@
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <120000>;
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&tsadc_otp_gpio>;
+		pinctrl-0 = <&tsadc_otp_pin>;
 		pinctrl-1 = <&tsadc_otp_out>;
-		pinctrl-2 = <&tsadc_otp_gpio>;
+		pinctrl-2 = <&tsadc_otp_pin>;
 		#thermal-sensor-cells = <1>;
 		status = "disabled";
 	};
@@ -1371,7 +1371,7 @@
 		};
 
 		tsadc {
-			tsadc_otp_gpio: tsadc-otp-gpio {
+			tsadc_otp_pin: tsadc-otp-pin {
 				rockchip,pins =
 					<0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 79c1dd1fe..ae40bfa16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -1629,7 +1629,7 @@
 		};
 
 		tsadc {
-			tsadc_otp_gpio: tsadc-otp-gpio {
+			tsadc_otp_pin: tsadc-otp-pin {
 				rockchip,pins =
 					<0 RK_PB2 0 &pcfg_pull_none>;
 			};
@@ -1657,7 +1657,7 @@
 					<2 RK_PA3 1 &pcfg_pull_none>;
 			};
 
-			uart0_rts_gpio: uart0-rts-gpio {
+			uart0_rts_pin: uart0-rts-pin {
 				rockchip,pins =
 					<2 RK_PA3 0 &pcfg_pull_none>;
 			};
@@ -1730,7 +1730,7 @@
 					<4 RK_PA7 1 &pcfg_pull_none>;
 			};
 
-			uart4_rts_gpio: uart4-rts-gpio {
+			uart4_rts_pin: uart4-rts-pin {
 				rockchip,pins =
 					<4 RK_PA7 0 &pcfg_pull_none>;
 			};
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index ac29c2744..1969dab84 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -41,7 +41,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 30 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 34db48c27..b70ffb1c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -34,7 +34,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-boot-on;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 6e09c223e..86cfb5c50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -25,7 +25,7 @@
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PD6 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0m1_gpio>;
+		pinctrl-0 = <&sdmmc0m1_pin>;
 		regulator-name = "vcc_sd";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index fdf0e1b26..2b7e9d713 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -552,9 +552,9 @@
 		clocks = <&cru SCLK_TSADC>, <&cru PCLK_TSADC>;
 		clock-names = "tsadc", "apb_pclk";
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		resets = <&cru SRST_TSADC>;
 		reset-names = "tsadc-apb";
 		rockchip,grf = <&grf>;
@@ -1155,7 +1155,7 @@
 				rockchip,pins = <0 RK_PA5 2 &pcfg_pull_none>,
 						<0 RK_PA6 2 &pcfg_pull_none>;
 			};
-			i2c3_gpio: i2c3-gpio {
+			i2c3_pins: i2c3-pins {
 				rockchip,pins =
 					<0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>,
 					<0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -1226,7 +1226,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
@@ -1249,7 +1249,7 @@
 				rockchip,pins = <1 RK_PB2 1 &pcfg_pull_none>;
 			};
 
-			uart0_rts_gpio: uart0-rts-gpio {
+			uart0_rts_pin: uart0-rts-pin {
 				rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
@@ -1268,7 +1268,7 @@
 				rockchip,pins = <3 RK_PA5 4 &pcfg_pull_none>;
 			};
 
-			uart1_rts_gpio: uart1-rts-gpio {
+			uart1_rts_pin: uart1-rts-pin {
 				rockchip,pins = <3 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
@@ -1494,7 +1494,7 @@
 				rockchip,pins = <2 RK_PA7 1 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0m0_gpio: sdmmc0m0-gpio {
+			sdmmc0m0_pin: sdmmc0m0-pin {
 				rockchip,pins = <2 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up_4ma>;
 			};
 		};
@@ -1504,7 +1504,7 @@
 				rockchip,pins = <0 RK_PD6 3 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0m1_gpio: sdmmc0m1-gpio {
+			sdmmc0m1_pin: sdmmc0m1-pin {
 				rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up_4ma>;
 			};
 		};
@@ -1537,7 +1537,7 @@
 						<1 RK_PA3 1 &pcfg_pull_up_8ma>;
 			};
 
-			sdmmc0_gpio: sdmmc0-gpio {
+			sdmmc0_pins: sdmmc0-pins {
 				rockchip,pins =
 					<1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1579,7 +1579,7 @@
 					<3 RK_PA7 3 &pcfg_pull_up_4ma>;
 			};
 
-			sdmmc0ext_gpio: sdmmc0ext-gpio {
+			sdmmc0ext_pins: sdmmc0ext-pins {
 				rockchip,pins =
 					<3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1624,7 +1624,7 @@
 						<1 RK_PC1 1 &pcfg_pull_up_8ma>;
 			};
 
-			sdmmc1_gpio: sdmmc1-gpio {
+			sdmmc1_pins: sdmmc1-pins {
 				rockchip,pins =
 					<1 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
 					<1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up_4ma>,
@@ -1818,7 +1818,7 @@
 			tsadc_int: tsadc-int {
 				rockchip,pins = <2 RK_PB5 2 &pcfg_pull_none>;
 			};
-			tsadc_gpio: tsadc-gpio {
+			tsadc_pin: tsadc-pin {
 				rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
index e8774347b..7fcb1eace 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-lion-haikou.dts
@@ -125,7 +125,7 @@
 	};
 
 	sdmmc {
-		sdmmc_cd_gpio: sdmmc-cd-gpio {
+		sdmmc_cd_pin: sdmmc-cd-pin {
 			rockchip,pins =
 				<2 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 1ebb0eef4..5d25a9d04 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -483,9 +483,9 @@
 		resets = <&cru SRST_TSADC>;
 		reset-names = "tsadc-apb";
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <1>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
@@ -1145,7 +1145,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 20b5599f5..6db18808b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -589,11 +589,11 @@
 	};
 
 	pmic {
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 4373ed732..60cd1c18c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -499,7 +499,7 @@ camera: &i2c7 {
 };
 
 /* there is no external pull up, so need to set this pin pull up */
-&sdmmc_cd_gpio {
+&sdmmc_cd_pin {
 	rockchip,pins = <1 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 2f3997740..32dcaf210 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -516,7 +516,7 @@ ap_i2c_audio: &i2c8 {
 	 * configured as SDMMC and not JTAG.
 	 */
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_cd_gpio
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd &sdmmc_cd_pin
 		     &sdmmc_bus4>;
 
 	bus-width = <4>;
@@ -767,7 +767,7 @@ ap_i2c_audio: &i2c8 {
 		};
 
 		/* This is where we actually hook up CD; has external pull */
-		sdmmc_cd_gpio: sdmmc-cd-gpio {
+		sdmmc_cd_pin: sdmmc-cd-pin {
 			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index bf87fa32d..341d074ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -205,7 +205,7 @@
 		compatible = "silergy,syr827";
 		reg = <0x40>;
 		regulator-compatible = "fan53555-reg";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -223,7 +223,7 @@
 		compatible = "silergy,syr828";
 		reg = <0x41>;
 		regulator-compatible = "fan53555-reg";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -521,12 +521,12 @@
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins =
 				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins =
 				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53..1fa80ac15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -341,7 +341,7 @@
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -360,7 +360,7 @@
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -447,11 +447,11 @@
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index cb0245d22..32d2af547 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -33,7 +33,7 @@
 		backlight = <&backlight>;
 		enable-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&panel_en_gpio>;
+		pinctrl-0 = <&panel_en_pin>;
 		power-supply = <&vcc3v3_panel>;
 
 		ports {
@@ -60,7 +60,7 @@
 	gpio-key-lid {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-		pinctrl-0 = <&lidbtn_gpio>;
+		pinctrl-0 = <&lidbtn_pin>;
 
 		lid {
 			debounce-interval = <20>;
@@ -76,7 +76,7 @@
 	gpio-key-power {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-		pinctrl-0 = <&pwrbtn_gpio>;
+		pinctrl-0 = <&pwrbtn_pin>;
 
 		power {
 			debounce-interval = <20>;
@@ -117,7 +117,7 @@
 		clocks = <&rk808 1>;
 		clock-names = "ext_clock";
 		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_enable_h_gpio>;
+		pinctrl-0 = <&wifi_enable_h_pin>;
 		post-power-on-delay-ms = <100>;
 		power-off-delay-us = <500000>;
 
@@ -129,7 +129,7 @@
 	es8316-sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
-		pinctrl-0 = <&hp_det_gpio>;
+		pinctrl-0 = <&hp_det_pin>;
 		simple-audio-card,name = "rockchip,es8316-codec";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,mclk-fs = <256>;
@@ -213,7 +213,7 @@
 		enable-active-high;
 		gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pwr_5v_gpio>;
+		pinctrl-0 = <&pwr_5v_pin>;
 		regulator-name = "vcc5v0_usb";
 		regulator-always-on;
 		regulator-min-microvolt = <5000000>;
@@ -270,7 +270,7 @@
 		enable-active-high;
 		gpio = <&gpio0 RK_PA1 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sdmmc0_pwr_h_gpio>;
+		pinctrl-0 = <&sdmmc0_pwr_h_pin>;
 		regulator-name = "vcc3v0_sd";
 		regulator-always-on;
 		regulator-min-microvolt = <3000000>;
@@ -288,7 +288,7 @@
 		enable-active-high;
 		gpio = <&gpio1 RK_PC6 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&lcdvcc_en_gpio>;
+		pinctrl-0 = <&lcdvcc_en_pin>;
 		regulator-name = "vcc3v3_panel";
 		regulator-always-on;
 		regulator-min-microvolt = <3300000>;
@@ -317,7 +317,7 @@
 		enable-active-high;
 		gpio = <&gpio4 RK_PD2 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en_gpio>;
+		pinctrl-0 = <&vcc5v0_host_en_pin>;
 		regulator-name = "vcc5v0_otg";
 		regulator-always-on;
 		regulator-min-microvolt = <5000000>;
@@ -336,7 +336,7 @@
 		enable-active-high;
 		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_typec0_en_gpio>;
+		pinctrl-0 = <&vcc5v0_typec0_en_pin>;
 		regulator-name = "vbus_5vout";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -368,7 +368,7 @@
 
 		/* Also triggered by USB charger */
 		pinctrl-names = "default";
-		pinctrl-0 = <&dc_det_gpio>;
+		pinctrl-0 = <&dc_det_pin>;
 	};
 };
 
@@ -447,7 +447,7 @@
 		interrupt-parent = <&gpio3>;
 		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l_gpio>;
+		pinctrl-0 = <&pmic_int_l_pin>;
 		rockchip,system-power-controller;
 		wakeup-source;
 
@@ -627,7 +627,7 @@
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-always-on;
 		regulator-boot-on;
@@ -646,7 +646,7 @@
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-always-on;
 		regulator-boot-on;
@@ -693,7 +693,7 @@
 		interrupt-parent = <&gpio1>;
 		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&fusb0_int_gpio>;
+		pinctrl-0 = <&fusb0_int_pin>;
 		vbus-supply = <&vbus_typec>;
 
 		connector {
@@ -745,7 +745,7 @@
 
 &i2s1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&i2s_8ch_mclk_gpio>, <&i2s1_2ch_bus>;
+	pinctrl-0 = <&i2s_8ch_mclk_pin>, <&i2s1_2ch_bus>;
 	rockchip,capture-channels = <8>;
 	rockchip,playback-channels = <8>;
 	status = "okay";
@@ -777,49 +777,49 @@
 
 &pinctrl {
 	buttons {
-		pwrbtn_gpio: pwrbtn-gpio {
+		pwrbtn_pin: pwrbtn-pin {
 			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		lidbtn_gpio: lidbtn-gpio {
+		lidbtn_pin: lidbtn-pin {
 			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	dc-charger {
-		dc_det_gpio: dc-det-gpio {
+		dc_det_pin: dc-det-pin {
 			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	es8316 {
-		hp_det_gpio: hp-det-gpio {
+		hp_det_pin: hp-det-pin {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	fusb302x {
-		fusb0_int_gpio: fusb0-int-gpio {
+		fusb0_int_pin: fusb0-int-pin {
 			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	i2s1 {
-		i2s_8ch_mclk_gpio: i2s-8ch-mclk-gpio {
+		i2s_8ch_mclk_pin: i2s-8ch-mclk-pin {
 			rockchip,pins = <4 RK_PA0 1 &pcfg_pull_none>;
 		};
 	};
 
 	lcd-panel {
-		lcdvcc_en_gpio: lcdvcc-en-gpio {
+		lcdvcc_en_pin: lcdvcc-en-pin {
 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		panel_en_gpio: panel-en-gpio {
+		panel_en_pin: panel-en-pin {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		lcd_panel_reset_gpio: lcd-panel-reset-gpio {
+		lcd_panel_reset_pin: lcd-panel-reset-pin {
 			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
@@ -835,58 +835,58 @@
 	};
 
 	pmic {
-		pmic_int_l_gpio: pmic-int-l-gpio {
+		pmic_int_l_pin: pmic-int-l-pin {
 			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 
 	sdcard {
-		sdmmc0_pwr_h_gpio: sdmmc0-pwr-h-gpio {
+		sdmmc0_pwr_h_pin: sdmmc0-pwr-h-pin {
 			rockchip,pins = <0 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
 	};
 
 	sdio-pwrseq {
-		wifi_enable_h_gpio: wifi-enable-h-gpio {
+		wifi_enable_h_pin: wifi-enable-h-pin {
 			rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	usb-typec {
-		vcc5v0_typec0_en_gpio: vcc5v0-typec0-en-gpio {
+		vcc5v0_typec0_en_pin: vcc5v0-typec0-en-pin {
 			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	usb2 {
-		pwr_5v_gpio: pwr-5v-gpio {
+		pwr_5v_pin: pwr-5v-pin {
 			rockchip,pins = <1 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		vcc5v0_host_en_gpio: vcc5v0-host-en-gpio {
+		vcc5v0_host_en_pin: vcc5v0-host-en-pin {
 			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
 	wireless-bluetooth {
-		bt_wake_gpio: bt-wake-gpio {
+		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_host_wake_gpio: bt-host-wake-gpio {
+		bt_host_wake_pin: bt-host-wake-pin {
 			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		bt_reset_gpio: bt-reset-gpio {
+		bt_reset_pin: bt-reset-pin {
 			rockchip,pins = <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
@@ -1034,7 +1034,7 @@
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		max-speed = <1500000>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake_gpio &bt_wake_gpio &bt_reset_gpio>;
+		pinctrl-0 = <&bt_host_wake_pin &bt_wake_pin &bt_reset_pin>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
 		vbat-supply = <&wifi_bat>;
 		vddio-supply = <&vcc_wl>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index cec70f2bf..b85ec31cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -456,7 +456,7 @@
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -475,7 +475,7 @@
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -609,11 +609,11 @@
 	};
 
 	pmic {
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
index 3923ec01e..60f98a3e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dts
@@ -390,7 +390,7 @@
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -409,7 +409,7 @@
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -532,11 +532,11 @@
 			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index ba7c75c9f..5e3ac589b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -470,12 +470,12 @@
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins =
 				<1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins =
 				<1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index c39d0f411..96c787aa2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -445,7 +445,7 @@
 		reg = <0x40>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel1_gpio>;
+		pinctrl-0 = <&vsel1_pin>;
 		regulator-name = "vdd_cpu_b";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -464,7 +464,7 @@
 		reg = <0x41>;
 		fcs,suspend-voltage-selector = <1>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&vsel2_gpio>;
+		pinctrl-0 = <&vsel2_pin>;
 		regulator-name = "vdd_gpu";
 		regulator-min-microvolt = <712500>;
 		regulator-max-microvolt = <1500000>;
@@ -612,11 +612,11 @@
 			rockchip,pins = <3 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc157967..701a567d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -481,11 +481,11 @@
 				<1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		vsel1_gpio: vsel1-gpio {
+		vsel1_pin: vsel1-pin {
 			rockchip,pins = <1 RK_PC1 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 
-		vsel2_gpio: vsel2-gpio {
+		vsel2_pin: vsel2-pin {
 			rockchip,pins = <1 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a4dc1bf2e..4db355f9d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -845,9 +845,9 @@
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <1>;
 		status = "disabled";
 	};
@@ -2475,7 +2475,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
