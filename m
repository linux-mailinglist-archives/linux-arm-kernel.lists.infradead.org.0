Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9DD12650D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 15:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3wpZPgoH1OSYAAHLpBpvHbyH8fs+nhsZrqQN4s00vs=; b=DEYMTK/eHpG6jp
	2dEE2IC/t05iXOlTesHmQOk+n/kgY48MKiP1QlDJhb9jSVgU1xb2bfuu6V0i54WLz+2nn6SMae36v
	QaaHZoGVdTQgRP5BGQxoMA26ecvhOeiODIkHerA8iZTwDbiIZgyPIVm2nbhKvvHBmXqT5X+lY4G/3
	lKCqGYqophbT7VK3KJjrj9JN+VrOtvxrBfX4GpHltjXj7hhwRywOiVNIE4s34GtXniWpZrPG0aAtM
	2wUSnMxeLJwuQO0kiKarVsLlTjqpG3eJx8pHN618Mz/KuOLS4fdJIr/5ip/RzPLu9iBfDuCow5lrm
	jOS34eynNWXuLhJ5+BSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihx0M-0000gW-Rw; Thu, 19 Dec 2019 14:42:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihwzi-0000Dm-UH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 14:41:41 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJEaXgG008246; Thu, 19 Dec 2019 15:41:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=YrqEhoOFzVhBDyBqtPSRVN9rQAkZAEPrgnH0llmvGc4=;
 b=jGx2wuFt0ehrsIZU4KNvGMSVFCyRD5sJLndmOHP1dHi25/l3SIGYLds5TPsmHAHtVaQQ
 79zHJUCnTWc7BFu7bfHeOwcwIPxRF1XvL7LSCjYLE7vGcr8hLewfaQQXZxUv0KN+CJqG
 wQUsDEnqTpt5zcp9OoDJmb5GWqc11R9LnWEHr2SR31+hrqEehoUhfnWy92ZzYFOSX6Br
 e18BDEw56hARv0YVtg1kAycn+y+NQ8j2Gm8AHysvcM3aTUZ2MRaH1ZwdPD11SCh+dtFj
 bAUdGrIHYMGm1cidl4/NFqAnDVbHLtaveXYUpMq+hBqgZ8gR434Oeuz0BRnQd1DC7cpA VA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1t556-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 15:41:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CE6C510003E;
 Thu, 19 Dec 2019 15:41:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BA9942C6B63;
 Thu, 19 Dec 2019 15:41:19 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 15:41:19
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <srinivas.kandagatla@linaro.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <fabrice.gasnier@st.com>
Subject: [PATCH 1/3] dt-bindings: nvmem: Convert STM32 ROMEM to json-schema
Date: Thu, 19 Dec 2019 15:41:15 +0100
Message-ID: <20191219144117.21527-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191219144117.21527-1-benjamin.gaignard@st.com>
References: <20191219144117.21527-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_064139_455558_676321B6 
X-CRM114-Status: GOOD (  15.30  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the STM32 ROMEM binding to DT schema format using json-schema

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 .../devicetree/bindings/nvmem/st,stm32-romem.txt   | 31 ---------------
 .../devicetree/bindings/nvmem/st,stm32-romem.yaml  | 46 ++++++++++++++++++++++
 2 files changed, 46 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
deleted file mode 100644
index 142a51d5a9be..000000000000
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-STMicroelectronics STM32 Factory-programmed data device tree bindings
-
-This represents STM32 Factory-programmed read only non-volatile area: locked
-flash, OTP, read-only HW regs... This contains various information such as:
-analog calibration data for temperature sensor (e.g. TS_CAL1, TS_CAL2),
-internal vref (VREFIN_CAL), unique device ID...
-
-Required properties:
-- compatible:		Should be one of:
-			"st,stm32f4-otp"
-			"st,stm32mp15-bsec"
-- reg:			Offset and length of factory-programmed area.
-- #address-cells:	Should be '<1>'.
-- #size-cells:		Should be '<1>'.
-
-Optional Data cells:
-- Must be child nodes as described in nvmem.txt.
-
-Example on stm32f4:
-	romem: nvmem@1fff7800 {
-		compatible = "st,stm32f4-otp";
-		reg = <0x1fff7800 0x400>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-
-		/* Data cells: ts_cal1 at 0x1fff7a2c */
-		ts_cal1: calib@22c {
-			reg = <0x22c 0x2>;
-		};
-		...
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
new file mode 100644
index 000000000000..d84deb4774a4
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/st,stm32-romem.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STMicroelectronics STM32 Factory-programmed data bindings
+
+description: |
+  This represents STM32 Factory-programmed read only non-volatile area: locked
+  flash, OTP, read-only HW regs... This contains various information such as:
+  analog calibration data for temperature sensor (e.g. TS_CAL1, TS_CAL2),
+  internal vref (VREFIN_CAL), unique device ID...
+
+maintainers:
+  - Fabrice Gasnier <fabrice.gasnier@st.com>
+
+allOf:
+  - $ref: "nvmem.yaml#"
+
+properties:
+  compatible:
+    enum:
+      - st,stm32f4-otp
+      - st,stm32mp15-bsec
+
+required:
+  - "#address-cells"
+  - "#size-cells"
+  - compatible
+  - reg
+
+examples:
+  - |
+    efuse@1fff7800 {
+      compatible = "st,stm32f4-otp";
+      reg = <0x1fff7800 0x400>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      calib@22c {
+        reg = <0x22c 0x2>;
+      };
+    };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
