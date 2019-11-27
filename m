Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC4710B43C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 18:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y6OLe+3Xi1IPQQap97khVTSHeYZ7lEbUwXHRVd7qKpM=; b=Rb27wKXc345hpl
	4AvGlvmopCp1H22iHwnWoolTeV1yrhWNsNIEq5EgzSMk0Zs4FtxTTD7IV2gnAjm5FbaWpbVbafMMA
	vilNfkWpoRXGEiz19Ucx5wX/QcAY6Uqm2Mi82lYR17zRTZNnjRyHZmzA+ptsqlCiHlhfzptYqVrry
	U9RXxd3qiVEEBFHFmLQwVEmz0c9yzbF8P0gXAgT6upexzR4YXJmLElSKBE3bK4U89In4x5qsQvYOQ
	C+EhNNXCSFbTG6BfV9XQPZ+/5qw0SfxyZViOgTgVe62jPHq0zEqWAyd1p9S+gDshxt84mE2G5Mh1e
	oVLV8zWQlr0dgioYPHzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0wR-00072I-31; Wed, 27 Nov 2019 17:17:27 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0wH-00071d-GO
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 17:17:19 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xARH2pcu012552; Wed, 27 Nov 2019 18:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=fNAp9C+/NbGS9PcvQ8oHpxudnwZNMo8lEEBUEvBZe2E=;
 b=xjp/i3+yYCaibmCaE3zAQsnM0xazAt9F/0hKy0lUglyNBxw3m0F3zZgY330s6sxKdlPZ
 UH52Qy4f6nxnqaGwOU/onjfIV3PAxkLpmMqotO5B9KdlNcVIJ/DSOgMrr43St+uoNqFS
 l8cKD1/sVxyIyeYU/QiIOwE15c8LlwBFI/hjaVp7T/SHW+dwllqeO6IRYebUI8T2b58n
 0934JBSNyWWdV9+lzDphdITrzh+aWX9EgkrSxoYTuqLYbVOZ53ZB8i8WHMNH08oB7oqj
 hU50iYK+1l1LAGi7WKOkGr5+F5s4G92cLLYe52CCd0IFdkMj03ZSG7nvCTTyUXWLvCdw Ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2whcxkmw4x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 27 Nov 2019 18:17:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3245710002A;
 Wed, 27 Nov 2019 18:17:01 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 6E3F42C4FDF;
 Wed, 27 Nov 2019 18:17:00 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 27 Nov 2019 18:16:59 +0100
From: Olivier Moysan <olivier.moysan@st.com>
To: <jic23@kernel.org>, <robh+dt@kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] dt-bindings: iio: adc: convert sd modulator to json-schema
Date: Wed, 27 Nov 2019 18:16:42 +0100
Message-ID: <20191127171642.6014-1-olivier.moysan@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-27_04:2019-11-27,2019-11-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_091718_015706_E0F9112E 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
 .../iio/adc/sigma-delta-modulator.txt         | 13 -------
 .../iio/adc/sigma-delta-modulator.yaml        | 35 +++++++++++++++++++
 2 files changed, 35 insertions(+), 13 deletions(-)
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
index 000000000000..8967c6f06d9d
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/sigma-delta-modulator.yaml
@@ -0,0 +1,35 @@
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
+examples:
+  - |
+    ads1202: adc@0 {
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
