Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8418BEB05A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trqh4z166bDdCpK8tHRe/6z624hsgAQEpsAKAAJPbTA=; b=evvkVu3W+HmIe5
	qtoexayuyT7NxIpBvQNYVhei8zThtkHyNBO+zcGM7Ucd3morv58eZCqb/B+DzhAg4vZnao0uLczoO
	ade/ivHgU/c3PTKpXpPKSVmYbHLVrgJ9jEGOWNmNOz6GaVOR1IxaCR7IFU+ldBdd5QnYgG+FDDu2o
	DuphsUI21Ug3YzcZ9aP7NpP+RTReJHyOGfuZ0Xmm0ul8MuLgz6olQZN0kxIgWbrF8ieMz3SXqjhlv
	/h1shej4uMWb8tpQcdyIstL8Y4Pi47jD7dqCtCCKs5hfACCIcSj30W1xzvlefVRVMGKLrKFAv5csk
	rkY8MDlUSsFcqhoT9vIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9cS-0007kQ-MI; Thu, 31 Oct 2019 12:32:04 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9bQ-0006wW-PB
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:31:03 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9VCQm2j029135; Thu, 31 Oct 2019 13:30:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=XobN5zu4BmNIGNVaY/JnEEHn+q2OpaXORVnInB3cdq4=;
 b=eWEB6+B1HOrepyJ4WJRDLMyuI9PXQWASN9adjrKxVIyL5yRCbF9YLcc/yPdmdPJYV3QT
 2GHYgLY0xbpRqrX6IU1yZuwPpu89k2qmlIfcPZ86JtwCCIXQ1tRpT9T/Kv3zpqIzA/oz
 mTnH+WpF2bILB+mT+AlcIMeR7BnVHXs7M4S/PmFXdFlj6RDPwa8l5xtRULy1QdmM+RY5
 wOHeANc7j91gtBY3FtBXjwUtro+MQg4q9gdJOFyeT4Z5UdvkeU+2+bTFdC8V34jMJrYx
 9biD4wHrOdpRH6hCWFr6Q+2+r8qQFJnUevIcG/X3Te/Ffy/2L8xpL+2bDpkWjqvGJr9r fg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vxwhussfa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Oct 2019 13:30:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E0C8C100039;
 Thu, 31 Oct 2019 13:30:53 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CE8D12B7837;
 Thu, 31 Oct 2019 13:30:53 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct
 2019 13:30:53 +0100
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct 2019 13:30:53
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <fabrice.gasnier@st.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <lee.jones@linaro.org>,
 <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>,
 <benjamin.gaignard@st.com>
Subject: [PATCH 3/4] dt-bindings: pwm: Convert stm32 pwm bindings to
 json-schema
Date: Thu, 31 Oct 2019 13:30:39 +0100
Message-ID: <20191031123040.26316-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191031123040.26316-1-benjamin.gaignard@st.com>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-31_05:2019-10-30,2019-10-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_053101_119820_FA2A3645 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 pwm binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/pwm/pwm-stm32.txt          | 38 ----------------
 .../devicetree/bindings/pwm/st,stm32-pwm.yaml      | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 38 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-stm32.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/st,stm32-pwm.yaml

diff --git a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt b/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
deleted file mode 100644
index a8690bfa5e1f..000000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-stm32.txt
+++ /dev/null
@@ -1,38 +0,0 @@
-STMicroelectronics STM32 Timers PWM bindings
-
-Must be a sub-node of an STM32 Timers device tree node.
-See ../mfd/stm32-timers.txt for details about the parent node.
-
-Required parameters:
-- compatible:		Must be "st,stm32-pwm".
-- pinctrl-names: 	Set to "default".
-- pinctrl-0: 		List of phandles pointing to pin configuration nodes for PWM module.
-			For Pinctrl properties see ../pinctrl/pinctrl-bindings.txt
-- #pwm-cells:		Should be set to 3. This PWM chip uses the default 3 cells
-			bindings defined in pwm.txt.
-
-Optional parameters:
-- st,breakinput:	One or two <index level filter> to describe break input configurations.
-			"index" indicates on which break input (0 or 1) the configuration
-			should be applied.
-			"level" gives the active level (0=low or 1=high) of the input signal
-			for this configuration.
-			"filter" gives the filtering value to be applied.
-
-Example:
-	timers@40010000 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "st,stm32-timers";
-		reg = <0x40010000 0x400>;
-		clocks = <&rcc 0 160>;
-		clock-names = "int";
-
-		pwm {
-			compatible = "st,stm32-pwm";
-			#pwm-cells = <3>;
-			pinctrl-0	= <&pwm1_pins>;
-			pinctrl-names	= "default";
-			st,breakinput = <0 1 5>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/pwm/st,stm32-pwm.yaml b/Documentation/devicetree/bindings/pwm/st,stm32-pwm.yaml
new file mode 100644
index 000000000000..d3f8180edd88
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/st,stm32-pwm.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/st,stm32-pwm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Timers PWM bindings
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+properties:
+  pwn:
+    type: object
+
+    description:
+      must be a sub-node of an STM32 Timer device tree node
+
+    properties:
+      compatible:
+        const: st,stm32-pwm
+
+      "#pwm-cells":
+        const: 3
+      
+      st,breakinput:
+        description: |
+          One or two <index level filter> to describe break input configurations.
+          "index" indicates on which break input (0 or 1) the configuration should be applied.
+          "level" gives the active level (0=low or 1=high) of the input signal for this configuration.
+          "filter" gives the filtering value (up to 15) to be applied.
+   
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+          - minItems: 3
+          - maxItems: 3
+
+    required:
+      - "#pwm-cells"
+      - compatible
+
+examples:
+  - |
+    pwm {
+      compatible = "st,stm32-pwm";
+      #pwm-cells = <3>;
+      st,breakinput = <0 1 5>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
