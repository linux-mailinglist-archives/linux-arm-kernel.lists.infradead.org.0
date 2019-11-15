Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F72DFDAD3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LtCqxhahhdyuPMhMp4BzJYsWb0I3tvtWs9KzSSb09bE=; b=X0NL4SMjfH8Q+n
	oFtG40jHXQOGvR2aRdOW012bM/raG0PBH6ySUuOKkDFQsWEFoqg0/vzz4FFhT84LW6vxo8Sdmy7Fo
	5HIb/uwYYrz+49evCz2Gv2DVFfFY2luKF7Ub1PC+msTHhoIlJ8Guw134bz5fFDzid4lpOiIJdAgtv
	mWuJ32+JReGjCeVkgFxakWG97PYfejGo2/j5MWafspbwYSOxsLz78Bf6yFYQ0e2Yc8V/WuYjoF+Dh
	G6mDUrB8yD8v5WF+9hYWwtXeMWTogxfypievQGF4SsTYbDNMkbR+dwShjPgOg1JtgLt+AoaRwZT8M
	k6gzO2CLinqGCJkVvKYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYXk-0005Lj-Ts; Fri, 15 Nov 2019 10:09:32 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYXZ-0005L9-0M
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:09:22 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFA71fq002107; Fri, 15 Nov 2019 11:09:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=lAUGW0y2CHBDpVTA3h5ClqMlUAZUqXjeRxzgtQy+rpU=;
 b=eExy1s42e1KDNtXfaE58U+ydiOXEL0+L9ooNaeQ5q1pmb8eWTclk/YHwAbi7HNB3Wlhw
 gJZToY++Da9GOsq6Sfv66K6GYlNhyDtZFrDmtYqx4yZra330admzcM6xSAONAfSugBN0
 SBTaiRQDJNJeZHliLORIbL0p04KliNeqk6Ep7cGguXyNXngvFgwP3k16WzixLOWYTTKg
 +doo/WdM0EAay0pCGaUQvWKbeSy1z7+bcMzKXnJWhMw7dumRWuKOnm6UxpT3tLOUwu1H
 av3EUzSBxXjvZl+ByeDbvk4qaroputh+rfBtp4oM6O3KOTHuOiXznw9R4b9iw+Y8zMqg Vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psfkfqc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:09:05 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D27AC10003A;
 Fri, 15 Nov 2019 11:09:03 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BC76B2B2520;
 Fri, 15 Nov 2019 11:09:03 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov 2019 11:09:03
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mpm@selenic.com>, <herbert@gondor.apana.org.au>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <alexandre.torgue@st.com>, <lionel.debieve@st.com>
Subject: [PATCH] dt-bindings: rng: Convert stm32 RNG bindings to json-schema
Date: Fri, 15 Nov 2019 11:08:54 +0100
Message-ID: <20191115100854.17938-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_02:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_020921_338877_1F25FB03 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 RNG binding to DT schema format using json-schema
Remove interrupt from the json-schema because it is not used by the driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/rng/st,stm32-rng.txt       | 25 -----------
 .../devicetree/bindings/rng/st,stm32-rng.yaml      | 48 ++++++++++++++++++++++
 2 files changed, 48 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/st,stm32-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/st,stm32-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/st,stm32-rng.txt b/Documentation/devicetree/bindings/rng/st,stm32-rng.txt
deleted file mode 100644
index 1dfa7d51e006..000000000000
--- a/Documentation/devicetree/bindings/rng/st,stm32-rng.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-STMicroelectronics STM32 HW RNG
-===============================
-
-The STM32 hardware random number generator is a simple fixed purpose IP and
-is fully separated from other crypto functions.
-
-Required properties:
-
-- compatible : Should be "st,stm32-rng"
-- reg : Should be register base and length as documented in the datasheet
-- interrupts : The designated IRQ line for the RNG
-- clocks : The clock needed to enable the RNG
-
-Optional properties:
-- resets : The reset to properly start RNG
-- clock-error-detect : Enable the clock detection management
-
-Example:
-
-	rng: rng@50060800 {
-		compatible = "st,stm32-rng";
-		reg = <0x50060800 0x400>;
-		interrupts = <80>;
-		clocks = <&rcc 0 38>;
-	};
diff --git a/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
new file mode 100644
index 000000000000..82bb2e97e889
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/st,stm32-rng.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/st,stm32-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 RNG bindings
+
+description: |
+  The STM32 hardware random number generator is a simple fixed purpose
+  IP and is fully separated from other crypto functions.
+
+maintainers:
+  - Lionel Debieve <lionel.debieve@st.com>
+
+properties:
+  compatible:
+    const: st,stm32-rng
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  clock-error-detect:
+    description: If set enable the clock detection management
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
+    rng@54003000 {
+      compatible = "st,stm32-rng";
+      reg = <0x54003000 0x400>;
+      clocks = <&rcc RNG1_K>;
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
