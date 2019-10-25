Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47E7E4582
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:23:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IJ59bc9eFdpOVU65rZpOSLQBmBH/QlrKvLKvR/gC748=; b=EcE
	0u6T0cfUznxePnObGBS26xZzGBjpyzuaBJNfdyasjdEmViAW7RmdoLyON51itxuwEpSne4UlHBMHC
	Q2MvlF2mvoooXwo5PHOiScBd6KeFLALc0uaXigj3HWbd+nReEUXqzQXIqUy9plBwdkbZYbzClO2iM
	lbfniVyW7R1ZqNUbayHZgg+kZCGjMu9t78XZiI/8YrIWWBzr92B9/cjwiLAAfuVV49Nl8f9QvEPCb
	GSHQpJ0jPLEUT2pfZ2PryK11OFxgwkxMxC8wgxxuUwdwFeUiR2mVM82CeN0ZYFwdaPfuRa896EUU3
	p3Ia3A2u9WfBLFe4/6oT0lsPQGPtRhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNus9-0003nl-NH; Fri, 25 Oct 2019 08:23:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNus1-0003n9-0j
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:22:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id a11so1247033wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=37i8eBc6ddm1zMQ4dydB4CeeK+rpB2qpcoxItFvqsEA=;
 b=rs9/yPIgMdAo4Nu8/mqRSvxA7++X2qklkRzyT2KbW1kjkWFu2RiJcjm+fwIeQ327+K
 Y5q+kO3LzN+1Qw8+VZvGC8FjZEvVlaRcR24FMjawdPs2fuI4lplXuJmpddn09fOdvNEK
 4KwALV56wZtKBQ3WoXm5jdn3X1GbPMYJi2sNs7H3qtgmsxDDwoeiUVuHGG6WxDfI1etJ
 /b4bJGjeAjomPW/ZD4YuUlDq5/S1fCfZp4TcbjjWJfEbJQyNsEB+NQ8DPhf2U0ObLWsZ
 bZT4I6Ue8DOcyfAn2D3pJKNG7Jf7oZxNV03+cfxYdq2K9w9WliF1vGGC2ugpwIga/QDm
 3XJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=37i8eBc6ddm1zMQ4dydB4CeeK+rpB2qpcoxItFvqsEA=;
 b=IJxiXa7VcqTY7270eOF28vENQXr8cscx1gFDy0udvC5eO520sKTk0gd1TvNlXu+Ck0
 i00Zv9R03A4nSOXcbHY8n2TDgc3LoTjlBdEncoUkTCVkIiqCXDFVycevr/4HRkHT31XN
 JM4Bg/06X08roTBB9hLTl9i8PWYdgkqWoFdxiEn2clDV7VEkEGHZetijikRkMt281WGQ
 YdTdmg+X/p9i8AbFyV1r0AjD7i4X33ElcE7JQ8VAJJ/sqOI/PzTK303w/U0JqIehN+cu
 Qs4wTYwEeiMdNjyx5WbCmRxIKAffzqL089itTcB4Z6+rcN4M3Bgn8kxCcHce9qYrrJ6p
 DtPg==
X-Gm-Message-State: APjAAAXN87WM3p9bQZcPfFmNOS6PZEZcRymITVvUg7gLCaxu3GYk81Ey
 aR0j3fRoK5ZF1gd8m89kaGvHLZS/nmTFog==
X-Google-Smtp-Source: APXvYqzWPwJdsAHo+0PorxM0hXL1AYbzSE6ZX/QNMDBPYdfnhwQCX5Q0wx3r+TL7nAiggYVTQ7Dq3g==
X-Received: by 2002:a5d:4885:: with SMTP id g5mr1872097wrq.219.1571991770492; 
 Fri, 25 Oct 2019 01:22:50 -0700 (PDT)
Received: from furher.auvence.co ([92.103.174.138])
 by smtp.gmail.com with ESMTPSA id x8sm1612194wrr.43.2019.10.25.01.22.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:22:49 -0700 (PDT)
From: Joris Offouga <offougajoris@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx7d-pico: Add LCD support
Date: Fri, 25 Oct 2019 10:22:38 +0200
Message-Id: <20191025082247.3371-1-offougajoris@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_012253_083434_6CBEE7FA 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [92.103.174.138 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (offougajoris[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Add support for the VXT VL050-8048NT-C01 panel connected through
the 24 bit parallel LCDIF interface.

Signed-off-by: Joris Offouga <offougajoris@gmail.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---
 arch/arm/boot/dts/imx7d-pico.dtsi | 84 +++++++++++++++++++++++++++++++
 1 file changed, 84 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index 6f50ebf31a0a..9042b1e6f1db 100644
--- a/arch/arm/boot/dts/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/imx7d-pico.dtsi
@@ -69,6 +69,37 @@
 		clocks = <&clks IMX7D_CLKO2_ROOT_DIV>;
 		clock-names = "ext_clock";
 	};
+
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_backlight>;
+		pwms = <&pwm4 0 50000 0>;
+		brightness-levels = <0 36 72 108 144 180 216 255>;
+		default-brightness-level = <6>;
+		status = "okay";
+	};
+
+	reg_lcd_3v3: regulator-lcd-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "lcd-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio1 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
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
 };
 
 &clks {
@@ -230,6 +261,18 @@
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
@@ -349,6 +392,13 @@
 };
 
 &iomuxc {
+
+	pinctrl_backlight: backlight {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO11__PWM4_OUT		0x0
+		>;
+	};
+
 	pinctrl_ecspi3: ecspi3grp {
 		fsl,pins = <
 			MX7D_PAD_I2C1_SCL__ECSPI3_MISO		0x2
@@ -413,6 +463,40 @@
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
