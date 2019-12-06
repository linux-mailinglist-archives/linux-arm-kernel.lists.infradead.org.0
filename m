Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEEE114E90
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=74fjQwXMhR+Cbqf5AYRJXKvUXVMU4leaX1haPCLQ+AQ=; b=dv4O+ujP74pfVJ
	mOrfRvqG/cNSh10oEd+R1Dex70IeyOdKjT1QKT3I64i1aFt+EIKU4pwCVYk2p7p3lk6u/m00kU1Ns
	ti1WFQJTaYiqY3I44H45ZPf/O8kTR7QvLJmAIa2FR7sQgxcEe35HTYkr3Uw4RrIygNALnAXTi8jJH
	FyZwaIYpjNRYerEsSkTLoRxKbrTPMSZPeOgVPXCuwptWHWv35atvQh/qge+kKhlxj0ZzKCqH5NBt3
	lv9PdON1xwiZeIi63B/FH7XdBu6i2qykiIEaYts3AqPFJnZj9p13yOdgsIeD/sr5BhOfK+wMkv5s8
	+sD+qe0qNETyzAabQUuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idAQZ-000301-0E; Fri, 06 Dec 2019 10:01:35 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idAQR-0002zL-Kk
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 10:01:29 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB69ue52015177; Fri, 6 Dec 2019 11:01:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=JDvwUMe8qpYb+uBxaJVZc0mpCE2XQdvwLFY8XvYg2+A=;
 b=saAwJ+8rZdLkql+hc3b+2cZki1ubgidsBHnPPTgwkt0LPtguj96enegFpl0vkcMIdesK
 GLCA9k6Fq0vcRY/OO7zMpBeAzfNaBHrwVtsd2sHMs4flsy+q84ApYxLhyhhNI8x7fknu
 J3c+5suj50W1o0HwyEdZ8p2JMMx9uccf+Q4q2IdbFHChENtozCWe1IS9HcSDY5f2Lg8N
 8AE6JadYHWKxogwIpS/WfifB3xQJcJtf5x4THqurzL5n/YYJi7L8fAWAj0zc0iTjdUuu
 R4+s/ocJRizUvMWfqqQxhKSebo4ybepLa6zaGajoGmu4+385jaF+dJrknTwVvdog5EsS XQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wkf2y7tb2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Dec 2019 11:01:16 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CF1D7100038;
 Fri,  6 Dec 2019 11:01:15 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 95E072AD9C8;
 Fri,  6 Dec 2019 11:01:15 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 6 Dec 2019 11:01:14 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH v2] dt-bindings: iio: adc: convert sd modulator to json-schema
Date: Fri, 6 Dec 2019 11:00:58 +0100
Message-ID: <20191206100058.26767-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-06_02:2019-12-05,2019-12-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_020128_052322_3DB8C280 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the sigma delta modulator bindings
to DT schema format using json-schema.

Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
Changes since v1:
- add additionalProperties
- remove unit-address in example
---
 .../iio/adc/sigma-delta-modulator.txt         | 13 -------
 .../iio/adc/sigma-delta-modulator.yaml        | 37 +++++++++++++++++++
 2 files changed, 37 insertions(+), 13 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
 create mode 100644 Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
deleted file mode 100644
index 59b92cd32552..000000000000
--- a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.txt
+++ /dev/null
@@ -1,13 +0,0 @@
-Device-Tree bindings for sigma delta modulator
-
-Required properties:
-- compatible: should be "ads1201", "sd-modulator". "sd-modulator" can be use
-	as a generic SD modulator if modulator not specified in compatible list.
-- #io-channel-cells = <0>: See the IIO bindings section "IIO consumers".
-
-Example node:
-
-	ads1202: adc {
-		compatible = "sd-modulator";
-		#io-channel-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
new file mode 100644
index 000000000000..a390343d0c2a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
@@ -0,0 +1,37 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/sigma-delta-modulator.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Device-Tree bindings for sigma delta modulator
+
+maintainers:
+  - Arnaud Pouliquen <arnaud.pouliquen@st.com>
+
+properties:
+  compatible:
+    description: |
+      "sd-modulator" can be used as a generic SD modulator,
+      if the modulator is not specified in the compatible list.
+    enum:
+      - sd-modulator
+      - ads1201
+
+  '#io-channel-cells':
+    const: 0
+
+required:
+  - compatible
+  - '#io-channel-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    ads1202: adc {
+      compatible = "sd-modulator";
+      #io-channel-cells = <0>;
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
