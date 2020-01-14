Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD19813A966
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 13:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aQbDj6MlwD+nPbY1GsS5GroIHjBoFyLdFwzYV+Lv0Oc=; b=Vcel1ntw4Iuy5M
	zcHl0B8H5GvnlfKE+2LENNXuRMQaTsSGpe6C+/qtzR71wJSL/outqmXBfsYbr4REpWJhY8yT9C1Sr
	R3fsIusc8CGcO+7vTpa8+eHTh0NaPccsN/YWdMVMpH8R/1WJMM/VEybWD1hXF1Upq0abB7179RrBp
	eWTPJOSILLQQz0k0dzj6SeQ63474rGIQR1XBP5Kvas6P0M03Htgy8BUQf06xYRQL6FDw/EQ+EZ8pO
	/czohRbx4t/vXy2uK5dEf3xRdJNoPS7n8WTJm/zXd8ISqp66oBoTGoEnBhkFF/JTxElX3DAlHJ3zj
	GYWVf4SIyRxuyZXzSEZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irLOT-0007yr-98; Tue, 14 Jan 2020 12:34:01 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irLOG-0007xa-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 12:33:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00ECXKVn004923; Tue, 14 Jan 2020 13:33:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=0nqgUqSxwdpUconxF/xpmwGAMX5ggOvyFookkeKhb74=;
 b=w7ctkzxw2QhKmJRgqIQxoTLSOCVG+jjPHx9ZENhkAoaaAiy9a7Q8HynLFI9UwLGrQF6+
 CWUTqjjZaZ9peAAztdw189x9bv2pm+91yxLXVOJoq2YFMN6zZlaQ+l0mEqzrKP05TyTC
 bTl5SCd3HtXBsCs18kH4R9O27goWE1UWPcr8z1Gl7cfx1jmVeKlq9dbkbWzSK/SvhEtO
 qKmR3RRjePEToNFzkFDsxpREKkELGXvdc5TzDjeSj31eDykNJzg/5A31ZElRaPxHgei7
 JYfX1aeKP63FXtYvrpIOxAjG0e95S9ThGraK6U/tau6hAutY4nWo5JT/OZpv2ZXJpl3G qA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xf78s5f00-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 14 Jan 2020 13:33:38 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09EA510003A;
 Tue, 14 Jan 2020 13:33:34 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EB2632AD9EC;
 Tue, 14 Jan 2020 13:33:33 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 14 Jan 2020 13:33:33
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 1/2] dt-bindings: serial: Convert rs485 bindings to json-schema
Date: Tue, 14 Jan 2020 13:33:28 +0100
Message-ID: <20200114123329.3792-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200114123329.3792-1-benjamin.gaignard@st.com>
References: <20200114123329.3792-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-14_03:2020-01-13,
 2020-01-14 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_043348_913774_F2DD05AD 
X-CRM114-Status: GOOD (  16.71  )
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, erwan.leray@st.com, linux-serial@vger.kernel.org,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert rs485 binding to yaml style file.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 Documentation/devicetree/bindings/serial/rs485.txt | 32 +--------------
 .../devicetree/bindings/serial/rs485.yaml          | 45 ++++++++++++++++++++++
 2 files changed, 46 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/serial/rs485.yaml

diff --git a/Documentation/devicetree/bindings/serial/rs485.txt b/Documentation/devicetree/bindings/serial/rs485.txt
index b92592dff6dd..a7fe93efc4a5 100644
--- a/Documentation/devicetree/bindings/serial/rs485.txt
+++ b/Documentation/devicetree/bindings/serial/rs485.txt
@@ -1,31 +1 @@
-* RS485 serial communications
-
-The RTS signal is capable of automatically controlling line direction for
-the built-in half-duplex mode.
-The properties described hereafter shall be given to a half-duplex capable
-UART node.
-
-Optional properties:
-- rs485-rts-delay: prop-encoded-array <a b> where:
-  * a is the delay between rts signal and beginning of data sent in milliseconds.
-      it corresponds to the delay before sending data.
-  * b is the delay between end of data sent and rts signal in milliseconds
-      it corresponds to the delay after sending data and actual release of the line.
-  If this property is not specified, <0 0> is assumed.
-- rs485-rts-active-low: drive RTS low when sending (default is high).
-- linux,rs485-enabled-at-boot-time: empty property telling to enable the rs485
-  feature at boot time. It can be disabled later with proper ioctl.
-- rs485-rx-during-tx: empty property that enables the receiving of data even
-  while sending data.
-
-RS485 example for Atmel USART:
-	usart0: serial@fff8c000 {
-		compatible = "atmel,at91sam9260-usart";
-		reg = <0xfff8c000 0x4000>;
-		interrupts = <7>;
-		atmel,use-dma-rx;
-		atmel,use-dma-tx;
-		linux,rs485-enabled-at-boot-time;
-		rs485-rts-delay = <0 200>;		// in milliseconds
-	};
-
+See rs485.yaml
diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Documentation/devicetree/bindings/serial/rs485.yaml
new file mode 100644
index 000000000000..65c6a98969a8
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/rs485.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/rs485.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RS485 serial communications Bindings
+
+description: The RTS signal is capable of automatically controlling
+             line direction for the built-in half-duplex mode.
+             The properties described hereafter shall be given to a
+             half-duplex capable UART node.
+
+maintainers:
+  -  Rob Herring <robh@kernel.org>
+
+properties:
+  rs485-rts-delay:
+    description: prop-encoded-array <a b>
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+      - items:
+          items:
+            - description:
+                Delay between rts signal and beginning of data sent in milliseconds.
+                It corresponds to the delay before sending data.
+              $ref: "/schemas/types.yaml#/definitions/uint32"
+              default: 0
+            - description:
+                Delay between end of data sent and rts signal in milliseconds.
+                It corresponds to the delay after sending data and actual release of the line.
+              $ref: "/schemas/types.yaml#/definitions/uint32"
+              default: 0
+
+  rs485-rts-active-low:
+    description: drive RTS low when sending (default is high).
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  linux,rs485-enabled-at-boot-time:
+    description: enables the rs485 feature at boot time. It can be disabled later with proper ioctl.
+    $ref: /schemas/types.yaml#/definitions/flag
+
+  rs485-rx-during-tx:
+   description: enables the receiving of data even while sending data.
+   $ref: /schemas/types.yaml#/definitions/flag
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
