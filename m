Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545ED4E492
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s35ZMaIkXdCRNP4YHBnlXJAGdUgaWpB39VpHCd8fLKQ=; b=LgMPXHzhnnqAmt7yNi7e1tI5kE
	6Pfk272c+m4TgT61bj4FYRC4fZq549KgWllTCWi8g86LLIBlayKus5IwVhR0sTB9lWUVmcX9Vhq+9
	lDsIA9RD9eGGrvCovnMR+El/v6c/rYlTkE0slWn9gCRaquPFfB7G7Pmx43kAXfJk9sTPW8KhhFQ6i
	R3EvFmSAErwFd2H30QfLGbZZovg1z/kr5PqYdRh98hUUbyjabAAOvIwLFlR2XkXzui71M40XZo+Ue
	bzUVAPOYDFMJaGXTu3bRZJPIArqRXO79KZDH2f5tq/GFRtcw3RudsM4GHn9wwd7r5Y6QLRctW2lRV
	uPfhX0hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGAP-00073x-De; Fri, 21 Jun 2019 09:49:09 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgl-0002tV-8z
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:33 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 90E8D25AEEC;
 Fri, 21 Jun 2019 19:16:41 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id CF9F2942F39; Fri, 21 Jun 2019 11:16:33 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 22/53] arm64: dts: renesas: r8a7796: Create thermal zone to
 support IPA
Date: Fri, 21 Jun 2019 11:16:00 +0200
Message-Id: <81022ecd2720a5bf2c7163e6cc3fcfe51bf23ce0.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021831_657525_11837DAA 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Hien Dang <hien.dang.eb@rvc.renesas.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 An Huynh <an.huynh.uj@rvc.renesas.com>, Dien Pham <dien.pham.ry@renesas.com>,
 Magnus Damm <magnus.damm@gmail.com>,
 Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dien Pham <dien.pham.ry@renesas.com>

Setup a thermal zone driven by SoC temperature sensor.
Create passive trip points and bind them to CPUFreq cooling
device that supports power extension.

In R-Car Gen3, IPA is supported for only one channel
 (on H3/M3/M3N SoCs, it is channel THS3). Reason:
  Currently, IPA controls base on only CPU temperature.
  And only one thermal channel is assembled closest
  CPU cores is selected as target of IPA.
  If other channels are used, IPA controlling is not properly.

The A57 cooling device supports 5 cooling states which can be categorised
as follows:

0 & 1) boost (clocking up)
2)     default
3 & 4) cooling (clocking down)

Currently the thermal framework assumes that the default is the minimum,
or in other words there is no provision for handling boost states.
So this patch only describes the upper 3 states, default and cooling.

A single cooling device is described for all A57 CPUs and a separate
cooling device is described for all A53 CPUs. This reflects that physically
there is only one cooling device present for each type of CPU.

This patch improves on an earlier version by:

* Omitting cooling-max-level and cooling-min-level properties which
  are no longer present in mainline as of v4.17
* Removing an unused trip-point0 node sub-property from the trips
  property.
* Using cooling-device indexes such that maximum refers to maximum cooling
  rather than the inverse.
* Defers adding dynamic-power-coefficient properties to a separate patch as
  these are properties of the CPU.

The long signed-off by chain below reflects many revisions, mainly
internal, that this patch has been through.

Signed-off-by: Dien Pham <dien.pham.ry@renesas.com>
Signed-off-by: Hien Dang <hien.dang.eb@rvc.renesas.com>
Signed-off-by: An Huynh <an.huynh.uj@rvc.renesas.com>
Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/r8a7796.dtsi | 44 +++++++++++---------------------
 1 file changed, 15 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a7796.dtsi b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
index 452532fbc443..fdadb44847c6 100644
--- a/arch/arm64/boot/dts/renesas/r8a7796.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a7796.dtsi
@@ -186,6 +186,7 @@
 			power-domains = <&sysc R8A7796_PD_CA53_CPU0>;
 			next-level-cache = <&L2_CA53>;
 			enable-method = "psci";
+			#cooling-cells = <2>;
 			clocks = <&cpg CPG_CORE R8A7796_CLK_Z2>;
 			operating-points-v2 = <&cluster1_opp>;
 			capacity-dmips-mhz = <535>;
@@ -2825,76 +2826,61 @@
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
 			thermal-sensors = <&tsc 0>;
+			sustainable-power = <3874>;
 
 			trips {
-				sensor1_passive: sensor1-passive {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
 				sensor1_crit: sensor1-crit {
 					temperature = <120000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-				map0 {
-					trip = <&sensor1_passive>;
-					cooling-device = <&a57_0 5 5>, <&a57_1 5 5>;
-				};
-			};
 		};
 
 		sensor_thermal2: sensor-thermal2 {
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
 			thermal-sensors = <&tsc 1>;
+			sustainable-power = <3874>;
 
 			trips {
-				sensor2_passive: sensor2-passive {
-					temperature = <95000>;
-					hysteresis = <1000>;
-					type = "passive";
-				};
 				sensor2_crit: sensor2-crit {
 					temperature = <120000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
-
-			cooling-maps {
-				map0 {
-					trip = <&sensor2_passive>;
-					cooling-device = <&a57_0 5 5>, <&a57_1 5 5>;
-				};
-			};
 		};
 
 		sensor_thermal3: sensor-thermal3 {
 			polling-delay-passive = <250>;
 			polling-delay = <1000>;
 			thermal-sensors = <&tsc 2>;
+			sustainable-power = <3874>;
 
 			trips {
-				sensor3_passive: sensor3-passive {
-					temperature = <95000>;
+				target: trip-point1 {
+					temperature = <100000>;
 					hysteresis = <1000>;
 					type = "passive";
 				};
+
 				sensor3_crit: sensor3-crit {
 					temperature = <120000>;
 					hysteresis = <1000>;
 					type = "critical";
 				};
 			};
-
 			cooling-maps {
 				map0 {
-					trip = <&sensor3_passive>;
-					cooling-device = <&a57_0 5 5>, <&a57_1 5 5>;
+					trip = <&target>;
+					cooling-device = <&a57_0 2 4>;
+					contribution = <1024>;
+				};
+				map1 {
+					trip = <&target>;
+					cooling-device = <&a53_0 0 2>;
+					contribution = <1024>;
 				};
 			};
 		};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
