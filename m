Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9693123039
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6q7LbRoCSJgRzElU/EDHLY1et2/E2f56JGZJb9yahr0=; b=LZgQxdE1VueY5D
	37IMb/4PJhNmuTz//NBY+lrk2WsoD3i6XePXvePpvxUYst9+l6FgK41AzX1NpLZAuronkUF20tWOU
	81o/fvcdUPZRRZAo7/VIfMzACesA9XAUKhEAm/g3Rt96D1WgPlM/AXvf3zQy0ObFEJOHHRA3gIBTt
	ESVQY3W5OKh5q+uqq1gDTmOX5ezixI0xrN37gcSoFGI0spSeMU8lX+NWYPFT57b9BXqHbiqHsZiyD
	A1UTzpNLqIE0o0vpkWYVwZ5yqEFonWiKx88sQaWM6xPpIFZv4RHkpnk0XzLwthBqVoYHsXMMAG+Fz
	CeI9FVG4peP+KSX3xpCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeWX-0002r4-G0; Mon, 20 May 2019 09:24:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeWQ-0002Ln-M2
 for linux-arm-kernel@bombadil.infradead.org; Mon, 20 May 2019 09:23:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=; b=A1jTxM5p8gOHsh+teVzVBypWGs
 0G0r1+PH8vr8f+OvVuR1oro5N2A2rnfZAvZq+XBAA1p34TARHxkNj+prRlYNOnj0HA2gk3GsU4BHg
 ktbXjw9iwb1bwFnficTf3N96J/JY3pnNfc9cOq356eo2obtkVsXEa38SHda4eM3ElRsu3zjtLtaMF
 0mdvIWAErfaJNAMnwi11RlnBgnJxVe0zmfVe2X+t2ncMO87yAyjyBYrFEgsRJPmmx6p3NW+qV+Mik
 K5ptg65Ol7lbeh04aTW6evK72ok0ANCvJzC0JLf7XQ5NMf4OGaXNPbKjTUGWSkFqlG9osDiy4CTX1
 3duwBM3w==;
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeHD-0008Lt-Vx
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:08:13 +0000
Received: by mail-pg1-x541.google.com with SMTP id w22so6487237pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
 b=YGMFMvzmnYk0vgW+1qinWeqho4ZrFohDa91VmDHH0o1w7TGJiw9k3Uv7vQnjo6c6DE
 +wAEgQCxg7/pT/3sX2p1y70F3SiL/Vb6nWGWHQTB1tfe3v0almhqdNOHCpJOEbIT5Dm8
 Rm/nJSjTvc09FlYZ/xB3j0Fci3TvQU+Lwjnd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iobrvkxDT6nYXsPnTycSKoAi+/ZUGwRhXcWR3t2hhKA=;
 b=qQ8M7zKTVdyWrS+w1GOOgkxdz80+ZnYfc2v0SXUYAZdFrmgjB/hHRmGyURo672oAvF
 wwdpRE36Y7HPxoz6LRmc408nETEmrbyKlOUn1gBHM9vyJba3ZMdyOOzm2liMep/Iywfa
 ymVDZBE6RI9sxffR0kv+x8sETqImbXy2W6X+P9daAafEsuUfQG/s18OuzeaBrX51z1FS
 r6CB+gcP3qks7GBgYLLnunMuh3Z5WgGhfzgC9d/T1mmejBa5R7EwDEIWyEZG5EOXQpbU
 ///5v/qeDOgHKk8d69CH60H53OKWTDNihIsdr0v8RrlPiHyd+7LdBoqL3A49j7A/+CA2
 Z2Yw==
X-Gm-Message-State: APjAAAVqJe1n56HERQQiaHbDzE0cd5U4vnMSuHesHtVOQYoJDxXI8sHJ
 z5d5ksglMIFkcFj8Jb7/0DGszUTurCg=
X-Google-Smtp-Source: APXvYqzDwmf2r63M8wJFjDamN8uTWypMZ/YvvCw1Tdx3AB1+JxAKjRinOny5iplJXhONAKLzQyVDGQ==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr21087709pgp.72.1558343289969; 
 Mon, 20 May 2019 02:08:09 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.08.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:08:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [DO NOT MERGE] [PATCH v10 11/11] ARM: dts: sun8i: bananapi-m2m:
 Enable Bananapi S070WV20-CT16 DSI panel
Date: Mon, 20 May 2019 14:33:18 +0530
Message-Id: <20190520090318.27570-12-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_100812_102785_6AA1BE03 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
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
