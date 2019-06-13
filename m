Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6644B6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHLdOzP86Hh3SagFhs0k3ZzwT+jDkgnRMgAOlggpLWI=; b=XNux0KKfsYLNvU
	TJgc32acHsdpj/DhrIiK34F4WJZkgAoQjAMLuK0IsCAs4BnfR4XT6UQ07+/tdrdvzYUZsXcNgmOMN
	hvJ7TqR+PdY6xAXPG2PcSFHp//jBb0r/syWEy+crDyWeSq26q2CJR9xaAMntfTSb0XG3qr/nmNmIk
	smaZlyqd+oIF4epgekd2EH/aqmoME5+NvMSbE1Yt1RX+gNaSMAFQe3XAIMzvB9L6Qfp0c0g2TgzVW
	cj6o21eKSZ1T4ImguTKflbxmpNWfAVJ4W3cWotliv02/fJhvHVyiCSnWGqWXTdKxsYwDkX03MLdnd
	x5hk+Pw1Aw16c9oy0kEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUuT-0000uk-T8; Thu, 13 Jun 2019 18:57:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrm-00069l-Gd
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:32 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so26517pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
 b=obuL5/C42QfViGv2M11cQMRWQiX1z9dY9xUgzGHJ8NeL1sx8uHGlJasRlLYFQ1YskL
 8eAvCBiXsgXvWRYkP5PhrvbLIdNNx755GmlgY6YtPlRzIgCm6Xdv5D952vrXYOR1+On2
 2woijmdL+4cAKfID+4iZjOSHRiu1BqYj3E498=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=51aUrymmYRWhKwkwNUN7n3u+csGBwL1xctf+8Q7+DLA=;
 b=pwv9E14N1GfB50LozjW0aMExaCOzU7wylOeIAD6zezODUMTk6Jx3++b9MSYRaujvD4
 ybbcbKyakDYm34ndmvJeSO8+L9bXuLGj/E+dzq9Nwr7IQ5oNuHJMfQ/8pOP0OLBZbltE
 /yto5a0MGnetnevdhWQjFff2HVuB7EyqrN4c1LlOi16A2YnWCSt9Fx40e6V41T8nsPwh
 k2u8s+R68VUaHRVjlFn6xrLgh9J/7iuGNlpZsD8uPaLS/KTTDBNABFolSgqGUJk8HWha
 asQEjg/S+DWl6umbC0SvdK44rGDDgQpkO+V44xJ1+Qz2L2PD7L52JlItQoms0aNZW1xo
 RSNw==
X-Gm-Message-State: APjAAAWrfDVbfr4rN2xspHNbGj3IJeE4QF6fazQT8vcO870wvHpLhuUa
 lTya96PuwWgnCLdstx7nj7xBRQ==
X-Google-Smtp-Source: APXvYqxqijGllEM8BePLuPvJoKeIttgVA+/8EZLqrhEKLrYZeUUspp4gxqijr25B/gWI/ezvpiv7Dw==
X-Received: by 2002:a17:90a:2e87:: with SMTP id
 r7mr6985533pjd.121.1560452069402; 
 Thu, 13 Jun 2019 11:54:29 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:29 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [DO NOT MERGE] [PATCH 9/9] ARM: dts: sun8i-r40: bananapi-m2-ultra:
 Enable Bananapi S070WV20-CT16 DSI panel
Date: Fri, 14 Jun 2019 00:22:41 +0530
Message-Id: <20190613185241.22800-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115430_613192_57E6AF2C 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
