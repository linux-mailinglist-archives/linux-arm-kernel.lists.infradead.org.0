Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7935D1643D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 15:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pY45omYpa9UWuGsHVKJYU8qyCJqDxPlTK3pMHrZAOg0=; b=t4DQBr23a0j8gt
	F+bAanphBjDMLOuqfn5YHjV7BqiSWWAb2OmNxj+yaw7bZn3v2Hlm0p4sdnfbYZL34QagV1vgLrVW7
	rQqp2lc7dxsc6qUUKIkOMFANmCzmVJcy/LHkTy1VnxeHcg+Ms1iut+GFAORsb2WPDpjcpAfIcvRux
	Ppvn3SIzxLj0enOZDOUH/XiTsL3j+lMzPPPDRGg1K1WJPST6DhOQnvoTr6a2SOAEGTKGBEzxxM5c6
	K08UJE/Zi10YabDq3J9JRLSZK4zD99hl0w8KpqphzP1+VYpUlhCZpyjtFk4zoJB6sFn1hvpluSXHx
	xFdr67ILSEfRZoALPNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNzpF-00012p-LM; Tue, 07 May 2019 13:08:05 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNzoq-0000fv-R8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 13:07:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so8647976pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 06:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rmbbR+nEPRU8PAUrqs/Xp1Cybc4IWp6SjLWLlkBHpm0=;
 b=MQeNgF/ztfyfJPkOLp8v44evWaHK6oQNiqkbYk6h5b2kjyPiu6a9LJ5OzAeVCfV1bv
 eXov666QPajT8xgYjzaUgoDgyOvsb27oueOSiVnHWAqcG9Q6V47EeBKCQryKWP53/JtH
 G8SChDw3Fr+NIFF9Q/ph7KdV8veIMSpgTWz04=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rmbbR+nEPRU8PAUrqs/Xp1Cybc4IWp6SjLWLlkBHpm0=;
 b=BA3lPovU5oywIhjOaLwj6ZjBYnbU6xMnImie3FeW4/0Vht0J/WZ58jUgepvIWhTFNY
 v2qQBb5cn9NAjNm9SIeWhuxub2JzsdULWeG3kagRB9hwDH8/xJpUbIfIIVup2nqua29m
 VwMsCtz/rAkanXdfFfpUVSNhcaTqBcuTT9kBhY7OZIf0rEY+er6Zem/Uduz4BZQeHywY
 cdOWs3TUnU9VO3y/l0lt7cpJpOJhOp5LozdibNDwfVuDXIaJXZd8nQ+eAGe6Sc8nNeOn
 YTlfwswM3dFs+iHRUtazlZHjhxpGTbVMQK9KmJb8H1hCtsjPyILbd7vUkI3C5Ljr0dRB
 SP+A==
X-Gm-Message-State: APjAAAWhUqjwpryCF5eVQTNY2/9ZnAz0oVPN5O3EhttyAXZIzlI/0JlH
 YU8JkwQDbxdlm6HEaYsCsKK7NQ==
X-Google-Smtp-Source: APXvYqxLeInLf88kjLthLdkTwo1/yWUp+xFEYrpTiTrZa+Gcgm+ciJnRApUuxQzvX/3b2mjsA5Dy5Q==
X-Received: by 2002:aa7:92c4:: with SMTP id k4mr42376765pfa.183.1557234459930; 
 Tue, 07 May 2019 06:07:39 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:3682:cdb6:452:ecda:bdfa:452e])
 by smtp.gmail.com with ESMTPSA id w190sm21889823pfb.101.2019.05.07.06.07.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 06:07:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [DO NOT MERGE] [PATCH v2 3/3] arm64: rockchip: rk3399: nanopc-t4:
 Enable FriendlyELEC HD702E eDP panel
Date: Tue,  7 May 2019 18:37:08 +0530
Message-Id: <20190507130708.11255-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190507130708.11255-1-jagan@amarulasolutions.com>
References: <20190507130708.11255-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_060741_066817_7960454B 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

FriendlyELEC HD702E is one of optional LCD panel for
NanoPC T4 eDP interface.

It features 800x1280 resolutions, with built in GT9271 captive
touchscreen and adjustable backlight via PWM.

eDP panel connections are:
- VCC3V3_SYS: 3.3V panel power supply
- GPIO4_C2: PWM0_BL pin
- GPIO4_D5_LCD_BL_EN: Backlight enable pin
- VCC12V0_SYS: 12V backlight power supply
- Touchscreen connected via I2C4
- GPIO1_C4_TP_INT: touchscreen interrupt pin
- GPIO1_B5_TP_RST: touchscreen reset pin

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- use force-hpd and delete-property for edp
- use generic backlight brightness
- add simple-panel fallback compatible

 .../boot/dts/rockchip/rk3399-nanopc-t4.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index 931c3dbf1b7d..4cacd09658dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -46,6 +46,14 @@
 		};
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		enable-gpios = <&gpio4 RK_PD5 GPIO_ACTIVE_HIGH>;	/* GPIO4_D5_LCD_BL_EN */
+		pwms = <&pwm0 0 25000 0>;
+		power-supply = <&vcc12v0_sys>;
+		status = "okay";
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
@@ -64,6 +72,18 @@
 		fan-supply = <&vcc12v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 	};
+
+	panel {
+		compatible ="friendlyarm,hd702e", "simple-panel";
+		backlight = <&backlight>;
+		power-supply = <&vcc3v3_sys>;
+
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
+			};
+		};
+	};
 };
 
 &cpu_thermal {
@@ -94,6 +114,25 @@
 	};
 };
 
+&edp {
+	status = "okay";
+	force-hpd;
+	/delete-property/ pinctrl-0;
+
+	ports {
+		edp_out: port@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			edp_out_panel: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&panel_in_edp>;
+			};
+		};
+	};
+};
+
 &gpu_thermal {
 	trips {
 		gpu_warm: gpu_warm {
@@ -130,6 +169,17 @@
 	};
 };
 
+&i2c4 {
+	touchscreen@5d {
+		compatible = "goodix,gt911";
+		reg = <0x5d>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC4 IRQ_TYPE_EDGE_FALLING>;
+		irq-gpio = <&gpio1 RK_PC4 GPIO_ACTIVE_HIGH>;	/* GPIO1_C4_TP_INT */
+		reset-gpio = <&gpio1 RK_PB5 GPIO_ACTIVE_LOW>;	/* GPIO1_B5_TP_RST */
+	};
+};
+
 &sdhci {
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
