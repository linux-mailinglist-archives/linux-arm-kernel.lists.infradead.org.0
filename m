Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD32DB46
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JKB9gbppInIGhE7jx8m7vTuuuE8Bcf1vxEg1niKzuCM=; b=alPRf9e/ofiNCx
	tiqIk8cbAXOx1raEy859SwxZ5rTBEkLeuy3s5HRstwT3UZeuT3UDB9avzkv0e8dCXqkAmM648fWax
	8+7nD1CPRIOizLbcad2jedRnS21HpjXaT2koZWsQV/8u0ppI05SjFWYsiqYPD6ZhhsdUupJBw4ztw
	ZT7T9gGcdFSRv6wV2IfATzAaEKo4eRislB0eAJ4J8fC5eVlHFfJChmJwlM83J1MuK9xTLU/NjGiDV
	g53RV7Lgd3TqZouKifsfBmSoyr/As9CpnoOc9uBWE2kBPTkACJyJ7syNP9jhYyFn0Hc7fZGwKjOMV
	GfFM6HQXrnG6y2JHkDig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwIU-00078c-5X; Wed, 29 May 2019 10:59:06 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwH0-00063B-70
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 10:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lMfuNcsK6tuVz7vC7aYS5UVf9NSaVZRFtcoyHVQ3R8M=; b=FxTLicM60F6slszzCJgSnAZMEp
 oai+Hkj8hz2lZ6xgQ6z+fpnqTlZZUacCCXdM+w3V5YMbKdwCk8O/lxrsH2Wa9ohmIEEUmjYWU+09v
 8188GSiSdJFvMXD/LZQ7Wf4lRwk2iTSWV6rrLIQvoozeLfyGc4qT2P8TFxoBB8lnQTKzC6jzKmSt/
 yqQQLTtM19pZc8b/jTDZp6gDEWAEA/gUXrGk22ecuM8cRhmtqvEewIPhvZaZTgGat7eNnOkyC0wqJ
 s7CuLo6B6xkeUQamJezLyXwlf1kTmrOCjED21B3d84S9UYj1DV2AEY5OyYLL86mzqWYIlAEN6DSfh
 hnFof38Q==;
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwGx-0003bX-9i
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:57:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id c5so898625pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lMfuNcsK6tuVz7vC7aYS5UVf9NSaVZRFtcoyHVQ3R8M=;
 b=KwCs5fOwghwsU5zqVfivfYLGzuV2zoFcgXvqpGrFf4v+qrweHmIqI0lJmPNL4epz5f
 bMMAXr+tuk70/z4UYM5UxW/zi770+a2NqzhFNfecL2Sa4PWCiHz5H6EUHkB0fy4ge9Bq
 8jK10Q21ii1l1Z/AYeX41oTpqgi372oJT7KSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lMfuNcsK6tuVz7vC7aYS5UVf9NSaVZRFtcoyHVQ3R8M=;
 b=eZRJ1ycue6XVYBTmPfxohYs0LfH6LRaYo507WBxeQ07TQZs5FbJ/dG88eIgWc6fJ94
 8AYCurLe3hd4eXFehJMogItjgbYNLFi++wSpPiDLIA3TkEWU9ZaniZgT6CF2MDGjoNZA
 QLDyUE69ePLDJ+e9wlsRHkaidnuzK3wc9K1xXzp0jsVmD5s8W/xx6Sg5uW+o/SEzK+kJ
 8P9cv2YyV7LDCjI0irzxoXc66sTR/ijeb5UpxteR9Fe9hSkfE3VHSo3xOrpatfAmYL0z
 D9VaV0xXPh9ln3TxncHsgeivYnMpn7ILAB6IXqPjRl6t+gKPtoUY53UNjbF01tV1gFZf
 8txw==
X-Gm-Message-State: APjAAAXXNxxDOgTbahB1kpYk3iy+NxIzba88yKPUMAKJjyszvw1IdVt9
 gRiTV+aCnjsZjOtKb29ZBIdN5w==
X-Google-Smtp-Source: APXvYqwXHj5uVm2t/AeGvWcmeixCbqNTC6/9vS/5OT5LWc4yeua8wWhsULIPjXFvzVGVBE3iOaNS5Q==
X-Received: by 2002:a17:902:b713:: with SMTP id
 d19mr79658807pls.123.1559127441569; 
 Wed, 29 May 2019 03:57:21 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.57.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:57:21 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [DO NOT MERGE] [PATCH v9 9/9] arm64: dts: allwinner:
 oceanic-5205-5inmfd: Enable Microtech MTF050FHDI-03 panel
Date: Wed, 29 May 2019 16:26:15 +0530
Message-Id: <20190529105615.14027-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_065731_342833_7832E424 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Ryan Pannell <ryan@osukl.com>,
 bshah@mykolab.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Microtech MTF050FHDI-03 is 1080x1920, 4-lane MIPI DSI LCD panel which
has inbuilt NT35596 IC chip.

DSI panel connected to board via 39-pin FPC port with,
- DLDO1 as VCC-DSI supply
- DLDO2 as DVDD supply
- DC1SW as AVDD supply
- DC1SW as AVEE supply
- PD24 gpio for reset pin
- PH10 gpio for backlight enable pin

Tested-by: Tamas Papp <tamas@osukl.com>
Signed-off-by: Ryan Pannell <ryan@osukl.com>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../sun50i-a64-oceanic-5205-5inmfd.dts        | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
index a4ddc0b9664c..ab9ee10ba6a2 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-oceanic-5205-5inmfd.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sun50i-a64-sopine.dtsi"
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "Oceanic 5205 5inMFD";
@@ -22,6 +23,15 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <412 512>;
+		num-interpolated-steps = <100>;
+		default-brightness-level = <100>;
+		enable-gpios = <&pio 7 10 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH10 */
+	};
+
 	can_osc: can-osc {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
@@ -40,6 +50,29 @@
 	};
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
+	vcc-dsi-supply = <&reg_dldo1>;		/* VCC-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "microtech,mtf050fhdi-03", "novatek,nt35596";
+		reg = <0>;
+		dvdd-supply = <&reg_dldo2>;			/* VCC-MIPI */
+		avdd-supply = <&reg_dc1sw>;			/* AVDD_5V0 */
+		avee-supply = <&reg_dc1sw>;			/* AVEE_5V */
+		reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>;	/* LCD-RST: PD24 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -81,10 +114,26 @@
 	status = "okay";
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &reg_dc1sw {
 	regulator-name = "vcc-phy";
 };
 
+&reg_dldo1 {
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
+	regulator-name = "vcc-dsi";
+};
+
+&reg_dldo2 {
+	regulator-min-microvolt = <1800000>;
+	regulator-max-microvolt = <1800000>;
+	regulator-name = "vcc-mipi";
+};
+
 &reg_ldo_io0 {
 	regulator-min-microvolt = <2800000>;
 	regulator-max-microvolt = <2800000>;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
