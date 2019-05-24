Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8455A29629
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8hvIa+hCgwsAk5aIRBv8qmXLeH2/LSIlMXOhfy5ZAAg=; b=SaDY/goJnXr5na
	KNdqBcNGXPlFgXdjkYZp8v1obA79bYEXUhCcxUyJ1/wezJiArkySOqbqvwD665XBNIzMUjmzYTDBH
	Up/1NHFeEI971UDy8iQZTwQ6k36mFH+I/GNiXkD2nZlI6Z0lPGSimlvNQdfWAa+KIlfuDHIJjdY3b
	ZEqMthqsid04uh/xenVa00ij6y2tQvgBRpfQGk/kNi7lCymTehF+foBtfeqMWWyYdyUcz0knhtk8b
	ipxtVxAJxPIoylk9l6N4qmuQFmeQ8MecYMzOqpOOslJyN3mXaN/G8VYvzBKuEiaFQ2AU2AVqVzEaR
	Le5SbHGCcyemO5xpBaaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7fT-0001hm-Me; Fri, 24 May 2019 10:43:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7fM-0001g8-Es
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:43:13 +0000
Received: by mail-pf1-x442.google.com with SMTP id n19so5114912pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nP3yWdSdOBguUQvL1Rluu0V+blq5lMGRtGXamF3bLkw=;
 b=Umf6KdVJ9NBQr824CkR3whnBByI3We6uojHAy4ZHN7aGThpcSheG/NUEteAhmo4BZr
 Tv3iTdzkL3hZ1221FRM9gKTC009LNKGhRQd/2Sb66A6bKtWHwQKYuaOlJstrgROIkLqy
 D/raVHojoJ6xnSPJKnpRe1QKrLqYeYrXcqEw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nP3yWdSdOBguUQvL1Rluu0V+blq5lMGRtGXamF3bLkw=;
 b=Fea0EbQJqcV3GwwlEnLQg3zqdmgMtbTuXYSyjwDrUIfaDnUTEqf9vWZLVVuK2UGnlW
 qVwD/AIinAoBE2S59NYzNeFkFbAp0srPYA1PVx2ju6SX/NDktX6CeX97vLSj1iAIBa9c
 klu/oDdty2hXFlXFxSlQESET3NJdGZaW2Oaxz2XtVRjMz6tRUYNltmtzRAaU6IoieHcf
 x0HY/MjC0YiMb51V74vQVoWswj06drT97sXDq+8MHssDoyriN0XnNUdGeHn/QMw3DCc3
 HuwH0TgbrYkZjO4htmCiXUyel1E7QTyyjYVG8l++88chp0Ha/NFcYrDFDd4d5/fT2W79
 0Whw==
X-Gm-Message-State: APjAAAVTM7qa+gE4+YwEusPHALmtFIB9oAyaFK6DNp0Idb7N+ey4cOgm
 TRs1DRlQLJlYuYrYYNk2ccf2mg==
X-Google-Smtp-Source: APXvYqxrirpUHWJCS4XTsorLCGVLEXohr/Hu6n159kHS43nSAQBPXQ2rskeSgI2M8selLJJyC1lBrA==
X-Received: by 2002:a63:225b:: with SMTP id t27mr18104506pgm.25.1558694587171; 
 Fri, 24 May 2019 03:43:07 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.60])
 by smtp.gmail.com with ESMTPSA id u1sm2176028pfh.85.2019.05.24.03.43.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 03:43:06 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH v2 2/6] ARM: dts: sun8i: bananapi-m2m: Enable
 Bananapi S070WV20-CT16 DSI panel
Date: Fri, 24 May 2019 16:12:52 +0530
Message-Id: <20190524104252.20236-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_034312_495023_7E6B4C62 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M2M board.

DSI panel connected via board DSI port with,
- DCDC1 as VCC-DSI supply
- PL5 gpio for lcd reset gpio pin
- PB7 gpio for lcd enable gpio pin
- PL4 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts | 59 ++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
index e1c75f7fa3ca..762d4cfcff01 100644
--- a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
+++ b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
@@ -44,6 +44,7 @@
 #include "sun8i-a33.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "BananaPi M2 Magic";
@@ -61,6 +62,14 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PL4 */
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -122,6 +131,46 @@
 	status = "okay";
 };
 
+&de {
+	status = "okay";
+};
+
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		dsi_out: port@0 {
+			reg = <0>;
+
+			dsi_out_panel: endpoint {
+				remote-endpoint = <&panel_out_dsi>;
+			};
+		};
+	};
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		backlight = <&backlight>;
+
+		port {
+			panel_out_dsi: endpoint {
+				remote-endpoint = <&dsi_out_panel>;
+			};
+		};
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -157,6 +206,12 @@
 	status = "okay";
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin>;
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
@@ -269,6 +324,10 @@
 	status = "okay";
 };
 
+&tcon0 {
+	status = "okay";
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_pb_pins>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
