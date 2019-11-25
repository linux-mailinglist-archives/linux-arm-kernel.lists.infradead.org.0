Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDB4108DD1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVDWI1e5r2l+jvH4dBfQ3oerY3iIOWsKt9mWps9YId4=; b=LlQCPlqiu8x/Xu
	hMa/gM8/2qwsTtK78JBnvRtF23kTpZoOyh2ZUbInyfqb/eM+v1d5y0kM9SSD5XF5vjjHHLnVzYdSX
	dG3W4APQyfSK4aor6sljMkLMlX5KzbZxJS3JCr4he1H6kZy6b7C85HBiLaEVVDtEkyUnnH7Fxdgi0
	gwXd62Jr8+huuq66rjyQOYMqtcW/8ZG7kBZ7qnwFu80CHqQMXT1rHEGReEikLIGlFn2fo6dd5vaRF
	g9ySRSDQl9JzJb7g+3cAVSMCvHnnpep4VczE/igNkCOzuVQcmQPJSS0pEuSzgzS7HO6Gu6K95eQsO
	OikeNjvjbPAU23RWPaUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDT9-0000ln-9v; Mon, 25 Nov 2019 12:27:55 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDSA-0008S0-O4
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:26:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574684808;
 s=strato-dkim-0002; d=gerhold.net;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=FE3YTNBZJw09OfFMruUyGjBqTQQASJnpNVVwMZ0e80Y=;
 b=pejVAtjcJ3gCTWYnYjVBdxsRohxZS7upBosWiUMUWMVFuzbQg+Y7o/hdumH3OCAuvH
 7TXKv9QUevRL820AZa2pPRFJmy4pyP5LL+n7DTuM71JA7yL5hhZZ0qA3cI2uxHsDzHpR
 lk4WkqB/eUDBu2u/0kMVUw6a31H2FBPaJ64/7DSXTzNlSNW5cvfwUpf9BB5ySN5TIcxh
 Pqvpb7cAIeDygHVwrjFDbkl0cJ7NttjtZkbub24RRuDRSqv8yx5hdWJ+Gi1bM3HRrCKp
 xLmtZ9HGXoMxOEnIMhub7sX6DGL1WfMXBVyNH2Tzibc9Xlktbv7v28y7rE9haAm/Y3UT
 XM0A==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPCQg0FO
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 13:26:42 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/5] ARM: dts: ux500: Rename generic pin configs according to
 pin group
Date: Mon, 25 Nov 2019 13:22:53 +0100
Message-Id: <20191125122256.53482-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191125122256.53482-1-stephan@gerhold.net>
References: <20191125122256.53482-1-stephan@gerhold.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042655_117951_401CAD7E 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Some components (e.g. SDI, I2C) can be used with different pin assignments.
Before we can add the alternative configurations, we need to rename the
current configurations to more generic names.

Each pin configuration usually configures one specific pin group.
Therefore we rename the configurations to use the pin group as name.
Make up for the slightly longer names by removing the "_mode" suffix.

Rename all existing uses to use the new labels.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi | 58 ++++++++++-----------
 arch/arm/boot/dts/ste-href.dtsi           | 62 +++++++++++++----------
 arch/arm/boot/dts/ste-snowball.dts        | 52 +++++++++----------
 3 files changed, 90 insertions(+), 82 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
index fbc41cacf690..b3ef91b98207 100644
--- a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
@@ -8,7 +8,7 @@
 &pinctrl {
 	/* Settings for all UART default and sleep states */
 	uart0 {
-		uart0_default_mode: uart0_default {
+		u0_a_1_default: u0_a_1_default {
 			default_mux {
 				function = "u0";
 				groups = "u0_a_1";
@@ -23,7 +23,7 @@
 			};
 		};
 
-		uart0_sleep_mode: uart0_sleep {
+		u0_a_1_sleep: u0_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -40,7 +40,7 @@
 	};
 
 	uart1 {
-		uart1_default_mode: uart1_default {
+		u1rxtx_a_1_default: u1rxtx_a_1_default {
 			default_mux {
 				function = "u1";
 				groups = "u1rxtx_a_1";
@@ -55,7 +55,7 @@
 			};
 		};
 
-		uart1_sleep_mode: uart1_sleep {
+		u1rxtx_a_1_sleep: u1rxtx_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO4_AH6"; /* RXD */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -68,7 +68,7 @@
 	};
 
 	uart2 {
-		uart2_default_mode: uart2_default {
+		u2rxtx_c_1_default: u2rxtx_c_1_default {
 			default_mux {
 				function = "u2";
 				groups = "u2rxtx_c_1";
@@ -83,7 +83,7 @@
 			};
 		};
 
-		uart2_sleep_mode: uart2_sleep {
+		u2rxtx_c_1_sleep: u2rxtx_c_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO29_W2"; /* RXD */
 				ste,config = <&in_wkup_pdis>;
@@ -97,7 +97,7 @@
 
 	/* Settings for all I2C default and sleep states */
 	i2c0 {
-		i2c0_default_mode: i2c_default {
+		i2c0_a_1_default: i2c0_a_1_default {
 			default_mux {
 				function = "i2c0";
 				groups = "i2c0_a_1";
@@ -108,7 +108,7 @@
 			};
 		};
 
-		i2c0_sleep_mode: i2c_sleep {
+		i2c0_a_1_sleep: i2c0_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -117,7 +117,7 @@
 	};
 
 	i2c1 {
-		i2c1_default_mode: i2c_default {
+		i2c1_b_2_default: i2c1_b_2_default {
 			default_mux {
 				function = "i2c1";
 				groups = "i2c1_b_2";
@@ -128,7 +128,7 @@
 			};
 		};
 
-		i2c1_sleep_mode: i2c_sleep {
+		i2c1_b_2_sleep: i2c1_b_2_sleep {
 			sleep_cfg1 {
 				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -137,7 +137,7 @@
 	};
 
 	i2c2 {
-		i2c2_default_mode: i2c_default {
+		i2c2_b_2_default: i2c2_b_2_default {
 			default_mux {
 				function = "i2c2";
 				groups = "i2c2_b_2";
@@ -148,7 +148,7 @@
 			};
 		};
 
-		i2c2_sleep_mode: i2c_sleep {
+		i2c2_b_2_sleep: i2c2_b_2_sleep {
 			sleep_cfg1 {
 				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -157,7 +157,7 @@
 	};
 
 	i2c3 {
-		i2c3_default_mode: i2c_default {
+		i2c3_c_2_default: i2c3_c_2_default {
 			default_mux {
 				function = "i2c3";
 				groups = "i2c3_c_2";
@@ -168,7 +168,7 @@
 			};
 		};
 
-		i2c3_sleep_mode: i2c_sleep {
+		i2c3_c_2_sleep: i2c3_c_2_sleep {
 			sleep_cfg1 {
 				pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -181,7 +181,7 @@
 	 * enable I2C4 and UART1 at the same time.
 	 */
 	i2c4 {
-		i2c4_default_mode: i2c_default {
+		i2c4_b_1_default: i2c4_b_1_default {
 			default_mux {
 				function = "i2c4";
 				groups = "i2c4_b_1";
@@ -192,7 +192,7 @@
 			};
 		};
 
-		i2c4_sleep_mode: i2c_sleep {
+		i2c4_b_1_sleep: i2c4_b_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
 				ste,config = <&slpm_in_wkup_pdis>;
@@ -203,7 +203,7 @@
 	/* Settings for all MMC/SD/SDIO default and sleep states */
 	sdi0 {
 		/* This is the external SD card slot, 4 bits wide */
-		sdi0_default_mode: sdi0_default {
+		mc0_a_1_default: mc0_a_1_default {
 			default_mux {
 				function = "mc0";
 				groups = "mc0_a_1";
@@ -234,7 +234,7 @@
 			};
 		};
 
-		sdi0_sleep_mode: sdi0_sleep {
+		mc0_a_1_sleep: mc0_a_1_sleep {
 			sleep_cfg1 {
 				pins =
 				"GPIO18_AC2", /* CMDDIR */
@@ -261,7 +261,7 @@
 
 	sdi1 {
 		/* This is the WLAN SDIO 4 bits wide */
-		sdi1_default_mode: sdi1_default {
+		mc1_a_1_default: mc1_a_1_default {
 			default_mux {
 				function = "mc1";
 				groups = "mc1_a_1";
@@ -285,7 +285,7 @@
 			};
 		};
 
-		sdi1_sleep_mode: sdi1_sleep {
+		mc1_a_1_sleep: mc1_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO208_AH16"; /* CLK */
 				ste,config = <&slpm_out_lo_wkup_pdis>;
@@ -305,7 +305,7 @@
 
 	sdi2 {
 		/* This is the eMMC 8 bits wide, usually PoP eMMC */
-		sdi2_default_mode: sdi2_default {
+		mc2_a_1_default: mc2_a_1_default {
 			default_mux {
 				function = "mc2";
 				groups = "mc2_a_1";
@@ -333,7 +333,7 @@
 			};
 		};
 
-		sdi2_sleep_mode: sdi2_sleep {
+		mc2_a_1_sleep: mc2_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO128_A5"; /* CLK */
 				ste,config = <&out_lo_wkup_pdis>;
@@ -361,7 +361,7 @@
 
 	sdi4 {
 		/* This is the eMMC 8 bits wide, usually PCB-mounted eMMC */
-		sdi4_default_mode: sdi4_default {
+		mc4_a_1_default: mc4_a_1_default {
 			default_mux {
 				function = "mc4";
 				groups = "mc4_a_1";
@@ -389,7 +389,7 @@
 			};
 		};
 
-		sdi4_sleep_mode: sdi4_sleep {
+		mc4_a_1_sleep: mc4_a_1_sleep {
 			sleep_cfg1 {
 				pins = "GPIO203_AE23"; /* CLK */
 				ste,config = <&out_lo_wkup_pdis>;
@@ -416,7 +416,7 @@
 	 * cannot be muxed onto any pins.
 	 */
 	msp0 {
-		msp0_default_mode: msp0_default {
+		msp0txrxtfstck_a_1_default: msp0txrxtfstck_a_1_default {
 			default_msp0_mux {
 				function = "msp0";
 				groups = "msp0txrx_a_1", "msp0tfstck_a_1";
@@ -433,7 +433,7 @@
 	};
 
 	msp1 {
-		msp1_default_mode: msp1_default {
+		msp1txrx_a_1_default: msp1txrx_a_1_default {
 			default_mux {
 				function = "msp1";
 				groups = "msp1txrx_a_1", "msp1_a_1";
@@ -453,7 +453,7 @@
 	};
 
 	msp2 {
-		msp2_default_mode: msp2_default {
+		msp2_a_1_default: msp2_a_1_default {
 			/* MSP2 usually used for HDMI audio */
 			default_mux {
 				function = "msp2";
@@ -474,7 +474,7 @@
 	};
 
 	musb {
-		musb_default_mode: musb_default {
+		usb_a_1_default: usb_a_1_default {
 			default_mux {
 				function = "usb";
 				groups = "usb_a_1";
@@ -500,7 +500,7 @@
 			};
 		};
 
-		musb_sleep_mode: musb_sleep {
+		usb_a_1_sleep: usb_a_1_sleep {
 			sleep_cfg1 {
 				pins =
 				"GPIO256_AF28", /* NXT */
diff --git a/arch/arm/boot/dts/ste-href.dtsi b/arch/arm/boot/dts/ste-href.dtsi
index 4f6acbd8c040..7613a40421d5 100644
--- a/arch/arm/boot/dts/ste-href.dtsi
+++ b/arch/arm/boot/dts/ste-href.dtsi
@@ -16,41 +16,41 @@
 	soc {
 		uart@80120000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart0_default_mode>;
-			pinctrl-1 = <&uart0_sleep_mode>;
+			pinctrl-0 = <&u0_a_1_default>;
+			pinctrl-1 = <&u0_a_1_sleep>;
 			status = "okay";
 		};
 
 		/* This UART is unused and thus left disabled */
 		uart@80121000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart1_default_mode>;
-			pinctrl-1 = <&uart1_sleep_mode>;
+			pinctrl-0 = <&u1rxtx_a_1_default>;
+			pinctrl-1 = <&u1rxtx_a_1_sleep>;
 		};
 
 		uart@80007000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart2_default_mode>;
-			pinctrl-1 = <&uart2_sleep_mode>;
+			pinctrl-0 = <&u2rxtx_c_1_default>;
+			pinctrl-1 = <&u2rxtx_c_1_sleep>;
 			status = "okay";
 		};
 
 		i2c@80004000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c0_default_mode>;
-			pinctrl-1 = <&i2c0_sleep_mode>;
+			pinctrl-0 = <&i2c0_a_1_default>;
+			pinctrl-1 = <&i2c0_a_1_sleep>;
 		};
 
 		i2c@80122000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c1_default_mode>;
-			pinctrl-1 = <&i2c1_sleep_mode>;
+			pinctrl-0 = <&i2c1_b_2_default>;
+			pinctrl-1 = <&i2c1_b_2_sleep>;
 		};
 
 		i2c@80128000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c2_default_mode>;
-			pinctrl-1 = <&i2c2_sleep_mode>;
+			pinctrl-0 = <&i2c2_b_2_default>;
+			pinctrl-1 = <&i2c2_b_2_sleep>;
 			lp5521@33 {
 				compatible = "national,lp5521";
 				reg = <0x33>;
@@ -96,8 +96,8 @@
 
 		i2c@80110000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c3_default_mode>;
-			pinctrl-1 = <&i2c3_sleep_mode>;
+			pinctrl-0 = <&i2c3_c_2_default>;
+			pinctrl-1 = <&i2c3_c_2_sleep>;
 		};
 
 		/* ST6G3244ME level translator for 1.8/2.9 V */
@@ -132,8 +132,8 @@
 			vmmc-supply = <&ab8500_ldo_aux3_reg>;
 			vqmmc-supply = <&vmmci>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi0_default_mode>;
-			pinctrl-1 = <&sdi0_sleep_mode>;
+			pinctrl-0 = <&mc0_a_1_default &sdi0_default_mode>;
+			pinctrl-1 = <&mc0_a_1_sleep>;
 
 			status = "okay";
 		};
@@ -145,8 +145,8 @@
 			bus-width = <4>;
 			non-removable;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi1_default_mode>;
-			pinctrl-1 = <&sdi1_sleep_mode>;
+			pinctrl-0 = <&mc1_a_1_default>;
+			pinctrl-1 = <&mc1_a_1_sleep>;
 
 			status = "okay";
 		};
@@ -160,8 +160,8 @@
 			non-removable;
 			vmmc-supply = <&db8500_vsmps2_reg>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi2_default_mode>;
-			pinctrl-1 = <&sdi2_sleep_mode>;
+			pinctrl-0 = <&mc2_a_1_default>;
+			pinctrl-1 = <&mc2_a_1_sleep>;
 
 			status = "okay";
 		};
@@ -175,27 +175,27 @@
 			non-removable;
 			vmmc-supply = <&ab8500_ldo_aux2_reg>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi4_default_mode>;
-			pinctrl-1 = <&sdi4_sleep_mode>;
+			pinctrl-0 = <&mc4_a_1_default>;
+			pinctrl-1 = <&mc4_a_1_sleep>;
 
 			status = "okay";
 		};
 
 		msp0: msp@80123000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp0_default_mode>;
+			pinctrl-0 = <&msp0txrxtfstck_a_1_default>;
 			status = "okay";
 		};
 
 		msp1: msp@80124000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp1_default_mode>;
+			pinctrl-0 = <&msp1txrx_a_1_default>;
 			status = "okay";
 		};
 
 		msp2: msp@80117000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp2_default_mode>;
+			pinctrl-0 = <&msp2_a_1_default>;
 		};
 
 		msp3: msp@80125000 {
@@ -209,8 +209,8 @@
 
 				ab8500_usb {
 					pinctrl-names = "default", "sleep";
-					pinctrl-0 = <&musb_default_mode>;
-					pinctrl-1 = <&musb_sleep_mode>;
+					pinctrl-0 = <&usb_a_1_default>;
+					pinctrl-1 = <&usb_a_1_sleep>;
 				};
 
 				ab8500-regulators {
@@ -257,6 +257,14 @@
 			};
 		};
 
+		pinctrl {
+			sdi0 {
+				sdi0_default_mode: sdi0_default {
+					/* Some boards set additional settings here */
+				};
+			};
+		};
+
 		mcde@a0350000 {
 			pinctrl-names = "default", "sleep";
 			pinctrl-0 = <&lcd_default_mode>;
diff --git a/arch/arm/boot/dts/ste-snowball.dts b/arch/arm/boot/dts/ste-snowball.dts
index 566b35ac0d0c..8b80dcdf6e5b 100644
--- a/arch/arm/boot/dts/ste-snowball.dts
+++ b/arch/arm/boot/dts/ste-snowball.dts
@@ -156,19 +156,19 @@
 
 		msp0: msp@80123000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp0_default_mode>;
+			pinctrl-0 = <&msp0txrxtfstck_a_1_default>;
 			status = "okay";
 		};
 
 		msp1: msp@80124000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp1_default_mode>;
+			pinctrl-0 = <&msp1txrx_a_1_default>;
 			status = "okay";
 		};
 
 		msp2: msp@80117000 {
 			pinctrl-names = "default";
-			pinctrl-0 = <&msp2_default_mode>;
+			pinctrl-0 = <&msp2_a_1_default>;
 		};
 
 		msp3: msp@80125000 {
@@ -238,8 +238,8 @@
 			vmmc-supply = <&ab8500_ldo_aux3_reg>;
 			vqmmc-supply = <&vmmci>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi0_default_mode>;
-			pinctrl-1 = <&sdi0_sleep_mode>;
+			pinctrl-0 = <&mc0_a_1_default &sdi0_default_mode>;
+			pinctrl-1 = <&mc0_a_1_sleep>;
 
 			/* GPIO218 MMC_CD */
 			cd-gpios  = <&gpio6 26 GPIO_ACTIVE_LOW>;
@@ -253,8 +253,8 @@
 			max-frequency = <100000000>;
 			bus-width = <4>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi1_default_mode>;
-			pinctrl-1 = <&sdi1_sleep_mode>;
+			pinctrl-0 = <&mc1_a_1_default>;
+			pinctrl-1 = <&mc1_a_1_sleep>;
 
 			status = "okay";
 		};
@@ -263,7 +263,7 @@
 		sdi2_per3@80005000 {
 			arm,primecell-periphid = <0x10480180>;
 			pinctrl-names = "default";
-			pinctrl-0 = <&sdi2_sleep_mode>;
+			pinctrl-0 = <&mc2_a_1_sleep>;
 
 			status = "okay";
 		};
@@ -276,49 +276,49 @@
 			cap-mmc-highspeed;
 			vmmc-supply = <&ab8500_ldo_aux2_reg>;
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&sdi4_default_mode>;
-			pinctrl-1 = <&sdi4_sleep_mode>;
+			pinctrl-0 = <&mc4_a_1_default>;
+			pinctrl-1 = <&mc4_a_1_sleep>;
 
 			status = "okay";
 		};
 
 		uart@80120000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart0_default_mode>;
-			pinctrl-1 = <&uart0_sleep_mode>;
+			pinctrl-0 = <&u0_a_1_default>;
+			pinctrl-1 = <&u0_a_1_sleep>;
 			status = "okay";
 		};
 
 		/* This UART is unused and thus left disabled */
 		uart@80121000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart1_default_mode>;
-			pinctrl-1 = <&uart1_sleep_mode>;
+			pinctrl-0 = <&u1rxtx_a_1_default>;
+			pinctrl-1 = <&u1rxtx_a_1_sleep>;
 		};
 
 		uart@80007000 {
 			pinctrl-names = "default", "sleep";
-			pinctrl-0 = <&uart2_default_mode>;
-			pinctrl-1 = <&uart2_sleep_mode>;
+			pinctrl-0 = <&u2rxtx_c_1_default>;
+			pinctrl-1 = <&u2rxtx_c_1_sleep>;
 			status = "okay";
 		};
 
 		i2c@80004000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c0_default_mode>;
-			pinctrl-1 = <&i2c0_sleep_mode>;
+			pinctrl-0 = <&i2c0_a_1_default>;
+			pinctrl-1 = <&i2c0_a_1_sleep>;
 		};
 
 		i2c@80122000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c1_default_mode>;
-			pinctrl-1 = <&i2c1_sleep_mode>;
+			pinctrl-0 = <&i2c1_b_2_default>;
+			pinctrl-1 = <&i2c1_b_2_sleep>;
 		};
 
 		i2c@80128000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c2_default_mode>;
-			pinctrl-1 = <&i2c2_sleep_mode>;
+			pinctrl-0 = <&i2c2_b_2_default>;
+			pinctrl-1 = <&i2c2_b_2_sleep>;
 			lsm303dlh@18 {
 				/* Accelerometer */
 				compatible = "st,lsm303dlh-accel";
@@ -367,8 +367,8 @@
 
 		i2c@80110000 {
 			pinctrl-names = "default","sleep";
-			pinctrl-0 = <&i2c3_default_mode>;
-			pinctrl-1 = <&i2c3_sleep_mode>;
+			pinctrl-0 = <&i2c3_c_2_default>;
+			pinctrl-1 = <&i2c3_c_2_sleep>;
 		};
 
 		spi@80002000 {
@@ -402,8 +402,8 @@
 
 				ab8500_usb {
 					pinctrl-names = "default", "sleep";
-					pinctrl-0 = <&musb_default_mode>;
-					pinctrl-1 = <&musb_sleep_mode>;
+					pinctrl-0 = <&usb_a_1_default>;
+					pinctrl-1 = <&usb_a_1_sleep>;
 				};
 
 				ext_regulators: ab8500-ext-regulators {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
