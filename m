Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E839C106BB5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bcXvEQ1pL60PAxmkoWeMrv1L9YNupXT9AXmRC3qOs5I=; b=u2Dp/vtxwXCIzm
	AdlaaR8ThK9OgQLk/HX6sF6ry2njZaVIR661YspDoX97d0S18/f/Pid9KC52Qj/jZBa4le5KCUhc/
	KX2h8ChUonj95xhD2jarz/SgbDhAaP4toGbpgv4QdAyiuITGdU6xHKFYAjVRswcwWV4cMqh6mNund
	+kfi3dDhstvFMK5UgnuvQjinHB3jy4E3nwGtQqtsIEeRzmSYpSNxomY9ctSNw10yW+WTEU7qm9LEI
	fHTNesJykXZji07Btrf6PIcgqP7apEndRi84CKz+T3QlmiMsQrn58d053CIIH1BRtthBdI3CHugtq
	TNYgtsGLd74HTT3Fn0Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6SZ-0008QS-LL; Fri, 22 Nov 2019 10:46:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Rc-0007iG-Re
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:45:47 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMAekVL019532; Fri, 22 Nov 2019 11:45:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=N39mr9JiTRKAZ1G00aMZSsPpF8DNn4u3LtchSa7kshc=;
 b=zRs3IQ0sYnHGLbdAp8Qcbs1LPVM6hiseuU2EaV81OLdu1orRFdFdGek7lyu+4XLnT6VF
 pfqaWIdK4o4D4ixeub7XGVgBUhyHYZc8DXazRNjNY7oYGBmb5cBjDPGr1ChxxIAyN9TX
 ti3SkPxBbHTW0hw4ZinMEmjuTTfuMClWLVsLbrtfZz7pNXs26UUqqiEzL/fYCUlNKi2r
 9DPW6wB9hr/Y1NMKtrfggCGjRLMsRBf2Hx+EFJ3vLJ6Nca18ybwm50K1cgkD6CK5jI7A
 x7KW5NoMMW8z+rmw2rdZ41pAHjnk8oY6w9q+vSj/ziCrjQHsS2C6pzD8+zyyRVWYDcOi 4A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wa9upgtrt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 11:45:39 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4C4C4100038;
 Fri, 22 Nov 2019 11:45:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 32BE02B56BD;
 Fri, 22 Nov 2019 11:45:39 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 22 Nov 2019 11:45:38
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>
Subject: [PATCH] dt-bindings: regulator: Convert stm32 booster bindings to
 json-schema
Date: Fri, 22 Nov 2019 11:45:35 +0100
Message-ID: <20191122104536.20283-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG6NODE3.st.com (10.75.127.18) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_02:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024545_199378_707549C9 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 regulator booster binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
CC: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 .../bindings/regulator/st,stm32-booster.txt        | 18 ---------
 .../bindings/regulator/st,stm32-booster.yaml       | 46 ++++++++++++++++++++++
 2 files changed, 46 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-booster.yaml

diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt b/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
deleted file mode 100644
index 479ad4c8758e..000000000000
--- a/Documentation/devicetree/bindings/regulator/st,stm32-booster.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-STM32 BOOSTER - Booster for ADC analog input switches
-
-Some STM32 devices embed a 3.3V booster supplied by Vdda, that can be used
-to supply ADC analog input switches.
-
-Required properties:
-- compatible: Should be one of:
-  "st,stm32h7-booster"
-  "st,stm32mp1-booster"
-- st,syscfg: Phandle to system configuration controller.
-- vdda-supply: Phandle to the vdda input analog voltage.
-
-Example:
-	booster: regulator-booster {
-		compatible = "st,stm32mp1-booster";
-		st,syscfg = <&syscfg>;
-		vdda-supply = <&vdda>;
-	};
diff --git a/Documentation/devicetree/bindings/regulator/st,stm32-booster.yaml b/Documentation/devicetree/bindings/regulator/st,stm32-booster.yaml
new file mode 100644
index 000000000000..64f1183ce841
--- /dev/null
+++ b/Documentation/devicetree/bindings/regulator/st,stm32-booster.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/regulator/st,stm32-booster.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 booster for ADC analog input switches bindings
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+description: |
+  Some STM32 devices embed a 3.3V booster supplied by Vdda, that can be used
+  to supply ADC analog input switches.
+
+allOf:
+  - $ref: "regulator.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - st,stm32h7-booster
+      - st,stm32mp1-booster
+
+  st,syscfg:
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
+    description: phandle to system configuration controller.
+
+  vdda-supply:
+    description: phandle to the vdda input analog voltage.
+
+required:
+  - compatible
+  - st,syscfg
+  - vdda-supply
+
+examples:
+  - |
+    regulator-booster {
+      compatible = "st,stm32mp1-booster";
+      st,syscfg = <&syscfg>;
+      vdda-supply = <&vdda>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
