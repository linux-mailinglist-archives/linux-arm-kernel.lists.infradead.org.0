Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D991E4F2E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/YqH/hpjqA2+lxbvB+silnAB3CtgSn6+XHYvJnB1z34=; b=LXu
	/QOc40ckT40frztYvEIglvvrj3g9U+j8GsLPzdUvhcS9RoFZZju4AI9PBELQJcQkcnDz2wfAkT3yi
	pxpmMKVpAuDSx2Ie2J0bv0Ui2s9M2/JAAR817wSSYT63hbUBKQxkyeMXTkWsjKCVPQZHJUG3JtDsy
	DiWIi+ojd0RoJ5EWYQLsFYcnvWP0U5YJBLCTrKhZhHgsK3X3COu4Niey6pYpuILApbSfmiOJ/S4t0
	MANjTyPvBWdaPgXQFEOqpU0W9VOp/SJJiE/4nE0vYeVxCWkjSR0y113QHVYr3k1W3kpl4KAARMqCz
	EB0cTufy0644ryB4GLxgELxyN8F2lug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0eX-0002Pw-Mb; Fri, 25 Oct 2019 14:33:21 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0eO-0002P8-Ee
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:33:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id n15so2561665wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 07:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KGiMJW/6P3cnUhB4JrbHZgX1QIfc96w6Xat8RH1XNVg=;
 b=alucOV4vUEvggzS1eI0kxbI5TkYw4knLudcurVGQ8/dRND3z8Tout0msr6rYuE0ceu
 1xmkWOVyE8QtcW2f/OETC2x3tbjlgY1g1L1xT/HImJdkbu+gIC7c9rRMaCeVKekow55Q
 4VtCdbCtAmYJTqEiUrOoct1dCxxz3gmZz7Na0pkjzgGdKzaMER57KZNUE5TxZzY/s0XU
 QqBZlGyLHbnh0mTr81ZNZFq1oRUWGKEmv5nEDg7P3qg3hovrstMDvWDjQDTK8Ly8VDLV
 F8Fdp5yetecGE+2kPM9x0NM75l/bxD3nk7v8g+8kzX6CKvvGZYgab4ci8pCph/1ZK16B
 0TMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KGiMJW/6P3cnUhB4JrbHZgX1QIfc96w6Xat8RH1XNVg=;
 b=uC+akdfyvIyH+c3eHKpyjubV9noOmoDjd5wy7+ldU9kfO8scNiGK+G/fyjAZMmZNTJ
 gmsCvdXdna7O+kqTb7WtwNfoLF/IsF0xL+oXJvuT8GTLPTQ/hF/xjoCipSaBtlX3/FTA
 Uagy2VvprNM2lNe0Ns3mflmL3vGCsm4ZthzflnM0gszBFboI8p7SSFvHbyWgeMCmADTR
 ZqDbRKSItKYc+Gb8JrrmFyU+QHJ+FHxQvgfLEEzyEwe2CIP1eROzU0RWBgXz03fVIt5M
 ynAooszDkwcXkvthur+4Kw6mVv3MINoZahk0mLxncIP1z3NFhLZ+kRBAaHyhzxaAAAZe
 Vrhg==
X-Gm-Message-State: APjAAAX3IdYknz9eTRI/JE9d/GsawDuPwYXZ7V9oCxBDP3/DEiXWZJUe
 Q3/3yd5dtCS+QCi2cFbaHVQwg/WLBSARUQ==
X-Google-Smtp-Source: APXvYqwdNmnPoI1aDfrbDo5svOKCrwjtWB42cBkCY42Ea0zNfgJYgtDPiVT+rOg6CHerph2EIfQpbQ==
X-Received: by 2002:a5d:4f91:: with SMTP id d17mr3423123wru.184.1572013989370; 
 Fri, 25 Oct 2019 07:33:09 -0700 (PDT)
Received: from furher.auvence.co ([92.103.174.138])
 by smtp.gmail.com with ESMTPSA id h17sm2079971wmb.33.2019.10.25.07.33.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 07:33:08 -0700 (PDT)
From: Joris Offouga <offougajoris@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2] ARM: dts: imx7d-pico: Add LCD support
Date: Fri, 25 Oct 2019 16:32:58 +0200
Message-Id: <20191025143258.27757-1-offougajoris@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_073312_520086_25A5A0CC 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [92.103.174.138 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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

From: Fabio Estevam <festevam@gmail.com>

Add support for the VXT VL050-8048NT-C01 panel connected through
the 24 bit parallel LCDIF interface.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
Signed-off-by: Joris Offouga <offougajoris@gmail.com>
---
 Changes v1 -> v2
 	change "From:" Joris Offouga to Fabio Estevam
	set Joris Offouga signed-off to the last one

 arch/arm/boot/dts/imx7d-pico.dtsi | 83 +++++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d-pico.dtsi b/arch/arm/boot/dts/imx7d-pico.dtsi
index 6f50ebf31a0a..6814d4288e2e 100644
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
@@ -349,6 +392,12 @@
 };
 
 &iomuxc {
+	pinctrl_backlight: backlight {
+		fsl,pins = <
+			MX7D_PAD_GPIO1_IO11__PWM4_OUT		0x0
+		>;
+	};
+
 	pinctrl_ecspi3: ecspi3grp {
 		fsl,pins = <
 			MX7D_PAD_I2C1_SCL__ECSPI3_MISO		0x2
@@ -413,6 +462,40 @@
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
