Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF51D10FF47
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AUhQTp7MN9Y0/1hEORidD9mVcpNTRMzWRGO28ZT+GwM=; b=Uj+Ezqc1Wo5HaN
	LfJKrYfybds5e65nAOROSZhUieMzwCUClmL6pcEnIfKCeAdBQqCRK50mFdDxmJCO/nm97IvQLGloB
	40kdjbkp4JI+OMc9hJ03s869uCzE4Ve8As0t/PTErjfVse7kPw4C1TLTR0hoFBvCvxsUk6HQkIma8
	PITAB/827R+zt5cEOgs5511uan+ADqRNIcGEcGh+iZvudPcHtSk/LTHPlGaMYWqq5dUMF2GGnNeBK
	YvdDdRT7DxsAF0ZnaA0BhwC4EFV7DAwyyv4ZOneh0Bpr3DoYqq1001gLmvC8lXTAvLhJI8IyLlX43
	9AaOKdM/A8hkSzVNCLPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8ai-00036g-L4; Tue, 03 Dec 2019 13:51:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8YL-0000Na-Ur
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:49:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3DgIOx015268; Tue, 3 Dec 2019 14:49:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=aUjKg25Cf5lmzJtCypgppJCtT5TP5s8zd2LxslojreM=;
 b=PTM6wWmLt9Y003352fCUqBlRRhPfMu0x8vr+cavl7iwkYIs3Wp/3h7xfKxYfKjchot8i
 4ly7ScOQfx8Umpb5A+tPj107dduvFxTwslZ5ViHFkNU5cq5y2kCDuT7L4NQaTdShdDdq
 lGfnYg/C7qc8L2sYqP6rEYzTxCi8gfUXgVJtUQ2tWPmXpPpr9MSFDN963X93RxsdVwWL
 mLnmz96pGFKDlzQOYPI7rhpOB/7FGr0nM49Cq6oI3au8mVOdYO6Y9DYnnqiSlJVWgvac
 S9D2v0U2iO9IAb0Vhd+K0wT8GZ1qDkv/bj1ucor6g6qWHGHrROePzh3b7aF5nu6BzjgP Bg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wkg6kfhfa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 03 Dec 2019 14:49:11 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3F111100034;
 Tue,  3 Dec 2019 14:49:11 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 1B8502BC7AF;
 Tue,  3 Dec 2019 14:49:11 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Tue, 3 Dec 2019 14:49:10 +0100
From: Pascal Paillet <p.paillet@st.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] regulator: Convert stm32-pwr regulator to json-schema
Date: Tue, 3 Dec 2019 14:49:10 +0100
Message-ID: <20191203134910.26470-1-p.paillet@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_03:2019-12-02,2019-12-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054922_382655_C3F0F98A 
X-CRM114-Status: GOOD (  15.35  )
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
Cc: p.paillet@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the stm32-pwr regulator binding to DT schema format using
json-schema.

Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 .../regulator/st,stm32mp1-pwr-reg.txt         | 43 ------------
 .../regulator/st,stm32mp1-pwr-reg.yaml        | 67 +++++++++++++++++++
 2 files changed, 67 insertions(+), 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml

diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
deleted file mode 100644
index e372dd3f0c8a..000000000000
--- a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-STM32MP1 PWR Regulators
------------------------
-
-Available Regulators in STM32MP1 PWR block are:
-  - reg11 for regulator 1V1
-  - reg18 for regulator 1V8
-  - usb33 for the swtich USB3V3
-
-Required properties:
-- compatible: Must be "st,stm32mp1,pwr-reg"
-- list of child nodes that specify the regulator reg11, reg18 or usb33
-  initialization data for defined regulators. The definition for each of
-  these nodes is defined using the standard binding for regulators found at
-  Documentation/devicetree/bindings/regulator/regulator.txt.
-- vdd-supply: phandle to the parent supply/regulator node for vdd input
-- vdd_3v3_usbfs-supply: phandle to the parent supply/regulator node for usb33
-
-Example:
-
-pwr_regulators: pwr@50001000 {
-	compatible = "st,stm32mp1,pwr-reg";
-	reg = <0x50001000 0x10>;
-	vdd-supply = <&vdd>;
-	vdd_3v3_usbfs-supply = <&vdd_usb>;
-
-	reg11: reg11 {
-		regulator-name = "reg11";
-		regulator-min-microvolt = <1100000>;
-		regulator-max-microvolt = <1100000>;
-	};
-
-	reg18: reg18 {
-		regulator-name = "reg18";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
-	};
-
-	usb33: usb33 {
-		regulator-name = "usb33";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
new file mode 100644
index 000000000000..f661728ebdeb
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/st,stm32mp1-pwr-reg.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/st,stm32mp1-pwr-reg.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STM32MP1 PWR voltage regulators
+
+maintainers:
+  - Pascal Paillet <p.paillet@st.com>
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  compatible:
+    const: st,stm32mp1,pwr-reg
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Input supply phandle(s) for vdd input
+
+  vdd_3v3_usbfs-supply:
+    description: Input supply phandle(s) for vdd_3v3_usbfs input
+
+patternProperties:
+  "^(reg11|reg18|usb33)":
+    type: object
+
+    allOf:
+      - $ref: "regulator.yaml#"
+
+required:
+   - compatible
+   - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    pwr@50001000 {
+      compatible = "st,stm32mp1,pwr-reg";
+      reg = <0x50001000 0x10>;
+      vdd-supply = <&vdd>;
+      vdd_3v3_usbfs-supply = <&vdd_usb>;
+
+      reg11 {
+        regulator-name = "reg11";
+        regulator-min-microvolt = <1100000>;
+        regulator-max-microvolt = <1100000>;
+      };
+
+      reg18 {
+        regulator-name = "reg18";
+        regulator-min-microvolt = <1800000>;
+        regulator-max-microvolt = <1800000>;
+      };
+
+      usb33 {
+        regulator-name = "usb33";
+        regulator-min-microvolt = <3300000>;
+        regulator-max-microvolt = <3300000>;
+      };
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
