Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF4912D8D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgTiovIFu0sXKnW1ys/O9Y1+LLs2eXHGOcFLPh1xoTs=; b=W7Xi1K72gbr+rk
	LiZnSFh2zu3mc8+JFkqW86HeZpIIEoL5IApK/VIrWNVRQzKRCN9tgzzVQK/hrKTgSyNHzHp38xX9B
	wjN64bQzujV1WcEKKIBGgw5tibwzEqFqV4DsVm/5uxQSuxqPKG2OF1/dZfwXMlsILVq0IrzFIQDQ5
	IpLU+TxYNrd0NC/TwrEHE97WfTz7UFXa3tW5BOee3JvkBYL3NBNjiQ0c4I9er7lCzbUwE56EPRf3v
	+S8lsaEx3o4olvh9gr65uI5ZBXLRoq1QQlc8GBLvhUtJgqJjGxptfxznoVPFM7yQKxUqBKVDgXVP0
	DBP1U+8ujL/pTW7ON1rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHGO-0007li-PT; Tue, 31 Dec 2019 13:08:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHEB-00061i-P3
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:29 +0000
Received: by mail-pf1-x444.google.com with SMTP id i6so12882398pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fxRlGBthrDx9tpHcl7NzfKEhaXjVuy3iPazdjbs07eE=;
 b=rWDBjcTP7vdTmVKjqBqJDjfL/KLqpJi6y1PVUoahrxz+jJ5QENHuCIdL5ySphVYxl6
 529D2vpGPkc9u8jeoUmmdiKzi6unJwe9iqHOy+vBniKnoBJ+vDmORXZWNBzyufo6kWmx
 6tulMUwFmnl8PorHxLP0K+IrBi62D2W9ng2LQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fxRlGBthrDx9tpHcl7NzfKEhaXjVuy3iPazdjbs07eE=;
 b=OTHMSHpq8BY08PHHUFlMyfz3mBo/5QUFmF1czxmxqATkzwifUgVYIVAf9jjQbJIJea
 ku/8bAJ0rryWrgQIjCT4Sp/bRExSYu5EkHeOm1ovxPY5Vb2ppVJhIIU17TQcIZ1J+/jy
 jft+V8+Tf1ibmfmF5mTyTmZqtDtx5Cb4XLZqnLA6/82+GyCYQy9AwshT0sJXFSiFRAge
 pd+aRDFhaKoxEOihm4+OxZlKWo/JJKo6W8dqDSPzOhKp7B5DtHJjldwq5a4jD0fY4GVC
 4j2YgZgFnJXmsDk19SD63KwZTXroz1GhNwpvm4OtB01tD/ipJ9UE1uHgORJE/MlQDl/S
 23hw==
X-Gm-Message-State: APjAAAUbEm1ubnduHheNvMfyNdr9K7YpccLbXHgIczyz5TB42gJSUUhu
 bdmosMQIBn7PDWY9Z6hkDrFrIg==
X-Google-Smtp-Source: APXvYqzDVAb6YX9p2RJMeAlQW3kT2tWCf16EKKLyWJx6VENrFJl3/7ECaNvRha01ZbHs+/sF1cTm0A==
X-Received: by 2002:a63:1110:: with SMTP id g16mr56093805pgl.84.1577797587194; 
 Tue, 31 Dec 2019 05:06:27 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:26 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [DO NOT MERGE] [PATCH v3 9/9] ARM: dts: sun8i-r40: bananapi-m2-ultra:
 Enable Bananapi S070WV20-CT16
Date: Tue, 31 Dec 2019 18:35:28 +0530
Message-Id: <20191231130528.20669-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050627_829831_E4744FE3 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
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
Changes for v3:
- none

 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index 42d62d1ba1dc..99f84e6f15ce 100644
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
+		default-brightness-level = <2>;
+		enable-gpios = <&pio 7 16 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH16 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -117,6 +126,24 @@
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
+		vdd-supply = <&reg_dcdc1>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci1 {
 	status = "okay";
 };
@@ -209,6 +236,12 @@
 	vcc-pg-supply = <&reg_dldo1>;
 };
 
+&pwm {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin>;
+	status = "okay";
+};
+
 &reg_aldo2 {
 	regulator-min-microvolt = <2500000>;
 	regulator-max-microvolt = <2500000>;
@@ -295,6 +328,10 @@
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
