Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99E5C9890
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q7LbRoCSJgRzElU/EDHLY1et2/E2f56JGZJb9yahr0=; b=q4Yp0GFLp+YBwL
	W0GYbJGc23OGopDx2iCJb+UgYE4b/NrOUMGeFidzBgHRLbydFghhcB/3AE+JWT8OoMZ3IcVBeX70f
	npx9R55/PDq5orfB7DRyI2O8k+3GQqejjczGd3DyJR8fgBMG4/vV2qJYkofatqXb8zfP/AnsNrKMP
	FwYGGW4bPR4+lNtxgZIT8+HEIXIt43ZF2WP48fB/catPtTgswC2HoPqVJLx7BOetdMrNTxh8CBYz8
	DiU9rx76oWqWpux8lkcwyhi/IGK1LeWtVqGjA3zNtt0GO7GXNT8NOTN6ZhLUCeVZPDXUrsiYtMvgf
	AanIdvcakXk+LEysKt3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFuuK-0006l9-9O; Thu, 03 Oct 2019 06:48:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFuse-0004Jl-Q7
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:30 +0000
Received: by mail-pl1-x644.google.com with SMTP id e5so1013828pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
 b=BbR+yL4/NsJS6oq8dISWlmaxqoJMqhGGQQrHj/DXx0JxzwaRpUMfB67TpNUdfMxSRQ
 Y5jAi2gX0HtVv2AzJ9/rhyF1R8Tg8UjZPUZVId+PWfKDV7x39UZd8tfqQ9jdB3f4ekFE
 1SWwRZxEpM2V8SKNccS20fxk03vYwq9NPBNnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
 b=eSMPNvHGlenrqzTuQVa4nufCjSdQDq73W61DUYqtMGrBHMOqr2gxwXwiNsn58ctBMM
 cG2EwHVunbLtTF1+O1nBnxXQDz5Eg8EnrwwfGQBYDdrH04BwVpu6ASTV6nXGU2t/FPwj
 SOXV1QpdCFT8IIWQmzQETImLIf1RT6SVFYwB9P+E8XZNaz77QmhL/G3I3i7gL+k+Kiog
 3DRK0jyzemi9EejT9x0yFv6+dXL+hpEW5Umr54VqvtwPHgIRPGE3+PkQRvmtI37XtiM8
 Z2fjTvivxWFkItD6i7Avpxi0JWZcntYbNrRz6jC0UY0QGkwFsfVieuB5ropffYX6AYyr
 4LGg==
X-Gm-Message-State: APjAAAUaY1wID7FDWeYjRWqCbvIeagWnXJTqRQcSOwpbVrjozbqRV8CU
 zq74KuJxPW1ZhwSpmFghS8WqTw==
X-Google-Smtp-Source: APXvYqwKEdQV435b9tSwO3qAvnE6681+TvxHs5yQQv8hXNnuD+sMc/trfjszHwABt44RSpWlAeprZg==
X-Received: by 2002:a17:902:8f88:: with SMTP id
 z8mr8195034plo.232.1570085188176; 
 Wed, 02 Oct 2019 23:46:28 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.46.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:46:27 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 7/7] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi
 S070WV20-CT16 DSI panel
Date: Thu,  3 Oct 2019 12:15:27 +0530
Message-Id: <20191003064527.15128-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191003064527.15128-1-jagan@amarulasolutions.com>
References: <20191003064527.15128-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234628_872289_3E51935D 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M2M board.

DSI panel connected via board DSI port with,
- DCDC1 as VCC-DSI supply
- DLDO1 as VDD supply
- PL5 gpio for lcd reset gpio pin
- PB7 gpio for lcd enable gpio pin
- PL4 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts | 40 ++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts b/arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts
index e1c75f7fa3ca..4e71e81d2bad 100644
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
 
@@ -122,6 +131,27 @@
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
+	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC3V3-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
+		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -157,6 +187,12 @@
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
 
@@ -269,6 +305,10 @@
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
