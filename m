Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCC61D0FE2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 12:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h7Y7aquR179R/6mwQPUMxcTuEZvt1/ry1Ie4ulQrsq0=; b=ckj26dRTzIXb/vossOgt6f8yaI
	TC5LrKoMNQ+pRHVNlGQA/9tB5ssXUpFVxC0YTTdNWeRYzLHZPw8JrfI7fhl9B1n/OWAPtDqszQF7z
	6cJmykJPOWjgy0gNxDhMw18VWk1bL+eRDmrnvdkG1cbsixobHZ/Sz+5Iv8Y7mNpnVAYtz0NcymZJt
	OxoBedkB1H5rcWuYgeIJMJO98+iRuJ2bGMFvtNfow+4dPEDoRi+/jNe0GUfHCw3pYtCr6vS6b4gAj
	U80UVbP7zh1IiI7/+oCutBbMjLXb6gH9ip579l7CrvjcArHS69/SxuSmxRZ5cF3AYdegFT5ZY/uI3
	L5DkH6+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYogp-0006kP-99; Wed, 13 May 2020 10:32:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYoes-0005Hl-H6
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 10:30:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC92E11B3;
 Wed, 13 May 2020 03:30:37 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2C963F305;
 Wed, 13 May 2020 03:30:36 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 06/20] arm64: dts: arm: juno: Move fixed devices out of bus
 node
Date: Wed, 13 May 2020 11:30:02 +0100
Message-Id: <20200513103016.130417-7-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200513103016.130417-1-andre.przywara@arm.com>
References: <20200513103016.130417-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_033038_668553_B6A30027 
X-CRM114-Status: GOOD (  11.57  )
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
Warning (simple_bus_reg): Node /bus@8000000/v2m_refclk32khz
                          missing or empty reg/ranges property

Move the fixed clocks, the fixed regulator, and the gpio keys to the
root node, since they do not depend on any busses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi | 158 +++++++++---------
 1 file changed, 79 insertions(+), 79 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index d5cefddde08c..f3279327a665 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -8,35 +8,90 @@
  */
 
 / {
-	bus@8000000 {
-		mb_clk24mhz: clk24mhz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <24000000>;
-			clock-output-names = "juno_mb:clk24mhz";
-		};
+	mb_clk24mhz: clk24mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <24000000>;
+		clock-output-names = "juno_mb:clk24mhz";
+	};
 
-		mb_clk25mhz: clk25mhz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <25000000>;
-			clock-output-names = "juno_mb:clk25mhz";
-		};
+	mb_clk25mhz: clk25mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <25000000>;
+		clock-output-names = "juno_mb:clk25mhz";
+	};
 
-		v2m_refclk1mhz: refclk1mhz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <1000000>;
-			clock-output-names = "juno_mb:refclk1mhz";
-		};
+	v2m_refclk1mhz: refclk1mhz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <1000000>;
+		clock-output-names = "juno_mb:refclk1mhz";
+	};
 
-		v2m_refclk32khz: refclk32khz {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <32768>;
-			clock-output-names = "juno_mb:refclk32khz";
+	v2m_refclk32khz: refclk32khz {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "juno_mb:refclk32khz";
+	};
+
+	mb_fixed_3v3: mcc-sb-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "MCC_SB_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+
+		power-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <116>;
+			label = "POWER";
+			gpios = <&iofpga_gpio0 0 0x4>;
+		};
+		home-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <102>;
+			label = "HOME";
+			gpios = <&iofpga_gpio0 1 0x4>;
+		};
+		rlock-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <152>;
+			label = "RLOCK";
+			gpios = <&iofpga_gpio0 2 0x4>;
+		};
+		vol-up-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <115>;
+			label = "VOL+";
+			gpios = <&iofpga_gpio0 3 0x4>;
 		};
+		vol-down-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <114>;
+			label = "VOL-";
+			gpios = <&iofpga_gpio0 4 0x4>;
+		};
+		nmi-button {
+			debounce-interval = <50>;
+			wakeup-source;
+			linux,code = <99>;
+			label = "NMI";
+			gpios = <&iofpga_gpio0 5 0x4>;
+		};
+	};
 
+	bus@8000000 {
 		motherboard {
 			compatible = "arm,vexpress,v2p-p1", "simple-bus";
 			#address-cells = <2>;  /* SMB chipselect number and offset */
@@ -48,61 +103,6 @@
 			arm,vexpress,site = <0>;
 			arm,v2m-memory-map = "rs1";
 
-			mb_fixed_3v3: mcc-sb-3v3 {
-				compatible = "regulator-fixed";
-				regulator-name = "MCC_SB_3V3";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-always-on;
-			};
-
-			gpio-keys {
-				compatible = "gpio-keys";
-
-				power-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <116>;
-					label = "POWER";
-					gpios = <&iofpga_gpio0 0 0x4>;
-				};
-				home-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <102>;
-					label = "HOME";
-					gpios = <&iofpga_gpio0 1 0x4>;
-				};
-				rlock-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <152>;
-					label = "RLOCK";
-					gpios = <&iofpga_gpio0 2 0x4>;
-				};
-				vol-up-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <115>;
-					label = "VOL+";
-					gpios = <&iofpga_gpio0 3 0x4>;
-				};
-				vol-down-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <114>;
-					label = "VOL-";
-					gpios = <&iofpga_gpio0 4 0x4>;
-				};
-				nmi-button {
-					debounce-interval = <50>;
-					wakeup-source;
-					linux,code = <99>;
-					label = "NMI";
-					gpios = <&iofpga_gpio0 5 0x4>;
-				};
-			};
-
 			flash@0 {
 				/* 2 * 32MiB NOR Flash memory mounted on CS0 */
 				compatible = "arm,vexpress-flash", "cfi-flash";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
