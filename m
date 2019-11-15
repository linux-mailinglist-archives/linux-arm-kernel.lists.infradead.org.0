Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFDDFE0B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 15:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BIpU8OVx1o7rY2z5x06kd+zmPnInck5/3P/hjmEgkuY=; b=r+yjjzPGfx8+in
	NVzfn3r8NxOFOJtqHBScuKfCNERQMIrCIQg74gXMmdjCAteE3Wc5YXf99wQcV4ViilOKDOfdXo7Xl
	pMOKr+WRMMHshdlaBSA62o+X2oZlxqWF1FdTFRHMI8UWaShc35qIW6W84CW37ZsmYbsDmuLmOfCow
	xckvBvJAU1dh2AO3RMsbbaa4o28Bocn7G8Lzxlb9HIJcVgqJmT6vbkxQItlpEgRjL/wBe1s4JgxSW
	K/bYw1iBpUXMe33pwY/Tz8unRwbmrqr0ZnJFGRMBTdrsRZAFQZBSlg5Xt9IUXVe8qCGvQpaEpF0YI
	sjrNr60L0LYN7QHhY8VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVd4i-0004Rp-Vo; Fri, 15 Nov 2019 14:59:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVd4a-0004Q7-KF
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 14:59:46 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFEvJEH014335; Fri, 15 Nov 2019 15:59:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=iNjEFxhb9aKBGFWEXfbIOQoBZPywYOAPMDV4+3r80sA=;
 b=YYJIzWy2U6ZcfnWC3oJL+b48NKHNNCDDA/Vl0Rv1lWdlsghNk9mCmhg1xbjyUyaqH2cl
 4XWwX8i6LMpnmVLFFUslV4Vcu4onfhyoatH+l8Ms8azZ1PbuMcpoPqGuXNIn9bqnqmZA
 iylPnWiN/tZx0EUCYX4N5cYGNd018snypeiJeegJcdaSuU0zJJypoZ+E9+zBjOXNIrS8
 7tu8MA8hinTAEW4XJLMM+YlJ+3uduVYO7BOrG9AiJv63iGk5ZjwdbY3C82Cajrvpr4+2
 BGSfwBLa75gS72TJH23e9rRB4ujrQSFbfblbKvcaJSvfbyEznKgC5tpJ6PuAdRnKQ182 Gg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psk4sj7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 15:59:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4282D10002A;
 Fri, 15 Nov 2019 15:59:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2BF2D2C01FC;
 Fri, 15 Nov 2019 15:59:32 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 15 Nov 2019 15:59:31
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
Subject: [PATCH] dt-bindings: mailbox: convert stm32-ipcc to json-schema
Date: Fri, 15 Nov 2019 15:59:15 +0100
Message-ID: <20191115145915.6887-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_04:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_065945_033355_3BA188DC 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 IPCC bindings to DT schema format using
json-schema

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 .../bindings/mailbox/st,stm32-ipcc.yaml       | 91 +++++++++++++++++++
 .../bindings/mailbox/stm32-ipcc.txt           | 47 ----------
 2 files changed, 91 insertions(+), 47 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
 delete mode 100644 Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt

diff --git a/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
new file mode 100644
index 000000000000..6843d51d96da
--- /dev/null
+++ b/Documentation/devicetree/bindings/mailbox/st,stm32-ipcc.yaml
@@ -0,0 +1,91 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/mailbox/st,stm32-ipcc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STM32 GPIO and Pin Mux/Config controller
+
+description: |
+  The IPCC block provides a non blocking signaling mechanism to post and
+  retrieve messages in an atomic way between two processors.
+  It provides the signaling for N bidirectionnal channels. The number of
+  channels (N) can be read from a dedicated register.
+
+maintainers:
+  - Fabien Dessenne <fabien.dessenne@st.com>
+  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
+
+properties:
+  compatible:
+    const: st,stm32mp1-ipcc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+     maxItems: 1
+
+  interrupts:
+    items:
+      - description: rx channel occupied
+      - description: tx channel free
+      - description: wakeup source
+    minItems: 2
+    maxItems: 3
+
+  interrupt-names:
+    items:
+      enums: [ rx, tx, wakeup ]
+    minItems: 2
+    maxItems: 3
+
+  wakeup-source:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Enables wake up of host system on wakeup IRQ assertion.
+
+  "#mbox-cells":
+    const: 1
+
+  st,proc-id:
+    description: Processor id using the mailbox (0 or 1)
+    allOf:
+      - minimum: 0
+      - maximum: 1
+      - default: 0
+
+required:
+  - compatible
+  - reg
+  - st,proc-id
+  - clocks
+  - interrupt-names
+  - "#mbox-cells"
+
+oneOf:
+  - required:
+      - interrupts
+  - required:
+      - interrupts-extended
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    ipcc: mailbox@4c001000 {
+      compatible = "st,stm32mp1-ipcc";
+      #mbox-cells = <1>;
+      reg = <0x4c001000 0x400>;
+      st,proc-id = <0>;
+      interrupts-extended = <&intc GIC_SPI 100 IRQ_TYPE_NONE>,
+      		      <&intc GIC_SPI 101 IRQ_TYPE_NONE>,
+      		      <&aiec 62 1>;
+      interrupt-names = "rx", "tx", "wakeup";
+      clocks = <&rcc_clk IPCC>;
+      wakeup-source;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt b/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
deleted file mode 100644
index 1d2b7fee7b85..000000000000
--- a/Documentation/devicetree/bindings/mailbox/stm32-ipcc.txt
+++ /dev/null
@@ -1,47 +0,0 @@
-* STMicroelectronics STM32 IPCC (Inter-Processor Communication Controller)
-
-The IPCC block provides a non blocking signaling mechanism to post and
-retrieve messages in an atomic way between two processors.
-It provides the signaling for N bidirectionnal channels. The number of channels
-(N) can be read from a dedicated register.
-
-Required properties:
-- compatible:   Must be "st,stm32mp1-ipcc"
-- reg:          Register address range (base address and length)
-- st,proc-id:   Processor id using the mailbox (0 or 1)
-- clocks:       Input clock
-- interrupt-names: List of names for the interrupts described by the interrupt
-                   property. Must contain the following entries:
-                   - "rx"
-                   - "tx"
-                   - "wakeup"
-- interrupts:   Interrupt specifiers for "rx channel occupied", "tx channel
-                free" and "system wakeup".
-- #mbox-cells:  Number of cells required for the mailbox specifier. Must be 1.
-                The data contained in the mbox specifier of the "mboxes"
-                property in the client node is the mailbox channel index.
-
-Optional properties:
-- wakeup-source: Flag to indicate whether this device can wake up the system
-
-
-
-Example:
-	ipcc: mailbox@4c001000 {
-		compatible = "st,stm32mp1-ipcc";
-		#mbox-cells = <1>;
-		reg = <0x4c001000 0x400>;
-		st,proc-id = <0>;
-		interrupts-extended = <&intc GIC_SPI 100 IRQ_TYPE_NONE>,
-				      <&intc GIC_SPI 101 IRQ_TYPE_NONE>,
-				      <&aiec 62 1>;
-		interrupt-names = "rx", "tx", "wakeup";
-		clocks = <&rcc_clk IPCC>;
-		wakeup-source;
-	}
-
-Client:
-	mbox_test {
-		...
-		mboxes = <&ipcc 0>, <&ipcc 1>;
-	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
