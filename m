Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6AB126ECC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4UW9YF8uLPD/TQXYGn6yYzTwPHFg39jvzD7I/e1+5w=; b=CxAdJDxOHCFXWL
	SmGAU5If+FVhYCCK4LrJMyc/kQLGJA2XvLMcoXjyG8MnRXnMNJ1jCKW9OhGNj1P0JkH6MWTlx+Xsx
	siGNc8NCi59xRNTXQOjwwFHBd8ZTWopvNv/RbQX5Rj4MGahOSUOWT5uGbq/KQ+y8DRLM6+bDm6uSm
	e/JmrlPGWyXnz/vmddZ8s9XY7oLey0jMRpG5k2lKUlSiIkZDFHzythMCRKaTTVKCWY3Q12mEekg7W
	WEj8kJwdsNB8scWqGsdNRd/BWDjeC1cBW6GANbaeRbVQFMB1j77BYgGQEkC92S7Ja9Z1VDvyAi/0v
	JCR4QplxJaorz99W/lvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2KA-0000Ie-Cw; Thu, 19 Dec 2019 20:23:06 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iy-0007ys-U7
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786911;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=TdmaWHXYZcW1R+/Rup5KpwyfgOBgzcXrSUBNzmQYpiw=;
 b=GkuQuNStx28AmEYGM8Wkkt66pc82O/mX2UxLflPTZ38mWNfwmH2gsl1Oxx7nDTwwUO
 V5ovIxbLvFAeCo8wsMDtHuFd7gFDKTBGQTDzuUqktL9BoVUthUqXQ9fWaVzzXIyWEVlr
 JKZYKRN6XGFCB4EQEzhw3P1BOZR1xugBdqI/OtMhrvHoQw5Ic8EyRZdxvYEJ2JXRqcIv
 g+FRr18Q9huINiudoE8i44sEyR3ulJs5dXDQZNT8MY45iMbdGUqiKVDaf98yseGk4jsU
 mlXwUqr5qVTODhlzZNtRQiJPBe5ZpYHY0kIj/63xdAoU40zpdl7/JoTnGzo1I22Z1JjF
 rAnw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLi3ZD
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:44 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 6/9] ARM: dts: ux500: samsung-golden: Add touch screen
Date: Thu, 19 Dec 2019 21:20:49 +0100
Message-Id: <20191219202052.19039-7-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122153_128806_08C727A3 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:3 listed in]
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

samsung-golden has an Atmel mXT224S touch controller connected to I2C.
It is supported by the existing driver for atmel,maxtouch, so all we
need to do to make it work is to define the necessary device tree nodes.

The atmel_mxt_ts driver does not support controlling regulators yet,
so add regulator-always-on for now to turn on the necessary regulators.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index 14a084e1846b..e75a425d177e 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -142,6 +142,26 @@ imu@68 {
 			};
 		};
 
+		i2c@80110000 {
+			status = "okay";
+
+			pinctrl-names = "default", "sleep";
+			pinctrl-0 = <&i2c3_c_2_default>;
+			pinctrl-1 = <&i2c3_c_2_sleep>;
+
+			touchscreen@4a {
+				compatible = "atmel,maxtouch";
+				reg = <0x4a>;
+
+				/* GPIO218 (TSP_INT_1V8) */
+				interrupt-parent = <&gpio6>;
+				interrupts = <26 IRQ_TYPE_EDGE_FALLING>;
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&tsp_default>;
+			};
+		};
+
 		prcmu@80157000 {
 			ab8505 {
 				ab8500_usb {
@@ -161,6 +181,7 @@ ab8500_ldo_aux2 {
 						regulator-name = "vreg_tsp_a3v3";
 						regulator-min-microvolt = <3300000>;
 						regulator-max-microvolt = <3300000>;
+						regulator-always-on; /* FIXME */
 					};
 
 					ab8500_ldo_aux3 {
@@ -177,6 +198,7 @@ ab8500_ldo_aux5 {
 						regulator-name = "vreg_tsp_1v8";
 						regulator-min-microvolt = <1800000>;
 						regulator-max-microvolt = <1800000>;
+						regulator-always-on; /* FIXME */
 					};
 
 					ab8500_ldo_aux6 {
@@ -309,6 +331,15 @@ golden_cfg1 {
 		};
 	};
 
+	tsp {
+		tsp_default: tsp_default {
+			golden_cfg1 {
+				pins = "GPIO218_AH11";	/* TSP_INT_1V8 */
+				ste,config = <&gpio_in_nopull>;
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
