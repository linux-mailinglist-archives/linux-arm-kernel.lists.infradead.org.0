Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CE61E0066
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 18:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9RhnOekJx9+yxCf3qlHCIUJxoIjeYQkHRcQkz2cAREM=; b=N4E
	WC3BMu06XBVspBGQygaP0eqDfHSKUVXdiy3MPhXRY3lka8xlyLfL/jdxbjVDghd85Xj5ZlkJ2Gohn
	pFx6h3usG7BPqp2Mc5TWqxs1AXIHZ5MZf33CvGoOSzT7dt5jRuV+8IEpMkQC/QLnL3Sx6UDDzuEgG
	MAbRmw8ZDTVabwesrAgRSJroCVHKTL9CBESKulP9FPvLWbtvPLpc7JRy1AR3oSb+dglJTzJVJfG5K
	VIRCTpf+DsMcX8nSqbx+I306v49C4y+0uuGIsHkpBpeDR7TZdE5cc1WzZCko236IYraFaPSPWitIz
	DJe7tNC8ZQ5aMLyhlMjgxB1MXq6ePxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jct9M-0003td-Fn; Sun, 24 May 2020 16:06:56 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jct9D-0003s8-B8; Sun, 24 May 2020 16:06:48 +0000
Received: by mail-ej1-x643.google.com with SMTP id s21so18241556ejd.2;
 Sun, 24 May 2020 09:06:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sxEJyU9TaXEIp1/fo5xw/QmL2ngVwpIdCduUvrBnplM=;
 b=sNurkOT5nUX7mei8dVVCD9bx5S0mCWH7rHU9DVn0oa3Vx7AfqWTBIx0aarjsKH5eju
 L4gExWaOHiGlROrm30c1VnApfd0vAWtc5qimIIAZsDHjzHLWjzm5RQokNDXvE8pOGenZ
 B+JUKwXawsHXzLtmOvSQ84qWp/YCXb5XRIlW7Bfxie73D3Xyow8yji/3+HMOwYxyCF6w
 LCslZhGni3ZvD6GVNoA2uDUJWC8DBYJ5U39amRMg2WimQFI+a3wyaJfoN4aIQYFENPiB
 3TtM+RBVySGuQlz63QjE6coT9Wh1aanRw5u/3toxXPvulECFDGpjDiLw2McDWlPaJGnV
 g/2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sxEJyU9TaXEIp1/fo5xw/QmL2ngVwpIdCduUvrBnplM=;
 b=M81pXJT662hd+V4yngF1J4BcZYbmyBR15PbRALTsT+BfSvPpvoJlIk7gR6wus11Swg
 KAM8ZScIYuirXT6l+0kZ0jsPbcuVFWltqj5qgBwbOqFUhhzIRkTb8kdrfe5+O/dOnyjm
 tvn0GywK3x9RnPqoKVZ6BNRdT4MZOnrva8qqKPm0f8fCEBNTxbZ46/71/8Y31yaH11pS
 OIRHtKUaSe6LIIZAkha73RsBau8YumxS3DicejzE8LCnTfTGmeBq3disGI67JHcn1Cs2
 Sp3oz1aruqIo0nyN+OJxWL4eJT8QrfT7xMCqZBaa+tNi+R+ZtHVzy0vOTDwjdiZNujuf
 QvnA==
X-Gm-Message-State: AOAM533DhLiWozr/NNJ20xutUm3plUIxd1AT72CfuvDi5o69/HbhmFE6
 nEgdGJzgSvE2ByCYWQsEJCQ=
X-Google-Smtp-Source: ABdhPJzppSARRKRiOw707Bp1+PJaCjNmzltSjjaQgRwiUuFBPOVi5G7Fh6mBA5jXNi2qvpZvG8bZSA==
X-Received: by 2002:a17:906:c943:: with SMTP id
 fw3mr15404257ejb.288.1590336404894; 
 Sun, 24 May 2020 09:06:44 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id qn17sm13252855ejb.125.2020.05.24.09.06.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 24 May 2020 09:06:44 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/2] ARM: dts: rockchip: rename label and nodename pinctrl
 subnodes that end with gpio
Date: Sun, 24 May 2020 18:06:35 +0200
Message-Id: <20200524160636.16547-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_090647_397570_29CBB6E5 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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

arch/arm/boot/dts/rk3288-tinker.dt.yaml: tsadc: otp-gpio:
{'phandle': [[54]], 'rockchip,pins': [[0, 10, 0, 118]]}
is not of type 'array'

'gpio' is a sort of reserved nodename and should not be used
for pinctrl in combination with 'rockchip,pins', so change
nodes that end with 'gpio' to end with 'pin' or 'pins'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/
dtschema/schemas/gpio/gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi              |  6 +++---
 arch/arm/boot/dts/rk3288-veyron-jaq.dts    |  2 +-
 arch/arm/boot/dts/rk3288-veyron-jerry.dts  |  2 +-
 arch/arm/boot/dts/rk3288-veyron-mighty.dts |  6 +++---
 arch/arm/boot/dts/rk3288-veyron-minnie.dts |  2 +-
 arch/arm/boot/dts/rk3288-veyron-pinky.dts  |  6 +++---
 arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi |  2 +-
 arch/arm/boot/dts/rk3288-veyron-speedy.dts |  2 +-
 arch/arm/boot/dts/rk3288.dtsi              |  6 +++---
 arch/arm/boot/dts/rv1108.dtsi              | 12 ++++++------
 10 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 7a1a69183..3590ce15a 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -522,9 +522,9 @@
 		resets = <&cru SRST_TSADC>;
 		reset-names = "tsadc-apb";
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <0>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
@@ -1103,7 +1103,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
index 171ba6185..8efba9dea 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
@@ -47,7 +47,7 @@
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
 			&sdmmc_bus4>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-jerry.dts b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
index 66f00d288..2c916c50d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-jerry.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-jerry.dts
@@ -192,7 +192,7 @@
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
 			&sdmmc_bus4>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-mighty.dts b/arch/arm/boot/dts/rk3288-veyron-mighty.dts
index 27fbc0747..fa695a88f 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mighty.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mighty.dts
@@ -18,8 +18,8 @@
 };
 
 &sdmmc {
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
-			&sdmmc_wp_gpio &sdmmc_bus4>;
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
+			&sdmmc_wp_pin &sdmmc_bus4>;
 	wp-gpios = <&gpio7 10 GPIO_ACTIVE_HIGH>;
 
 	/delete-property/ disable-wp;
@@ -27,7 +27,7 @@
 
 &pinctrl {
 	sdmmc {
-		sdmmc_wp_gpio: sdmmc-wp-gpio {
+		sdmmc_wp_pin: sdmmc-wp-pin {
 			rockchip,pins = <7 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index 383fad1a8..f8b69e0a1 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -114,7 +114,7 @@
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
 			&sdmmc_bus4>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-pinky.dts b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
index 71e6629cc..4e9fdb0f7 100644
--- a/arch/arm/boot/dts/rk3288-veyron-pinky.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-pinky.dts
@@ -105,7 +105,7 @@
 	};
 
 	sdmmc {
-		sdmmc_wp_gpio: sdmmc-wp-gpio {
+		sdmmc_wp_pin: sdmmc-wp-pin {
 			rockchip,pins = <7 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
@@ -126,8 +126,8 @@
 
 &sdmmc {
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
-		     &sdmmc_wp_gpio &sdmmc_bus4>;
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
+		     &sdmmc_wp_pin &sdmmc_bus4>;
 	wp-gpios = <&gpio7 RK_PB2 GPIO_ACTIVE_HIGH>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
index fe950f986..27fb06ce9 100644
--- a/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-sdmmc.dtsi
@@ -41,7 +41,7 @@
 		};
 
 		/* This is where we actually hook up CD */
-		sdmmc_cd_gpio: sdmmc-cd-gpio {
+		sdmmc_cd_pin: sdmmc-cd-pin {
 			rockchip,pins = <7 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm/boot/dts/rk3288-veyron-speedy.dts b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
index e354c61a4..4a3ea934d 100644
--- a/arch/arm/boot/dts/rk3288-veyron-speedy.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-speedy.dts
@@ -54,7 +54,7 @@
 &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_gpio
+	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_cd_disabled &sdmmc_cd_pin
 			&sdmmc_bus4>;
 };
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 0cd88774d..d052a4758 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -575,9 +575,9 @@
 		resets = <&cru SRST_TSADC>;
 		reset-names = "tsadc-apb";
 		pinctrl-names = "init", "default", "sleep";
-		pinctrl-0 = <&otp_gpio>;
+		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
-		pinctrl-2 = <&otp_gpio>;
+		pinctrl-2 = <&otp_pin>;
 		#thermal-sensor-cells = <1>;
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
@@ -1930,7 +1930,7 @@
 		};
 
 		tsadc {
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index b453f8d0f..f3ff54753 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -352,9 +352,9 @@
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
 		rockchip,hw-tshut-temp = <120000>;
@@ -729,7 +729,7 @@
 						<0 RK_PC6 3 &pcfg_pull_none>;
 			};
 
-			i2c2m1_gpio: i2c2m1-gpio {
+			i2c2m1_pins: i2c2m1-pins {
 				rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>,
 						<0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
@@ -741,7 +741,7 @@
 						<1 RK_PD4 2 &pcfg_pull_none>;
 			};
 
-			i2c2m05v_gpio: i2c2m05v-gpio {
+			i2c2m05v_pins: i2c2m05v-pins {
 				rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>,
 						<1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
@@ -868,7 +868,7 @@
 				rockchip,pins = <0 RK_PB7 1 &pcfg_pull_none>;
 			};
 
-			otp_gpio: otp-gpio {
+			otp_pin: otp-pin {
 				rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
@@ -887,7 +887,7 @@
 				rockchip,pins = <3 RK_PA3 1 &pcfg_pull_none>;
 			};
 
-			uart0_rts_gpio: uart0-rts-gpio {
+			uart0_rts_pin: uart0-rts-pin {
 				rockchip,pins = <3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
 			};
 		};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
