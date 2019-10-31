Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE24EB059
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 13:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3+0NBVX/hpRtqyNzhsljHI3w5NyCXMaEUUjcqkmJ1I=; b=CUeviwvMnJNFq6
	wKDrSkwdk/GWapm8z1YlB0sXbPuA9jTQNJK4BqiV3OIGeHsv8t2AVS6ny7F/QlBF3lV0XzkV298RY
	enfwnFMPaGX2uScpwg9c5f3tBwTRfR5/kOc6NmAzjJZ8OAgO9VETZ3JI5oiYDbVrWKqFIH+Lqr3N1
	NLC3yrWIsa9qBhiCuX7E1AOYgXF6PcxCz+UuRezq3llVhrE4GXkrtmsBoWS7HQ1o1E1VLWIG4nwa9
	X05I+XfIXGz22RDctJoDidpucPZTzC4kP+0uK6jph4jJjr8Aq95oGxC7otoFSTS5aDJTyMNX22yl7
	6784vtWQ2PYWRY/yZ3Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ9cE-0007Wm-Fx; Thu, 31 Oct 2019 12:31:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ9bP-0006wP-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 12:31:01 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9VCQsTm029332; Thu, 31 Oct 2019 13:30:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=0Hh4of25kloH1WraPyDwx8oHjxU7GW8p1ddlRNtYxmg=;
 b=AVP1lXul65MYbAjaHrK0INCHPVyaXsHBJAWuaj3QpOUQqLedaPFm/97wWAI/FKujS98t
 Q1lOVFYlAC2OWFTEt5X/1Z+nNocqPIlD+g1Uw6/p/2yZxTik8GkFXWe2k8O2Vm3g0j5O
 KihoUkBFSeQCQlSYY/3BPzPPDGKgBbCknkRglCilPyVdO9u2+fCL6GNZYWoZPBhySzro
 yBVhi3zeWE7JEd7dsJ5sKDLhD4Q0TWu5A+ITP4btONKfVexLcjfgZAfd5vXXPq1ZGCNk
 tc/ecyZjERoLK+FGAUCAWq4TUZSOQl834+2xqor2/YpSVE5sN/NBKZxSKKP7dTOk8cZM AA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vxwhussf8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 31 Oct 2019 13:30:53 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BCD07100038;
 Thu, 31 Oct 2019 13:30:52 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id AB6322B7837;
 Thu, 31 Oct 2019 13:30:52 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct
 2019 13:30:52 +0100
Received: from localhost (10.201.20.122) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 31 Oct 2019 13:30:52
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>,
 <fabrice.gasnier@st.com>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>, <lee.jones@linaro.org>,
 <thierry.reding@gmail.com>, <u.kleine-koenig@pengutronix.de>,
 <benjamin.gaignard@st.com>
Subject: [PATCH 2/4] dt-bindings: iio: timer: Convert stm32 IIO trigger
 bindings to json-schema
Date: Thu, 31 Oct 2019 13:30:38 +0100
Message-ID: <20191031123040.26316-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191031123040.26316-1-benjamin.gaignard@st.com>
References: <20191031123040.26316-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-31_05:2019-10-30,2019-10-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_053100_217046_B740F037 
X-CRM114-Status: GOOD (  15.31  )
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

Convert the STM32 IIO trigger binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../bindings/iio/timer/st,stm32-timer-trigger.yaml | 44 ++++++++++++++++++++++
 .../bindings/iio/timer/stm32-timer-trigger.txt     | 25 ------------
 2 files changed, 44 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
 delete mode 100644 Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt

diff --git a/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml b/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
new file mode 100644
index 000000000000..1c8c8b55e8cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/timer/st,stm32-timer-trigger.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/timer/st,stm32-timer-trigger.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Timers IIO timer bindings
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+properties:
+  $nodemane:
+    pattern: "^timer@[0-9]+$"
+    type: object
+
+    description:
+      must be a sub-node of an STM32 Timer device tree node
+
+    properties:
+      compatible:
+        oneOf:
+          - const: st,stm32-timer-trigger
+          - const: st,stm32h7-timer-trigger
+            
+      reg: true
+
+    required:
+      - compatible
+      - reg
+
+examples:
+  - |
+    timers2: timer@40000000 {
+      #address-cells = <1>;
+      #size-cells = <0>;
+      timer@0 {
+        compatible = "st,stm32-timer-trigger";
+        reg = <0>;
+      };
+    };
+    
+...
diff --git a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt b/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
deleted file mode 100644
index b8e8c769d434..000000000000
--- a/Documentation/devicetree/bindings/iio/timer/stm32-timer-trigger.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-STMicroelectronics STM32 Timers IIO timer bindings
-
-Must be a sub-node of an STM32 Timers device tree node.
-See ../mfd/stm32-timers.txt for details about the parent node.
-
-Required parameters:
-- compatible:	Must be one of:
-		"st,stm32-timer-trigger"
-		"st,stm32h7-timer-trigger"
-- reg:		Identify trigger hardware block.
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
-		timer@0 {
-			compatible = "st,stm32-timer-trigger";
-			reg = <0>;
-		};
-	};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
