Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5119C464E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHLdOzP86Hh3SagFhs0k3ZzwT+jDkgnRMgAOlggpLWI=; b=XGbGu2trcJxPtN
	yHfQc+d2s8fNKdyCoA3LFhTyWpp+VqDUjoYP8ROizT6B0ASsrPjGfOvQjdoWs0wARSxoi+rqhFZmV
	BMUO2XtV8UrInoa5D4swAXErLSYd0Rba+h4A/9eAFGv6PtVmugfYGoBFFe3r1L7n/ANsKHgb1SaFC
	ju9ssfthkBa6iWwvTeC3KRlJQ40bVgvIJERLx+BmFzYZVa4JoOpIz+o9ePXeghZ7Zd86vJ9AczBJk
	iYwp3bOgWgPnlWJ7flRkTfjE2a/XGcwg3IyLtqYLm5HyldmHoUsDHdvKcq4I5GnukDZROJPQpxq0v
	f7Bafm054M77mrCz8sHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpLz-000491-B2; Fri, 14 Jun 2019 16:47:03 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJO-0008HS-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:44:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id 81so1776339pfy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
 b=hUMZo4w/SMniB83kfAUVnrA1RyVuTWWVAwfEKLY87uPojuFk9UA3Vy/cV9xC+ppKpk
 h0M34u+54Q/wpDfLPPMp9cBRSyRxmEdcUOY/CyweTSAfzIv897kg3mVeMK/JE6GHuRxl
 KRyA05ziGi47yqSHGfgpH6GNszW5S1XRVp9f8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
 b=e+9FAltWa1q+Oe8c6pRRVIDYUKhjPWBRy+xff3jAYDj8x5VSDkjlmVvSHhKLfIgRKz
 qRmQKVEOMqILTkiCcceMdJzExNCoS8vpVXZ81oNoPS/cHfPAADV2D2G8iwz5o5vdYZZV
 STCGiBAC87oV3bjsSYTLR68JxVeIHPJ61ar85gLuOiSrRkuo4BDx6/eljROK+OOtvYvK
 FahsjCdt04cmq95i3mtYlNUpVa7EkEWmxaoflFlzJlXdWbsT3+0FRBJEKiDlsTWbHSK7
 hihmmUbI6Hk65Mn9M7T5PPqk1TxEQKQcEm9rRNVfWtYQmnqXKtEQF4GFhlrNCH9h5LUC
 h8kw==
X-Gm-Message-State: APjAAAWb50POVpmQzwICHeUm+GKlroKRaOAHcj+vJgg2+FK/IwU8UwhB
 lEjkcNknG/zszYwLzSBkmUJKZw==
X-Google-Smtp-Source: APXvYqxIEAB3TnJlinO1JuDerapMhy6++MPoYsHomBgVQizAape63nc5jsF4hTcfUAlwbUSy7R0Mjg==
X-Received: by 2002:a63:894a:: with SMTP id v71mr28214299pgd.302.1560530657663; 
 Fri, 14 Jun 2019 09:44:17 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.44.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:44:17 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [DO NOT MERGE] [PATCH v2 9/9] ARM: dts: sun8i-r40: bananapi-m2-ultra:
 Enable Bananapi S070WV20-CT16 DSI panel
Date: Fri, 14 Jun 2019 22:13:24 +0530
Message-Id: <20190614164324.9427-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094422_926842_1414DF9A 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M2U board.

DSI panel connected via board DSI port with,
- DCDC1 as VCC-DSI supply
- PH18 gpio for lcd enable pin
- PD17 gpio for lcd reset pin
- PD16 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index c488aaacbd68..5f39317b783e 100644
--- a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
+++ b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
@@ -45,6 +45,7 @@
 #include "sun8i-r40.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "Banana Pi BPI-M2-Ultra";
@@ -55,6 +56,14 @@
 		serial0 = &uart0;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&pio 7 16 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH16 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -117,6 +126,23 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpio = <&pio 7 18 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PH18 */
+		reset-gpios = <&pio 7 17 GPIO_ACTIVE_HIGH>; /* LCD-RST: PH17 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci1 {
 	status = "okay";
 };
@@ -203,6 +229,12 @@
 	pinctrl-0 = <&clk_out_a_pin>;
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm_pins>;
+	status = "okay";
+};
+
 &reg_aldo2 {
 	regulator-always-on;
 	regulator-min-microvolt = <2500000>;
@@ -290,6 +322,10 @@
 	regulator-name = "vdd1v2-sata";
 };
 
+&tcon_lcd0 {
+	status = "okay";
+};
+
 &tcon_tv0 {
 	status = "okay";
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
