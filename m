Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCF91EF333
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 10:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1p6TxovejWrVILZMHTpQ89JPbuF9B0xUlzrPej98pA8=; b=smcpEFZNl6kJnL
	Ibl/nW4LTJi/Nyscr+b/UW8Vzk5FJulv8oihCI3ISQhafwG9xgxm2spabjoMJ/BMZAKKL+deb8dHI
	hcxb/h4TKn/qWjg+OQ4g2W2AA35j5n5SL6MseXgcIjZchYrxzrhTqwL4kOdSCSR1hmago9NIO4W21
	ot1HHdWZec8ln//KdC3POnV5IaJjEU0eec2mk7KRJD7Zv2yThyCmP0uMwZBLFMUQngmp9eYacDptG
	+Mb2ZcQWYYQ7FruJD2cfOArKAuWuTFFivBYbRS//EkrSpeCYKDKvAIMHhUx+eJIycKZXwEa2wyu9q
	rYrjcfW/wrHFmvzJJCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh7ot-0004bz-Te; Fri, 05 Jun 2020 08:35:19 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh7nl-0003ef-8r
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 08:34:13 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0558Wf3B029843; Fri, 5 Jun 2020 10:33:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=7+MnleNJkiEaO/P1tUZdrf9rpTSD5jzSpmCxlBfmTnI=;
 b=giXx+qn2MJVw97M8A3ITV3iPXJykZsf/gyxFedRPDkio8UuQ3+jj59T43IW3jIUSsuUm
 QMrH51YrYRMMbNPr9IaFKq0uUj7JUvqXLezzmvwiltic2Ad9wrL/1EhBParyMZuBUc/E
 /GVrMJVbj+HTaKAntn3RoAKZO9oOMrLERnefxSngfrOu2M2bXpyH3cZN0E98EdTrMDt+
 YT99L6Al9dQjyHnTolgtbfZe+CQ12MzKXO1zlE+GaM6gzzGcbRwMMZpOY1Qg1ziwL5V8
 GpFiBqFq7ko+hEBhSg8cuUzP5EXMDUhQMW+i1jLOHURzCQn/4hMGZwhWJCw8AKG4CKU5 /w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31fasma4ex-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 05 Jun 2020 10:33:53 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3D65010002A;
 Fri,  5 Jun 2020 10:33:52 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2C5852B21C0;
 Fri,  5 Jun 2020 10:33:52 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jun 2020 10:33:51
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linus.walleij@linaro.org>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH v4 1/5] dt-bindings: bus: Add firewall bindings
Date: Fri, 5 Jun 2020 10:33:44 +0200
Message-ID: <20200605083348.13880-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200605083348.13880-1-benjamin.gaignard@st.com>
References: <20200605083348.13880-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-05_01:2020-06-04,
 2020-06-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_013409_604548_6ED585B0 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, tomase@xilinx.com,
 linux-kernel@vger.kernel.org, stefano.stabellini@xilinx.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add schemas for firewall consumer and provider.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/bus/stm32/firewall-consumer.yaml      | 36 ++++++++++++++++++++++
 .../bindings/bus/stm32/firewall-provider.yaml      | 18 +++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml

diff --git a/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml b/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
new file mode 100644
index 000000000000..d3d76f99b38d
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/stm32/firewall-consumer.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/stm32/firewall-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Bus Firewall consumer binding
+
+description: |
+  Firewall properties provide the possible firewall bus controller
+  configurations for a device.
+  Bus firewall controllers are typically used to control if a hardware
+  block can perform read or write operations on bus.
+  The contents of the firewall bus configuration properties are defined by
+  the binding for the individual firewall controller device.
+
+  The first configuration 'firewall-0' or the one named 'default' is
+  applied before probing the device itself.
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+# always select the core schema
+select: true
+
+properties:
+  firewall-0: true
+
+  firewall-names: true
+
+patternProperties:
+  "firewall-[0-9]":
+    $ref: "/schemas/types.yaml#/definitions/phandle-array"
+
+dependencies:
+  firewall-names: [ firewall-0 ]
diff --git a/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml b/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml
new file mode 100644
index 000000000000..299824c620ea
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/stm32/firewall-provider.yaml
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/stm32/firewall-provider.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Bus Firewall provider binding
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@st.com>
+
+properties:
+  '#firewall-cells':
+     $ref: /schemas/types.yaml#/definitions/uint32
+     description: Number of cells in a bus firewall specifier
+
+required:
+  - '#firewall-cells'
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
