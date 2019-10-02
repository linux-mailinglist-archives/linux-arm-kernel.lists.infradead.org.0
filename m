Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6968C8CC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:22:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FrOPMIJmFMGz13ZT3y/g4FAVSW1Dlg4m/Jtf9B3Wid4=; b=ZvbFBZIoN8lmUh
	vvAv4X9oEjs/hjcvF6ROpjY8ZmHEQSOSmThjVpXPjvvNmA1JttSFMetYfk9VfeUZoBGOnxhYdm+uZ
	mQnKIdGKY4sY8r3OfuhfKoSh+Oc+jr4YLNYfY8b13RulzBMtyR3+4mZLa9KkTHVgVH/G9nq7mN/nF
	I/kLHzwSqgQKHsPgF4DHxYNlR7Fpz46FEbvBbXdSi0vGxy9eB3icXf2Mos61J4DOtiJ5vsySdhfTm
	EOF6Yg48ICWVkewHsu0ktlwxcyXQS20tnaS0dd1dGJsEhA2TpfrgeZJzbNVtBXr5Qg/UFYVQ73+6O
	5wUQuRPthh9mgOSr6ygA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFgRv-0008M3-Fl; Wed, 02 Oct 2019 15:21:55 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFgRi-0008JT-Sz
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:21:44 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x92F2kgd009023; Wed, 2 Oct 2019 17:21:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=EDlQS88xrqAM6RtP1rnXIFOUYsiIhCACanKTzAXgEEQ=;
 b=rBRBGnXn4TQuZJgjwbhOncNIxPo0StobYDlOR9LTpuNTABcvB2B5vCW0qivJGJV6JWeE
 9qvpqvqRsG06rhQG4102K6CoYXqUFETAet5mIDEYiFHD7hFse7rTBQPEhT5ExxeSVDaW
 DdYJ+jMjyhdxWZ2u5Bx0sI5qMjq+j0ZZG4Vu26nzd8Xf+z9lzeq0CVPAVmmW44hJoJL/
 fR82JZk2TDywyVCxknRfxAsHGD68kMRJTpiWYDX9bA93dWqne/R0ymb5FwhoOCZbKHo+
 o7aARXEt9qynlbb6etEzpLQtWeUtfJXzz/4v60yApLkrbA3i2odY2FHdLLaXk+e2ilBm ow== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdgyak6-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 02 Oct 2019 17:21:34 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 5006A4E;
 Wed,  2 Oct 2019 15:21:29 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 04C182D3772;
 Wed,  2 Oct 2019 17:21:29 +0200 (CEST)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 2 Oct 2019
 17:21:28 +0200
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 2 Oct 2019 17:21:28
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <alexandre.torgue@st.com>, <rui.zhang@intel.com>,
 <edubezval@gmail.com>, <daniel.lezcano@linaro.org>, <mark.rutland@arm.com>
Subject: [PATCH] dt-bindings: thermal: Convert stm32 thermal bindings to
 json-schema
Date: Wed, 2 Oct 2019 17:21:25 +0200
Message-ID: <20191002152125.16227-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-02_07:2019-10-01,2019-10-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_082143_229881_139FF09C 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 thermal binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../bindings/thermal/st,stm32-thermal.yaml         | 74 ++++++++++++++++++++++
 .../devicetree/bindings/thermal/stm32-thermal.txt  | 61 ------------------
 2 files changed, 74 insertions(+), 61 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
 delete mode 100644 Documentation/devicetree/bindings/thermal/stm32-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
new file mode 100644
index 000000000000..be8e1c51c11e
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/st,stm32-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 digital thermal sensor (DTS) binding
+
+maintainers:
+  - David Hernandez Sanchez <david.hernandezsanchez@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-thermal
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: pclk
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    dts: thermal@50028000 {
+        compatible = "st,stm32-thermal";
+        reg = <0x50028000 0x100>;
+        clocks = <&rcc TMPSENS>;
+        clock-names = "pclk";
+        #thermal-sensor-cells = <0>;
+        interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
+    };
+
+    thermal-zones {
+        cpu_thermal: cpu-thermal {
+            polling-delay-passive = <0>;
+            polling-delay = <0>;
+
+            thermal-sensors = <&dts>;
+            trips {
+                cpu_alert1: cpu-alert1 {
+                    temperature = <85000>;
+                    hysteresis = <0>;
+                    type = "passive";
+                };
+
+                cpu_crit: cpu-crit {
+                    temperature = <120000>;
+                    hysteresis = <0>;
+                    type = "critical";
+                };
+            };
+
+            cooling-maps {
+            };
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/thermal/stm32-thermal.txt b/Documentation/devicetree/bindings/thermal/stm32-thermal.txt
deleted file mode 100644
index 8c0d5a4d8031..000000000000
--- a/Documentation/devicetree/bindings/thermal/stm32-thermal.txt
+++ /dev/null
@@ -1,61 +0,0 @@
-Binding for Thermal Sensor for STMicroelectronics STM32 series of SoCs.
-
-On STM32 SoCs, the Digital Temperature Sensor (DTS) is in charge of managing an
-analog block which delivers a frequency depending on the internal SoC's
-temperature. By using a reference frequency, DTS is able to provide a sample
-number which can be translated into a temperature by the user.
-
-DTS provides interrupt notification mechanism by threshold. This mechanism
-offers two temperature trip points: passive and critical. The first is intended
-for passive cooling notification while the second is used for over-temperature
-reset.
-
-Required parameters:
--------------------
-
-compatible: 	Should be "st,stm32-thermal"
-reg: 		This should be the physical base address and length of the
-		sensor's registers.
-clocks: 	Phandle of the clock used by the thermal sensor.
-		  See: Documentation/devicetree/bindings/clock/clock-bindings.txt
-clock-names: 	Should be "pclk" for register access clock and reference clock.
-		  See: Documentation/devicetree/bindings/resource-names.txt
-#thermal-sensor-cells: Should be 0. See ./thermal.txt for a description.
-interrupts:	Standard way to define interrupt number.
-
-Example:
-
-	thermal-zones {
-		cpu_thermal: cpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <0>;
-
-			thermal-sensors = <&thermal>;
-
-			trips {
-				cpu_alert1: cpu-alert1 {
-					temperature = <85000>;
-					hysteresis = <0>;
-					type = "passive";
-				};
-
-				cpu-crit: cpu-crit {
-					temperature = <120000>;
-					hysteresis = <0>;
-					type = "critical";
-				};
-			};
-
-			cooling-maps {
-			};
-		};
-	};
-
-	thermal: thermal@50028000 {
-		compatible = "st,stm32-thermal";
-		reg = <0x50028000 0x100>;
-		clocks = <&rcc TMPSENS>;
-		clock-names = "pclk";
-		#thermal-sensor-cells = <0>;
-		interrupts = <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>;
-	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
