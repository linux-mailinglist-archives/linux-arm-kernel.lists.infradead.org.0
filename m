Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AFF126ED1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 21:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h24U+jPTUVAOeMQwc0CMVx2bmGmoz2+SBODwHGRrTc8=; b=QWvprGRKH1jLLD
	ZB7cRv/1yd/KqE9kb46fUWar/mw1PWiD2rBZg8kFtR29UMs9oYJFnMLuvmAELuX/pWgGQjgvIksgJ
	HseTMXwfGniNACNwkMNarZCFv4OGmceOqynetSxrV9sAysdOcBhmFCbYeXX4yHbb6xsyzaxSo6p++
	CCs4uKpoTgbMIlh0zFzzjc76EAWiQwOyCdbKzn86YZONslD4LmY0OPnDNkKmiS8VkQ3aE3Abg6o7D
	L3odf1II9rFSy8h6/1GaTkpiByIh6hRMHfU1Ux6q41sKWiEHbEHkfIUiPS6QsVTgNCwZg72YKNBp9
	8Rh6i+ZXIosVx31QNkMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii2Kv-0001BN-Lk; Thu, 19 Dec 2019 20:23:53 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii2Iz-0007zF-Cd
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 20:21:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576786911;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=HAbd9d4NTDF2e/QveCagzTM33lrIAhUfv351iriFU0E=;
 b=pV6Aq4ZSn0N+YKA+1CCdPY/vj3RtGi9hdOKW/eRCezIJbFv4apASiHc7Z00O/eRn/u
 BXVfAX5l/EqbzThe9JuMYVmV4NP0mNBTz+zq8WrffRfb9YJjfwdtiigi0AGof9G05lkI
 gAedfU5q42D63uQKTxNGXbH4zlVP3EVHvZb8vad0j3cqs08w1RjYwovGqEY7R4inO8TE
 9Ihp9w+DKe5jx09tfOdQfEz+1MDa2u3N0WY2tqlMKG0HNWpT3faRSRcK8EdeKq2zWI8h
 kEFhz2aThD8iOk3LmtYPi5O5YrgaMYKTK+x1M9WlJhCXJqgq/YCDoHaeovBF4KMTKHkO
 3fqg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXtszvsxM1"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 46.1.1 AUTH)
 with ESMTPSA id f021e2vBJKLj3ZF
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Thu, 19 Dec 2019 21:21:45 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 7/9] ARM: dts: ux500: samsung-golden: Add WiFi
Date: Thu, 19 Dec 2019 21:20:50 +0100
Message-Id: <20191219202052.19039-8-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191219202052.19039-1-stephan@gerhold.net>
References: <20191219202052.19039-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_122153_595127_50D66AEA 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:4 listed in]
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

samsung-golden uses a BCM4334 WiFi+BT combo chip, connected to SDIO.
It is supported by the brcmfmac driver in mainline,
so we only need to set up the device tree to make it work correctly.

Note: brcmfmac requires (proprietary) firmware + a device-specific
NVRAM file. Both can be extracted from the stock Android system
used on samsung-golden:
  - /system/etc/wifi/bcmdhd_sta.bin_b2   -> /lib/firmware/brcm/brcmfmac4334-sdio.bin
  - /system/etc/wifi/nvram_net.txt_GPIO4 -> /lib/firmware/brcm/brcmfmac4334-sdio.samsung,golden.txt

brcmfmac4334-sdio.bin from linux-firmware also seems to work,
but results in occasional errors for some reason.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../arm/boot/dts/ste-ux500-samsung-golden.dts | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
index e75a425d177e..d22b2879c46a 100644
--- a/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
+++ b/arch/arm/boot/dts/ste-ux500-samsung-golden.dts
@@ -64,9 +64,27 @@ sdi1_per2@80118000 {
 			non-removable;
 			cap-sd-highspeed;
 
+			vmmc-supply = <&wl_reg_on>;
+
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&mc1_a_2_default>;
 			pinctrl-1 = <&mc1_a_2_sleep>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			wifi@1 {
+				compatible = "brcm,bcm4329-fmac";
+				reg = <1>;
+
+				/* GPIO216 (WLAN_HOST_WAKE) */
+				interrupt-parent = <&gpio6>;
+				interrupts = <24 IRQ_TYPE_EDGE_FALLING>;
+				interrupt-names = "host-wake";
+
+				pinctrl-names = "default";
+				pinctrl-0 = <&wlan_default>;
+			};
 		};
 
 		/* eMMC */
@@ -290,6 +308,28 @@ sd_level_translator: regulator-sd-level-translator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&sd_level_translator_default>;
 	};
+
+	/*
+	 * WL_REG_ON takes WLAN out of reset and enables the internal regulators.
+	 * The voltage specified here is only used to determine the OCR mask,
+	 * the BCM chip is actually connected directly to VBAT.
+	 */
+	wl_reg_on: regulator-wl-reg-on {
+		compatible = "regulator-fixed";
+
+		regulator-name = "wl-reg-on";
+		regulator-min-microvolt = <3000000>;
+		regulator-max-microvolt = <3000000>;
+
+		startup-delay-us = <100000>;
+
+		/* GPIO215 (WLAN_EN) */
+		gpio = <&gpio6 23 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&wlan_en_default>;
+	};
 };
 
 &pinctrl {
@@ -340,6 +380,22 @@ golden_cfg1 {
 		};
 	};
 
+	wlan {
+		wlan_default: wlan_default {
+			golden_cfg1 {
+				pins = "GPIO216_AG12";	/* WLAN_HOST_WAKE */
+				ste,config = <&gpio_in_pd>;
+			};
+		};
+
+		wlan_en_default: wlan_en_default {
+			golden_cfg1 {
+				pins = "GPIO215_AH13";	/* WLAN_EN */
+				ste,config = <&gpio_out_lo>;
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
