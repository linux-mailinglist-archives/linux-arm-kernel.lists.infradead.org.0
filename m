Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD38112269D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:24:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cdh6o9rD+q/U/Tre4cIUIdbUeR7IT36x1giqLEG7r2c=; b=M8EdNp8/ZActVH
	6hVfE2aFCpuXCvAvk9lA/UD8cfJhVzpaDur7J6kWz3Pnt1c64I1+HGRsnGD+p2hI6/XyYiOZx5ATK
	N6KlxKGLAUdi69IOvcTnVY0ROAm7sjNQDg3qqS5lKPaxlaYESN9HMssu+vhjjyapWjJS/Vlt0j6mp
	C69xgnJobQursyHD/9T4g0sRP5/NybeqqW+2uVYofYVURoKcKWSq9aa2QIEt/DO4Vo2TNGdtiZ/7A
	QFsz9R212mEh8Yitgo/AabMT1l2EWml41tBA2sPiBvSLII3xrNmJ0Y3qVmOowl/Cz2HW0dk9b1EWS
	9AUGMs94F6SJAueox2FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih89y-0002SU-GI; Tue, 17 Dec 2019 08:24:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih89o-0002Rx-DH
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 08:24:42 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH8O37e026676; Tue, 17 Dec 2019 09:24:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=u4ZnCG3JwwEgOMIhN/AX7q3BNavU/cal6soqQfW8/vk=;
 b=poEflfU7WipianGUh4qcW0Ougu12H/fKNIAbdgx6mzbidUxEywqXwbXGJH1x2f9Js2Eu
 aS3mr7YNZhjqRaYKcWz3zByLF5ZW9T5n5WfwF05rMM00tn76jJSYgNc94YDIBJI9PpfM
 qspKnXNy+mTn0cFlkrHOiCAt4HyOncaz65lNRDDplnjWn1gt0phUJxfB7WvOY47QcFOn
 xhfdPX9LMbghIuloAbAPvqjgzfq4rx46yZWhfOLxsoX+wCa7vk330OoJy7866+QfrIsT
 5BaCvq+DxNxyX1q/nF6fTq51+W2sUwiWVNENg31KC41AJY9dYeXiVvocmUpnvYvbptC4 9g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp36wpx0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 09:24:32 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 79431100034;
 Tue, 17 Dec 2019 09:24:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4B57322085F;
 Tue, 17 Dec 2019 09:24:32 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 17 Dec 2019 09:24:31
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>
Subject: [PATCH v2] dt-bindings: stm32: convert mlahb to json-schema
Date: Tue, 17 Dec 2019 09:24:15 +0100
Message-ID: <20191217082415.14844-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_002440_815067_CF6CAF64 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Convert the ML-AHB bus bindings to DT schema format using json-schema

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
V2: Add "ranges" property as mandatory
---
 .../devicetree/bindings/arm/stm32/mlahb.txt   | 37 ----------
 .../bindings/arm/stm32/st,mlahb.yaml          | 70 +++++++++++++++++++
 2 files changed, 70 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml

diff --git a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
deleted file mode 100644
index 25307aa1eb9b..000000000000
--- a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-ML-AHB interconnect bindings
-
-These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
-a Cortex-M subsystem with dedicated memories.
-The MCU SRAM and RETRAM memory parts can be accessed through different addresses
-(see "RAM aliases" in [1]) using different buses (see [2]) : balancing the
-Cortex-M firmware accesses among those ports allows to tune the system
-performance.
-
-[1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
-[2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
-
-Required properties:
-- compatible: should be "simple-bus"
-- dma-ranges: describes memory addresses translation between the local CPU and
-	   the remote Cortex-M processor. Each memory region, is declared with
-	   3 parameters:
-		 - param 1: device base address (Cortex-M processor address)
-		 - param 2: physical base address (local CPU address)
-		 - param 3: size of the memory region.
-
-The Cortex-M remote processor accessed via the mlahb interconnect is described
-by a child node.
-
-Example:
-mlahb {
-	compatible = "simple-bus";
-	#address-cells = <1>;
-	#size-cells = <1>;
-	dma-ranges = <0x00000000 0x38000000 0x10000>,
-		     <0x10000000 0x10000000 0x60000>,
-		     <0x30000000 0x30000000 0x60000>;
-
-	m4_rproc: m4@10000000 {
-		...
-	};
-};
diff --git a/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
new file mode 100644
index 000000000000..68917bb7c7e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/stm32/st,mlahb.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/stm32/st,mlahb.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 ML-AHB interconnect bindings
+
+maintainers:
+  - Fabien Dessenne <fabien.dessenne@st.com>
+  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
+
+description: |
+  These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
+  a Cortex-M subsystem with dedicated memories. The MCU SRAM and RETRAM memory
+  parts can be accessed through different addresses (see "RAM aliases" in [1])
+  using different buses (see [2]): balancing the Cortex-M firmware accesses
+  among those ports allows to tune the system performance.
+  [1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
+  [2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
+
+allOf:
+ - $ref: /schemas/simple-bus.yaml#
+
+properties:
+  compatible:
+    contains:
+      enum:
+        - st,mlahb
+
+  dma-ranges:
+    description: |
+      Describe memory addresses translation between the local CPU and the
+      remote Cortex-M processor. Each memory region, is declared with
+      3 parameters:
+      - param 1: device base address (Cortex-M processor address)
+      - param 2: physical base address (local CPU address)
+      - param 3: size of the memory region.
+    maxItems: 3
+
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 1
+
+required:
+  - compatible
+  - '#address-cells'
+  - '#size-cells'
+  - dma-ranges
+
+examples:
+  - |
+    mlahb: ahb {
+      compatible = "st,mlahb", "simple-bus";
+      #address-cells = <1>;
+      #size-cells = <1>;
+      reg = <0x10000000 0x40000>;
+      ranges;
+      dma-ranges = <0x00000000 0x38000000 0x10000>,
+                   <0x10000000 0x10000000 0x60000>,
+                   <0x30000000 0x30000000 0x60000>;
+
+      m4_rproc: m4@10000000 {
+       reg = <0x10000000 0x40000>;
+      };
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
