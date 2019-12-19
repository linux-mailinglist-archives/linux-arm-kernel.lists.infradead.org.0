Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADF6126ED0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:23:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+nnj05Bl4nWkfs/Oab9S+B1adkyZiIoX+OogG2kUAg=; b=XN0YSK7MqUg6Tw
	UFDk6WXhljeeaTqNEiMXE2GOZpKFwy4kgSoYmchuYFq+0GRoJ+Z8hYKaAJUXKejSMqwy/WTBF8c68
	t5M5N8xEd3DseAe9p45UMNF0HXy2b7tzEzTeOtXIE4cMvoiBGXg1h0zc0UBd1QWi1jrAQGxor60xu
	C/NWoaAEp3rwrd8RN240sX/uDUyf4uIn9/OOCYsKpG2WU2QqZtGTOl13s/Gslkh0r5lTHIsYogYp0
	RJ9GxwJU+0yuYRQ0V8x2gtuDgv7iXMvdjzCdS8pGxdd1KiBRAzAeaQwPAXj1UQyEqHo2hPlTZYJWs
	yN2ZQvSlxDS6IKiZ9WYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Kg-0000y7-0O; Thu, 19 Dec 2019 20:23:38 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iy-0007yr-Vx
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786911;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=rEINu6VIPz1umRHUtN27XG8o9rq4b1mNQMa+TYAiVMU=;
 b=R7lh8MYRwORR/Sv00j+BRhyPctJh8RArRZzb8k7wSAOCOc8YHcdbjUHi+bNmUb9mCz
 VoRkysbVfFtmqDW/eRLarp3qLGhn+UDbtcBdoAWok8eyyP9o1uRXTrUu3vAEjU//VRvz
 XGKRIAthHQf3/DbUPbz6qV5jxqCbmpsPPPefz6HL3zA4Ndd78+NVa9RFSICaWXIh4kCy
 fqpOLul1vH3yYoVmK3vAp8og1Pn15PvNRe1pktA9oxbG2IkGB1WnIYiPd1tQ+AiQq6ww
 3Gc1+M5aQTd6qb1PVvbkehlGIlef7Abtzn1jwJMqF2goQRVnUWYK+zIkHBf3uA7yJnVQ
 FpuQ==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLh3ZC
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:43 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 5/9] ARM: dts: ux500: samsung-golden: Add IMU (accelerometer +
 gyroscope)
Date: Thu, 19 Dec 2019 21:20:48 +0100
Message-Id: <20191219202052.19039-6-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122153_238988_A4478512 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:2 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

samsung-golden has a InvenSense MPU-6051M IMU that provides an
accelerometer and gyroscope. It seems to be functionally compatible
with MPU-6050 so we can easily enable it by adding the necessary
device tree nodes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index 51f2afe42c1c..14a084e1846b 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -6,6 +6,7 @@
 #include "ste-dbx5x0-pinctrl.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 /*
  * Note: This device tree cannot be booted directly with the Samsung bootloader.
@@ -114,6 +115,33 @@ uart@80007000 {
 			pinctrl-1 = <&u2rxtx_c_1_sleep>;
 		};
 
+		i2c@80128000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c2_b_2_default>;
+			pinctrl-1 = <&i2c2_b_2_sleep>;
+
+			imu@68 {
+				compatible = "invensense,mpu6050";
+				reg = <0x68>;
+
+				/* GPIO206 (ACC_INT) */
+				interrupt-parent = <&gpio6>;
+				interrupts = <14 IRQ_TYPE_EDGE_RISING>;
+
+				mount-matrix = "0", "1", "0",
+					      "-1", "0", "0",
+					       "0", "0", "1";
+
+				vdd-supply = <&ab8500_ldo_aux1_reg>;
+				vddio-supply = <&ab8500_ldo_aux8_reg>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&imu_default>;
+			};
+		};
+
 		prcmu@80157000 {
 			ab8505 {
 				ab8500_usb {
@@ -272,6 +300,15 @@ golden_cfg1 {
 		};
 	};
 
+	imu {
+		imu_default: imu_default {
+			golden_cfg1 {
+				pins = "GPIO206_AG24";	/* ACC_INT */
+				ste,config = <&gpio_in_pd>;
+			};
+		};
+	};
+
 	vibrator {
 		vibrator_default: vibrator_default {
 			golden_cfg1 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
