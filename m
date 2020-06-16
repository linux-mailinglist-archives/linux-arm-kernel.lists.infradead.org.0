Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653731FB2D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B8HTRRtkJcef/T66Xfs08YKWGGYoR8ADwn22daRpb+E=; b=CcHMSmZQ4y4iuj
	awIh9tr7iYDJD2aoT4B1T7M6PNQIgtvGoZHS7kg5ak9i9CcE8eWxAXp5Hzxf8glZ461YO3ZexTW+t
	MKBh/CmuoFuHlzmYd5tyGrDncm2nynILY7oyuPHu6TW0YHZqoPLV858XIPRZeQqgh1d2m4L0W84no
	DaOwP3VP6BqKO9uTlHza3Zy84mTd2E6jFzz5DERMbTLkuPQo2B1pfEDGZ8XYpewqWUQGexhcEwS62
	BCmngIcLCHRcvUkxhgTU8BXv7sgJBcFgMFKxVHG8gQ9o+ETP7mGyK8xkK8Z/nFtUJACrMSyENd2gp
	HRLmMQjWdVv/9R2gaqqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlC3K-0002Ez-F3; Tue, 16 Jun 2020 13:55:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC1G-00016U-33
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 13:52:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id c71so2961517wmd.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 06:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sNVJcPTSCJ/tEUZ0Z1guS8phCi3XtjhyciCXhreKTKY=;
 b=RYTa0zu7BOwuikpKPHFMomenCZhB/fOcTBIftRFZMAt6W0NTSivAtA2cyOW2bDewne
 s1UGvzd2tMZLJGjrxoUn/nGCR3Xdgh8+tDGSBoh4p3rVF3M+0kN5YmMecLr0mURI2RM3
 XfKUgHPC16jt35U+Hpnox0WuNzMflokTv76s9FTfglBXG2+MQjkQ0I23mjT4NXDBNbL1
 uXkdKTBmXiucE1LRk64OVhEwo4imgrVFyEAAYv42Okt+L7nlJ3zw8nzCqyUER7y/QpLv
 rqh+nlBycUHjeDW3DhCiv0ilr+6aROfK6cyphVI2rOeDNfb4my6G6GdqnbxttEUIa83E
 xYxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sNVJcPTSCJ/tEUZ0Z1guS8phCi3XtjhyciCXhreKTKY=;
 b=BRfDMcqh/zbGbBtGr3aLAgobJChwk4kTm0QU8v9T0+5AJvs2egGrstzt/Zo5OK8miD
 TSPkbg6VviKHccbSo9KejjZ1fH6Mu59lSeAX18DpqMF6/N2AoPWfq+nTQgwJvF8a1fRM
 jFnnTN2Hibd9TAYTSv/o4OveU9Qd6MMN6K7gck4swg4FbH9Ws2cTJsCfH9zJx1W0ZQT5
 H/PQiXtF4VbkvfnoF3HMcWJWpr0zmwSbBqx9o7iZbkPeAtaBT5Oue/iw9hu8erPnqleQ
 81xk92prWfcYEIDexAWa4+c7K3xLLNqG9Qo67OKhmZPHBmSGfka0A3AFkVF0AXgZNdFV
 M4Mw==
X-Gm-Message-State: AOAM5304zWM3qQAxPCkwHu1xSw4YLdXn4NJ1WDIwU7iUfT9/ekDTCGzk
 /DNhAF8rSUurtEDkUTROGQw=
X-Google-Smtp-Source: ABdhPJzEsfQ8kK/LzkDMoFL+9WuTfaoXW4I99PYDWV9H9CavJ636ZRdSnaLqho9Hav0D5wx3ZlGpNA==
X-Received: by 2002:a1c:49d6:: with SMTP id w205mr3474255wma.151.1592315571517; 
 Tue, 16 Jun 2020 06:52:51 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q4sm4243263wma.47.2020.06.16.06.52.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 06:52:50 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 03/73] ARM: tegra: Remove simple regulators bus
Date: Tue, 16 Jun 2020 15:51:28 +0200
Message-Id: <20200616135238.3001888-4-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200616135238.3001888-1-thierry.reding@gmail.com>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_065254_505828_F02DE059 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The standard way to do this is to list out the regulators at the top
level. Adopt the standard way to fix validation.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/boot/dts/tegra114-dalmore.dts    | 129 +++++------
 arch/arm/boot/dts/tegra114-roth.dts       | 120 +++++-----
 arch/arm/boot/dts/tegra114-tn7.dts        |  65 +++---
 arch/arm/boot/dts/tegra124-jetson-tk1.dts | 238 +++++++++----------
 arch/arm/boot/dts/tegra124-nyan.dtsi      | 259 ++++++++++-----------
 arch/arm/boot/dts/tegra124-venice2.dts    | 265 ++++++++++------------
 arch/arm/boot/dts/tegra20-harmony.dts     | 121 +++++-----
 arch/arm/boot/dts/tegra20-medcom-wide.dts |  66 +++---
 arch/arm/boot/dts/tegra20-paz00.dts       |  38 ++--
 arch/arm/boot/dts/tegra20-plutux.dts      |  66 +++---
 arch/arm/boot/dts/tegra20-seaboard.dts    | 125 +++++-----
 arch/arm/boot/dts/tegra20-tamonten.dtsi   |  39 +---
 arch/arm/boot/dts/tegra20-tec.dts         |  66 +++---
 arch/arm/boot/dts/tegra20-trimslice.dts   |  85 +++----
 arch/arm/boot/dts/tegra20-ventana.dts     |  85 +++----
 arch/arm/boot/dts/tegra30-beaver.dts      | 193 ++++++++--------
 arch/arm/boot/dts/tegra30-cardhu-a02.dts  | 128 +++++------
 arch/arm/boot/dts/tegra30-cardhu-a04.dts  | 149 ++++++------
 arch/arm/boot/dts/tegra30-cardhu.dtsi     | 261 ++++++++++-----------
 19 files changed, 1130 insertions(+), 1368 deletions(-)

diff --git a/arch/arm/boot/dts/tegra114-dalmore.dts b/arch/arm/boot/dts/tegra114-dalmore.dts
index 04adfcb30cd7..1dfff574e371 100644
--- a/arch/arm/boot/dts/tegra114-dalmore.dts
+++ b/arch/arm/boot/dts/tegra114-dalmore.dts
@@ -1187,83 +1187,70 @@ volume_up {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_ac_bat_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_ac_bat";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_ac_bat_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_ac_bat";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		dvdd_ts_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "dvdd_ts";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(H, 5) GPIO_ACTIVE_HIGH>;
-		};
+	dvdd_ts_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "dvdd_ts";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(H, 5) GPIO_ACTIVE_HIGH>;
+	};
 
-		usb1_vbus_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "usb1_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&tps65090_dcdc1_reg>;
-		};
+	usb1_vbus_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&tps65090_dcdc1_reg>;
+	};
 
-		usb3_vbus_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "usb2_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&tps65090_dcdc1_reg>;
-		};
+	usb3_vbus_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb2_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&tps65090_dcdc1_reg>;
+	};
 
-		vdd_hdmi_reg: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "vdd_hdmi_5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			vin-supply = <&tps65090_dcdc1_reg>;
-		};
+	vdd_hdmi_reg: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_hdmi_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&tps65090_dcdc1_reg>;
+	};
 
-		vdd_cam_1v8_reg: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "vdd_cam_1v8_reg";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			enable-active-high;
-			gpio = <&palmas_gpio 6 0>;
-		};
+	vdd_cam_1v8_reg: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_cam_1v8_reg";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		gpio = <&palmas_gpio 6 0>;
+	};
 
-		vdd_5v0_hdmi: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "VDD_5V0_HDMI_CON";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&tps65090_dcdc1_reg>;
-		};
+	vdd_5v0_hdmi: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_5V0_HDMI_CON";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&tps65090_dcdc1_reg>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra114-roth.dts b/arch/arm/boot/dts/tegra114-roth.dts
index 73b83d51b59b..5249afdca577 100644
--- a/arch/arm/boot/dts/tegra114-roth.dts
+++ b/arch/arm/boot/dts/tegra114-roth.dts
@@ -1045,76 +1045,64 @@ power {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		lcd_bl_en: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "lcd_bl_en";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-		};
+	lcd_bl_en: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd_bl_en";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+	};
 
-		vdd_lcd: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "vdd_lcd_1v8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			vin-supply = <&vdd_1v8>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(U, 4) GPIO_ACTIVE_HIGH>;
-			regulator-boot-on;
-		};
+	vdd_lcd: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_lcd_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vdd_1v8>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(U, 4) GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+	};
 
-		regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "vdd_1v8_ts";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			gpio = <&gpio TEGRA_GPIO(K, 3) GPIO_ACTIVE_LOW>;
-			regulator-boot-on;
-		};
+	regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8_ts";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&gpio TEGRA_GPIO(K, 3) GPIO_ACTIVE_LOW>;
+		regulator-boot-on;
+	};
 
-		regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "vdd_3v3_ts";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(H, 5) GPIO_ACTIVE_HIGH>;
-			regulator-boot-on;
-		};
+	regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3_ts";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(H, 5) GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+	};
 
-		regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "vdd_1v8_com";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			vin-supply = <&vdd_1v8>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(X, 1) GPIO_ACTIVE_HIGH>;
-			regulator-boot-on;
-		};
+	regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8_com";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vdd_1v8>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(X, 1) GPIO_ACTIVE_HIGH>;
+		regulator-boot-on;
+	};
 
-		regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "vdd_3v3_com";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			vin-supply = <&vdd_3v3_sys>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(X, 7) GPIO_ACTIVE_HIGH>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3_com";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vdd_3v3_sys>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(X, 7) GPIO_ACTIVE_HIGH>;
+		regulator-always-on;
+		regulator-boot-on;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra114-tn7.dts b/arch/arm/boot/dts/tegra114-tn7.dts
index 94e801b7986e..90935db591a5 100644
--- a/arch/arm/boot/dts/tegra114-tn7.dts
+++ b/arch/arm/boot/dts/tegra114-tn7.dts
@@ -302,44 +302,35 @@ volume_up {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		/* FIXME: output of BQ24192 */
-		vs_sys: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "VS_SYS";
-			regulator-min-microvolt = <4200000>;
-			regulator-max-microvolt = <4200000>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	/* FIXME: output of BQ24192 */
+	vs_sys: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "VS_SYS";
+		regulator-min-microvolt = <4200000>;
+		regulator-max-microvolt = <4200000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		lcd_bl_en: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "VDD_LCD_BL";
-			regulator-min-microvolt = <16500000>;
-			regulator-max-microvolt = <16500000>;
-			gpio = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vs_sys>;
-			regulator-boot-on;
-		};
+	lcd_bl_en: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDD_LCD_BL";
+		regulator-min-microvolt = <16500000>;
+		regulator-max-microvolt = <16500000>;
+		gpio = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vs_sys>;
+		regulator-boot-on;
+	};
 
-		vdd_lcd: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "VD_LCD_1V8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			gpio = <&palmas_gpio 4 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_1v8>;
-			regulator-boot-on;
-		};
+	vdd_lcd: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "VD_LCD_1V8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		gpio = <&palmas_gpio 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_1v8>;
+		regulator-boot-on;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra124-jetson-tk1.dts b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
index 51b217a6507d..e97943871fd8 100644
--- a/arch/arm/boot/dts/tegra124-jetson-tk1.dts
+++ b/arch/arm/boot/dts/tegra124-jetson-tk1.dts
@@ -1879,145 +1879,127 @@ power {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_mux: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "+VDD_MUX";
-			regulator-min-microvolt = <12000000>;
-			regulator-max-microvolt = <12000000>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	vdd_mux: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_MUX";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		vdd_5v0_sys: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "+5V_SYS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_5v0_sys: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_SYS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_sys: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "+3.3V_SYS";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_3v3_sys: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_SYS";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_run: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "+3.3V_RUN";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_run: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_RUN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_3v3_hdmi: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			vin-supply = <&vdd_3v3_run>;
-		};
+	vdd_3v3_hdmi: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vdd_3v3_run>;
+	};
 
-		vdd_usb1_vbus: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "+USB0_VBUS_SW";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb1_vbus: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "+USB0_VBUS_SW";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_usb3_vbus: regulator@8 {
-			compatible = "regulator-fixed";
-			reg = <8>;
-			regulator-name = "+5V_USB_HS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb3_vbus: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_USB_HS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_3v3_lp0: regulator@10 {
-			compatible = "regulator-fixed";
-			reg = <10>;
-			regulator-name = "+3.3V_LP0";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_lp0: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_LP0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_hdmi_pll: regulator@11 {
-			compatible = "regulator-fixed";
-			reg = <11>;
-			regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
-			vin-supply = <&vdd_1v05_run>;
-		};
+	vdd_hdmi_pll: regulator@8 {
+		compatible = "regulator-fixed";
+		regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
+		vin-supply = <&vdd_1v05_run>;
+	};
 
-		vdd_5v0_hdmi: regulator@12 {
-			compatible = "regulator-fixed";
-			reg = <12>;
-			regulator-name = "+5V_HDMI_CON";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_5v0_hdmi: regulator@9 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_HDMI_CON";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		/* Molex power connector */
-		vdd_5v0_sata: regulator@13 {
-			compatible = "regulator-fixed";
-			reg = <13>;
-			regulator-name = "+5V_SATA";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(EE, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	/* Molex power connector */
+	vdd_5v0_sata: regulator@10 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_SATA";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(EE, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_12v0_sata: regulator@14 {
-			compatible = "regulator-fixed";
-			reg = <14>;
-			regulator-name = "+12V_SATA";
-			regulator-min-microvolt = <12000000>;
-			regulator-max-microvolt = <12000000>;
-			gpio = <&gpio TEGRA_GPIO(EE, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_12v0_sata: regulator@11 {
+		compatible = "regulator-fixed";
+		regulator-name = "+12V_SATA";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		gpio = <&gpio TEGRA_GPIO(EE, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_mux>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra124-nyan.dtsi b/arch/arm/boot/dts/tegra124-nyan.dtsi
index 4555d01094b5..b3b5c12cbda9 100644
--- a/arch/arm/boot/dts/tegra124-nyan.dtsi
+++ b/arch/arm/boot/dts/tegra124-nyan.dtsi
@@ -608,157 +608,138 @@ power {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_mux: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "+VDD_MUX";
-			regulator-min-microvolt = <12000000>;
-			regulator-max-microvolt = <12000000>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	vdd_mux: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_MUX";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		vdd_5v0_sys: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "+5V_SYS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_5v0_sys: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_SYS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_sys: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "+3.3V_SYS";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_3v3_sys: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_SYS";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_run: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "+3.3V_RUN";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_run: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_RUN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_3v3_hdmi: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			vin-supply = <&vdd_3v3_run>;
-		};
+	vdd_3v3_hdmi: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vdd_3v3_run>;
+	};
 
-		vdd_led: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "+VDD_LED";
-			gpio = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_led: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_LED";
+		gpio = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_5v0_ts: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "+5V_VDD_TS_SW";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-			gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_5v0_ts: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_VDD_TS_SW";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_usb1_vbus: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "+5V_USB_HS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb1_vbus: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_USB_HS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_usb3_vbus: regulator@8 {
-			compatible = "regulator-fixed";
-			reg = <8>;
-			regulator-name = "+5V_USB_SS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb3_vbus: regulator@8 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_USB_SS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_3v3_panel: regulator@9 {
-			compatible = "regulator-fixed";
-			reg = <9>;
-			regulator-name = "+3.3V_PANEL";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			gpio = <&pmic 4 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_run>;
-		};
+	vdd_3v3_panel: regulator@9 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_PANEL";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pmic 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_run>;
+	};
 
-		vdd_3v3_lp0: regulator@10 {
-			compatible = "regulator-fixed";
-			reg = <10>;
-			regulator-name = "+3.3V_LP0";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			/*
-			 * TODO: find a way to wire this up with the USB EHCI
-			 * controllers so that it can be enabled on demand.
-			 */
-			regulator-always-on;
-			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_lp0: regulator@10 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_LP0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		/*
+		 * TODO: find a way to wire this up with the USB EHCI
+		 * controllers so that it can be enabled on demand.
+		 */
+		regulator-always-on;
+		gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_hdmi_pll: regulator@11 {
-			compatible = "regulator-fixed";
-			reg = <11>;
-			regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
-			vin-supply = <&vdd_1v05_run>;
-		};
+	vdd_hdmi_pll: regulator@11 {
+		compatible = "regulator-fixed";
+		regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
+		vin-supply = <&vdd_1v05_run>;
+	};
 
-		vdd_5v0_hdmi: regulator@12 {
-			compatible = "regulator-fixed";
-			reg = <12>;
-			regulator-name = "+5V_HDMI_CON";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_5v0_hdmi: regulator@12 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_HDMI_CON";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts/tegra124-venice2.dts
index 6a7a31c831c5..effdb303c7f7 100644
--- a/arch/arm/boot/dts/tegra124-venice2.dts
+++ b/arch/arm/boot/dts/tegra124-venice2.dts
@@ -1077,164 +1077,145 @@ power {
 
 	panel: panel {
 		compatible = "lg,lp129qe";
-
+		power-supply = <&vdd_3v3_panel>;
 		backlight = <&backlight>;
 		ddc-i2c-bus = <&dpaux>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_mux: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "+VDD_MUX";
-			regulator-min-microvolt = <12000000>;
-			regulator-max-microvolt = <12000000>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	vdd_mux: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_MUX";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		vdd_5v0_sys: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "+5V_SYS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_5v0_sys: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_SYS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_sys: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "+3.3V_SYS";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_3v3_sys: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_SYS";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_3v3_run: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "+3.3V_RUN";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_run: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_RUN";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_3v3_hdmi: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			vin-supply = <&vdd_3v3_run>;
-		};
+	vdd_3v3_hdmi: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_AVDD_HDMI_AP_GATED";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vdd_3v3_run>;
+	};
 
-		vdd_led: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "+VDD_LED";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			gpio = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_mux>;
-		};
+	vdd_led: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_LED";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_mux>;
+	};
 
-		vdd_5v0_ts: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "+5V_VDD_TS_SW";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-			gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_5v0_ts: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_VDD_TS_SW";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		gpio = <&gpio TEGRA_GPIO(K, 1) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_usb1_vbus: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "+5V_USB_HS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb1_vbus: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_USB_HS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 4) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_usb3_vbus: regulator@8 {
-			compatible = "regulator-fixed";
-			reg = <8>;
-			regulator-name = "+5V_USB_SS";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_usb3_vbus: regulator@8 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_USB_SS";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(N, 5) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_sys>;
+	};
 
-		vdd_3v3_panel: regulator@9 {
-			compatible = "regulator-fixed";
-			reg = <9>;
-			regulator-name = "+3.3V_PANEL";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			gpio = <&pmic 4 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_run>;
-		};
+	vdd_3v3_panel: regulator@9 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_PANEL";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&pmic 4 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_run>;
+	};
 
-		vdd_3v3_lp0: regulator@10 {
-			compatible = "regulator-fixed";
-			reg = <10>;
-			regulator-name = "+3.3V_LP0";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			/*
-			 * TODO: find a way to wire this up with the USB EHCI
-			 * controllers so that it can be enabled on demand.
-			 */
-			regulator-always-on;
-			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_3v3_sys>;
-		};
+	vdd_3v3_lp0: regulator@10 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3.3V_LP0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		/*
+		 * TODO: find a way to wire this up with the USB EHCI
+		 * controllers so that it can be enabled on demand.
+		 */
+		regulator-always-on;
+		gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_3v3_sys>;
+	};
 
-		vdd_hdmi_pll: regulator@11 {
-			compatible = "regulator-fixed";
-			reg = <11>;
-			regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
-			vin-supply = <&vdd_1v05_run>;
-		};
+	vdd_hdmi_pll: regulator@11 {
+		compatible = "regulator-fixed";
+		regulator-name = "+1.05V_RUN_AVDD_HDMI_PLL";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_LOW>;
+		vin-supply = <&vdd_1v05_run>;
+	};
 
-		vdd_5v0_hdmi: regulator@12 {
-			compatible = "regulator-fixed";
-			reg = <12>;
-			regulator-name = "+5V_HDMI_CON";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_sys>;
-		};
+	vdd_5v0_hdmi: regulator@12 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5V_HDMI_CON";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(K, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_sys>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra20-harmony.dts b/arch/arm/boot/dts/tegra20-harmony.dts
index bdfbe26fa26a..b051d75d4642 100644
--- a/arch/arm/boot/dts/tegra20-harmony.dts
+++ b/arch/arm/boot/dts/tegra20-harmony.dts
@@ -666,79 +666,66 @@ panel: panel {
 		backlight = <&backlight>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_5v0_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "vdd_1v5";
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
-		};
+	regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v5";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+	};
 
-		regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "vdd_1v2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		pci_vdd_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "vdd_1v05";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	pci_vdd_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v05";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_pnl_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "vdd_pnl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_pnl_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_pnl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_bl_reg: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "vdd_bl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_bl_reg: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_5v0_hdmi: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "VDDIO_HDMI";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(T, 2) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	vdd_5v0_hdmi: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_HDMI";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(T, 2) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_reg>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra20-medcom-wide.dts b/arch/arm/boot/dts/tegra20-medcom-wide.dts
index c73510cd501c..049181421a86 100644
--- a/arch/arm/boot/dts/tegra20-medcom-wide.dts
+++ b/arch/arm/boot/dts/tegra20-medcom-wide.dts
@@ -92,44 +92,38 @@ sound {
 		clock-names = "pll_a", "pll_a_out0", "mclk";
 	};
 
-	regulators {
-		vcc_24v_reg: regulator@100 {
-			compatible = "regulator-fixed";
-			reg = <100>;
-			regulator-name = "vcc_24v";
-			regulator-min-microvolt = <24000000>;
-			regulator-max-microvolt = <24000000>;
-			regulator-always-on;
-		};
+	vcc_24v_reg: regulator@100 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_24v";
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+		regulator-always-on;
+	};
 
-		vdd_5v0_reg: regulator@101 {
-			compatible = "regulator-fixed";
-			reg = <101>;
-			regulator-name = "vdd_5v0";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@101 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		vdd_3v3_reg: regulator@102 {
-			compatible = "regulator-fixed";
-			reg = <102>;
-			regulator-name = "vdd_3v3";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	vdd_3v3_reg: regulator@102 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 
-		vdd_1v8_reg: regulator@103 {
-			compatible = "regulator-fixed";
-			reg = <103>;
-			regulator-name = "vdd_1v8";
-			vin-supply = <&vdd_3v3_reg>;
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-always-on;
-		};
+	vdd_1v8_reg: regulator@103 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8";
+		vin-supply = <&vdd_3v3_reg>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra20-paz00.dts b/arch/arm/boot/dts/tegra20-paz00.dts
index bfc9625a6c72..2a0e5754f50f 100644
--- a/arch/arm/boot/dts/tegra20-paz00.dts
+++ b/arch/arm/boot/dts/tegra20-paz00.dts
@@ -606,30 +606,22 @@ panel: panel {
 		backlight = <&backlight>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		p5valw_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "+5valw";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	p5valw_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "+5valw";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		vdd_pnl_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "+3VS,vdd_pnl";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-boot-on;
-			gpio = <&gpio TEGRA_GPIO(A, 4) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_pnl_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "+3VS,vdd_pnl";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		gpio = <&gpio TEGRA_GPIO(A, 4) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra20-plutux.dts b/arch/arm/boot/dts/tegra20-plutux.dts
index 429e4605fbdb..378f23b2958b 100644
--- a/arch/arm/boot/dts/tegra20-plutux.dts
+++ b/arch/arm/boot/dts/tegra20-plutux.dts
@@ -60,44 +60,38 @@ sound {
 		clock-names = "pll_a", "pll_a_out0", "mclk";
 	};
 
-	regulators {
-		vcc_24v_reg: regulator@100 {
-			compatible = "regulator-fixed";
-			reg = <100>;
-			regulator-name = "vcc_24v";
-			regulator-min-microvolt = <24000000>;
-			regulator-max-microvolt = <24000000>;
-			regulator-always-on;
-		};
+	vcc_24v_reg: regulator@100 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_24v";
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+		regulator-always-on;
+	};
 
-		vdd_5v0_reg: regulator@101 {
-			compatible = "regulator-fixed";
-			reg = <101>;
-			regulator-name = "vdd_5v0";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@101 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		vdd_3v3_reg: regulator@102 {
-			compatible = "regulator-fixed";
-			reg = <102>;
-			regulator-name = "vdd_3v3";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	vdd_3v3_reg: regulator@102 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 
-		vdd_1v8_reg: regulator@103 {
-			compatible = "regulator-fixed";
-			reg = <103>;
-			regulator-name = "vdd_1v8";
-			vin-supply = <&vdd_3v3_reg>;
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-always-on;
-		};
+	vdd_1v8_reg: regulator@103 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8";
+		vin-supply = <&vdd_3v3_reg>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra20-seaboard.dts b/arch/arm/boot/dts/tegra20-seaboard.dts
index 28dcff3b7d7e..9a1ab4bd43e0 100644
--- a/arch/arm/boot/dts/tegra20-seaboard.dts
+++ b/arch/arm/boot/dts/tegra20-seaboard.dts
@@ -828,81 +828,68 @@ panel: panel {
 		ddc-i2c-bus = <&lvds_ddc>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_5v0_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "vdd_1v5";
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
-		};
+	regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v5";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+	};
 
-		regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "vdd_1v2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vbus_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "vdd_vbus_wup1";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(D, 0) 0>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	vbus_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_vbus_wup1";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(D, 0) 0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		vdd_pnl_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "vdd_pnl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_pnl_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_pnl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_bl_reg: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "vdd_bl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_bl_reg: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_hdmi: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "VDDIO_HDMI";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			gpio = <&gpio TEGRA_GPIO(V, 5) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	vdd_hdmi: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDIO_HDMI";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio TEGRA_GPIO(V, 5) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		vin-supply = <&vdd_5v0_reg>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra20-tamonten.dtsi b/arch/arm/boot/dts/tegra20-tamonten.dtsi
index 20137fc578b1..95e6bccdb4f6 100644
--- a/arch/arm/boot/dts/tegra20-tamonten.dtsi
+++ b/arch/arm/boot/dts/tegra20-tamonten.dtsi
@@ -495,40 +495,25 @@ usb-phy@c5008000 {
 		status = "okay";
 	};
 
-	sdhci@c8000600 {
+	mmc@c8000600 {
 		cd-gpios = <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_LOW>;
 		wp-gpios = <&gpio TEGRA_GPIO(H, 3) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		status = "okay";
 	};
 
-	clocks {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		clk32k_in: clock@0 {
-			compatible = "fixed-clock";
-			reg = <0>;
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-		};
+	clk32k_in: clock@0 {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		#clock-cells = <0>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		pci_vdd_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "vdd_1v05";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			gpio = <&pmic 2 0>;
-			enable-active-high;
-		};
+	pci_vdd_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v05";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		gpio = <&pmic 2 0>;
+		enable-active-high;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra20-tec.dts b/arch/arm/boot/dts/tegra20-tec.dts
index 4dec27737238..44ced60315de 100644
--- a/arch/arm/boot/dts/tegra20-tec.dts
+++ b/arch/arm/boot/dts/tegra20-tec.dts
@@ -69,44 +69,38 @@ sound {
 		clock-names = "pll_a", "pll_a_out0", "mclk";
 	};
 
-	regulators {
-		vcc_24v_reg: regulator@100 {
-			compatible = "regulator-fixed";
-			reg = <100>;
-			regulator-name = "vcc_24v";
-			regulator-min-microvolt = <24000000>;
-			regulator-max-microvolt = <24000000>;
-			regulator-always-on;
-		};
+	vcc_24v_reg: regulator@100 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_24v";
+		regulator-min-microvolt = <24000000>;
+		regulator-max-microvolt = <24000000>;
+		regulator-always-on;
+	};
 
-		vdd_5v0_reg: regulator@101 {
-			compatible = "regulator-fixed";
-			reg = <101>;
-			regulator-name = "vdd_5v0";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@101 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		vdd_3v3_reg: regulator@102 {
-			compatible = "regulator-fixed";
-			reg = <102>;
-			regulator-name = "vdd_3v3";
-			vin-supply = <&vcc_24v_reg>;
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	vdd_3v3_reg: regulator@102 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_3v3";
+		vin-supply = <&vcc_24v_reg>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 
-		vdd_1v8_reg: regulator@103 {
-			compatible = "regulator-fixed";
-			reg = <103>;
-			regulator-name = "vdd_1v8";
-			vin-supply = <&vdd_3v3_reg>;
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-always-on;
-		};
+	vdd_1v8_reg: regulator@103 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v8";
+		vin-supply = <&vdd_3v3_reg>;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
 	};
 };
diff --git a/arch/arm/boot/dts/tegra20-trimslice.dts b/arch/arm/boot/dts/tegra20-trimslice.dts
index 5b26482a55b7..4bc87bc0c2a4 100644
--- a/arch/arm/boot/dts/tegra20-trimslice.dts
+++ b/arch/arm/boot/dts/tegra20-trimslice.dts
@@ -401,58 +401,47 @@ poweroff {
 		gpios = <&gpio TEGRA_GPIO(X, 7) GPIO_ACTIVE_LOW>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		hdmi_vdd_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "avdd_hdmi";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	hdmi_vdd_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "avdd_hdmi";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 
-		hdmi_pll_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "avdd_hdmi_pll";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			regulator-always-on;
-		};
+	hdmi_pll_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "avdd_hdmi_pll";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-always-on;
+	};
 
-		vbus_reg: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "usb1_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(V, 2) 0>;
-			regulator-always-on;
-			regulator-boot-on;
-		};
+	vbus_reg: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(V, 2) 0>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 
-		pci_clk_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "pci_clk";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-		};
+	pci_clk_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "pci_clk";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
 
-		pci_vdd_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "pci_vdd";
-			regulator-min-microvolt = <1050000>;
-			regulator-max-microvolt = <1050000>;
-			regulator-always-on;
-		};
+	pci_vdd_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "pci_vdd";
+		regulator-min-microvolt = <1050000>;
+		regulator-max-microvolt = <1050000>;
+		regulator-always-on;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra20-ventana.dts b/arch/arm/boot/dts/tegra20-ventana.dts
index 59998d3708a1..ccc24674be03 100644
--- a/arch/arm/boot/dts/tegra20-ventana.dts
+++ b/arch/arm/boot/dts/tegra20-ventana.dts
@@ -613,58 +613,47 @@ panel: panel {
 		ddc-i2c-bus = <&lvds_ddc>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_5v0_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v0_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "vdd_1v5";
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
-		};
+	regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v5";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+	};
 
-		regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "vdd_1v2";
-			regulator-min-microvolt = <1200000>;
-			regulator-max-microvolt = <1200000>;
-			gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_1v2";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		gpio = <&pmic 1 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_pnl_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "vdd_pnl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_pnl_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_pnl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(C, 6) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
 
-		vdd_bl_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "vdd_bl";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
-			enable-active-high;
-		};
+	vdd_bl_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		gpio = <&gpio TEGRA_GPIO(W, 0) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra30-beaver.dts b/arch/arm/boot/dts/tegra30-beaver.dts
index ef3ea08f8d19..3211c61f956c 100644
--- a/arch/arm/boot/dts/tegra30-beaver.dts
+++ b/arch/arm/boot/dts/tegra30-beaver.dts
@@ -1984,118 +1984,103 @@ gpled2 {
 		};
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_5v_in_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_5v_in";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_5v_in_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v_in";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		chargepump_5v_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "chargepump_5v";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-			regulator-always-on;
-			enable-active-high;
-			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
-		};
+	chargepump_5v_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "chargepump_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		enable-active-high;
+		gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+	};
 
-		ddr_reg: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "vdd_ddr";
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
-			vin-supply = <&vdd_5v_in_reg>;
-		};
+	ddr_reg: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_ddr";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vdd_5v_in_reg>;
+	};
 
-		vdd_5v_sata_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "vdd_5v_sata";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(D, 6) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&vdd_5v_in_reg>;
-		};
+	vdd_5v_sata_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_5v_sata";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(D, 6) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vdd_5v_in_reg>;
+	};
 
-		usb1_vbus_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "usb1_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 6) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v_in_reg>;
-		};
+	usb1_vbus_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 6) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v_in_reg>;
+	};
 
-		usb3_vbus_reg: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "usb3_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 4) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v_in_reg>;
-		};
+	usb3_vbus_reg: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb3_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 4) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v_in_reg>;
+	};
 
-		sys_3v3_reg: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "sys_3v3,vdd_3v3_alw";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
-			vin-supply = <&vdd_5v_in_reg>;
-		};
+	sys_3v3_reg: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "sys_3v3,vdd_3v3_alw";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vdd_5v_in_reg>;
+	};
 
-		sys_3v3_pexs_reg: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "sys_3v3_pexs";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	sys_3v3_pexs_reg: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "sys_3v3_pexs";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_5v0_hdmi: regulator@8 {
-			compatible = "regulator-fixed";
-			reg = <8>;
-			regulator-name = "+VDD_5V_HDMI";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_5v0_hdmi: regulator@8 {
+		compatible = "regulator-fixed";
+		regulator-name = "+VDD_5V_HDMI";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&sys_3v3_reg>;
 	};
 
 	sound {
diff --git a/arch/arm/boot/dts/tegra30-cardhu-a02.dts b/arch/arm/boot/dts/tegra30-cardhu-a02.dts
index a02ec5082287..4899e05a0d9c 100644
--- a/arch/arm/boot/dts/tegra30-cardhu-a02.dts
+++ b/arch/arm/boot/dts/tegra30-cardhu-a02.dts
@@ -9,87 +9,75 @@ / {
 	model = "NVIDIA Tegra30 Cardhu A02 evaluation board";
 	compatible = "nvidia,cardhu-a02", "nvidia,cardhu", "nvidia,tegra30";
 
-	sdhci@78000400 {
+	mmc@78000400 {
 		status = "okay";
 		power-gpios = <&gpio TEGRA_GPIO(D, 4) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		keep-power-in-suspend;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ddr_reg: regulator@100 {
-			compatible = "regulator-fixed";
-			reg = <100>;
-			regulator-name = "vdd_ddr";
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
-		};
+	ddr_reg: regulator@100 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_ddr";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
+	};
 
-		sys_3v3_reg: regulator@101 {
-			compatible = "regulator-fixed";
-			reg = <101>;
-			regulator-name = "sys_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
-		};
+	sys_3v3_reg: regulator@101 {
+		compatible = "regulator-fixed";
+		regulator-name = "sys_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
+	};
 
-		usb1_vbus_reg: regulator@102 {
-			compatible = "regulator-fixed";
-			reg = <102>;
-			regulator-name = "usb1_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(I, 4) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	usb1_vbus_reg: regulator@102 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(I, 4) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_reg>;
+	};
 
-		usb3_vbus_reg: regulator@103 {
-			compatible = "regulator-fixed";
-			reg = <103>;
-			regulator-name = "usb3_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	usb3_vbus_reg: regulator@103 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb3_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(H, 7) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_reg>;
+	};
 
-		vdd_5v0_reg: regulator@104 {
-			compatible = "regulator-fixed";
-			reg = <104>;
-			regulator-name = "5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
-		};
+	vdd_5v0_reg: regulator@104 {
+		compatible = "regulator-fixed";
+		regulator-name = "5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&pmic 2 GPIO_ACTIVE_HIGH>;
+	};
 
-		vdd_bl_reg: regulator@105 {
-			compatible = "regulator-fixed";
-			reg = <105>;
-			regulator-name = "vdd_bl";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(K, 3) GPIO_ACTIVE_HIGH>;
-		};
+	vdd_bl_reg: regulator@105 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(K, 3) GPIO_ACTIVE_HIGH>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/tegra30-cardhu-a04.dts b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
index 9234988624ec..c1c0ca628af1 100644
--- a/arch/arm/boot/dts/tegra30-cardhu-a04.dts
+++ b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
@@ -11,99 +11,86 @@ / {
 	model = "NVIDIA Tegra30 Cardhu A04 (A05, A06, A07) evaluation board";
 	compatible = "nvidia,cardhu-a04", "nvidia,cardhu", "nvidia,tegra30";
 
-	sdhci@78000400 {
+	mmc@78000400 {
 		status = "okay";
 		power-gpios = <&gpio TEGRA_GPIO(D, 3) GPIO_ACTIVE_HIGH>;
 		bus-width = <4>;
 		keep-power-in-suspend;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		ddr_reg: regulator@100 {
-			compatible = "regulator-fixed";
-			regulator-name = "ddr";
-			reg = <100>;
-			regulator-min-microvolt = <1500000>;
-			regulator-max-microvolt = <1500000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
-		};
+	ddr_reg: regulator@100 {
+		compatible = "regulator-fixed";
+		regulator-name = "ddr";
+		regulator-min-microvolt = <1500000>;
+		regulator-max-microvolt = <1500000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 7 GPIO_ACTIVE_HIGH>;
+	};
 
-		sys_3v3_reg: regulator@101 {
-			compatible = "regulator-fixed";
-			reg = <101>;
-			regulator-name = "sys_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
-		};
+	sys_3v3_reg: regulator@101 {
+		compatible = "regulator-fixed";
+		regulator-name = "sys_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&pmic 6 GPIO_ACTIVE_HIGH>;
+	};
 
-		usb1_vbus_reg: regulator@102 {
-			compatible = "regulator-fixed";
-			reg = <102>;
-			regulator-name = "usb1_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 6) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	usb1_vbus_reg: regulator@102 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 6) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_reg>;
+	};
 
-		usb3_vbus_reg: regulator@103 {
-			compatible = "regulator-fixed";
-			reg = <103>;
-			regulator-name = "usb3_vbus";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 4) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	usb3_vbus_reg: regulator@103 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb3_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 4) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_reg>;
+	};
 
-		vdd_5v0_reg: regulator@104 {
-			compatible = "regulator-fixed";
-			reg = <104>;
-			regulator-name = "5v0";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&pmic 8 GPIO_ACTIVE_HIGH>;
-		};
+	vdd_5v0_reg: regulator@104 {
+		compatible = "regulator-fixed";
+		regulator-name = "5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&pmic 8 GPIO_ACTIVE_HIGH>;
+	};
 
-		vdd_bl_reg: regulator@105 {
-			compatible = "regulator-fixed";
-			reg = <105>;
-			regulator-name = "vdd_bl";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 2) GPIO_ACTIVE_HIGH>;
-		};
+	vdd_bl_reg: regulator@105 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 2) GPIO_ACTIVE_HIGH>;
+	};
 
-		vdd_bl2_reg: regulator@106 {
-			compatible = "regulator-fixed";
-			reg = <106>;
-			regulator-name = "vdd_bl2";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(DD, 0) GPIO_ACTIVE_HIGH>;
-		};
+	vdd_bl2_reg: regulator@106 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_bl2";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(DD, 0) GPIO_ACTIVE_HIGH>;
 	};
 
 	i2c@7000d000 {
diff --git a/arch/arm/boot/dts/tegra30-cardhu.dtsi b/arch/arm/boot/dts/tegra30-cardhu.dtsi
index c166967b6c3f..c8dc3b6ab2f6 100644
--- a/arch/arm/boot/dts/tegra30-cardhu.dtsi
+++ b/arch/arm/boot/dts/tegra30-cardhu.dtsi
@@ -434,158 +434,139 @@ panel: panel {
 		backlight = <&backlight>;
 	};
 
-	regulators {
-		compatible = "simple-bus";
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		vdd_ac_bat_reg: regulator@0 {
-			compatible = "regulator-fixed";
-			reg = <0>;
-			regulator-name = "vdd_ac_bat";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-always-on;
-		};
+	vdd_ac_bat_reg: regulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_ac_bat";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-always-on;
+	};
 
-		cam_1v8_reg: regulator@1 {
-			compatible = "regulator-fixed";
-			reg = <1>;
-			regulator-name = "cam_1v8";
-			regulator-min-microvolt = <1800000>;
-			regulator-max-microvolt = <1800000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(BB, 4) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&vio_reg>;
-		};
+	cam_1v8_reg: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "cam_1v8";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(BB, 4) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&vio_reg>;
+	};
 
-		cp_5v_reg: regulator@2 {
-			compatible = "regulator-fixed";
-			reg = <2>;
-			regulator-name = "cp_5v";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			regulator-boot-on;
-			regulator-always-on;
-			enable-active-high;
-			gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
-		};
+	cp_5v_reg: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "cp_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		enable-active-high;
+		gpio = <&pmic 0 GPIO_ACTIVE_HIGH>;
+	};
 
-		emmc_3v3_reg: regulator@3 {
-			compatible = "regulator-fixed";
-			reg = <3>;
-			regulator-name = "emmc_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(D, 1) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	emmc_3v3_reg: regulator@3 {
+		compatible = "regulator-fixed";
+		regulator-name = "emmc_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(D, 1) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		modem_3v3_reg: regulator@4 {
-			compatible = "regulator-fixed";
-			reg = <4>;
-			regulator-name = "modem_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(D, 6) GPIO_ACTIVE_HIGH>;
-		};
+	modem_3v3_reg: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "modem_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(D, 6) GPIO_ACTIVE_HIGH>;
+	};
 
-		pex_hvdd_3v3_reg: regulator@5 {
-			compatible = "regulator-fixed";
-			reg = <5>;
-			regulator-name = "pex_hvdd_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	pex_hvdd_3v3_reg: regulator@5 {
+		compatible = "regulator-fixed";
+		regulator-name = "pex_hvdd_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(L, 7) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_cam1_ldo_reg: regulator@6 {
-			compatible = "regulator-fixed";
-			reg = <6>;
-			regulator-name = "vdd_cam1_ldo";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(R, 6) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_cam1_ldo_reg: regulator@6 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_cam1_ldo";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(R, 6) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_cam2_ldo_reg: regulator@7 {
-			compatible = "regulator-fixed";
-			reg = <7>;
-			regulator-name = "vdd_cam2_ldo";
-			regulator-min-microvolt = <2800000>;
-			regulator-max-microvolt = <2800000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(R, 7) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_cam2_ldo_reg: regulator@7 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_cam2_ldo";
+		regulator-min-microvolt = <2800000>;
+		regulator-max-microvolt = <2800000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(R, 7) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_cam3_ldo_reg: regulator@8 {
-			compatible = "regulator-fixed";
-			reg = <8>;
-			regulator-name = "vdd_cam3_ldo";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_cam3_ldo_reg: regulator@8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_cam3_ldo";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(S, 0) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_com_reg: regulator@9 {
-			compatible = "regulator-fixed";
-			reg = <9>;
-			regulator-name = "vdd_com";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_com_reg: regulator@9 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_com";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(D, 0) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_fuse_3v3_reg: regulator@10 {
-			compatible = "regulator-fixed";
-			reg = <10>;
-			regulator-name = "vdd_fuse_3v3";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(L, 6) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_fuse_3v3_reg: regulator@10 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_fuse_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(L, 6) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_pnl1_reg: regulator@11 {
-			compatible = "regulator-fixed";
-			reg = <11>;
-			regulator-name = "vdd_pnl1";
-			regulator-min-microvolt = <3300000>;
-			regulator-max-microvolt = <3300000>;
-			regulator-always-on;
-			regulator-boot-on;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(L, 4) GPIO_ACTIVE_HIGH>;
-			vin-supply = <&sys_3v3_reg>;
-		};
+	vdd_pnl1_reg: regulator@11 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_pnl1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(L, 4) GPIO_ACTIVE_HIGH>;
+		vin-supply = <&sys_3v3_reg>;
+	};
 
-		vdd_vid_reg: regulator@12 {
-			compatible = "regulator-fixed";
-			reg = <12>;
-			regulator-name = "vddio_vid";
-			regulator-min-microvolt = <5000000>;
-			regulator-max-microvolt = <5000000>;
-			enable-active-high;
-			gpio = <&gpio TEGRA_GPIO(T, 0) GPIO_ACTIVE_HIGH>;
-			gpio-open-drain;
-			vin-supply = <&vdd_5v0_reg>;
-		};
+	vdd_vid_reg: regulator@12 {
+		compatible = "regulator-fixed";
+		regulator-name = "vddio_vid";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+		gpio = <&gpio TEGRA_GPIO(T, 0) GPIO_ACTIVE_HIGH>;
+		gpio-open-drain;
+		vin-supply = <&vdd_5v0_reg>;
 	};
 
 	sound {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
