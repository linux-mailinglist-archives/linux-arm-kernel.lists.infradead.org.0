Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828B62D618
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOfdD34Hh53lPgXaYXHJGJHgrhZaEc+QaiqxuVhaCWo=; b=BtQNcwrRDjsMYq
	Mokt55NVf8b0sCcmI3Cci94Mf5P49+IZV+nu00kz+7P3N47TqU2TdqgDD35Y2kgxwddudJNOQhZ9J
	fjSmoQet+gxxRFIo0EEIhQzJXrlJ+FNwBGVdGo8CmC6qCzWGdky0nPO2+c0l0urNx4z7G4PYVSlk2
	SP3qr0scaklmF4lxqr+bOKt8yNg1HZY3A3yR00eFWYxUcCefVbTgISA+jZh5KLCNKH170r/bXSelb
	2DBNV1HcwC/C67f4KeF5URYfGXPNpIwMMmROyOLhK9J3QXNiTjVKl9AcXE9A4T60Kk18hCOxV5LF7
	rAGLB5e6lPfLeXhItaXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsrV-0002T7-M9; Wed, 29 May 2019 07:19:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsrO-0002SQ-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:18:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so1042637pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 00:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfPQaJK4b6PcFs1pATGFmdv3+D6FpEgotdn3n+xpnSo=;
 b=M7RhC9x/89fJXs+K/H6afYRjpW07ij58C9JovMK1gsKLCu1t9dxKU5DYa7Yqb0xHYo
 9jjxyggQhQu2K4o0XpCVy1KbIYXBuX3ortitNmgEczNhBHMLDhczJpiAstGpB3wc0Y7C
 wKe46qsSphda6/YVzrf0hsU6+j0YqHcpKGG/bnpAq2CcXphIdJQoCzQ0CVaLAkghuSDG
 viEMMmtmw0CbtSFBAl7RoXT90gkAviRD1jivPYFkTDT4l2tvR+YwpnImfRmc/Gofw4LI
 e8ZAJEF8wj0BWME5Udk9Gtp5ASduIzyi44FzET6xClsaYvbJgrwbhjNeHK9uStJcQivz
 zNaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lfPQaJK4b6PcFs1pATGFmdv3+D6FpEgotdn3n+xpnSo=;
 b=QMCM0SxjafpG4zzYLZlgEx9rBMx8OgTpdD6mSwQ9nL6/zAB/PgCHqQISP+J8pUdHDU
 S3wRXuu7OzoMkUsHasdghIAcHaBuAZf7yLMUYOw5qXkiHLXnkWpglIzwcaFRlXZNuxg7
 DSb/bGywSFU4CBsZuSiS2/XoQZFfgqnd6A1PnDMJCHaZHdJCIj2VjH1VFcZx09bfhufB
 fdpstjgL5SJXQPyS1JGQBGyGywAVmbAf8BGbJei9dZ/ZSWx+8Hu6Byj4toooCr61W5Lf
 yklEp+5kdE9lPRZw7oGqjzwZBZkb2hNXmACjQYSvLn/mMz+OM0VKUJadhsMgIGa6Pp77
 Q5fw==
X-Gm-Message-State: APjAAAW42VNIkV5e9sBySaQ/E5o4lrep+9jE0lBnJw98CIsK3pkTKGDC
 d7nC85l8H25oo+h8bnFMGNZQDq6rNvk=
X-Google-Smtp-Source: APXvYqwOkFXvZjxTMa7XfJD9UYwZbQAVrZVJTnhy8paL3sJPyiMYYXu21mQiS9/zRY2lIYCHdhfhtQ==
X-Received: by 2002:a63:2224:: with SMTP id i36mr17923970pgi.70.1559114332873; 
 Wed, 29 May 2019 00:18:52 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id y16sm32038938pfo.133.2019.05.29.00.18.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 00:18:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB charger
 chip
Date: Wed, 29 May 2019 00:18:41 -0700
Message-Id: <20190529071843.24767-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_001854_337606_A7CBDA7D 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add node for UCS1002 USB charger chip connected to front panel USB and
replace "regulator-fixed" previously used to control VBUS.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v1]:

    - Added GPIO hog configuration to put UCS1002 into correct mode
      even before its driver takes over. The code for that is taken
      from similar patch from Lucas, so I added his Signed-off-by as
      well.

[v1] lore.kernel.org/r/20190522071227.31488-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 77 +++++++++++++++++++------
 1 file changed, 59 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 93be00a60c88..07e21d1e5b4c 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -60,18 +60,6 @@
 		regulator-always-on;
 	};
 
-	reg_5p0v_user_usb: regulator-5p0v-user-usb {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_reg_user_usb>;
-		vin-supply = <&reg_5p0v_main>;
-		regulator-name = "5V_USER_USB";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		gpio = <&gpio3 22 GPIO_ACTIVE_LOW>;
-		startup-delay-us = <1000>;
-	};
-
 	reg_3p3v_pmic: regulator-3p3v-pmic {
 		compatible = "regulator-fixed";
 		vin-supply = <&reg_12p0v>;
@@ -331,6 +319,39 @@
 	};
 };
 
+&gpio3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_gpio3_hog>;
+
+	usb-emulation {
+		gpio-hog;
+		gpios = <19 GPIO_ACTIVE_HIGH>;
+		output-low;
+		line-name = "usb-emulation";
+	};
+
+	usb-mode1 {
+		gpio-hog;
+		gpios = <20 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "usb-mode1";
+	};
+
+	usb-pwr {
+		gpio-hog;
+		gpios = <22 GPIO_ACTIVE_LOW>;
+		output-high;
+		line-name = "usb-pwr-ctrl-en-n";
+	};
+
+	usb-mode2 {
+		gpio-hog;
+		gpios = <23 GPIO_ACTIVE_HIGH>;
+		output-high;
+		line-name = "usb-mode2";
+	};
+};
+
 &i2c1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c1>;
@@ -590,6 +611,16 @@
 		status = "disabled";
 	};
 
+	reg_5p0v_user_usb: charger@32 {
+		compatible = "microchip,ucs1002";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_ucs1002_pins>;
+		reg = <0x32>;
+		interrupts-extended = <&gpio5 2 IRQ_TYPE_EDGE_BOTH>,
+				      <&gpio3 21 IRQ_TYPE_EDGE_BOTH>;
+		interrupt-names = "a_det", "alert";
+	};
+
 	hpa1: amp@60 {
 		compatible = "ti,tpa6130a2";
 		pinctrl-names = "default";
@@ -935,6 +966,15 @@
 		>;
 	};
 
+	pinctrl_gpio3_hog: gpio3hoggrp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x1b0b0
+			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
+			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
+			MX6QDL_PAD_EIM_D23__GPIO3_IO23		0x1b0b0
+		>;
+	};
+
 	pinctrl_i2c1: i2c1grp {
 		fsl,pins = <
 			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001b8b1
@@ -982,12 +1022,6 @@
 		>;
 	};
 
-	pinctrl_reg_user_usb: usbotggrp {
-		fsl,pins = <
-			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x40000038
-		>;
-	};
-
 	pinctrl_rmii_phy_irq: phygrp {
 		fsl,pins = <
 			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x40010000
@@ -1047,6 +1081,13 @@
 		>;
 	};
 
+	pinctrl_ucs1002_pins: ucs1002grp {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_A25__GPIO5_IO02  	0x1b0b0
+			MX6QDL_PAD_EIM_D21__GPIO3_IO21  	0x1b0b0
+		>;
+	};
+
 	pinctrl_usdhc2: usdhc2grp {
 		fsl,pins = <
 			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x10059
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
