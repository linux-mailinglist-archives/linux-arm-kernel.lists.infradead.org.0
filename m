Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B40441C8824
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t8pt0oKMNeemkJyUQ+FNEAFtiWjlvSJMOq2t5no+6Hw=; b=G2cFBkiID4CfOLHGPoAj7s01HN
	EPKyuu4zctcODxKreM/WRfV9ExfRKaPcl1DrOGwXuLEggPS0va2hQ3V9nEml08hVzwu3CaY+/gr1u
	a6SCV5VV+xEi+l2by8za6CvDth0Llg7nXMm4s4BYnAAfnLzyxN3sKWtk62ZOv0EF/4Fc6xzfAmf4I
	0Vx6x+ePfmGbDJ8rFSLfG4dl4lvZs+Um1nrpEU6LBhxZDikQN7j1oB6G6gPZUq2Y6gjucPMKNVA/f
	IGi/r76u0psUVkgsyJZGiyZWwoI5DhIh6iX+ZZfA+r+MJLF0Wyf5Z0cTG1wTHl0TQolial2wObFCm
	KuZPOF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWefm-00029l-O9; Thu, 07 May 2020 11:26:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWee5-0006ox-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C11751FB;
 Thu,  7 May 2020 04:24:48 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A82463F68F;
 Thu,  7 May 2020 04:24:47 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 04/17] arm64: dts: arm: FVP: Fix motherboard .dtsi
Date: Thu,  7 May 2020 12:24:17 +0100
Message-Id: <20200507112430.183940-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042453_324695_104DB8FD 
X-CRM114-Status: GOOD (  11.66  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "motherboard" DT include file was mixing MMIO mapped devices with
other peripherals like fixed clocks or regulators. The simple-bus
binding denies this.

Adjust the .dtsi to declare the clocks and not memory mapped devices
outside of the bus node.

This fixes a dtbs_check complaint for the fastmodel DTs.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../boot/dts/arm/rtsm_ve-motherboard.dtsi     | 136 +++++++++---------
 1 file changed, 68 insertions(+), 68 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index d1bfa62ca073..f61e313ab1a4 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -8,6 +8,74 @@
  * VEMotherBoard.lisa
  */
 / {
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
+	v2m_fixed_3v3: v2m-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	mcc {
+		compatible = "arm,vexpress,config-bus";
+		arm,vexpress,config-bridge = <&v2m_sysreg>;
+
+		v2m_oscclk1: oscclk1 {
+			/* CLCD clock */
+			compatible = "arm,vexpress-osc";
+			arm,vexpress-sysreg,func = <1 1>;
+			freq-range = <23750000 63500000>;
+			#clock-cells = <0>;
+			clock-output-names = "v2m:oscclk1";
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
 			arm,v2m-memory-map = "rs1";
@@ -30,27 +98,6 @@
 				interrupts = <15>;
 			};
 
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
 			iofpga@300000000 {
 				compatible = "simple-bus";
 				#address-cells = <1>;
@@ -198,53 +245,6 @@
 					};
 				};
 			};
-
-			v2m_fixed_3v3: v2m-3v3 {
-				compatible = "regulator-fixed";
-				regulator-name = "3V3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			mcc {
-				compatible = "arm,vexpress,config-bus";
-				arm,vexpress,config-bridge = <&v2m_sysreg>;
-
-				v2m_oscclk1: oscclk1 {
-					/* CLCD clock */
-					compatible = "arm,vexpress-osc";
-					arm,vexpress-sysreg,func = <1 1>;
-					freq-range = <23750000 63500000>;
-					#clock-cells = <0>;
-					clock-output-names = "v2m:oscclk1";
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
