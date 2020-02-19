Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5887163E72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:06:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9ncEZvNgql0c/aMP7knio678HluLlYeJoXhisZH5Jk=; b=VCcnRh/F7MkQEi
	rWfPdcJ6Ki4x529OZheUX0zqnTbrYQlnxKdOV/FlMkb+aYiXxeKFtDUqEPZsdWaHeNbZPY91tBIMD
	dwnJiu6ZB/MiPA6E+35cGDPvonK9rT++427w1+C1jWi+JUYxKDWEBUHHOfx1iv7mKPsC+kyvGKQ3F
	V9Hw9E0NhPHkVCKzabe9oiDf172BY2f+6Ud/C5x0LvlnLAyt5OsOPvH3B5apnTwB+EgB9KDPge3o1
	+eWWgIdl0lY/SE2+E4dZJoakoFbXEgCaDb9Zwnz1s2ltd6wIjfQdoepAAJQHzB7YJCDzcnEXQRetp
	DFI/p4WjdGyTBRL41E0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KNZ-0001Tu-RH; Wed, 19 Feb 2020 08:06:45 +0000
Received: from mail-vi1eur05on2046.outbound.protection.outlook.com
 ([40.107.21.46] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KN0-0001FR-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MtrNqCwaXx8JK2smgkrfNRS7wHaLiVWxhCnsLfkZ2YqO37+1VAAc3qwxENE3OdAzT5pH2dq8sCGCblMA8XdNAF2Eh3DP4m4LT4Qn7KTsdhY2b9gMEpadMS48WmcMNxAAQ+knvkIMDm4vO/EnzbcOkYBgJb9UBnm6/gwmCjZovrCCR8JmnXqU2FmK5bH95PpbdvL3XSQ/p3DhKwrsTB9Muintp0b3lJPdF1kix3YdSHC6aanEcGtM0DnDT4th58fG3WgtleERJOAeH6+9IsEFjojrWRtBkXopT65NCM8n5c6ZtT9wDNHl0EwKutyLQaJvI6GETxMoBRBmSQLf8GJg9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=df5ritx7B5D6lOHcf8L1nv7tKL8flDA1EfZkxehyBis=;
 b=UlAWL4A+06AFl2f0tpXVNf0FsnVRrVmDOXyTAGMT8CxgV+pWC73+GchKn4UsZM29atnDki5YNEbz4ZKXm7h6zgiJCFXDXqo2oIC2Qgq4uXGxI3rF2RrGiEpbDLlqDxwTZ3tw0PsfoHwzDmqTxbOujF3SFuDMAsR6HVdumaeGoCYnOwoOQ6Bw6jTWbiM15VSS/s5n5Sn2M8eMKiVgWmmmM4M9C/ioEENFRowXCPuFPA9HlPRmTSQysKT+6jFrDyMIkz2hP1ul9XyShWwaR7Ex6QkFPS1KcZQxdgb14bWmGXFPtx6c9AmiRoxS2TByPXllmn+wojJN7fPcPBGk36JJ0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=df5ritx7B5D6lOHcf8L1nv7tKL8flDA1EfZkxehyBis=;
 b=T+g7h50VXgkf5ALIWJxhanuSATu0daahVRYkUZTrhtR51WzX1PlcHZ3hpVSFRvmYLqeCocxDp2kFAE2DH72Zw8n6U2T0DxiXC/LTkA/fgVsv2FR92jbhgLkv3MdY1UJVx1X1SMAA4BDWevdjzXdBLemn/3s/7yuGgddYk+rtrwQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:07 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 01/14] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Date: Wed, 19 Feb 2020 15:59:44 +0800
Message-Id: <1582099197-20327-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 51cdb211-25ff-415e-5e8f-08d7b512925e
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB64016AB925518DBDADB9874788100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(2616005)(81166006)(8676002)(9686003)(4326008)(66476007)(8936002)(478600001)(52116002)(6512007)(6506007)(66556008)(69590400006)(81156014)(316002)(86362001)(66946007)(956004)(6666004)(186003)(5660300002)(966005)(26005)(6486002)(36756003)(16526019)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rjmGaNWP0Asrk0kV5c92Vsf7GL376th+0SEFXobh2AvZGlNDfflJNNYuSuA5CLT4Bl1In0GKUO722AeAxfYqyqXgrXmJRYbASSALDJHBwJq50UNvo/V52XhrUNA6vSOHamibCPsvrlBL5yig0Fi5oYmM78S7gge4+OakCZrGJEBmHN2MX8fKAl2xOK2a3kwoVaMR0r+kHonFWrT8NB63x001WftC0dAStc/m8gy/BkG1BaBh+JOCUEsWviwsbKaLht7zAshhAaoLiCky3Foxb3vi/t3q5UwnV0Lp0ryfMeRVGTMr/FkcY50ijMsmGitgz4KfjBZYed4KPZUctFjJQwPKgTcvLtgIW1FAh0DeFAzCGaDn+/W3pT+JKhOd4Zs9XqQ1KvCdA+vYxcXLaT46VeZdeZ6SzczfxcTFKxqhJ1AL3C7rpuCNJD/ueOQRqqvMEyjDT8NuVxf+VDdGL9Loettvv8eT2DHB9BULemIgWpAwVUz7BrJ/KEgDWp5+ZLdo4HgofuIk4jCqxpcKtD1jRYyQH9++gW6II/DEAcio6/yLhkgT0buedToApyDrUDMl/HVeXjNBY3+R748bJ7oGT7ZfoNxtkn7iTR1qEzCk1oj62HgG5BDylk62SpOK2Iu3
X-MS-Exchange-AntiSpam-MessageData: 0dn9N7oM/tAaDtirpdiS0lHOYDZuZ82ldd1JxTh9P2vuOYc8MQaEglXXGMMMPsr7PyJDrmHxhduUwJVCOynDrPUWp2cMEsh1SIHNvShSPRdvX+2V2022+uthVKRpSoW6UrYU7JXO8dfFsZh0cjvc8Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51cdb211-25ff-415e-5e8f-08d7b512925e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:06.9639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +8KQQg8zQnEyeN4XuNEv/UNwHk3tRIb30hNdbszov1l/xsvI9VvFgH4zLTgmPMs0jee9C4TgSjZN5tlOJ3e7ZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000610_683246_7F941615 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.46 listed in wl.mailspike.net]
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX7ULP Power Management Controller binding doc

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml

diff --git a/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
new file mode 100644
index 000000000000..992a5ea29d39
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/arm/freescale/imx7ulp_pmc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: i.MX7ULP Power Management Controller(PMC) Device Tree Bindings
+
+maintainers:
+  - Peng Fan <peng.fan@nxp.com>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - fsl,imx7ulp-pmc0
+          - fsl,imx7ulp-pmc1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    pmc0: pmc0@410a1000 {
+        compatible = "fsl,imx7ulp-pmc0";
+        reg = <0x410a1000 0x1000>;
+    };
+...
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
