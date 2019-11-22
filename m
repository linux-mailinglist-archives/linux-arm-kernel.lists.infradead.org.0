Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 542A0106BC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRfOmCyty7g85xgdxn3pInu3WXAoTzOa9kXk4QbpupI=; b=pA0Cakd6s2D2/Q
	aVg/PYPOI5zA2WBPZ2+daHZwg1xQsfqlPFHKwJqDSp5xQa0A9Tsri104U+/AIrOAVj+ulsD4EH6bF
	cdRDoGxoO+Bc3LlxLo+GS4aWGcnTfbahuqVLJ7mxPvpKN79AjZZGrHwyh4HJGssRdZfX9DXyKwxNE
	uraRxOFZXT92Ug1JaiWyOlMr8rwWSIOpa6sBvBZ23yYTxcRVU1Y7WNxwHDQleYwfNsUjBNiMYMJjA
	irk7LHvynvF7MACHq74lf50qLDTgCUR+boSwfIbiPZmbFHUb36nJ8VOtSAXsaviNYdUiCKk/j4gmS
	mGEVoFgX79VvWSv2KYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6T5-0000RU-5O; Fri, 22 Nov 2019 10:47:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Rf-0007je-01
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:45:50 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMAhMJr011963; Fri, 22 Nov 2019 11:45:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=3uvMaCvyj8tNBEVETH0tKEXxb92y41/JsxGMzqMtSM0=;
 b=Lh7tB1R1ohJKj4m7G9Csue4E8s4QAaeKoV/JqDc4YtKTvf3p0z4hbVAhT7Bw04eZJAyZ
 vHxWUxlrDUgcQ+lOdWA+0fSThIFxPTO5kvnC9q11E1pcDf999mHebtt/JVehGb7RvPDn
 7JaJSN8NIMln40R12+4BQLEbyIQqmtMDb+0SCYSUFUvhEoVLcqSrBa8mMv+VRpJBg9X5
 p+E2k2WIhiAcQvJQD8HWFoQQBeJ6J3Sz/mMMfw0UUF9IZ094ubNcB4Ercoxw7rkOmvRM
 ZuuPXe7dB//xFr6QqvLAxdbVTsGOqJcWxayp7ET9cLpmrzWaetamDgaGGrKh2ixkgru2 kQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9usrayx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 11:45:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 31F6710002A;
 Fri, 22 Nov 2019 11:45:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 166482B56BD;
 Fri, 22 Nov 2019 11:45:40 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 22 Nov 2019 11:45:39
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>
Subject: [PATCH] dt-bindings: regulator: Convert stm32 vrefbuf bindings to
 json-schema
Date: Fri, 22 Nov 2019 11:45:36 +0100
Message-ID: <20191122104536.20283-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191122104536.20283-1-benjamin.gaignard@st.com>
References: <20191122104536.20283-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_02:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024547_372426_8C459DB9 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 regulator vrefbuf binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
CC: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 .../bindings/regulator/st,stm32-vrefbuf.txt        | 20 ---------
 .../bindings/regulator/st,stm32-vrefbuf.yaml       | 52 ++++++++++++++++++++++
 2 files changed, 52 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml

diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
deleted file mode 100644
index 5ddb8500a929..000000000000
--- a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-STM32 VREFBUF - Voltage reference buffer
-
-Some STM32 devices embed a voltage reference buffer which can be used as
-voltage reference for ADCs, DACs and also as voltage reference for external
-components through the dedicated VREF+ pin.
-
-Required properties:
-- compatible:		Must be "st,stm32-vrefbuf".
-- reg:			Offset and length of VREFBUF register set.
-- clocks:		Must contain an entry for peripheral clock.
-
-Example:
-	vrefbuf: regulator@58003c00 {
-		compatible = "st,stm32-vrefbuf";
-		reg = <0x58003C00 0x8>;
-		clocks = <&rcc VREF_CK>;
-		regulator-min-microvolt = <1500000>;
-		regulator-max-microvolt = <2500000>;
-		vdda-supply = <&vdda>;
-	};
diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
new file mode 100644
index 000000000000..33cdaeb25aee
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/st,stm32-vrefbuf.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Voltage reference buffer bindings
+
+description: |
+  Some STM32 devices embed a voltage reference buffer which can be used as
+  voltage reference for ADCs, DACs and also as voltage reference for external
+  components through the dedicated VREF+ pin.
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  compatible:
+    const: st,stm32-vrefbuf
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  vdda-supply:
+    description: phandle to the vdda input analog voltage.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - vdda-supply
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    vrefbuf@50025000 {
+      compatible = "st,stm32-vrefbuf";
+      reg = <0x50025000 0x8>;
+      regulator-min-microvolt = <1500000>;
+      regulator-max-microvolt = <2500000>;
+      clocks = <&rcc VREF>;
+      vdda-supply = <&vdda>;
+    };
+
+...
+
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
