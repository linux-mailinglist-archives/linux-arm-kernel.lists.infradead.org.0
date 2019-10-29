Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B24CE855C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zcMeTKUk3Q/ejMmHKIwn9fdq4JYyvoWz31iw9lQaqh0=; b=mnB
	NNLZgJjQr4XXc/4C8dWEi3JriZdwrb/u1nZpetghs3kbinoPRK81eIYl4zdzBYhVwAzRD/4rM6fCI
	AWmVzUFsi4BvNEJqcZSolmD9QxeyWbjn5pvJsZEK7KCigchK5fSLPsGSVvlR1JXSJ/+z9O9bJygQk
	lFysNDTzgJf7q0NOlhpMYM/ydY6+pAFaWghi4Hn9BGQgRj3yi0JwvyScd4VObrjBTv4v7zeD/3Kxg
	Z+xuXLmKcycx6/7eMpe1PpY1hxhmBNqy5xg41SFEU0DpCPB1oryV8jzbLZO01QbdfZ7II7JCNSdU+
	G7A5fLQ/qa7VAPcRwD+NEIaoaOxZ7hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOZy-0002Rq-Tm; Tue, 29 Oct 2019 10:18:22 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOZp-0002RG-EY
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:18:14 +0000
Received: by mail-wr1-x442.google.com with SMTP id a11so12957258wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 03:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rdcY2ECIRCmFNWGhaSPQ65IkYHqSS3k5QdhNJoXorB0=;
 b=QabNL/6f25IZI1ng0rsdZtS27z7/5MueUVWzGN0nIXuIGc7XjiRdNe+CZ7rdQu0BQw
 QYP5ODMEiiKECKM4KrTeQuKDyNfnTVx7l8x5WJt2FT85gYVdaWsCQNQlo0jT/gJPG7zE
 l2KqVJq9/tb83oEOEnJXtE39XGB0fnHFRMhTwQlGbfWlyHDHb2VB2jdpTnuFZLk1MTrJ
 GLWWw8Yp711qIj2LDrfJVxf+lfXgdH0QQ2KlqtPEryiIZrcvDzmLjh6hD6wog3iq4l54
 aJGZPv05f/EwEtqOZ9BzhQ+i41OHdG8BImAHF1OCeBH3o0rDm7sASOBG4yMX7jQMPK3h
 5o6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rdcY2ECIRCmFNWGhaSPQ65IkYHqSS3k5QdhNJoXorB0=;
 b=ZxKD/0JVpkEPe1U+uUofiHcd/XlomQ8GEDdjJdFDdZiN/eLw/zWnBSrvI1iZsoCDDC
 DBPh+FPXugUIjnMBa7vdrwjmy7UdhfgU/P+F57rNdADX16iuB5ORsZukEHA5MJxPIlJd
 nmn6SifZ+b1KVIA33Idf+U1Gc4EhOW8wC/nLXG8aI2HF6hK6jVyXe1n7ec/VjqIKswjZ
 Q0AwOoE75Cwkk3Xf5HHUwNgQrMGmzfmiUCUlxmykfx8JgewmL1L6e5z3bBQSf5cxZqR2
 u0aPqptGz+CfK8L1j8Cfj60ueOl0TtFbGfe8MlvsLiuoOxbDy9ROMlzczyb92hTYAy8b
 1V7Q==
X-Gm-Message-State: APjAAAXhzmyWFhHABSuvOs/cHq6GWjtd4z7FPe4BjTXZQzT/Xw0RP7g4
 URDE30jN3NpNVLBFzN+ORw8l28ThBWhA0Q==
X-Google-Smtp-Source: APXvYqy0rZyubHlTn40+nBhraeCSuQzoCQIiILb+7EsI9wSAEpgxKYZlLZQXE4zZaXWry8fl8nP1tA==
X-Received: by 2002:adf:b1d1:: with SMTP id r17mr19026591wra.201.1572344290868; 
 Tue, 29 Oct 2019 03:18:10 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb19:16b:9900:d1e3:f193:b14:d626])
 by smtp.gmail.com with ESMTPSA id
 i71sm16175411wri.68.2019.10.29.03.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 03:18:10 -0700 (PDT)
From: Joris Offouga <offougajoris@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3] ARM: dts: imx7d-pico: Add LCD support
Date: Tue, 29 Oct 2019 11:17:41 +0100
Message-Id: <20191029101742.9100-1-offougajoris@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_031813_515774_4F552EC6 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Joris Offouga <offougajoris@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabio Estevam <festevam@gmail.com>

Add support for the VXT VL050-8048NT-C01 panel connected through
the 24 bit parallel LCDIF interface.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
Signed-off-by: Joris Offouga <offougajoris@gmail.com>
---
 Changes v2 -> v3 
	rename pintcrl_backlight to pinctrl_pwm4
	sort the nodes alphabetical

 Changes v1 -> v2
 	change "From:" Joris Offouga to Fabio Estevam
	set Joris Offouga signed-off to the last one

 arch/arm/boot/dts/imx7d-pico.dtsi | 82 +++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index 6f50ebf31a0a..9c7c2c45e6aa 100644
--- a/arch/arm/boot/dts/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/imx7d-pico.dtsi
@@ -7,12 +7,40 @@
 #include "imx7d.dtsi"
 
 / {
+        backlight: backlight {
+                compatible = "pwm-backlight";
+                pwms = <&pwm4 0 50000 0>;
+                brightness-levels = <0 36 72 108 144 180 216 255>;
+                default-brightness-level = <6>;
+        };
+
 	/* Will be filled by the bootloader */
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0>;
 	};
 
+        panel {
+                compatible = "vxt,vl050-8048nt-c01";
+                backlight = <&backlight>;
+                power-supply = <&reg_lcd_3v3>;
+
+                port {
+                        panel_in: endpoint {
+                                remote-endpoint = <&display_out>;
+                        };
+                };
+        };
+
+	reg_lcd_3v3: regulator-lcd-3v3 {
+                compatible = "regulator-fixed";
+                regulator-name = "lcd-3v3";
+                regulator-min-microvolt = <3300000>;
+                regulator-max-microvolt = <3300000>;
+                gpio = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+                enable-active-high;
+        };
+
 	reg_wlreg_on: regulator-wlreg_on {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -230,6 +258,18 @@
 	};
 };
 
+&lcdif {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lcdif>;
+	status = "okay";
+
+	port {
+		display_out: endpoint {
+			remote-endpoint = <&panel_in>;
+		};
+	};
+};
+
 &sai1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sai1>;
@@ -260,6 +300,8 @@
 };
 
 &pwm4 { /* Backlight */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
 	status = "okay";
 };
 
@@ -413,6 +455,40 @@
 		>;
 	};
 
+	pinctrl_lcdif: lcdifgrp {
+		fsl,pins = <
+			MX7D_PAD_LCD_DATA00__LCD_DATA0		0x79
+			MX7D_PAD_LCD_DATA01__LCD_DATA1		0x79
+			MX7D_PAD_LCD_DATA02__LCD_DATA2		0x79
+			MX7D_PAD_LCD_DATA03__LCD_DATA3		0x79
+			MX7D_PAD_LCD_DATA04__LCD_DATA4		0x79
+			MX7D_PAD_LCD_DATA05__LCD_DATA5		0x79
+			MX7D_PAD_LCD_DATA06__LCD_DATA6		0x79
+			MX7D_PAD_LCD_DATA07__LCD_DATA7		0x79
+			MX7D_PAD_LCD_DATA08__LCD_DATA8		0x79
+			MX7D_PAD_LCD_DATA09__LCD_DATA9		0x79
+			MX7D_PAD_LCD_DATA10__LCD_DATA10		0x79
+			MX7D_PAD_LCD_DATA11__LCD_DATA11		0x79
+			MX7D_PAD_LCD_DATA12__LCD_DATA12		0x79
+			MX7D_PAD_LCD_DATA13__LCD_DATA13		0x79
+			MX7D_PAD_LCD_DATA14__LCD_DATA14		0x79
+			MX7D_PAD_LCD_DATA15__LCD_DATA15		0x79
+			MX7D_PAD_LCD_DATA16__LCD_DATA16		0x79
+			MX7D_PAD_LCD_DATA17__LCD_DATA17		0x79
+			MX7D_PAD_LCD_DATA18__LCD_DATA18		0x79
+			MX7D_PAD_LCD_DATA19__LCD_DATA19		0x79
+			MX7D_PAD_LCD_DATA20__LCD_DATA20		0x79
+			MX7D_PAD_LCD_DATA21__LCD_DATA21		0x79
+			MX7D_PAD_LCD_DATA22__LCD_DATA22		0x79
+			MX7D_PAD_LCD_DATA23__LCD_DATA23		0x79
+			MX7D_PAD_LCD_CLK__LCD_CLK		0x79
+			MX7D_PAD_LCD_ENABLE__LCD_ENABLE		0x78
+			MX7D_PAD_LCD_VSYNC__LCD_VSYNC		0x78
+			MX7D_PAD_LCD_HSYNC__LCD_HSYNC		0x78
+			MX7D_PAD_LCD_RESET__GPIO3_IO4		0x14
+		>;
+	};
+
 	pinctrl_pwm1: pwm1 {
 		fsl,pins = <
 			MX7D_PAD_GPIO1_IO08__PWM1_OUT   0x7f
@@ -431,6 +507,12 @@
 		>;
 	};
 
+	pinctrl_pwm4: pwm4grp{
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO11__PWM4_OUT	0x0
+		>;
+	};
+
 	pinctrl_reg_wlreg_on: regregongrp {
 		fsl,pins = <
 			MX7D_PAD_ECSPI1_SCLK__GPIO4_IO16	0x59
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
