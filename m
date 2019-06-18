Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711514963D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 02:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2429JKMp5ngj4HuluSPYE1flTpuUIH2h47xsqYGTjig=; b=saDlKCcyLrOr+s
	fz47T/wv70MUXq2ujQK/XMSlQ3yc8qGVL78NwMk0m3qeY9IQk9y6r+wrxJeF4ic1Y6UmYAQJcIaNt
	45KUkLfGcDQ/YiTn2eiVZ7A3z/oBlFBA/SyuTb6zQvQ8mLSRz7RBZasQ/kON/jRwqlmN7oEUprcLh
	rcNPKVY5X37hDbRJC2DDRd4VjGrrYYRLme92cOWxDc0otuVFLWV0mLZITJg92i9NeSePn3rsYYvDE
	fMOkGNDqO0ODGaW2+Pb2R+bhqxPuwq/6dxQQJT8ZGjNJgMX+eHoN9RbHIFZubnHmRkNfhqsTAPDJu
	IiD+O1dwR+MSVob9WfXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd1p8-0001es-87; Tue, 18 Jun 2019 00:18:06 +0000
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=gnutoo.cyberdimension.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd1p0-0001eK-7G
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 00:18:00 +0000
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
 by cyberdimension.org (OpenSMTPD) with ESMTP id 9807f1c0;
 Tue, 18 Jun 2019 00:15:00 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
 by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 3e2586bd;
 Tue, 18 Jun 2019 00:15:00 +0000 (UTC)
From: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH][v2] ARM: dts: exynos: add flash support to galaxy-s3 boards
Date: Tue, 18 Jun 2019 02:17:42 +0200
Message-Id: <20190618001742.2828-1-GNUtoo@cyberdimension.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190615170428.GA3447@kozik-lap>
References: <20190615170428.GA3447@kozik-lap>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_171758_562464_BACA3F69 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kukjin Kim <kgene@kernel.org>,
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
index 30eee5942eff..ce87d2ff27aa 100644
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
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
+		samsung,pin-val = <0>;
+	};
+
+	camera_flash_isp: camera-flash-isp {
+		samsung,pins = "gpj1-0";
+		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;
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
