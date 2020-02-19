Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7B163D8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 08:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W/dS3A2HIMdLAT9oQJDCdSzMz9u3RfwUcJji26Z5faA=; b=aiTVV8eVzbdXea
	PFjzqPwroENwOce6YzB14Ck4yK1zbZd0geoaU9SzhIK9uoGfHqQOSUaz649JSYzMQWhBtdbQvAf/a
	ualgIe1/BwpRc5+LO/PMs08UY8TkefZF+2gpqVKovik79u0UYvsATr5deUH+BvBBZA86H+94MlYjA
	jWa/KSZEMrDn8DtD51JABcw77HV4UXYYtm1lhUAYbU0sYvLVc4o6WJWwiy6OKtOCtgjI58zdgZYo6
	nEw52ug9o/7LphEzM+2ZhdHf4ObRd4pmhnsHZ9CUivEsn1XPL62zhgWF4grVUi/H/bTNUQzIjnmVB
	QR06t3ZqETR5gquY2VYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4JsI-0007IU-4z; Wed, 19 Feb 2020 07:34:26 +0000
Received: from mail-eopbgr60069.outbound.protection.outlook.com ([40.107.6.69]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Jrd-00078J-Ew
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 07:33:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eq1EBPq0UVhl6ElPQosAVaCy/S4YiAgtndyaJH7xTORp2N8PtidePrV64swkJy3AM5kZ84HBnLnIIPlS6WUS3qq4Qd3I6ihR8ws1xYnYMleXFQKgjMuSRBhgCGYQ49oMW0Wk4YGxDgqpGWjsy8NfvXjL3p+cF9Mslfdl+ErGkESvJJmDk8F+8TOMHDAYtYmgVgeueJdF6RAWs1/DAN0XMzV1ZuQAvNdRZav/qUyaHYLqr1BLbFkfIwWZFM0sO20vKfEXNl7gchx/p1Bo+7IuCEiny1nVu5NsxSVHiaLlJMbAZlLdubgwfXBgytWd1Q7whL0okRFH4vYwwXoBUYFqUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=guZUjDw3rLsB1wDaQlDCH/YqhhmIeGLUk0m597LLgoM=;
 b=a9mMEuAdpB022K0WHS6vM610RBsPKBMzYNBR71b2BGN9igoKGQBVH1AsPJzajyF/RkMnnnYGZYAGDs2gV7NLvKqguWloVGnmX/xMVlEMOn7txB+bqigEA0C8iFzHir4gIEMsctkkAKC0rTmi4+FFSSsV5Qn+BlKhLK312LIbsVhsFoTWQpZz2phTTkQxhg2tmR4codthkw/BGL3qCmASLUHI3hKOIgz5YXIBP0E1m1Gg1c+8yqMqIYBzHyowiWp5jtRXBeV/X0TW3pGbB1W4jHV52/p0pjuDrWYfP9jA8TNe/YZmYcywRjawkxCjua9qWGio4Zvhj5XDXJgwrLYwFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=guZUjDw3rLsB1wDaQlDCH/YqhhmIeGLUk0m597LLgoM=;
 b=OExWpc8FEXgHMeqPBTTFlXIoSV2rCR/fhF7HNicrza06ql7/Meo6WTWA7kr0rrRGANVLkAxluFqno5i7VrvovLIvzUOz5jtuFlLBFg3LuNQveaIq2JIdPqFhOdYLrKwMYkSXchJCYMdAQuYAAb3d0PIO0cHS5nj5SP+HjDDD9Os=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB3969.eurprd04.prod.outlook.com (52.134.95.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 07:33:42 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 07:33:42 +0000
From: peng.fan@nxp.com
To: ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com
Subject: [PATCH 1/9] dt-bindings: remoteproc: Convert imx-rproc to json-schema
Date: Wed, 19 Feb 2020 15:27:37 +0800
Message-Id: <1582097265-20170-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
References: <1582097265-20170-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0115.apcprd03.prod.outlook.com
 (2603:1096:203:b0::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0115.apcprd03.prod.outlook.com (2603:1096:203:b0::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 07:33:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1c090ec4-9273-4bb4-ced4-08d7b50e0b61
X-MS-TrafficTypeDiagnostic: AM0PR04MB3969:|AM0PR04MB3969:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB39696C5B0D0CF1BC17FAF9AD88100@AM0PR04MB3969.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(189003)(199004)(66556008)(66476007)(8676002)(478600001)(186003)(52116002)(956004)(81166006)(81156014)(7416002)(5660300002)(4326008)(2616005)(66946007)(8936002)(16526019)(316002)(69590400006)(9686003)(36756003)(2906002)(86362001)(6506007)(6512007)(26005)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB3969;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hjtRbsgIh5mY7TzzYXBh7zr83TrbKVKqoPiejgLFexsy9uE6F0PpnfsB/+lO+Tvzc/1pgPSSwtnZ9DE+mupqSgqa7T55jdXwY97AX05IdDJ3szgJTay0LLPrzWhKvMLmd/72/HL3cFoennhk2dB1C4sswZTitkqfgoZqxSqVOHeguExX+XC6bHzgRyEJYAk7Oo5jYZMjwWNYfktLIK9Vt3zCBKrzHKn13kOYnsTAgfmiEetx6Q3KrgTz3anPeCzRiPLIs3484OF5tYvDwTN+tjT09Jfg55DYIAFw0Io0AyT2LMY6zbiEYyxuKMez2RQQveHX1RTy3ZNXNl/onL5X53v9fJ9r2FiwYTiXcjvLdL1UzKa4vMhW6YHvBO1kI8Mi8Jy02yn2xq7N0cxVbZyQ1Rg1jZVMjQEkTdeRehU0NRKOOwEs1wc3UUc/9IlY2ePwiRfzTYK2EgVKXSNHL1SouF+G/VhCkD4Loa7t16tp6otUXAO8o0tOm1HeY8Je5wSOOiwzTJBbpTsBV00UEGsXrKDYnUNqloE8OXJ/T3fA3UkkoT2Vz1DGw+zFLb9FTns3isbfs69SYd4ycrqOzWdG8mR1pWvjo803mhKuw3zY4u7DMqrrcFq+1GDyExWo6MVl
X-MS-Exchange-AntiSpam-MessageData: 8aRafuF9K9TX1lkudrBYNl3CGu2aW+bhfM33ZcUiXXuQh67b0pEQLbZAhMgTuZAbQBWrsFtTn2elrO0o0CPp6fSShQxZdhZhax9kQtjIz+0XscxubIRIErac4ZdBsR7khJNt6YJUlyws4z57Ak48yA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c090ec4-9273-4bb4-ced4-08d7b50e0b61
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 07:33:42.3622 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j63DnLekaJwUgp+jAHonQoNIMiCz44Nvsfvd/eTtTzqR6Z3EeGvingmbfObMjEZzMhr4DUaEt+KQsXXRsXv38g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB3969
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_233345_499850_914211FE 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Convert the i.MX remoteproc binding to DT schema format
using json-schema

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 .../devicetree/bindings/remoteproc/imx-rproc.txt   | 33 ------------
 .../devicetree/bindings/remoteproc/imx-rproc.yaml  | 61 ++++++++++++++++++++++
 2 files changed, 61 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
 create mode 100644 Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml

diff --git a/Documentation/devicetree/bindings/remoteproc/imx-rproc.txt b/Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
deleted file mode 100644
index fbcefd965dc4..000000000000
--- a/Documentation/devicetree/bindings/remoteproc/imx-rproc.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-NXP iMX6SX/iMX7D Co-Processor Bindings
-----------------------------------------
-
-This binding provides support for ARM Cortex M4 Co-processor found on some
-NXP iMX SoCs.
-
-Required properties:
-- compatible		Should be one of:
-				"fsl,imx7d-cm4"
-				"fsl,imx6sx-cm4"
-- clocks		Clock for co-processor (See: ../clock/clock-bindings.txt)
-- syscon		Phandle to syscon block which provide access to
-			System Reset Controller
-
-Optional properties:
-- memory-region		list of phandels to the reserved memory regions.
-			(See: ../reserved-memory/reserved-memory.txt)
-
-Example:
-	m4_reserved_sysmem1: cm4@80000000 {
-		reg = <0x80000000 0x80000>;
-	};
-
-	m4_reserved_sysmem2: cm4@81000000 {
-		reg = <0x81000000 0x80000>;
-	};
-
-	imx7d-cm4 {
-		compatible	= "fsl,imx7d-cm4";
-		memory-region	= <&m4_reserved_sysmem1>, <&m4_reserved_sysmem2>;
-		syscon		= <&src>;
-		clocks		= <&clks IMX7D_ARM_M4_ROOT_CLK>;
-	};
diff --git a/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
new file mode 100644
index 000000000000..12a5f3de38fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/imx-rproc.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/remoteproc/imx-rproc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: NXP iMX6SX/iMX7D Co-Processor Bindings
+
+description:
+  This binding provides support for ARM Cortex M4 Co-processor found on
+  some NXP iMX SoCs.
+
+maintainers:
+  - Oleksij Rempel <o.rempel@pengutronix.de>
+  - Peng Fan <peng.fan@nxp.com>
+
+properties:
+  compatible:
+      enum:
+        - "fsl,imx7d-cm4"
+        - "fsl,imx6sx-cm4"
+
+  clocks:
+    items:
+      Clock for co-processor (See: ../clock/clock-bindings.txt)
+
+  syscon:
+     description:
+       Phandle to syscon block which provide access to System Reset Controller
+     allOf:
+       - $ref: "/schemas/types.yaml#/definitions/phandle"
+
+  memory-region:
+    description:
+      List of phandles to the reserved memory regions.
+      (see ../reserved-memory/reserved-memory.txt)
+
+required:
+  - compatible
+  - clocks
+  - syscon
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx7d-clock.h>
+    m4_reserved_sysmem1: cm4@80000000 {
+        reg = <0x80000000 0x80000>;
+    };
+
+    m4_reserved_sysmem2: cm4@81000000 {
+        reg = <0x81000000 0x80000>;
+    };
+
+    imx7d-cm4 {
+        compatible  = "fsl,imx7d-cm4";
+        memory-region = <&m4_reserved_sysmem1>, <&m4_reserved_sysmem2>;
+        syscon = <&src>;
+        clocks = <&clks IMX7D_ARM_M4_ROOT_CLK>;
+    };
+
+...
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
