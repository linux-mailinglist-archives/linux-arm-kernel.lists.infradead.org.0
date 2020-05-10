Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D24B01CCB2E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 14:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PaaztFvCVbaBAAc1ygpN9QwxaoGs5rAomIh5X/+kSpQ=; b=Z2Z9gOyvoIwlokerjM+LK6eAmk
	dVzxM/U8J0uVx4dORqDSZOblLR1PRjRCWoNJhvEuAremkPwhrbxs/gfExze9iYtD5nCsmmhlJOxGy
	u0y/o3etVDXtOlNfutpRmzliPZRreXd8rBf4CpAXsDUZ8lxteqqoMXcav2o4pOVHKddaQ3VpZmmYB
	nK1bY0Ow61Bk2dcZ5PUJGvqbXoJkex1mx1Kr/F56PbvufUIGctPtHDQWr9We5sc56eCLaZ4TBcbbP
	SuDUwXx7s+L1epnmx/xDmkaC4BKymN/V4UZ7Ua6g8NEjDkkN3pM2wmJ1NstxX7wP7zL84P4CTlUBU
	ELs949+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXlI6-0004DZ-QF; Sun, 10 May 2020 12:42:46 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXlH6-0003OE-Qt; Sun, 10 May 2020 12:41:46 +0000
Received: by mail-lj1-x241.google.com with SMTP id f18so6445097lja.13;
 Sun, 10 May 2020 05:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NAU0BK+VVegmur9qw286jHjw2JuJhlP5IclMrk1t5Fc=;
 b=LSwcXsCXLUbmLEmiAoiY7Sc91AKsxo1qaLqtbW+OyVlysutWwkoKTk9DLVx+3XhQw+
 g1zrwvZ3Uv9NcD6FuZZqutd186rpIJjQzmMiMOSHAkA1jznx5tYQx4bqhtD0cidTFRlM
 YDxqTu7pByJje6EJLTWKVM4n5imLwczIPB38Qzfg8cJybUY6G0ySqle0WIA8pwf+RKNV
 gFPklHCzrtnZT24cyLtbZUxm0wYBWUjht+20HsFdllSC3afFnNHbExLuUV5mC+XyRwvF
 EhSYBZSBl4WF3OX4royuQqZeIzdE3aUOnDzSw8r1oFRR7+FNT5EAkaEoDnihR+PfO/q4
 w7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NAU0BK+VVegmur9qw286jHjw2JuJhlP5IclMrk1t5Fc=;
 b=qeX0PyucZLo/LZn0+RMvYVh5R6XWTbqhsdyt62Ec+RdCqcwVcXfDJWhRSWiyQAEaxM
 d47mp9FOli5xUm4eZCcNVxPP/0e7ArGu4zIuX83cSEpLs0oOPOJUYPb2u7eYW7tZD8wJ
 Uwv487EN84algYPgNzriaq/8XKTp5vEAbZZByNtxP6+/Xmv83xuULfBoCXmUa2pVkG5N
 eNkNPtmWFzJhW4YyFOFj14S97+ccZSUHeThyiYOzrkA33BJDUVBeGKEh2VTKSBZcdfVU
 x0fB2riP1MZ+wwicGNXXeRLoa288nL0lec7EKIhHjpz25I5x0QbLIGrgHtXILAhE4Eti
 H4Jg==
X-Gm-Message-State: AOAM531XS0pdKAi7tRTUHZRtdz0uyW5QjoCnA2iLK7Dy1b1C+7YkidPX
 GOQOXzcbyDD/0+tpHUZUdEw=
X-Google-Smtp-Source: ABdhPJxqYQXvLDdFvpl/hPS6GiSgWb9asphcJPLfMewADBnX1GCD9/pMZuHoMO8sjg2/4kXlE8bNAw==
X-Received: by 2002:a2e:3208:: with SMTP id y8mr7245503ljy.282.1589114502953; 
 Sun, 10 May 2020 05:41:42 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id m11sm7136611lfo.55.2020.05.10.05.41.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 May 2020 05:41:42 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 3/3] arm64: dts: meson: add support for the Smartlabs
 SML-5442TW
Date: Sun, 10 May 2020 12:41:29 +0000
Message-Id: <20200510124129.31575-4-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200510124129.31575-1-christianshewitt@gmail.com>
References: <20200510124129.31575-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_054144_934583_A5D295AB 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Smartlabs SML-5442TW is based on the Amlogic P231 reference design
but with the following differences:

- The Yellow and Blue LEDs are available but disabled
- The Red and Green LEDs are used to signal off/on status
- uart_AO can be accessed after opening the case; soldered pins exist
- QCA9377 instead of the usual Ampak/Broadcom module

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 80 +++++++++++++++++++
 2 files changed, 81 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index eef0045320f2..6cf8c4ac0390 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -27,6 +27,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-p230.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-p231.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-phicomm-n1.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905d-sml5442tw.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s805x-p241.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905w-p281.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905w-tx3-mini.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
new file mode 100644
index 000000000000..0b95e9ecbef0
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "meson-gxl-s905d.dtsi"
+#include "meson-gx-p23x-q20x.dtsi"
+#include <dt-bindings/leds/common.h>
+
+/ {
+	compatible = "smartlabs,sml5442tw", "amlogic,s905d", "amlogic,meson-gxl";
+	model = "SmartLabs SML-5442TW";
+
+	leds {
+		compatible = "gpio-leds";
+
+		yellow {
+			color = <LED_COLOR_ID_YELLOW>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio_ao GPIOAO_6 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		blue {
+			color = <LED_COLOR_ID_BLUE>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio GPIODV_28 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		green {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio_ao GPIOAO_9 GPIO_ACTIVE_HIGH>;
+			default-state = "on";
+		};
+
+		red {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_STATUS;
+			gpios = <&gpio GPIODV_27 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+};
+
+&ethmac {
+	status = "okay";
+	phy-mode = "rmii";
+	phy-handle = <&internal_phy>;
+};
+
+&i2c_A {
+	status = "okay";
+	pinctrl-0 = <&i2c_a_pins>;
+	pinctrl-names = "default";
+};
+
+&internal_phy {
+	pinctrl-0 = <&eth_link_led_pins>, <&eth_act_led_pins>;
+	pinctrl-names = "default";
+};
+
+/* This is connected to the Bluetooth module: */
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "qcom,qca9377-bt";
+		enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
