Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCD1F4C20
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3ARM4SP/LQ6Oe4GQlY3C7FJW00Z6HOzGLOKDwpu/ak=; b=FsfkhIVYgj31sh
	fouS7xnDMfyVAhNQsOYJP78R2/vsPLMUSQb5E5e0LNjvtdVv6lr5AhMwSzW8Gj9bua/+6Dfg5NK0S
	ehpDSXT8gxzjc3gZDF4pMM9FyDQ9+/hqcG8xnNmaVAr0xZ7b2lwjpmiq8JgsKYLwLUc1C4/LPkoCm
	O8fO6Jhh/2fRNg9fKiu0YJaVHaO0Ch6puokJhNF0Uh3ZBjwmiCncMpSmGq0E4sXbN8B01MJfPfPIS
	zcPhKnehxAiSj6tfeqyQGtI4bVoIr/jT5ufcX32oQk8VeOKIb+jxHt7ZshN4MdFzM6c7Dyis7jH0x
	iqNMjPg54livCTRudMKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3lV-0000AR-IK; Fri, 08 Nov 2019 12:53:25 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3lK-00009G-FR
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:53:16 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8Cq5Kk024045; Fri, 8 Nov 2019 13:52:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=U42CzDCTjvGgKHPDdujEizpP/MuGbL64x7aocKvP598=;
 b=mwDBKYuDjJj4/kG3Ia92rMuR1ojDDvT0Q/HagfYo0vu92FbgZpMc4b+0j9PnLlM4Dj2m
 ofeR0UXVkCROk2BB9ZcmcEqV2T68xXwo07mGPubntHwsAIsThWESPvKlVa8TrBmyF/Zr
 EYCLZHITplwcDmEzXNv1TJRMPezkHmJeDWkRCehV90C4we5ZAUhRWGX2ikyXgbvpsr9f
 blV2b7kOMbRfSOhkEDbHV4w0doWBPdyUmmVTaHUmLHXOtQMWfsOmDfUlkBtMQHx5SZgn
 /t4XjicIsnp7RXnz8Dz8AuaVrOt9RmBBIUXlXXL1ae7nVm2XUh/UV8aEcMmmuNSYTjUU qQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w41vmuntd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 13:52:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 50D1510002A;
 Fri,  8 Nov 2019 13:52:50 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 442D42B6A0D;
 Fri,  8 Nov 2019 13:52:50 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 13:52:50 +0100
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019 13:52:49
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>, <lionel.debieve@st.com>
Subject: [PATCH] dt-bindings: crypto: Convert stm32 HASH bindings to
 json-schema
Date: Fri, 8 Nov 2019 13:52:44 +0100
Message-ID: <20191108125244.23001-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191108125244.23001-1-benjamin.gaignard@st.com>
References: <20191108125244.23001-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_03:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_045314_876569_81EB4DC1 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 HASH binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/crypto/st,stm32-hash.txt   | 30 ----------
 .../devicetree/bindings/crypto/st,stm32-hash.yaml  | 64 ++++++++++++++++++++++
 2 files changed, 64 insertions(+), 30 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
 create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml

diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt b/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
deleted file mode 100644
index 04fc246f02f7..000000000000
--- a/Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
+++ /dev/null
@@ -1,30 +0,0 @@
-* STMicroelectronics STM32 HASH
-
-Required properties:
-- compatible: Should contain entries for this and backward compatible
-  HASH versions:
-  - "st,stm32f456-hash" for stm32 F456.
-  - "st,stm32f756-hash" for stm32 F756.
-- reg: The address and length of the peripheral registers space
-- interrupts: the interrupt specifier for the HASH
-- clocks: The input clock of the HASH instance
-
-Optional properties:
-- resets: The input reset of the HASH instance
-- dmas: DMA specifiers for the HASH. See the DMA client binding,
-	 Documentation/devicetree/bindings/dma/dma.txt
-- dma-names: DMA request name. Should be "in" if a dma is present.
-- dma-maxburst: Set number of maximum dma burst supported
-
-Example:
-
-hash1: hash@50060400 {
-	compatible = "st,stm32f756-hash";
-	reg = <0x50060400 0x400>;
-	interrupts = <80>;
-	clocks = <&rcc 0 STM32F7_AHB2_CLOCK(HASH)>;
-	resets = <&rcc STM32F7_AHB2_RESET(HASH)>;
-	dmas = <&dma2 7 2 0x400 0x0>;
-	dma-names = "in";
-	dma-maxburst = <0>;
-};
diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
new file mode 100644
index 000000000000..3c09c9899021
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/st,stm32-hash.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 HASH bindings
+
+maintainers:
+  - Lionel Debieve <lionel.debieve@st.com>
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f456-hash
+      - st,stm32f756-hash
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  dmas:
+    maxItems: 1
+
+  dma-names:
+    items:
+      - const: in
+
+  dma-maxburst:
+    description: Set number of maximum dma burst supported
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    #include <dt-bindings/reset/stm32mp1-resets.h>
+    hash@54002000 {
+      compatible = "st,stm32f756-hash";
+      reg = <0x54002000 0x400>;
+      interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&rcc HASH1>;
+      resets = <&rcc HASH1_R>;
+      dmas = <&mdma1 31 0x10 0x1000A02 0x0 0x0>;
+      dma-names = "in";
+      dma-maxburst = <2>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
