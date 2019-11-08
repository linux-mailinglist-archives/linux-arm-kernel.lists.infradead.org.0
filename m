Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F47FF4C2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6JlSBrQBypbkUgg+GrUY+UTh6+7Ryt8hpedyf88mJhE=; b=OUZmi+dXE6+g5E
	S32Bbj4GCJDPJxNYJEp5KBXDSKbhpSi3BbzzedaeQiXVITA4eMGZIa9UrSNUF3/LXorWqOZeiqee6
	ywJtF+Ca0u/+iaVApSkew6uEyw7t6k3/tgUWIFagPSzsqqr96gTBayo9pFeE/vWJUKzb7NFAk+tMT
	M5efTnNvP8+DyvxMD7ScPY+lrVpZCFBJR+goNV3F7qAuCP5hgPtg6vl4LRoCqjmp0mL/fT+Xyd1Es
	6QBC9J13fMXG3Xo+n6zIrcn/apd580hCs24ZvPra7SEsF1dKZqehKsO+XIIjeOU8MMntDmb3EHitr
	oXfJq2U41M6tks/dbwew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT3m0-0000a3-VL; Fri, 08 Nov 2019 12:53:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT3lL-00009K-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:53:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA8CqEtf015193; Fri, 8 Nov 2019 13:52:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=KE+lhWirTk2m3IZYhF0q8UeaXDnb4X8JytcbTCweFQg=;
 b=ml9RldmUohzS3DOQN7LiKwksjb9e7e19qHNXXhUyKVDI+iGq++eIsQpfQqoAaEMXxEED
 Gfb6agcFvyhQryLEnSEBrSNFwMe8iRKVUALFpjHbxO0Q2Jp2BHVA48KhrPEVgVQDwyjB
 KED1ib3Cz2cCGbKDvzCG91V0sjhi6JyjUIWjbn7O/RZ3lVEpPclREBE4u0n7N0EduZ5f
 bKWGMT09tI2U6V/IRuEqoGBaasN2mo0OBOAw1FgStlYchABMflWa/2Dsv/kavneRKfnt
 xdqCWsa68jqbQ86DNGRea+SfwIGBRgOhv57SI6AJ6Bl/Kzp69u3Qv/Ru2gO7tq+DY/u3 Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w41ve3m4n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 08 Nov 2019 13:52:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 68FF810002A;
 Fri,  8 Nov 2019 13:52:48 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 349432B6A0D;
 Fri,  8 Nov 2019 13:52:48 +0100 (CET)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019
 13:52:48 +0100
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 8 Nov 2019 13:52:46
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <herbert@gondor.apana.org.au>, <davem@davemloft.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>, <lionel.debieve@st.com>
Subject: [PATCH] dt-bindings: crypto: Convert stm32 CRC bindings to json-schema
Date: Fri, 8 Nov 2019 13:52:42 +0100
Message-ID: <20191108125244.23001-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-08_03:2019-11-08,2019-11-08 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_045315_760596_169A0949 
X-CRM114-Status: GOOD (  14.66  )
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

Convert the STM32 CRC binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/crypto/st,stm32-crc.txt    | 16 ---------
 .../devicetree/bindings/crypto/st,stm32-crc.yaml   | 38 ++++++++++++++++++++++
 2 files changed, 38 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-crc.txt
 create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-crc.yaml

diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-crc.txt b/Documentation/devicetree/bindings/crypto/st,stm32-crc.txt
deleted file mode 100644
index 3ba92a5e9b36..000000000000
--- a/Documentation/devicetree/bindings/crypto/st,stm32-crc.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-* STMicroelectronics STM32 CRC
-
-Required properties:
-- compatible: Should be "st,stm32f7-crc".
-- reg: The address and length of the peripheral registers space
-- clocks: The input clock of the CRC instance
-
-Optional properties: none
-
-Example:
-
-crc: crc@40023000 {
-	compatible = "st,stm32f7-crc";
-	reg = <0x40023000 0x400>;
-	clocks = <&rcc 0 12>;
-};
diff --git a/Documentation/devicetree/bindings/crypto/st,stm32-crc.yaml b/Documentation/devicetree/bindings/crypto/st,stm32-crc.yaml
new file mode 100644
index 000000000000..cee624c14f07
--- /dev/null
+++ b/Documentation/devicetree/bindings/crypto/st,stm32-crc.yaml
@@ -0,0 +1,38 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/crypto/st,stm32-crc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 CRC bindings
+
+maintainers:
+  - Lionel Debieve <lionel.debieve@st.com>
+
+properties:
+  compatible:
+    const: st,stm32f7-crc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    crc@40023000 {
+      compatible = "st,stm32f7-crc";
+      reg = <0x40023000 0x400>;
+      clocks = <&rcc 0 12>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
