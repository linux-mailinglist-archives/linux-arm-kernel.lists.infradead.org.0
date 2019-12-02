Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DFC10EC0C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 16:04:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1fuWSkKhp0ROThPofemyvrcy/nbsMe/l5ieRahAomwI=; b=iC6QM0dKyQxOVu
	NtEcPOayGJmsyZN7ncEtVMOv2SVGEuv24w87rZns/4smWw1mCKZ97u1sbe4TeRu51zMNh5oWVH8Mn
	6aqAv24Ntg+/PEZlePqk8C/S8uLRg+iu1QgyumwMDxskZENm22FzgVGp/ZHOt5CI581hRexhkfFMN
	xc0IacTHcO51HKAncMqdJ6kc8VyQ6Fqoxi1+FA2rwB8xLYfXi5UCfKfQbBWNNjdgR5MhrhJ0SbUPe
	ndyxUBvPT8epWWocmLfJ/Zd22NgLy6fvZnPUWoK7uLOay9pV9iyq8x6o//YJ/RGaIHfUl/W0n+zgn
	90tPJlbi3JlVMwZRNvWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibnFH-0006VO-NQ; Mon, 02 Dec 2019 15:04:15 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibnF7-0006Uq-Dh
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 15:04:07 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB2Eqcve006818; Mon, 2 Dec 2019 16:03:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=TVle+DE3dnCA7IhmRgC1AN/Md8I3hWUb219+dQQGb4c=;
 b=KhbYeHhwb4lDOLTJQC8Ipqj5iCfMPlGEmXqeEMsxdSyx3+4yx0Sl6hOlixYI+qzy5aaz
 KY8BRCStBKfkRKl93rVv0R3nJf8cc9S+GVZvJEGt87WL5bwCxflG1BOvaN7XnpdBL19s
 SUwUjGNuQX7yRXwno+oGOyNP/NF9+7X3Q1gbzoQzalRv8ZMLtcPrtevWtpiBSZlQE8cp
 uZ1ZXSJincuEzfUQw7LwA6mvE3WQAQv1pXyH4fhqZfFCKmjLn75k3w/BnxW0uBgndgy5
 MUPg+FHzJjKKyfuZ6ZdL65WMDwRsxDbTXP44M07687NOA4moswH0M5svfka4oYuXBJPU kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkee9tk0a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 02 Dec 2019 16:03:57 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DB08C10002A;
 Mon,  2 Dec 2019 16:03:56 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag4node2.st.com [10.75.127.11])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BDD662D3783;
 Mon,  2 Dec 2019 16:03:56 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG4NODE2.st.com (10.75.127.11)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 2 Dec 2019 16:03:56 +0100
From: <gabriel.fernandez@st.com>
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] dt-bindings: rcc: Convert stm32mp1 rcc bindings to json-schema
Date: Mon, 2 Dec 2019 16:03:43 +0100
Message-ID: <20191202150343.27854-1-gabriel.fernandez@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG4NODE2.st.com
 (10.75.127.11)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-02_02:2019-11-29,2019-12-02 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_070405_747749_5016E08E 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Gabriel Fernandez <gabriel.fernandez@st.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Gabriel Fernandez <gabriel.fernandez@st.com>

Convert the STM32MP1 RCC binding to DT schema format using json-schema.

Signed-off-by: Gabriel Fernandez <gabriel.fernandez@st.com>
---
 .../bindings/clock/st,stm32mp1-rcc.txt        | 60 --------------
 .../bindings/clock/st,stm32mp1-rcc.yaml       | 79 +++++++++++++++++++
 2 files changed, 79 insertions(+), 60 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt
 create mode 100644 Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt
deleted file mode 100644
index fb9495ea582c..000000000000
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt
+++ /dev/null
@@ -1,60 +0,0 @@
-STMicroelectronics STM32 Peripheral Reset Clock Controller
-==========================================================
-
-The RCC IP is both a reset and a clock controller.
-
-RCC makes also power management (resume/supend and wakeup interrupt).
-
-Please also refer to reset.txt for common reset controller binding usage.
-
-Please also refer to clock-bindings.txt for common clock controller
-binding usage.
-
-
-Required properties:
-- compatible: "st,stm32mp1-rcc", "syscon"
-- reg: should be register base and length as documented in the datasheet
-- #clock-cells: 1, device nodes should specify the clock in their
-  "clocks" property, containing a phandle to the clock device node,
-  an index specifying the clock to use.
-- #reset-cells: Shall be 1
-- interrupts: Should contain a general interrupt line and a interrupt line
-  to the wake-up of processor (CSTOP).
-
-Example:
-	rcc: rcc@50000000 {
-		compatible = "st,stm32mp1-rcc", "syscon";
-		reg = <0x50000000 0x1000>;
-		#clock-cells = <1>;
-		#reset-cells = <1>;
-		interrupts = <GIC_SPI 5 IRQ_TYPE_NONE>,
-			     <GIC_SPI 145 IRQ_TYPE_NONE>;
-	};
-
-Specifying clocks
-=================
-
-All available clocks are defined as preprocessor macros in
-dt-bindings/clock/stm32mp1-clks.h header and can be used in device
-tree sources.
-
-Specifying softreset control of devices
-=======================================
-
-Device nodes should specify the reset channel required in their "resets"
-property, containing a phandle to the reset device node and an index specifying
-which channel to use.
-The index is the bit number within the RCC registers bank, starting from RCC
-base address.
-It is calculated as: index = register_offset / 4 * 32 + bit_offset.
-Where bit_offset is the bit offset within the register.
-
-For example on STM32MP1, for LTDC reset:
- ltdc = APB4_RSTSETR_offset / 4 * 32 + LTDC_bit_offset
-      = 0x180 / 4 * 32 + 0 = 3072
-
-The list of valid indices for STM32MP1 is available in:
-include/dt-bindings/reset-controller/stm32mp1-resets.h
-
-This file implements defines like:
-#define LTDC_R	3072
diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
new file mode 100644
index 000000000000..b8f91e444d2f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/st,stm32mp1-rcc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Reset Clock Controller Binding
+
+maintainers:
+  - Gabriel Fernandez <gabriel.fernandez@st.com>
+
+description: |
+  The RCC IP is both a reset and a clock controller.
+  RCC makes also power management (resume/supend and wakeup interrupt).
+  Please also refer to reset.txt for common reset controller binding usage.
+
+  This binding uses common clock bindings
+  Documentation/devicetree/bindings/clock/clock-bindings.txt
+
+  Specifying clocks
+  =================
+
+  All available clocks are defined as preprocessor macros in
+  dt-bindings/clock/stm32mp1-clks.h header and can be used in device
+  tree sources.
+
+  Specifying softreset control of devices
+  =======================================
+
+  Device nodes should specify the reset channel required in their "resets"
+  property, containing a phandle to the reset device node and an index specifying
+  which channel to use.
+  The index is the bit number within the RCC registers bank, starting from RCC
+  base address.
+  It is calculated as: index = register_offset / 4 * 32 + bit_offset.
+  Where bit_offset is the bit offset within the register.
+
+  For example on STM32MP1, for LTDC reset:
+     ltdc = APB4_RSTSETR_offset / 4 * 32 + LTDC_bit_offset
+          = 0x180 / 4 * 32 + 0 = 3072
+
+  The list of valid indices for STM32MP1 is available in:
+  include/dt-bindings/reset-controller/stm32mp1-resets.h
+
+  This file implements defines like:
+  #define LTDC_R	3072
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    items:
+      - const: st,stm32mp1-rcc
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    rcc: rcc@50000000 {
+        compatible = "st,stm32mp1-rcc", "syscon";
+        reg = <0x50000000 0x1000>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
