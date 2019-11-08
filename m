Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3006F4C28
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+i8pMQsoJ7pVA2ENrYlGqPTcbFGsbD9ptySgbRU52E=; b=OqqkmzeLt1z7D0
	+kGGFVfiAeCF0ppsgDsFbYCiQ1J9O2hijoVwRY0AXfwErk+UcLfzv2xv53stgLwGMFqtSufLLnfOH
	HTOPrknQuoTSZilq8Iq/ewzVLdLwmnh2PFszyVOTGgeWQv9yVxwcB9Zo+IQuNBRjpK3Sc+5oK3qst
	ybTBdusTqULivUMCAn+XaBxMoY7nayK14Lkkm7gZ7DAT81du8hZeBbAcNiTUl6bZjo1qjj9ckwSQz
	T9uZqc8FuMxyg9FZrH0yDLnBFiQWPpb/phlSmWcfeaPMiA8B7jShiF6QAGkQu+iOAXcgvT9zTNKLP
	mQLcIHafz7Hh6s5SWm8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3ll-0000K7-6Q; Fri, 08 Nov 2019 12:53:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3lL-00009J-7f
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:53:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8CqEI6015196; Fri, 8 Nov 2019 13:52:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=7H2L6p4aMQZbG5XB4uxu8UBuL7eVs48hwy7HAKSmpAI=;
 b=VaPfpgUzleU4vIJLQLhDtt8Ru6nOJFUlWfMyb4whxfGjnJowJF9m5pcIE9wcTmdEgJu3
 VQCrNFlcxjheF5fi1WPMzY9hYErFA8IGHVpVMYT0OYPLIw3bIMFHVm0blhgvhZpWj6Zs
 fQ3io09Zee3s7wMCZub1Zdu8D2qSJekfkH9oOcI50VxPrnXSvZi/q4TNBuIIjmyeRSWW
 tuwZ8b5RvYm9gdxKsOwWHpOxOFiUqqGw5XdF2KEE7m0jHnwbUfwJfYlo9N+2VmoRz4fm
 aOm3cJEbLf92QCps+1peqCCSrTDS71nVWzgTW6Gt0edq0vOb1X9ofQlNxODIluzEegjD 4A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w41ve3m4m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 13:52:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3E89F100039;
 Fri,  8 Nov 2019 13:52:49 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2EB8A2B6A0F;
 Fri,  8 Nov 2019 13:52:49 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 13:52:49 +0100
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019 13:52:48
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>, <lionel.debieve@st.com>
Subject: [PATCH] dt-bindings: crypto: Convert stm32 CRYP bindings to
 json-schema
Date: Fri, 8 Nov 2019 13:52:43 +0100
Message-ID: <20191108125244.23001-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191108125244.23001-1-benjamin.gaignard@st.com>
References: <20191108125244.23001-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_03:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_045315_565314_64E58FF7 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

Convert the STM32 CRYP binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/crypto/st,stm32-cryp.txt   | 19 --------
 .../devicetree/bindings/crypto/st,stm32-cryp.yaml  | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 19 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-cryp.txt
 create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml

diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.txt b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.txt
deleted file mode 100644
index 970487fa40b8..000000000000
--- a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.txt
+++ /dev/null
@@ -1,19 +0,0 @@
-* STMicroelectronics STM32 CRYP
-
-Required properties:
-- compatible: Should be "st,stm32f756-cryp".
-- reg: The address and length of the peripheral registers space
-- clocks: The input clock of the CRYP instance
-- interrupts: The CRYP interrupt
-
-Optional properties:
-- resets: The input reset of the CRYP instance
-
-Example:
-crypto@50060000 {
-	compatible = "st,stm32f756-cryp";
-	reg = <0x50060000 0x400>;
-	interrupts = <79>;
-	clocks = <&rcc 0 STM32F7_AHB2_CLOCK(CRYP)>;
-	resets = <&rcc STM32F7_AHB2_RESET(CRYP)>;
-};
diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
new file mode 100644
index 000000000000..a4574552502a
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/st,stm32-cryp.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/st,stm32-cryp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 CRYP bindings
+
+maintainers:
+  - Lionel Debieve <lionel.debieve@st.com>
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f756-cryp
+      - st,stm32mp1-cryp
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
+    cryp@54001000 {
+      compatible = "st,stm32mp1-cryp";
+      reg = <0x54001000 0x400>;
+      interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&rcc CRYP1>;
+      resets = <&rcc CRYP1_R>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
