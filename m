Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB51E52CE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbG1mxHhshbFnCed8feO4oZbMmwfJoPgg2V+haohVk4=; b=YFUhVzneDwxO+8
	HNkKjlRrGNYIZ398MQBaNcIOnylFqnowP/RpuTUBMT3dUFwptdDlUdQ5pYIIyxVCeHN7VsZH5QKdR
	3sXFlxrdgY+Y5qqmv9jp8foFD6WKYP+jvMRpQ/pSbQWPX3Uggt84p5MXCHB96q8qztxRjJ8nC6s9O
	XmBZA1cy1+9dBATpPhAJy4cFpIfAR8KMOpsscT/B/1p8c1DRY9NS3IOQhA20pvm7Zbmezbr/md7FN
	2josxhTHDnHpy8INUMRMO9okAkMHX4AFKuIAhEhf8ZaiuSgBbQBzmZILbwpoYVdilH9kxxhYzHWIz
	RHEaWgYXtN8frhf8mZFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO3rm-0004am-OC; Fri, 25 Oct 2019 17:59:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO3q2-0003M6-Gg
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:57:27 +0000
Received: by mail-pg1-x543.google.com with SMTP id c8so2027993pgb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 10:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mkXpYcbeC0bnNO0q+6BYbbUdKRmj3eZu6k2PkyZZ+20=;
 b=gweTI0LyTm7cD/yzlGtFTcEQkNduCRGR/hsVSxp3d/3Bz/NOBN5dWTQ+7F8e86XZUu
 Axq2I9BqIbKsiri/bWKbxYzUJKo/wDj+EinhAbxo3XDQc2Xs8g/CDg1d0UsbHDfU4+z3
 us9wdEU2FiSvwu6V/ZuM+AEQ4agT3RhBsGZJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mkXpYcbeC0bnNO0q+6BYbbUdKRmj3eZu6k2PkyZZ+20=;
 b=m+7M3ANOf+5MCUuyp6HgDOPA5nFvGfzjiYXW7KWD83D1gSsKwk9MBQg4ApT1eOHNsm
 sGLLHueLAaaDAYJDNmlLLK19ZUg/2+v3A/5ARVMvcMMSG0BDFqvrdaU6wvCCovLq9atk
 sS484vSVDtYTNRakFPw8k3dfizqlo0OxkOeoZq6AKyO6q1z+bGo9Npp8i4GkPcnIiu6Y
 5fHM6eCdS3dvGTU6x86V8k6JlZWjX91Yx3SR2iNyP+nbZZqwEIudzSdSSzfL7dXKgFix
 Vy5ekUnm6+S0lFayz5f6RKEe3GqW+LpzMupkCA5obq4sfuxSRmFxOmBSWls5W7yvR/CX
 4PCg==
X-Gm-Message-State: APjAAAW40RDsCWVUsig4fdlCK3PB4uvlZ34eX1GcJzodE61ZaL3AJI3T
 hoqTR7bsCBQzwk6ARXsxaYjDbg==
X-Google-Smtp-Source: APXvYqx2uyOKUk+oTvl6DvVjGmAyDd5BEOKB1viyY3Vajn7osDQWzKuwH/NW4wm5BvjAo8gfJW6sbA==
X-Received: by 2002:a63:9d47:: with SMTP id i68mr5939677pgd.28.1572026245814; 
 Fri, 25 Oct 2019 10:57:25 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id n15sm2926580pfq.146.2019.10.25.10.57.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 10:57:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH v11 7/7] arm64: dts: allwinner: bananapi-m64:
 Enable Bananapi S070WV20-CT16 DSI panel
Date: Fri, 25 Oct 2019 23:26:25 +0530
Message-Id: <20191025175625.8011-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191025175625.8011-1-jagan@amarulasolutions.com>
References: <20191025175625.8011-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_105726_585496_E30BA924 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add support for Bananapi S070WV20-CT16 DSI panel to
BPI-M64 board.

DSI panel connected via board DSI port with,
- DLDO1 as VCC-DSI supply
- DCDC1 as VDD supply
- PD7 gpio for lcd enable pin
- PD6 gpio for lcd reset pin
- PD5 gpio for backlight enable pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 208373efee49..6beaecdd802a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -45,6 +45,7 @@
 #include "sun50i-a64.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 
 / {
 	model = "BananaPi-M64";
@@ -56,6 +57,14 @@
 		serial1 = &uart1;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&r_pwm 0 50000 PWM_POLARITY_INVERTED>;
+		brightness-levels = <1 2 4 8 16 32 64 128 255>;
+		default-brightness-level = <2>;
+		enable-gpios = <&pio 3 5 GPIO_ACTIVE_HIGH>; /* LCD-BL-EN: PD5 */
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
@@ -116,6 +125,24 @@
 	status = "okay";
 };
 
+&dphy {
+	status = "okay";
+};
+
+&dsi {
+	vcc-dsi-supply = <&reg_dldo1>;		/* VCC3V3-DSI */
+	status = "okay";
+
+	panel@0 {
+		compatible = "bananapi,s070wv20-ct16-icn6211";
+		reg = <0>;
+		enable-gpios = <&pio 3 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PD7 */
+		reset-gpios = <&pio 3 6 GPIO_ACTIVE_HIGH>; /* LCD-RST: PD6 */
+		vdd-supply = <&reg_dcdc1>;
+		backlight = <&backlight>;
+	};
+};
+
 &ehci0 {
 	status = "okay";
 };
@@ -206,6 +233,10 @@
 	status = "okay";
 };
 
+&r_pwm {
+	status = "okay";
+};
+
 &r_rsb {
 	status = "okay";
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
