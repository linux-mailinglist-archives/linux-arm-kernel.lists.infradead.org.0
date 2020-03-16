Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FCA1863A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 04:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fUSocoL2QeJ/WMTeD3DuGnybQoBlOZyy0K4AwIPmVnk=; b=GvK
	CMj+assiKqDgcQLVgikI7MQi0xoxUVxRlzr9pl5nvDg48Z1OzXfe8GtH+gsxPSWiLAGRtfWYon5ka
	v/fuZeMPLDpL1RLU62FuknjKGoalScjoCOiQBUaX38tKRlvx2SiM5+7p+xKJbo3VPfVJb9SJbazwe
	nXKEljGdbA+LtBq/f7sbapr7MsgyUEiU32MCosU+UntpIdIXFsmvy4o2UZNo0hw1RCKaT0v5Yg/5u
	6hl1y7fW91UedwWbRbHUOYwXjrxCl1bQEmGWTs2RXqrKVstKMQYxilMdIVpEOY5fnReVr6W0MZptl
	EWfmF7MCYArf5nLWYGMpjjpX1R7YsIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDgKF-0000Za-N8; Mon, 16 Mar 2020 03:21:59 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDgK7-0000Yw-6t; Mon, 16 Mar 2020 03:21:52 +0000
Received: by mail-lf1-x141.google.com with SMTP id t21so12694647lfe.9;
 Sun, 15 Mar 2020 20:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Zmu7fMFsBJeCOMbIn8KvGMIAfmFUwzCAJ0zed+mhTIc=;
 b=lW38tUscI8Cr57K/8jLVPga8bz2Vy1Da6VcvpVrSxv71C0aZVtT7ujMxN7vmYOOjwy
 tjOcXbc3REwOUgg6Tc9MuNA3q1gnH5fPOVoQrU0aiZ2nzwGDPqt3Qn4O9woFP8LDmXkE
 WGhBF1CvRcBZn4/4KgN4RgY5WIokSWuvnICaMWMUzvxxOzrlsOETn7sT172okQp91W6x
 3wV2Hrdg1nASCBbpn7On+3BkgAm+hFdh7UUtFYIgHS25xMROC6Ug49YwdbfeIhux9/xb
 xBrhYKn9JfrEutxJhRKN4Nb2xi0LrXAm5t/mAj3fAoFKIYy1na46+PuJmHpGPI1hi1fs
 MpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Zmu7fMFsBJeCOMbIn8KvGMIAfmFUwzCAJ0zed+mhTIc=;
 b=L4F9hNS8FIK5tiwS755ID5Y4+n2/A01wQ1ocQNCJDXtHdD5Z6KHYAIuSrzpfFMdZ14
 4yA9uisHOxKd5CurF7+10HrPdMQ6EvVVTPK/FJBVCOF8GX1NzdqYdQeJT36JnvSaU8of
 jephr+yRCtbs1ikiiwEkXuymFBXwBNtptumdRapkrc8enDpRhiqHJCedDmoW0XyAEkDo
 QBoMs+joqy01m1jCoe6Igxv87rZFIHgoC21k3K4VDF6QHRJ3ecfo84CCec5nj/P7rCyJ
 uEFL4Y2Zmp+TZAStKrByiBMAhFB5MBnBDeEeyyFdADTwEN5YJDAL+vqhb5c94iLUdpl0
 IACA==
X-Gm-Message-State: ANhLgQ3i77XUZoDXOkIjQSVuVAOZgylOyIDuHhHyZLlUWLiWnFGuw57+
 7qA49scTLpw+Nww/nnKswYeQB8swLsQ=
X-Google-Smtp-Source: ADFU+vsigaHdqYexv0SuvEa+ZVrt/q/vKfMTxI9Oe14bDKFD8lVWv7y1TxjP0PXQy5RF2ZOmwBStng==
X-Received: by 2002:ac2:5605:: with SMTP id v5mr16010995lfd.184.1584328908713; 
 Sun, 15 Mar 2020 20:21:48 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id s7sm17092677lfp.51.2020.03.15.20.21.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 15 Mar 2020 20:21:48 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: add thermal zones to meson gx devices
Date: Mon, 16 Mar 2020 07:20:54 +0400
Message-Id: <1584328854-28575-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_202151_278552_0159500C 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christian Hewitt <christianshewitt@gmail.com>, Nick Xie <nick@khadas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adapt and update current VIM2 thermal zones support so that zones are
available on all meson GXBB/GXL/GXM devices - similar to changes made
for G12A/G12B/SM1 devices.

Suggested-by: Nick Xie <nick@khadas.com>
Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi          | 52 +++++++++++++
 .../boot/dts/amlogic/meson-gxm-khadas-vim2.dts     | 87 ++++------------------
 arch/arm64/boot/dts/amlogic/meson-gxm.dtsi         | 28 +++++++
 3 files changed, 95 insertions(+), 72 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 40db06e..03f79fe 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -83,6 +84,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 0>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -92,6 +94,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 0>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -101,6 +104,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 0>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -110,6 +114,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 0>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -117,6 +122,53 @@
 		};
 	};
 
+	thermal-zones {
+		cpu-thermal {
+			polling-delay-passive = <250>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+
+			thermal-sensors = <&scpi_sensors 0>;
+
+			trips {
+				cpu_passive: cpu-passive {
+					temperature = <80000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "passive";
+				};
+
+				cpu_hot: cpu-hot {
+					temperature = <90000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "hot";
+				};
+
+				cpu_critical: cpu-critical {
+					temperature = <110000>; /* millicelsius */
+					hysteresis = <2000>; /* millicelsius */
+					type = "critical";
+				};
+			};
+
+			cpu_cooling_maps: cooling-maps {
+				map0 {
+					trip = <&cpu_passive>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu_hot>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	arm-pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index d5dc128..27eeab7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -8,7 +8,6 @@
 /dts-v1/;
 
 #include <dt-bindings/input/input.h>
-#include <dt-bindings/thermal/thermal.h>
 
 #include "meson-gxm.dtsi"
 
@@ -100,49 +99,6 @@
 		clock-names = "ext_clock";
 	};
 
-	thermal-zones {
-		cpu-thermal {
-			polling-delay-passive = <250>; /* milliseconds */
-			polling-delay = <1000>; /* milliseconds */
-
-			thermal-sensors = <&scpi_sensors 0>;
-
-			trips {
-				cpu_alert0: cpu-alert0 {
-					temperature = <70000>; /* millicelsius */
-					hysteresis = <2000>; /* millicelsius */
-					type = "active";
-				};
-
-				cpu_alert1: cpu-alert1 {
-					temperature = <80000>; /* millicelsius */
-					hysteresis = <2000>; /* millicelsius */
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map0 {
-					trip = <&cpu_alert0>;
-					cooling-device = <&gpio_fan THERMAL_NO_LIMIT 1>;
-				};
-
-				map1 {
-					trip = <&cpu_alert1>;
-					cooling-device = <&gpio_fan 2 THERMAL_NO_LIMIT>,
-							 <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-				};
-			};
-		};
-	};
-
 	hdmi_5v: regulator-hdmi-5v {
 		compatible = "regulator-fixed";
 
@@ -198,36 +154,23 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
-&cpu0 {
-	#cooling-cells = <2>;
-};
-
-&cpu1 {
-	#cooling-cells = <2>;
-};
-
-&cpu2 {
-	#cooling-cells = <2>;
-};
-
-&cpu3 {
-	#cooling-cells = <2>;
-};
-
-&cpu4 {
-	#cooling-cells = <2>;
-};
 
-&cpu5 {
-	#cooling-cells = <2>;
-};
-
-&cpu6 {
-	#cooling-cells = <2>;
-};
+&cpu_cooling_maps {
+	map0 {
+		cooling-device = <&gpio_fan THERMAL_NO_LIMIT 1>;
+	};
 
-&cpu7 {
-	#cooling-cells = <2>;
+	map1 {
+		cooling-device = <&gpio_fan 2 THERMAL_NO_LIMIT>,
+				 <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+	};
 };
 
 &ethmac {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
index 5ff64a0..b6f89f1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm.dtsi
@@ -49,6 +49,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 1>;
+			#cooling-cells = <2>;
 		};
 
 		cpu5: cpu@101 {
@@ -58,6 +59,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 1>;
+			#cooling-cells = <2>;
 		};
 
 		cpu6: cpu@102 {
@@ -67,6 +69,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 1>;
+			#cooling-cells = <2>;
 		};
 
 		cpu7: cpu@103 {
@@ -76,6 +79,7 @@
 			enable-method = "psci";
 			next-level-cache = <&l2>;
 			clocks = <&scpi_dvfs 1>;
+			#cooling-cells = <2>;
 		};
 	};
 };
@@ -124,6 +128,30 @@
 	compatible = "amlogic,meson-gxm-aoclkc", "amlogic,meson-gx-aoclkc";
 };
 
+&cpu_cooling_maps {
+	map0 {
+		cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+	};
+
+	map1 {
+		cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+				 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+	};
+};
+
 &saradc {
 	compatible = "amlogic,meson-gxm-saradc", "amlogic,meson-saradc";
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
