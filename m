Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3F44636C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 17:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/sCyh/L3zv97otd7WbSJho8WKsQbOsYNA8XMMUe8TJI=; b=iW/8HLdvAFwiDP
	ZImjmoSSSlK4xIhIgxoXmt6cz3yqvpoak8yihGfk1WLK24PrE86mVoKz/FB5O7dWjT3+6CyUnMu14
	WHOHfr45mtg8MwA411zJa3+r1Y/tVn51mYr6dFWuCR/WM20gyA05cGVMlbRorGDhJmQ/6XM0oVojm
	+VcL/SpiOP5Jt2DPHAMly4X78pOyYN+gRd/h9DYr6kGAY9eLsql+SPjzvx0V+Jr667qQhEyKwSR1Y
	+eEAljbb8JfWhRAWwBZIKlY7fLq4UoRr91BTS3JtT7mzB2xtShXuFRXoLKGorliyTOuBa0uqtqd3B
	hvD2E4PjhwG7DzcnZWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hboXO-0001FL-AV; Fri, 14 Jun 2019 15:54:46 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hboXE-0001Em-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 15:54:37 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 935a8d3d;
 Fri, 14 Jun 2019 15:52:12 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id fe701c55;
 Fri, 14 Jun 2019 15:52:12 +0000 (UTC)
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH] ARM: dts: exynos: add flash support to galaxy-s3 boards
Date: Fri, 14 Jun 2019 17:54:19 +0200
Message-Id: <20190614155419.14260-1-GNUtoo@cyberdimension.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_085436_391141_718C5646 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Simon Shields <simon@lineageos.org>, linux-samsung-soc@vger.kernel.org,
 Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Simon Shields <simon@lineageos.org>

The galaxy s3 boards use an aat1290 to control the flash LED.
This patch adds the relevant device tree configuration to use it.

Signed-off-by: Simon Shields <simon@lineageos.org>
Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org> [rebase]
---
 arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi | 32 +++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
index 30eee5942eff..375aeca09882 100644
--- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
+++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
@@ -15,6 +15,24 @@
 		i2c10 = &i2c_cm36651;
 	};
 
+	aat1290 {
+		compatible = "skyworks,aat1290";
+		flen-gpios = <&gpj1 1 GPIO_ACTIVE_HIGH>;
+		enset-gpios = <&gpj1 2 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-names = "default", "host", "isp";
+		pinctrl-0 = <&camera_flash_host>;
+		pinctrl-1 = <&camera_flash_host>;
+		pinctrl-2 = <&camera_flash_isp>;
+
+		flash-led {
+			label = "flash";
+			led-max-microamp = <520833>;
+			flash-max-microamp = <1012500>;
+			flash-max-timeout-us = <1940000>;
+		};
+	};
+
 	lcd_vdd3_reg: voltage-regulator-6 {
 		compatible = "regulator-fixed";
 		regulator-name = "LCD_VDD_2.2V";
@@ -131,6 +149,20 @@
 	regulator-max-microvolt = <2800000>;
 };
 
+&pinctrl_0 {
+	camera_flash_host: camera-flash-host {
+		samsung,pins = "gpj1-0";
+		samsung,pin-function = <1>;
+		samsung,pin-val = <0>;
+	};
+
+	camera_flash_isp: camera-flash-isp {
+		samsung,pins = "gpj1-0";
+		samsung,pin-function = <1>;
+		samsung,pin-val = <1>;
+	};
+};
+
 &s5c73m3 {
 	standby-gpios = <&gpm0 1 GPIO_ACTIVE_LOW>;   /* ISP_STANDBY */
 	vdda-supply = <&ldo17_reg>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
