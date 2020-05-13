Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945E11D0FDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:32:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Bj5v34Q9bUsa+o3zZZ+9Khx38/VNzOpCBf1PaEXcTFo=; b=cZiJ4jLutYWJXhaRrpvkKWBjZ0
	nNmkyax6JFn5wE7+GroU2Btjg8o2MGtM5J38m3j0uAAgCOdCJ46/l/R0KGcZ2/C7A0vIDCVzMqCtP
	8j+A4rt6aGeibl9UIRuLfw+Z7uRMJ7fPZ/CIAx953cEMZbxhqyWQAp20vz0NTIcHUPbQTY6AGuL3d
	D7QQZckqW9/qz32Oo8uMQAF+RjZ1WeCzws875eBli6CD0RvOpDDO1aNT9kaXGUAcNosXgTZ3eIg81
	Rf1Ri75RpzywF6/hstSnfLG7a0PZqXBIW+yCDokJktmeGiOCJVUr36ZKZ6OdUbllN51tRjd+cMLL/
	0dfZ+mWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYogJ-0006Ew-3M; Wed, 13 May 2020 10:32:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoeq-0005Hl-7R
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4FD6ED6E;
 Wed, 13 May 2020 03:30:35 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BE503F305;
 Wed, 13 May 2020 03:30:34 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 04/20] arm64: dts: arm: vexpress: Move fixed devices out of
 bus node
Date: Wed, 13 May 2020 11:30:00 +0100
Message-Id: <20200513103016.130417-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033036_371919_4DE6D709 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The devicetree compiler complains when DT nodes without a reg property
live inside a (simple) bus node:
Warning (simple_bus_reg): Node /bus@8000000/motherboard-bus/refclk32khz
                          missing or empty reg/ranges property

Move the fixed clocks, the fixed regulator, the leds and the config bus
subtree to the root node, since they do not depend on any busses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 308 ++++++++++++------------
 1 file changed, 154 insertions(+), 154 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 8010cdcdb37a..d4d88ce996a5 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -19,6 +19,160 @@
  */
 
 / {
+	v2m_fixed_3v3: fixed-regulator-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	v2m_clk24mhz: clk24mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "v2m:clk24mhz";
+	};
+
+	v2m_refclk1mhz: refclk1mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <1000000>;
+		clock-output-names = "v2m:refclk1mhz";
+	};
+
+	v2m_refclk32khz: refclk32khz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "v2m:refclk32khz";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		user1 {
+			label = "v2m:green:user1";
+			gpios = <&v2m_led_gpios 0 0>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		user2 {
+			label = "v2m:green:user2";
+			gpios = <&v2m_led_gpios 1 0>;
+			linux,default-trigger = "disk-activity";
+		};
+
+		user3 {
+			label = "v2m:green:user3";
+			gpios = <&v2m_led_gpios 2 0>;
+			linux,default-trigger = "cpu0";
+		};
+
+		user4 {
+			label = "v2m:green:user4";
+			gpios = <&v2m_led_gpios 3 0>;
+			linux,default-trigger = "cpu1";
+		};
+
+		user5 {
+			label = "v2m:green:user5";
+			gpios = <&v2m_led_gpios 4 0>;
+			linux,default-trigger = "cpu2";
+		};
+
+		user6 {
+			label = "v2m:green:user6";
+			gpios = <&v2m_led_gpios 5 0>;
+			linux,default-trigger = "cpu3";
+		};
+
+		user7 {
+			label = "v2m:green:user7";
+			gpios = <&v2m_led_gpios 6 0>;
+			linux,default-trigger = "cpu4";
+		};
+
+		user8 {
+			label = "v2m:green:user8";
+			gpios = <&v2m_led_gpios 7 0>;
+			linux,default-trigger = "cpu5";
+		};
+	};
+
+	mcc {
+		compatible = "arm,vexpress,config-bus";
+		arm,vexpress,config-bridge = <&v2m_sysreg>;
+
+		oscclk0 {
+			/* MCC static memory clock */
+			compatible = "arm,vexpress-osc";
+			arm,vexpress-sysreg,func = <1 0>;
+			freq-range = <25000000 60000000>;
+			#clock-cells = <0>;
+			clock-output-names = "v2m:oscclk0";
+		};
+
+		v2m_oscclk1: oscclk1 {
+			/* CLCD clock */
+			compatible = "arm,vexpress-osc";
+			arm,vexpress-sysreg,func = <1 1>;
+			freq-range = <23750000 65000000>;
+			#clock-cells = <0>;
+			clock-output-names = "v2m:oscclk1";
+		};
+
+		v2m_oscclk2: oscclk2 {
+			/* IO FPGA peripheral clock */
+			compatible = "arm,vexpress-osc";
+			arm,vexpress-sysreg,func = <1 2>;
+			freq-range = <24000000 24000000>;
+			#clock-cells = <0>;
+			clock-output-names = "v2m:oscclk2";
+		};
+
+		volt-vio {
+			/* Logic level voltage */
+			compatible = "arm,vexpress-volt";
+			arm,vexpress-sysreg,func = <2 0>;
+			regulator-name = "VIO";
+			regulator-always-on;
+			label = "VIO";
+		};
+
+		temp-mcc {
+			/* MCC internal operating temperature */
+			compatible = "arm,vexpress-temp";
+			arm,vexpress-sysreg,func = <4 0>;
+			label = "MCC";
+		};
+
+		reset {
+			compatible = "arm,vexpress-reset";
+			arm,vexpress-sysreg,func = <5 0>;
+		};
+
+		muxfpga {
+			compatible = "arm,vexpress-muxfpga";
+			arm,vexpress-sysreg,func = <7 0>;
+		};
+
+		shutdown {
+			compatible = "arm,vexpress-shutdown";
+			arm,vexpress-sysreg,func = <8 0>;
+		};
+
+		reboot {
+			compatible = "arm,vexpress-reboot";
+			arm,vexpress-sysreg,func = <9 0>;
+		};
+
+		dvimode {
+			compatible = "arm,vexpress-dvimode";
+			arm,vexpress-sysreg,func = <11 0>;
+		};
+	};
+
 	bus@8000000 {
 		motherboard {
 			model = "V2M-P1";
@@ -282,160 +436,6 @@
 					};
 				};
 			};
-
-			v2m_fixed_3v3: fixed-regulator-0 {
-				compatible = "regulator-fixed";
-				regulator-name = "3V3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			v2m_clk24mhz: clk24mhz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <24000000>;
-				clock-output-names = "v2m:clk24mhz";
-			};
-
-			v2m_refclk1mhz: refclk1mhz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <1000000>;
-				clock-output-names = "v2m:refclk1mhz";
-			};
-
-			v2m_refclk32khz: refclk32khz {
-				compatible = "fixed-clock";
-				#clock-cells = <0>;
-				clock-frequency = <32768>;
-				clock-output-names = "v2m:refclk32khz";
-			};
-
-			leds {
-				compatible = "gpio-leds";
-
-				user1 {
-					label = "v2m:green:user1";
-					gpios = <&v2m_led_gpios 0 0>;
-					linux,default-trigger = "heartbeat";
-				};
-
-				user2 {
-					label = "v2m:green:user2";
-					gpios = <&v2m_led_gpios 1 0>;
-					linux,default-trigger = "mmc0";
-				};
-
-				user3 {
-					label = "v2m:green:user3";
-					gpios = <&v2m_led_gpios 2 0>;
-					linux,default-trigger = "cpu0";
-				};
-
-				user4 {
-					label = "v2m:green:user4";
-					gpios = <&v2m_led_gpios 3 0>;
-					linux,default-trigger = "cpu1";
-				};
-
-				user5 {
-					label = "v2m:green:user5";
-					gpios = <&v2m_led_gpios 4 0>;
-					linux,default-trigger = "cpu2";
-				};
-
-				user6 {
-					label = "v2m:green:user6";
-					gpios = <&v2m_led_gpios 5 0>;
-					linux,default-trigger = "cpu3";
-				};
-
-				user7 {
-					label = "v2m:green:user7";
-					gpios = <&v2m_led_gpios 6 0>;
-					linux,default-trigger = "cpu4";
-				};
-
-				user8 {
-					label = "v2m:green:user8";
-					gpios = <&v2m_led_gpios 7 0>;
-					linux,default-trigger = "cpu5";
-				};
-			};
-
-			mcc {
-				compatible = "arm,vexpress,config-bus";
-				arm,vexpress,config-bridge = <&v2m_sysreg>;
-
-				oscclk0 {
-					/* MCC static memory clock */
-					compatible = "arm,vexpress-osc";
-					arm,vexpress-sysreg,func = <1 0>;
-					freq-range = <25000000 60000000>;
-					#clock-cells = <0>;
-					clock-output-names = "v2m:oscclk0";
-				};
-
-				v2m_oscclk1: oscclk1 {
-					/* CLCD clock */
-					compatible = "arm,vexpress-osc";
-					arm,vexpress-sysreg,func = <1 1>;
-					freq-range = <23750000 65000000>;
-					#clock-cells = <0>;
-					clock-output-names = "v2m:oscclk1";
-				};
-
-				v2m_oscclk2: oscclk2 {
-					/* IO FPGA peripheral clock */
-					compatible = "arm,vexpress-osc";
-					arm,vexpress-sysreg,func = <1 2>;
-					freq-range = <24000000 24000000>;
-					#clock-cells = <0>;
-					clock-output-names = "v2m:oscclk2";
-				};
-
-				volt-vio {
-					/* Logic level voltage */
-					compatible = "arm,vexpress-volt";
-					arm,vexpress-sysreg,func = <2 0>;
-					regulator-name = "VIO";
-					regulator-always-on;
-					label = "VIO";
-				};
-
-				temp-mcc {
-					/* MCC internal operating temperature */
-					compatible = "arm,vexpress-temp";
-					arm,vexpress-sysreg,func = <4 0>;
-					label = "MCC";
-				};
-
-				reset {
-					compatible = "arm,vexpress-reset";
-					arm,vexpress-sysreg,func = <5 0>;
-				};
-
-				muxfpga {
-					compatible = "arm,vexpress-muxfpga";
-					arm,vexpress-sysreg,func = <7 0>;
-				};
-
-				shutdown {
-					compatible = "arm,vexpress-shutdown";
-					arm,vexpress-sysreg,func = <8 0>;
-				};
-
-				reboot {
-					compatible = "arm,vexpress-reboot";
-					arm,vexpress-sysreg,func = <9 0>;
-				};
-
-				dvimode {
-					compatible = "arm,vexpress-dvimode";
-					arm,vexpress-sysreg,func = <11 0>;
-				};
-			};
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
