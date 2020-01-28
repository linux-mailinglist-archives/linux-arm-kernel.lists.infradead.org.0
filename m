Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FBF14BCFF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qla2DbA7BYzYmtjCZstANp1p/5V+9Y6Un/2NypK4HxA=; b=IgaiqbrWMw88Xw
	rPQeNSMsztFMcCiFaHPsXlwgTn5U11Afudqm+hQUAHwSow2DPEWAsIXdcFekavVmb7E2xv83HeY0k
	u49azvWAaNXl0yaH5qBqAITbDtLolOgAV0fkLLe7FNwHSij2cEVlKI46arXjDfUvEUWLJI+e2dcSZ
	jfEkB057kwQlBPmlmH6EevKAU9z2uN8aHGnZDnVs/ck+Px99cTTlbZgIWqsjNSLw4Py/G9wxz3QG4
	A/TCysotdoOMyWTpYLQHNNyzbpox/k1+cr0gtEuq6RPJQEBJW94z8IwDWcKBYYGaHxydT/EXRI+Xa
	eXUEVs84UW/5Qktyxmow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSxr-0004an-Sm; Tue, 28 Jan 2020 15:39:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSwe-0003nx-SV
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 15:38:32 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SFX6pi022000; Tue, 28 Jan 2020 16:38:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=M4shpoCyMVFctSdGUqHSe14SyK0jF9SpsbaZCxF6Fo8=;
 b=w42V4DNpKo+W2ut3+BCjBH2xBBfPxVeQqtwpjpDBEU+HcaBPDWhOg6acS2ibIoDaPO6B
 qOuLt9KSW+KhUwOItT9IxQ4tQ/dhSN11teay9/XN34y63WYqIBmv/k+6NnSYsk8OCvlU
 eKXBX7hibeKl6f45OOTi/5AepoN7y8Srsmj1zJGB0KANIzy+PWExAbKAjeJbMW1O1JvN
 KHZCBcr1ezdii+vVOC52WNZt2gqzlzRx1horm7wZPqSSc5O0hoCx6C8RK15j3xOv2+uO
 zPtmdUqqbb2m8cblZdmwak4PWkv6EWvGKmUXtCuxGtucyWK5c687KOynH/zKtozBzfU/ oA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrcaxxmdc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 16:38:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 04082100034;
 Tue, 28 Jan 2020 16:38:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D61962BF9D0;
 Tue, 28 Jan 2020 16:38:19 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Jan 2020 16:38:19
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <broonie@kernel.org>, <robh@kernel.org>, <arnd@arndb.de>,
 <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <fabio.estevam@nxp.com>, <sudeep.holla@arm.com>, <lkml@metux.net>
Subject: [PATCH v2 1/7] dt-bindings: bus: Add firewall bindings
Date: Tue, 28 Jan 2020 16:38:00 +0100
Message-ID: <20200128153806.7780-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200128153806.7780-1-benjamin.gaignard@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073829_381330_EA19E102 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 loic.pallardy@st.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, stefano.stabellini@xilinx.com,
 system-dt@lists.openampproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add schemas for firewall consumer and provider.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- describe bindings in yaml files
 .../bindings/bus/firewall/firewall-consumer.yaml   | 25 ++++++++++++++++++++++
 .../bindings/bus/firewall/firewall-provider.yaml   | 18 ++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/firewall-consumer.yaml
 create mode 100644 Documentation/devicetree/bindings/bus/firewall/firewall-provider.yaml

diff --git a/Documentation/devicetree/bindings/bus/firewall/firewall-consumer.yaml b/Documentation/devicetree/bindings/bus/firewall/firewall-consumer.yaml
new file mode 100644
index 000000000000..ea7963c600f7
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/firewall/firewall-consumer.yaml
@@ -0,0 +1,25 @@
+# SPDX-License-Identifier: BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/firewall/firewall-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Bus Firewall consumer binding
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
diff --git a/Documentation/devicetree/bindings/bus/firewall/firewall-provider.yaml b/Documentation/devicetree/bindings/bus/firewall/firewall-provider.yaml
new file mode 100644
index 000000000000..0f9a38b63fbe
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/firewall/firewall-provider.yaml
@@ -0,0 +1,18 @@
+# SPDX-License-Identifier: BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/firewall/firewall-provider.yaml#
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
