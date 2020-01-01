Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF112E11F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 00:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=75lrJXVGfbP0XcxNtpSZbRWbsTfmLot9BWphrdLayv8=; b=AA87JYGJlpt1TO
	Dg9sbexnfL4sFW8XZeet/JIAYD8kJobGb3x5k2RUGW3i+XR8WmdWOxv6adkW5RF5q+yytFA6NQ54u
	Tj50EwtPB/r9GMfJwJtDL9d8H3T4IBZtQHpbGIoxOCdzI39/I3ntSrJ4QbqwW1Lsca0vtCWIuLkIz
	MLUwVq8tu/Auv4eI6XaxVb94sUK3r5J/6+jf/zGoMXxEdI69OT2duFlm3jo6mHGgEITP+K35/XK+w
	6xk2Ep1Wioaz+XPPdqDM6Mu4B6OTqYDVT7Xp7Hu/GhNYQnHmHiZOqrlqukxWS/phdBPDm/qqXB2gf
	TJWEdZenRAG1CA9OBnqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imnsS-0007Mt-NS; Wed, 01 Jan 2020 23:58:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imnsL-0007MV-1Z
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 23:58:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so37841484wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 15:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1u0XUFsbVMoqQAb5aADvF/uT/DLlkjgZL56Wrrzd6xs=;
 b=ZzPHqwEGodnAsXq1pC4nPntUuQtCki7IYKWkgY1OmDk4Bk+Pgcd+Lkb8TBbUbQsks8
 ycVvml9NeZJwsnnB4As2FplNXmCBw8t8Io1bo896yYejlf+FSjBqSZzZCntlVcV2kZ4b
 1euAh/VM3biC8yFd7wc6RKJWRNeyqqwePDi/+ZnQOvlMzV89yeu/iGBoEh5mW1gBcmNx
 aBQMQC66fWLJYu7hdjomwDCvuUomkNZXDJTyH9V4lW5pEdVvlR6QJ+8ZzmjNnTNdl+3r
 Ltlj0QK/N2r8dIiUcOPLXP7HTsNjJr8MqHZaL+aGKvfghp2x3FusBHkDp1s3h/Fgp9r7
 UcBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1u0XUFsbVMoqQAb5aADvF/uT/DLlkjgZL56Wrrzd6xs=;
 b=pXOaMg+cgA8slNExrVbLxj0PJ0Nih1f/djnnDLdl+XSHBA+kpD6Xcomh4Vcb2CBxZ3
 r2JhW4k8GR4TLZQjmEpdVhkemwRXr8wGgq28nU3Qib+O16VdeuTSebTww7zf1pLJQJ1V
 XFQPxirpS8SpjwvfRlJ9O/00E2D4QQ2Jl2MCxw6z6EISkja/hjsg2rKZEfcSGYJxixv0
 l0vFwNSDWByeRRikMpnuTc4LYuai4XriI/1OYVppY4nH4ZRaxf18IAeQkotSh0GoMe3i
 9eMQuEQ5/ZNzxiCCgRTfg+J+BJqht9NFb4vPZUL3SkXz23JtdVRWnyy0VDmb7tbdL1/e
 Wr/g==
X-Gm-Message-State: APjAAAV+pSRTwsIw+krY6XVKXTRTVHSfdLNH4wmr2RA9VBT3piNmF/JV
 r6z1N5DHsm+FUhhOp4uJimjbJ6PwRuW5Cw==
X-Google-Smtp-Source: APXvYqxiRHFzYAiWgYVsq87/RMZ71Oj/IUrRfUaAV58MHtG3+PrFH0Wt8A7TZLFutIJjXykaInBPug==
X-Received: by 2002:a5d:4983:: with SMTP id r3mr79769065wrq.134.1577923082584; 
 Wed, 01 Jan 2020 15:58:02 -0800 (PST)
Received: from XPS-15-7590.home ([2a01:cb19:16b:9900:21b2:eaec:d723:ee6e])
 by smtp.gmail.com with ESMTPSA id h2sm58869289wrt.45.2020.01.01.15.58.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 15:58:02 -0800 (PST)
From: Joris Offouga <offougajoris@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4] ARM: dts: imx7d-pico: Add LCD support
Date: Thu,  2 Jan 2020 00:57:18 +0100
Message-Id: <20200101235719.21466-1-offougajoris@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_155805_113100_22595503 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Otavio Salvador <otavio@ossystems.com.br>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>,
 Joris Offouga <offougajoris@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
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
 Changes v3 -> v4
	declare pinmux for lcd 
	fix muxing value for pwm

 Changes v2 -> v3 
	rename pintcrl_backlight to pinctrl_pwm4
	sort the nodes alphabetical

 Changes v1 -> v2
 	change "From:" Joris Offouga to Fabio Estevam
	set Joris Offouga signed-off to the last one

 arch/arm/boot/dts/imx7d-pico.dtsi | 90 +++++++++++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index 6f50ebf31a0a..e57da0d32b98 100644
--- a/arch/arm/boot/dts/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/imx7d-pico.dtsi
@@ -7,12 +7,42 @@
 #include "imx7d.dtsi"
 
 / {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm4 0 50000 0>;
+		brightness-levels = <0 36 72 108 144 180 216 255>;
+		default-brightness-level = <6>;
+	};
+
 	/* Will be filled by the bootloader */
 	memory@80000000 {
 		device_type = "memory";
 		reg = <0x80000000 0>;
 	};
 
+	panel {
+		compatible = "vxt,vl050-8048nt-c01";
+		backlight = <&backlight>;
+		power-supply = <&reg_lcd_3v3>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
+	};
+
+	reg_lcd_3v3: regulator-lcd-3v3 {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_reg_lcdreg_on>;
+		regulator-name = "lcd-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+        };
+
 	reg_wlreg_on: regulator-wlreg_on {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
@@ -230,6 +260,18 @@
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
@@ -260,6 +302,8 @@
 };
 
 &pwm4 { /* Backlight */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm4>;
 	status = "okay";
 };
 
@@ -413,6 +457,40 @@
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
@@ -431,6 +509,12 @@
 		>;
 	};
 
+	pinctrl_pwm4: pwm4grp{
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO11__PWM4_OUT	0x7f
+		>;
+	};
+
 	pinctrl_reg_wlreg_on: regregongrp {
 		fsl,pins = <
 			MX7D_PAD_ECSPI1_SCLK__GPIO4_IO16	0x59
@@ -577,6 +661,12 @@
 		>;
 	};
 
+	pinctrl_reg_lcdreg_on: reglcdongrp {
+	fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO06__GPIO1_IO6	0x59
+		>;
+	};
+
 	pinctrl_wdog: wdoggrp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO00__WDOG1_WDOG_B	0x74
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
