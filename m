Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA76D40BC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3T6h2Drt8paXQ4WzWIkr5M7yXyqxfpQ6T6YlSWi270=; b=AyKArsZI6sOasj
	rgt7HvQ6FAAXBAZVdEOq2exgCaSC+JGdRzj334FjxM3Ae8CrVRokN5McjBJztuisbaQcj4JO94Ybb
	Q1RWLC6J/3w9RQo51PcGRSMa2iyUeE98cpkJq9ytvNRVSQzf1dZQ3WmeYIaHXtGgkG+Osepp4K+OI
	ar+8wzpKBd1awyO+cHW/JXZ1/c+bBP+SlMh5hvXAu+XVIrc2WCRm7l9QbNbx3JzjsOS9JUXYG2lgD
	5WltLGfxEhmNdaChAH9dkI4m3oIJCUW50ACZv0gIjjqKnR/m5IbHogmIRfRDDmaHpqK2WYq7FXBKl
	5VAHv7bESUE5OwOgIRJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIujB-0003yJ-7g; Fri, 11 Oct 2019 13:13:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuit-0003nr-1l
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:12:49 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BD6kEj021870; Fri, 11 Oct 2019 15:12:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=yHfi3HY0Dx0zI0TYh25CPOFtlp/IAVFsBZ0iGOQeTBA=;
 b=dPoarHUsPogZegM+gcEP3rgmifnOLuQNkLwQFyF0GhXD1EK/FUSr/9PNlxBp5WKXXC+l
 l+xu53QxA57RQ6JlFQo64U2K4stDLSy19zQuBB+ucDIj8/2fe/aoi0hWufpY/Rlh28Vs
 wzTbN8ANVUvwhWncH5yfIhkbuxIvhjk5gRiDFn5O1vuPm+kMRksA5bRcEAniz2MonyL/
 eZuglXWoKkMwTXLX4AL+3QisXR9UbciTQwKHkZh0lg2qESFRs2NMd6o5naehCtIdsK94
 CEkXQpfdFiVGufhPU5e8onN9kOFZVInpC9ZnkZCwO+BnJcBlB6eNDoHJPbBerwAF5+Sv pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxw9xuf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 15:12:39 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 83D2610002A;
 Fri, 11 Oct 2019 15:12:39 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 75D112BEC5F;
 Fri, 11 Oct 2019 15:12:39 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:12:39 +0200
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct 2019 15:12:38
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <alexandre.torgue@st.com>, <hverkuil-cisco@xs4all.nl>,
 <hugues.fruchet@st.com>
Subject: [PATCH v2] dt-bindings: media: Convert stm32 dcmi bindings to
 json-schema
Date: Fri, 11 Oct 2019 15:12:34 +0200
Message-ID: <20191011131234.24290-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191011131234.24290-1-benjamin.gaignard@st.com>
References: <20191011131234.24290-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061247_410866_8E082DF1 
X-CRM114-Status: GOOD (  19.20  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 dcmi binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
changes in v2:
- use BSD-2-Clause license
- remove useless dma descriptions
- fix clock property
- add additionalProperties: false
- fix reset indentation

 .../devicetree/bindings/media/st,stm32-dcmi.txt    | 45 -----------
 .../devicetree/bindings/media/st,stm32-dcmi.yaml   | 86 ++++++++++++++++++++++
 2 files changed, 86 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
 create mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml

diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt b/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
deleted file mode 100644
index 3122ded82eb4..000000000000
--- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-STMicroelectronics STM32 Digital Camera Memory Interface (DCMI)
-
-Required properties:
-- compatible: "st,stm32-dcmi"
-- reg: physical base address and length of the registers set for the device
-- interrupts: should contain IRQ line for the DCMI
-- resets: reference to a reset controller,
-          see Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
-- clocks: list of clock specifiers, corresponding to entries in
-          the clock-names property
-- clock-names: must contain "mclk", which is the DCMI peripherial clock
-- pinctrl: the pincontrol settings to configure muxing properly
-           for pins that connect to DCMI device.
-           See Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml.
-- dmas: phandle to DMA controller node,
-        see Documentation/devicetree/bindings/dma/stm32-dma.txt
-- dma-names: must contain "tx", which is the transmit channel from DCMI to DMA
-
-DCMI supports a single port node with parallel bus. It should contain one
-'port' child node with child 'endpoint' node. Please refer to the bindings
-defined in Documentation/devicetree/bindings/media/video-interfaces.txt.
-
-Example:
-
-	dcmi: dcmi@50050000 {
-		compatible = "st,stm32-dcmi";
-		reg = <0x50050000 0x400>;
-		interrupts = <78>;
-		resets = <&rcc STM32F4_AHB2_RESET(DCMI)>;
-		clocks = <&rcc 0 STM32F4_AHB2_CLOCK(DCMI)>;
-		clock-names = "mclk";
-		pinctrl-names = "default";
-		pinctrl-0 = <&dcmi_pins>;
-		dmas = <&dma2 1 1 0x414 0x3>;
-		dma-names = "tx";
-		port {
-			dcmi_0: endpoint {
-				remote-endpoint = <...>;
-				bus-width = <8>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				pclk-sample = <1>;
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
new file mode 100644
index 000000000000..272827342ee2
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
@@ -0,0 +1,86 @@
+# SPDX-License-Identifier: BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/st,stm32-dcmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Digital Camera Memory Interface (DCMI) binding
+
+maintainers:
+  - Hugues Fruchet <hugues.fruchet@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-dcmi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: mclk
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: tx
+
+  resets:
+    maxItems: 1
+
+  port:
+    type: object
+    description:
+      DCMI supports a single port node with parallel bus. It should contain
+      one 'port' child node with child 'endpoint' node. Please refer to the
+      bindings defined in
+      Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - dmas
+  - dma-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    dcmi: dcmi@4c006000 {
+        compatible = "st,stm32-dcmi";
+        reg = <0x4c006000 0x400>;
+        interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+        resets = <&rcc CAMITF_R>;
+        clocks = <&rcc DCMI>;
+        clock-names = "mclk";
+        dmas = <&dmamux1 75 0x400 0x0d>;
+        dma-names = "tx";
+
+        port {
+             dcmi_0: endpoint {
+                   remote-endpoint = <&ov5640_0>;
+                   bus-width = <8>;
+                   hsync-active = <0>;
+                   vsync-active = <0>;
+                   pclk-sample = <1>;
+             };
+        };
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
