Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591571ED42A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 18:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b+klooCU9JMQsv+vtIr5Pjbx98zPpXRW1RYzfSR/MVk=; b=NXg
	TJfYHxV4R2aBFsp2hJek/wtcSvgo9PYKt5hG2o8t/sd2qeRycTzDgxvRhrMfswr/WYlmd+2cIVV7t
	84F3Hie94zflJvRSYIuaBJMNr5yAeDhalWwrpKYonvO5W89KXg54bvRStKe8Cz3YyhBuz8JFWLX5X
	Yw86tyKbKwVQjT5SL0+qHnyPSgL/vq7cEA/fl3/Rzap00vsF0+XcUd1gg2CbClNHBJytMSEjUZawq
	N/7TsjhNrN6o1NrA9tYdjo1cXjCBbcgUE9hvIa50XeA7ROEK8pfI2GOSvciFThJq/binspSa8db67
	8KI9QinC4xlj4kqYwTIBYvQkBhHIVeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgWAK-0005Ck-89; Wed, 03 Jun 2020 16:22:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgWAB-0005CG-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 16:22:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C94FA55D;
 Wed,  3 Jun 2020 09:22:46 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C6DF3F52E;
 Wed,  3 Jun 2020 09:22:45 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH] arm: dts: vexpress: Move mcc node back into motherboard node
Date: Wed,  3 Jun 2020 17:22:37 +0100
Message-Id: <20200603162237.16319-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_092247_919095_87146B7B 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices
out of bus node") moved the "mcc" DT node into the root node, because
it does not have any children using "reg" properties, so does violate
some dtc checks about "simple-bus" nodes.
However this broke the vexpress config-bus code, which walks up the
device tree to find the first node with an "arm,vexpress,site" property.
This gave the wrong result (matching the root node instead of the
motherboard node), so broke the clocks and some other devices for
VExpress boards.

Move the whole node back into its original position. This re-introduces
the dtc warning, but is conceptually the right thing to do. The dtc
warning seems to be overzealous here, there are discussions on fixing or
relaxing this check instead.

Fixes: 	d9258898ad49 ("arm64: dts: arm: vexpress: Move fixed devices out of bus node")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
P.S. The broken commit has not reached mainline yet, but is already in
arm-soc/arm/dt.

 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 146 ++++++++++++------------
 1 file changed, 73 insertions(+), 73 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index e6308fb76183..a88ee5294d35 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -100,79 +100,6 @@
 		};
 	};
 
-	mcc {
-		compatible = "arm,vexpress,config-bus";
-		arm,vexpress,config-bridge = <&v2m_sysreg>;
-
-		oscclk0 {
-			/* MCC static memory clock */
-			compatible = "arm,vexpress-osc";
-			arm,vexpress-sysreg,func = <1 0>;
-			freq-range = <25000000 60000000>;
-			#clock-cells = <0>;
-			clock-output-names = "v2m:oscclk0";
-		};
-
-		v2m_oscclk1: oscclk1 {
-			/* CLCD clock */
-			compatible = "arm,vexpress-osc";
-			arm,vexpress-sysreg,func = <1 1>;
-			freq-range = <23750000 65000000>;
-			#clock-cells = <0>;
-			clock-output-names = "v2m:oscclk1";
-		};
-
-		v2m_oscclk2: oscclk2 {
-			/* IO FPGA peripheral clock */
-			compatible = "arm,vexpress-osc";
-			arm,vexpress-sysreg,func = <1 2>;
-			freq-range = <24000000 24000000>;
-			#clock-cells = <0>;
-			clock-output-names = "v2m:oscclk2";
-		};
-
-		volt-vio {
-			/* Logic level voltage */
-			compatible = "arm,vexpress-volt";
-			arm,vexpress-sysreg,func = <2 0>;
-			regulator-name = "VIO";
-			regulator-always-on;
-			label = "VIO";
-		};
-
-		temp-mcc {
-			/* MCC internal operating temperature */
-			compatible = "arm,vexpress-temp";
-			arm,vexpress-sysreg,func = <4 0>;
-			label = "MCC";
-		};
-
-		reset {
-			compatible = "arm,vexpress-reset";
-			arm,vexpress-sysreg,func = <5 0>;
-		};
-
-		muxfpga {
-			compatible = "arm,vexpress-muxfpga";
-			arm,vexpress-sysreg,func = <7 0>;
-		};
-
-		shutdown {
-			compatible = "arm,vexpress-shutdown";
-			arm,vexpress-sysreg,func = <8 0>;
-		};
-
-		reboot {
-			compatible = "arm,vexpress-reboot";
-			arm,vexpress-sysreg,func = <9 0>;
-		};
-
-		dvimode {
-			compatible = "arm,vexpress-dvimode";
-			arm,vexpress-sysreg,func = <11 0>;
-		};
-	};
-
 	bus@8000000 {
 		motherboard-bus {
 			model = "V2M-P1";
@@ -435,6 +362,79 @@
 						};
 					};
 				};
+
+				mcc {
+					compatible = "arm,vexpress,config-bus";
+					arm,vexpress,config-bridge = <&v2m_sysreg>;
+
+					oscclk0 {
+						/* MCC static memory clock */
+						compatible = "arm,vexpress-osc";
+						arm,vexpress-sysreg,func = <1 0>;
+						freq-range = <25000000 60000000>;
+						#clock-cells = <0>;
+						clock-output-names = "v2m:oscclk0";
+					};
+
+					v2m_oscclk1: oscclk1 {
+						/* CLCD clock */
+						compatible = "arm,vexpress-osc";
+						arm,vexpress-sysreg,func = <1 1>;
+						freq-range = <23750000 65000000>;
+						#clock-cells = <0>;
+						clock-output-names = "v2m:oscclk1";
+					};
+
+					v2m_oscclk2: oscclk2 {
+						/* IO FPGA peripheral clock */
+						compatible = "arm,vexpress-osc";
+						arm,vexpress-sysreg,func = <1 2>;
+						freq-range = <24000000 24000000>;
+						#clock-cells = <0>;
+						clock-output-names = "v2m:oscclk2";
+					};
+
+					volt-vio {
+						/* Logic level voltage */
+						compatible = "arm,vexpress-volt";
+						arm,vexpress-sysreg,func = <2 0>;
+						regulator-name = "VIO";
+						regulator-always-on;
+						label = "VIO";
+					};
+
+					temp-mcc {
+						/* MCC internal operating temperature */
+						compatible = "arm,vexpress-temp";
+						arm,vexpress-sysreg,func = <4 0>;
+						label = "MCC";
+					};
+
+					reset {
+						compatible = "arm,vexpress-reset";
+						arm,vexpress-sysreg,func = <5 0>;
+					};
+
+					muxfpga {
+						compatible = "arm,vexpress-muxfpga";
+						arm,vexpress-sysreg,func = <7 0>;
+					};
+
+					shutdown {
+						compatible = "arm,vexpress-shutdown";
+						arm,vexpress-sysreg,func = <8 0>;
+					};
+
+					reboot {
+						compatible = "arm,vexpress-reboot";
+						arm,vexpress-sysreg,func = <9 0>;
+					};
+
+					dvimode {
+						compatible = "arm,vexpress-dvimode";
+						arm,vexpress-sysreg,func = <11 0>;
+					};
+				};
 			};
 		};
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
