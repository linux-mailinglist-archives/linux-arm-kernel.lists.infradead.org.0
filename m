Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F01102692
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:24:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ngvs5npveH4pfdFjPVq684paoWgtFrx5RJ+2YDIlDdo=; b=WLscuJDGGsReLR
	DqAAQSjMT9epcgYycl1RIr0bAApvMv7nKLzLwG3ueJuRneW0nanM9JRvFhEHqyL1gDjEICpARP1+2
	yKqHISbLuhLbEDJ8ZJYRh+g5E4uF86pTIJG7nOKuRFiTXbaeP/QTmEvKQY68IbwtIt04b/7H78MYQ
	QgHsN99D26j/Gb+YSej7NK6KdFLvXYNCwI67Slq5H3FVYfp2GEOYN8xedJ9VGMYrx5fG6h4IY5hFi
	KxtynBJSlEQXkrsRjsvvSA5nac6nRQAyAyyXOEFEsXL1AuZngYoIFLkXaGKpZs/e2toODRBt5jZmD
	0WYpT9fHZvVEGM0+fr2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Qm-0000r5-Bu; Tue, 19 Nov 2019 14:24:36 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4Qa-0000qJ-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:24:27 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAJEMHM6007055; Tue, 19 Nov 2019 15:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=zvuRrIFNgXZ/WwIdpooqCzijAKo8EF5lWj9hvIEe5nY=;
 b=Pg1Joul8Rk0Svt1ltvVg7+Iyujtb6ZhXXvzuMcOGAkCrOTIZ6iRcCFKt++wC+EIreWyX
 HsJh7AxPtUjIvh0zNMjni1aBUKyef5aX4Pmo/dme7jByi/2RBMHtFCam5VFwzz60XOPw
 197J6wIv80/QU+DT3XYRvJzmiYL/q0DF6jetn+INXQbhSnOJwo/L75ZxlJRCQSubFvqx
 yycuX66jGf98dFJCFm8IARwr3sewXMsgNLpceNqGZhDCa7U2pkYZRCK6YSRIA2s1OZLl
 hDVhfYhoxdlIXBY7qd6N7Adjorgv8rRUOAiKYK00B9gGDqI4Unk8DNKOAFiqFruX4NeT 1A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9uv83nk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 19 Nov 2019 15:24:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9B78F10002A;
 Tue, 19 Nov 2019 15:24:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 89BA42BE250;
 Tue, 19 Nov 2019 15:24:12 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 19 Nov 2019 15:24:12
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jassi Brar
 <jassisinghbrar@gmail.com>
Subject: [PATCH] dt-bindings: remoteproc: convert stm32-rproc to json-schema
Date: Tue, 19 Nov 2019 15:23:22 +0100
Message-ID: <20191119142322.23292-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-19_04:2019-11-15,2019-11-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_062425_177849_ECA52D1A 
X-CRM114-Status: GOOD (  21.67  )
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
Cc: devicetree@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 remoteproc bindings to DT schema format using
json-schema

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 .../bindings/remoteproc/st,stm32-rproc.yaml   | 128 ++++++++++++++++++
 .../bindings/remoteproc/stm32-rproc.txt       |  63 ---------
 2 files changed, 128 insertions(+), 63 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
 delete mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt

diff --git a/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
new file mode 100644
index 000000000000..f7a2c18a2789
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/st,stm32-rproc.yaml
@@ -0,0 +1,128 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/remoteproc/st,stm32-rproc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 remote processor controller bindings
+
+description:
+  This document defines the binding for the remoteproc component that loads and
+  boots firmwares on the ST32MP family chipset.
+
+maintainers:
+  - Fabien Dessenne <fabien.dessenne@st.com>
+  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
+
+properties:
+  compatible:
+    const: st,stm32mp1-m4
+
+  reg:
+    description:
+      Address ranges of the RETRAM and MCU SRAM memories used by the remote
+      processor.
+    maxItems: 3
+
+  resets:
+     maxItems: 1
+
+  st,syscfg-holdboot:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: remote processor reset hold boot
+      - Phandle of syscon block.
+      - The offset of the hold boot setting register.
+      - The field mask of the hold boot.
+    maxItems: 1
+
+  st,syscfg-tz:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description:
+      Reference to the system configuration which holds the RCC trust zone mode
+      - Phandle of syscon block.
+      - The offset of the RCC trust zone mode register.
+      - The field mask of the RCC trust zone mode.
+    maxItems: 1
+
+  interrupts:
+    description: Should contain the WWDG1 watchdog reset interrupt
+    maxItems: 1
+
+  mboxes:
+    description:
+      This property is required only if the rpmsg/virtio functionality is used.
+    items:
+      - description: |
+          A channel (a) used to communicate through virtqueues with the
+          remote proc.
+          Bi-directional channel:
+            - from local to remote = send message
+            - from remote to local = send message ack
+      - description: |
+          A channel (b) working the opposite direction of channel (a)
+      - description: |
+          A channel (c) used by the local proc to notify the remote proc that it
+          is about to be shut down.
+          Unidirectional channel:
+            - from local to remote, where ACK from the remote means that it is
+              ready for shutdown
+    maxItems: 3
+
+  mbox-names:
+    items:
+      enums: [ rx, tx, wakeup ]
+    minItems: 1
+    maxItems: 3
+
+  memory-region:
+    description:
+      List of phandles to the reserved memory regions associated with the
+      remoteproc device. This is variable and describes the memories shared with
+      the remote processor (e.g. remoteproc firmware and carveouts, rpmsg
+      vrings, ...).
+      (see ../reserved-memory/reserved-memory.txt)
+
+  st,syscfg-pdds:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: |
+      Reference to the system configuration which holds the remote
+        1st cell: phandle to syscon block
+        2nd cell: register offset containing the deep sleep setting
+        3rd cell: register bitmask for the deep sleep bit
+    maxItems: 1
+
+  st,auto-boot:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      If defined, when remoteproc is probed, it loads the default firmware and
+      starts the remote processor.
+
+required:
+  - compatible
+  - reg
+  - resets
+  - st,syscfg-holdboot
+  - st,syscfg-tz
+
+allOf:
+  - $ref: /schemas/mbox/mbox-consumer.yaml#
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    m4_rproc: m4@10000000 {
+      compatible = "st,stm32mp1-m4";
+      reg = <0x10000000 0x40000>,
+            <0x30000000 0x40000>,
+            <0x38000000 0x10000>;
+      resets = <&rcc MCU_R>;
+      st,syscfg-holdboot = <&rcc 0x10C 0x1>;
+      st,syscfg-tz = <&rcc 0x000 0x1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
deleted file mode 100644
index 5fa915a4b736..000000000000
--- a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
+++ /dev/null
@@ -1,63 +0,0 @@
-STMicroelectronics STM32 Remoteproc
------------------------------------
-This document defines the binding for the remoteproc component that loads and
-boots firmwares on the ST32MP family chipset.
-
-Required properties:
-- compatible:	Must be "st,stm32mp1-m4"
-- reg:		Address ranges of the RETRAM and MCU SRAM memories used by the
-		remote processor.
-- resets:	Reference to a reset controller asserting the remote processor.
-- st,syscfg-holdboot: Reference to the system configuration which holds the
-		remote processor reset hold boot
-	1st cell: phandle of syscon block
-	2nd cell: register offset containing the hold boot setting
-	3rd cell: register bitmask for the hold boot field
-- st,syscfg-tz: Reference to the system configuration which holds the RCC trust
-		zone mode
-	1st cell: phandle to syscon block
-	2nd cell: register offset containing the RCC trust zone mode setting
-	3rd cell: register bitmask for the RCC trust zone mode bit
-
-Optional properties:
-- interrupts:	Should contain the watchdog interrupt
-- mboxes:	This property is required only if the rpmsg/virtio functionality
-		is used. List of phandle and mailbox channel specifiers:
-		- a channel (a) used to communicate through virtqueues with the
-		  remote proc.
-		  Bi-directional channel:
-		      - from local to remote = send message
-		      - from remote to local = send message ack
-		- a channel (b) working the opposite direction of channel (a)
-		- a channel (c) used by the local proc to notify the remote proc
-		  that it is about to be shut down.
-		  Unidirectional channel:
-		      - from local to remote, where ACK from the remote means
-		        that it is ready for shutdown
-- mbox-names:	This property is required if the mboxes property is used.
-		- must be "vq0" for channel (a)
-		- must be "vq1" for channel (b)
-		- must be "shutdown" for channel (c)
-- memory-region: List of phandles to the reserved memory regions associated with
-		the remoteproc device. This is variable and describes the
-		memories shared with the remote processor (eg: remoteproc
-		firmware and carveouts, rpmsg vrings, ...).
-		(see ../reserved-memory/reserved-memory.txt)
-- st,syscfg-pdds: Reference to the system configuration which holds the remote
-		processor deep sleep setting
-	1st cell: phandle to syscon block
-	2nd cell: register offset containing the deep sleep setting
-	3rd cell: register bitmask for the deep sleep bit
-- st,auto-boot:	If defined, when remoteproc is probed, it loads the default
-		firmware and starts the remote processor.
-
-Example:
-	m4_rproc: m4@10000000 {
-		compatible = "st,stm32mp1-m4";
-		reg = <0x10000000 0x40000>,
-		      <0x30000000 0x40000>,
-		      <0x38000000 0x10000>;
-		resets = <&rcc MCU_R>;
-		st,syscfg-holdboot = <&rcc 0x10C 0x1>;
-		st,syscfg-tz = <&rcc 0x000 0x1>;
-	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
