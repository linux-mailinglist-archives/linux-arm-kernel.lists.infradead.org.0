Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A0017BB0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rk3pGn2FPL4biA2gRFyK3lW309bt5SygZrtJJ9oiSMU=; b=uxR
	UpomzCesbjl6gY1nwL0ykIw95n35agy2f4FtGXcaXci5RiDqJFHRdZxg8VFFD8P5REhM71jUFhDQr
	4FjnosUmwR7zhH7R8hgHXcxlDsugD70WbP0NpJ1eBsrBnFDgzfH5d8SVI4OtSBGUplE2B10TKjSVo
	K877VhCIdNPwCLeu2YHLbORfHQv6nov9JAujNHgTHBcedmprUPnhMpzuUL0YauTST/9nT/TCRVttg
	5635eAglteH2NK0bEjpz0Um5L5xrSikmS5P3y3azDauhMkDCc+2eacvcHC+QnhO6TxXihTGQkKroo
	u5wzn7BqaGJx9JT9PaK6Jba1SMK2w4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAih-0004WW-Fg; Fri, 06 Mar 2020 11:00:43 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAiY-0004Vt-DV
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:00:36 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id Az0T2200F5USYZQ06z0TPW; Fri, 06 Mar 2020 12:00:27 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jAAiR-0004Ax-EW; Fri, 06 Mar 2020 12:00:27 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jAAiR-0006Rt-CJ; Fri, 06 Mar 2020 12:00:27 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
Subject: [PATCH] arm64: dts: renesas: r8a77961: Add thermal nodes
Date: Fri,  6 Mar 2020 12:00:25 +0100
Message-Id: <20200306110025.24747-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_030034_639303_D5004AAC 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a device node for the Thermal Sensor/Chip Internal Voltage Monitor
in the R-Car M3-W+ (R8A77961) SoC, and describe the thermal zones.

According to the R-Car Gen3 Hardware Manual Errata for Revision 2.00 of
Jan 31, 2020, the thermal parameters for R-Car M3-W+ are the same as for
R-Car M3-W.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
It's a bit cold in Magnus' lab:

/ # grep . /sys/devices/virtual/thermal/thermal_zone?/temp
/sys/devices/virtual/thermal/thermal_zone0/temp:17000
/sys/devices/virtual/thermal/thermal_zone1/temp:19000
/sys/devices/virtual/thermal/thermal_zone2/temp:18000
---
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 80 +++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
index b6915319a61c8bf0..2f016458f57d3a33 100644
--- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
@@ -474,6 +474,20 @@
 			#power-domain-cells = <1>;
 		};
 
+		tsc: thermal@e6198000 {
+			compatible = "renesas,r8a77961-thermal";
+			reg = <0 0xe6198000 0 0x100>,
+			      <0 0xe61a0000 0 0x100>,
+			      <0 0xe61a8000 0 0x100>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 522>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 522>;
+			#thermal-sensor-cells = <1>;
+		};
+
 		intc_ex: interrupt-controller@e61c0000 {
 			#interrupt-cells = <2>;
 			interrupt-controller;
@@ -785,6 +799,7 @@
 			status = "disabled";
 		};
 
+
 		pwm1: pwm@e6e31000 {
 			reg = <0 0xe6e31000 0 8>;
 			#pwm-cells = <2>;
@@ -1073,6 +1088,71 @@
 		};
 	};
 
+	thermal-zones {
+		sensor_thermal1: sensor-thermal1 {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsc 0>;
+			sustainable-power = <3874>;
+
+			trips {
+				sensor1_crit: sensor1-crit {
+					temperature = <120000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		sensor_thermal2: sensor-thermal2 {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsc 1>;
+			sustainable-power = <3874>;
+
+			trips {
+				sensor2_crit: sensor2-crit {
+					temperature = <120000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+
+		sensor_thermal3: sensor-thermal3 {
+			polling-delay-passive = <250>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsc 2>;
+			sustainable-power = <3874>;
+
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&a57_0 2 4>;
+					contribution = <1024>;
+				};
+				map1 {
+					trip = <&target>;
+					cooling-device = <&a53_0 0 2>;
+					contribution = <1024>;
+				};
+			};
+			trips {
+				target: trip-point1 {
+					temperature = <100000>;
+					hysteresis = <1000>;
+					type = "passive";
+				};
+
+				sensor3_crit: sensor3-crit {
+					temperature = <120000>;
+					hysteresis = <1000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts-extended = <&gic GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_LOW)>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
