Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA61D40AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7hIydrbNDmKIh2p7HYgtAnVOuC7t1Rixo2vLp5kqsT8=; b=rF8G0PuKNOa5J/
	In8I5vQ9AouQ6B/OEf6D3ZVfDcJlCAfXXDeSaWOxfzngkQr+ecLuhnHOOMwdmIkkOksClYBK6oRA2
	DhXYApdGOKy/ufAHc7u4NSu/cewW+FxxB2ZU0zcP5NqyQtOJTlvKLbBJP74ysSzSTHlrkhZRlJNZf
	XW2FaYzgfAhcF8h048I/dCumH6v2MQb+T6OjY2Mx7mMhPPDB/XxOVmUNnw/TJofiw/lWIy51h+Oa/
	lD/lpdRGzRqEn5u7hIgY4fFNjuqMwKtxUNQRpgML8IvGdrfiOapHovA9yYJwo4uNlsirDwYF2LjU2
	aiSjF2GDcGMREkoi4x2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIugq-000375-Qv; Fri, 11 Oct 2019 13:10:40 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIugg-00036I-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:10:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9BD1KxH020165; Fri, 11 Oct 2019 15:10:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=emcJkbiLu3r2aJUJMXuk+JlPciuPhdB5hKbfL02U1Nw=;
 b=f5el+5Dnm2ccge2r0zqzQrevdggKEtx0JSrlGaI42QWQFiPxJMOZb+mqARdTA8Ut8ynW
 IijfneV6zar49/RLjzvLQSzKR4rvYDbKs7vWnU0CBbBMTlRVsPd7G9lZfj6EpyM8HIYd
 Ihl179sBI7mLxs+9mZpkBRJU2LN5OE8QLZrI8kPCjovO86/xSVoegwmf74tdmX+jrGM4
 968JERZuYCRubMIczhNYzyQTt2lJg/JH4od0ccGvcr3FebH9MFnjyiSCcedwBNGbiXQZ
 1EDW84PN7djfoiUwmz9jUh3msBCwbdyjRQTDOH6mwWbbYzGOHyzNw6x/8//srDjdY3z1 XQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegn19yt6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 15:10:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B7381100034;
 Fri, 11 Oct 2019 15:10:22 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9CAB12BEC48;
 Fri, 11 Oct 2019 15:10:22 +0200 (CEST)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct
 2019 15:10:22 +0200
Received: from localhost (10.201.20.122) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 11 Oct 2019 15:10:21
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <ohad@wizery.com>, <bjorn.andersson@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>
Subject: [PATCH v2] dt-bindings: hwlock: Convert stm32 hwspinlock bindings to
 json-schema
Date: Fri, 11 Oct 2019 15:10:18 +0200
Message-ID: <20191011131018.24035-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.201.20.122]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-11_08:2019-10-10,2019-10-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_061030_620539_72BACA14 
X-CRM114-Status: GOOD (  15.48  )
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
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 hwspinlock binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
change in v2:
- use BSD-2-Clause license
- use const for #hwlock-cells
- add additionalProperties: false

 .../bindings/hwlock/st,stm32-hwspinlock.txt        | 23 ----------
 .../bindings/hwlock/st,stm32-hwspinlock.yaml       | 50 ++++++++++++++++++++++
 2 files changed, 50 insertions(+), 23 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
 create mode 100644 Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
deleted file mode 100644
index adf4f000ea3d..000000000000
--- a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.txt
+++ /dev/null
@@ -1,23 +0,0 @@
-STM32 Hardware Spinlock Device Binding
--------------------------------------
-
-Required properties :
-- compatible : should be "st,stm32-hwspinlock".
-- reg : the register address of hwspinlock.
-- #hwlock-cells : hwlock users only use the hwlock id to represent a specific
-	hwlock, so the number of cells should be <1> here.
-- clock-names : Must contain "hsem".
-- clocks : Must contain a phandle entry for the clock in clock-names, see the
-	common clock bindings.
-
-Please look at the generic hwlock binding for usage information for consumers,
-"Documentation/devicetree/bindings/hwlock/hwlock.txt"
-
-Example of hwlock provider:
-	hwspinlock@4c000000 {
-		compatible = "st,stm32-hwspinlock";
-		#hwlock-cells = <1>;
-		reg = <0x4c000000 0x400>;
-		clocks = <&rcc HSEM>;
-		clock-names = "hsem";
-	};
diff --git a/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
new file mode 100644
index 000000000000..da4722bb8c38
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/st,stm32-hwspinlock.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/st,stm32-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Hardware Spinlock bindings
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+  - Fabien Dessenne <fabien.dessenne@st.com>
+
+properties:
+  "#hwlock-cells":
+    const: 1
+
+  compatible:
+    const: st,stm32-hwspinlock
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: hsem
+
+required:
+  - "#hwlock-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    hwspinlock@4c000000 {
+        compatible = "st,stm32-hwspinlock";
+        #hwlock-cells = <1>;
+        reg = <0x4c000000 0x400>;
+        clocks = <&rcc HSEM>;
+        clock-names = "hsem";
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
