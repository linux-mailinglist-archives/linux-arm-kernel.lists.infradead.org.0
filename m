Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0175E2DB47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oFLfSbZT0nSHgmWHUhdW+4mIu8N+1bGnYQUMQ+AhEBQ=; b=SSQzCORfb69GKk
	bC/GvfVk5cypbVql5mfk43R9ubyphNFoOLE2OwYZFLg+wON9FAS6cosxqqubnj0wvX1j9cyMVFYFw
	iNQleHy9fdG5UKlWo4sIIsCTkwHhaWao8/GgbSeEIQ01xKj77oR2oEyRlyOKTkGki+w/y1gFFd+wD
	yl/ugLU6i7vXda2XpMBLFl6auJqOJK8hQzxEHTXdu+E0RwbhJeEKmMtbNbqKVgOJ5R7IDosA8BKMw
	RL3+SyrKXfsHWiMR6buNdA4nRzeQWkUm7mlxk/80mEK6lp45KLKgti6mIPPd73TkRh1peo7kQS1z4
	gfD92jnpHMDLSnnQ25Qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwIc-0007FK-KY; Wed, 29 May 2019 10:59:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwGk-0005i3-1z
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:57:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id bb3so893398plb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6DwmkLGpJZpkcPw0XMVVDkf1y0K009QPRSW8hUfXBRY=;
 b=VFu9w0hD1Ourpd8eMMh8PYNciyswgOS1KtrgHUdk0KAmbBdup7r3OzJtKsKMtdN0BH
 5AS3DuAId2PTW+ttuh2IAHVuA7mZ2XxF6MgB1mm9oABWptM+8bobX3Dwxul01VlpKDoS
 gSnWhBuTO1Skk4JqIA12yvsaam3Xpv9pnZMN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6DwmkLGpJZpkcPw0XMVVDkf1y0K009QPRSW8hUfXBRY=;
 b=fQNaAnjstx1lKa6JopythSiRaFjDoW5LSELHHCmKWm6uTIcbgz4n2s6xsREYdbmd8d
 HYIaULXIH3++DZG8eiyvbWhMZIeGfTmM6RZ/ICTjg9rhBEMQUAqxfTNjIljFP0eP5iD/
 vWXdYJ1/rjuUWJxKHt6QSx6Sbc/+mI0dPwNBCc0IfU5VcR/dYpHWrzkq2TipGHoLajvP
 e7dz3RK7JzYTCefj7n5fmQvg9MRGPGLzmTSNmcAjuIdGFaNS13PmB87bnM4OT0HeogZs
 bfexbXRTge9HGStJmG8L/BBBUWkt0jflyU3QBNEdVrF4IDC4oepZTLL86k84X/1+c3cK
 xg3w==
X-Gm-Message-State: APjAAAWTRTK7dniHQtLevUYEaI+Xa0CKvELt7tVYKm1K1dtsmvHqLhsG
 3lC+Oc4TIiAxj5162y4ZaMJkMg==
X-Google-Smtp-Source: APXvYqwygLxq0inFrDqP1GBEA4oJIXO+O1N08+R0LPi1oqe2Amq7V89w6a/dgny0hRfvq1CVA26PnA==
X-Received: by 2002:a17:902:20eb:: with SMTP id
 v40mr15879742plg.239.1559127437024; 
 Wed, 29 May 2019 03:57:17 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.57.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:57:16 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [DO NOT MERGE] [PATCH v9 8/9] arm64: dts: allwinner: a64-pine64-lts:
 Enable Feiyang FY07024DI26A30-D DSI panel
Date: Wed, 29 May 2019 16:26:14 +0530
Message-Id: <20190529105615.14027-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_035718_953616_2EDC6BA6 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Feiyang FY07024DI26A30-D MIPI_DSI panel is desiged to attach with
DSI connector on pine64 boards, enable the same for pine64 LTS.

DSI panel connected via board DSI port with,
- DLDO1 as VCC-DSI supply
- DC1SW as AVDD supply
- DLDO2 as DVDD supply
- PD24 gpio for reset pin
- PH10 gpio for backlight enable pin

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index e6fb9683f213..51b0cf71c3d4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -46,6 +46,7 @@
 /dts-v1/;
 
 #include "sun50i-a64-sopine.dtsi"
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "SoPine with baseboard";
@@ -61,6 +62,14 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <8>;
+		enable-gpios = <&pio 7 10 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PH10 */
+	};
+
 	hdmi-connector {
 		compatible = "hdmi-connector";
 		type = "a";
@@ -104,6 +113,24 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dldo1>;		/* VCC-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "feiyang,fy07024di26a30d";
+		reg = <0>;
+		avdd-supply = <&reg_dc1sw>;	/* VCC-LCD */
+		dvdd-supply = <&reg_dldo2>;	/* VCC-MIPI */
+		reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD24 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -184,6 +211,10 @@
 	vcc-hdmi-supply = <&reg_dldo1>;
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &sound {
 	simple-audio-card,aux-devs = <&codec_analog>;
 	simple-audio-card,widgets = "Microphone", "Microphone Jack",
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
