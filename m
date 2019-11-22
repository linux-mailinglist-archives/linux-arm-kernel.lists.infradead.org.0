Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0052E106AF0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:40:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SFT6w7Vy/qQzuNUiIjjue0OmJmTVZSjqPgEE+yYYC1c=; b=i6RMPt+GBko+r/
	ZTDl+Q1Onv0hqDVLd5D/oAZ9gVIOIK8Ev+qKT/Lka11kbEeiB2PD5KZk22Tn/lE+fvQMJ/+ghhwk3
	C5YfSJRhQ5Q4oOKJ3PKjJVeANtIfedwm2o1kREZWHweOirrlPdtgpCxbuxei2iagJgBrV7z6LBV8M
	oe8OYA0oQjwas3U0wew+JHHEpiki3ySkWqYpuBPOYwYMMiLHX240IO6Et94Gos9DsyC8WxWUCOdHL
	1+nbydRAh3dydC2A9SXJ6aDFDCK33yFdAoj9L+/tQsYEScDWgj+3KSs8UwXWgnJukA638c4/6u0Rl
	3pKtco58i0Ynt1L7jKSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6MI-0003Ns-BG; Fri, 22 Nov 2019 10:40:14 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Ly-0003MY-8q
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:39:56 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMAddRd023808; Fri, 22 Nov 2019 11:39:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Yb4uCeALV8Ui44IqHMV+f+MNdt/2wAzvgT9C57Q3BZw=;
 b=gYNaqs3+QC6W3lndyyz8UqbqmpEyOIZp1U1iZ28HGNjAXmZW/dWrvDAesNWYWg3CXIuZ
 W4rOFR9Qy/VZ3QQzNzN7VIfuYbDvN8rQmoHY92ynRaDGrF/WH5HmACEoGiloOgENoLR7
 CtqIUfkKscVnBACUQbXZZYRrnj1tqX8W39Iv106aYETYA6bL10VcDxK+JhSNxEkeqC+q
 Itashsf+Py7ul0X53zWXSXIXrmRkatC7mqLXOJhV4uVDmMdVXdIQNyRoJvrhxIcdOsge
 tRoiUnfzUqyGihNiGj2xT/yMsxz+fpxiJm5x10a1RxqTxjWkv2U9Io82eNNKUyLbbtcP 9A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9uvrqa0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 11:39:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 41F31100034;
 Fri, 22 Nov 2019 11:39:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 133DA2B56A1;
 Fri, 22 Nov 2019 11:39:43 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 22 Nov 2019 11:39:42
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] dt-bindings: arm: stm32: Convert stm32-syscon to json-schema
Date: Fri, 22 Nov 2019 11:39:42 +0100
Message-ID: <20191122103942.23572-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_02:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_023954_761412_CF58E617 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 syscon binding to DT schema format using json-schema.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
new file mode 100644
index 000000000000..0dedf94c8578
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/stm32/st,stm32-syscon.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/arm/stm32/st,stm32-syscon.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: STMicroelectronics STM32 Platforms System Controller bindings
+
+maintainers:
+  - Alexandre Torgue <alexandre.torgue@st.com>
+  - Christophe Roullier <christophe.roullier@st.com>
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+        - enum:
+          - st,stm32mp157-syscfg
+        - const: syscon
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
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    syscfg: syscon@50020000 {
+        compatible = "st,stm32mp157-syscfg", "syscon";
+        reg = <0x50020000 0x400>;
+        clocks = <&rcc SYSCFG>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32-syscon.txt b/Documentation/devicetree/bindings/arm/stm32/stm32-syscon.txt
deleted file mode 100644
index c92d411fd023..000000000000
--- a/Documentation/devicetree/bindings/arm/stm32/stm32-syscon.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-STMicroelectronics STM32 Platforms System Controller
-
-Properties:
-   - compatible : should contain two values. First value must be :
-                 - " st,stm32mp157-syscfg " - for stm32mp157 based SoCs,
-                 second value must be always "syscon".
-   - reg : offset and length of the register set.
-   - clocks: phandle to the syscfg clock
-
- Example:
-         syscfg: syscon@50020000 {
-                 compatible = "st,stm32mp157-syscfg", "syscon";
-                 reg = <0x50020000 0x400>;
-                 clocks = <&rcc SYSCFG>;
-         };
-
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
