Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A000117228
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 17:51:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0TUZ5cC8bfiQh52HohI76f7LPgqfn7V4AhLitRDj9g4=; b=SwoA83/NNcApty
	on2U3AqEI6z5cHctmPB9NI+ZzAj+eH7oBW4gmDM0u8QCbxOffIobrjPxZs35tUouco5asDpJueNS1
	qVaZKyxBX0pxj29SV5LV1YdjKd17HsTNS9U4bx3bBI12ZfkWKM4T+TdZaW+5UZA/Wf81/MBjZTYZF
	n06vmDp76LtZ6N6csiidOv9lF8H9kw1pT8aN05Qt+uENFk86Gv0co+h2D3wTABaBqy9E5zZs3dr94
	U+VKnYRa7kbGj8swQtR96RQe9KBkQqS7Hvcf5LsRGrlz2REsYSCYVKnILKsz80BpYn1gMttm+7MFi
	tyzEaKwqE1Sfp8XAqXuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMFX-0005VI-9a; Mon, 09 Dec 2019 16:51:07 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMFB-0005Kl-7y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 16:50:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id x13so6031751plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 08:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=etbkgpiNShv5Cytt/jCJtMGgQu7+VxY2ZKOwE9HC8iY=;
 b=LmryHUei0D0PMsmqoiA0cnhC0s0Bh7PIls560OGF8S/keUhUPXJSerLgvFf94h5KRi
 26NENu4/vOKlQNTDBVegnYwlNEwfIXt6hjrtG0cOpK1wfhWPlAclt9HQgUGVLropdX4M
 HEep4fG7UKTrBObaJQYF5/i1FOvfUrLfHpPlYjvC3/PJ+80WeQDedUZJW2WCRTaOrhFv
 qguE6ISXHo8AkO7T4dv/L45JXaNokn9XKz52I447nWsMMG1eF9E48ZLAaleq1sQcF6Qm
 We+O6T29Ak3QL+NoITcxy3e7nrP8VomYNxqM6DL993gLTGXRHRwuQEs0RCXWgiZMnn7W
 Qh2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=etbkgpiNShv5Cytt/jCJtMGgQu7+VxY2ZKOwE9HC8iY=;
 b=R8FozFMHkgdk/2ik5hxNe5m7ik+7Mr9czjz7Qr9Uvxrs04Txfyp3HYBJDg7qlXNG0L
 zQlMfwRv0O+GqcbePpc2tvX64mYP1qe404Tci5IxHoAtbAbYfrPLXb6mEXl9KOGc0N/i
 HFJDeof8VPcHo0GQx3l7rslAUt5uGhLMVE0lIaZUsEf8m8lmE8k2gT+NY8h8emlYTtVl
 IhJo8re7mrjx9CHGV7+AFKdSzV75GJUchgAWsklqXTOukioxh3gLXxGU2yYHOIww4YNh
 H8TI9M+Z1kGAAs9wmNoKPDsKB/c0hK9wFf0nehCw37TCtua1ihbjnkZjH4kieRucLKnp
 1Rxg==
X-Gm-Message-State: APjAAAXBwXPW/HxhcshYbMM5mKfGWpy4UtqYe6XcohoHptzPNNX3LQb8
 GeqskneZpMwBACV2eYPv2H6aoyZddl0=
X-Google-Smtp-Source: APXvYqyvDySvpOZ47zirv38B2yVsexxZWO+tz0/xVInQrwd4MezOaWncApQWqSq5tWn8FXzGRvQdJA==
X-Received: by 2002:a17:90a:5d04:: with SMTP id
 s4mr7621515pji.120.1575910241646; 
 Mon, 09 Dec 2019 08:50:41 -0800 (PST)
Received: from localhost.localdomain (c-67-165-113-11.hsd1.wa.comcast.net.
 [67.165.113.11])
 by smtp.gmail.com with ESMTPSA id c19sm18299294pfc.144.2019.12.09.08.50.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 08:50:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/3] ARM: dts: imx6: rdu2: Add node for UCS1002 USB charger
 chip
Date: Mon,  9 Dec 2019 08:50:16 -0800
Message-Id: <20191209165018.21794-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_085045_287179_179C2EAA 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FREEMAIL_REPLY         From and body contain different freemails
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
Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

Changes since [v2]:

    - Rebased on recent linux-next (12/05/2019)

Changes since [v1]

    - Added GPIO hog configuration to put UCS1002 into correct mode
      even before its driver takes over. The code for that is taken
      from similar patch from Lucas, so I added his Signed-off-by as
      well.

[v2] https://lore.kernel.org/lkml/20190529071843.24767-1-andrew.smirnov@gmail.com/
[v1] lore.kernel.org/r/20190522071227.31488-1-andrew.smirnov@gmail.com

 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 77 +++++++++++++++++++------
 1 file changed, 59 insertions(+), 18 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index ee364215fb9d..7531f0595bd1 100644
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
@@ -406,6 +394,39 @@
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
@@ -675,6 +696,16 @@
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
@@ -1019,6 +1050,15 @@
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
@@ -1066,12 +1106,6 @@
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
@@ -1131,6 +1165,13 @@
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
