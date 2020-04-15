Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A531AA1CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:49:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NloPMLKTSDu/3gCJFEerLuxr/R++XMC7RTbaTAhoJ6M=; b=LxykojqR5a90D2
	l35lAZ/CGpsu/PAVfDvuaFr5kX87TB1ARc23Rz+Wz0lojSz1RjBkzzrFfT7pFRobfnoBVFcg864c7
	zk6a6lXveda5Xt8jYRUPOgpYkSPL2leeNWI3p3E+nFsAKFOLk1q58hVQ3L96rD22cpg5x3N+G5fi+
	jPy9JWtP0lTzBQ4kObvIusF3k+0iwClkR0XUm6ujKjsn7ahY5PMuFJ73dRmpfya6reGPjOlqaStFj
	ue8QOoGrX0BWxMovS3K9ZV6OtyVZAz5j3ZFrAUncSjQti1ea3BGZPwh6ds0OIx1gbgQeoICN0GgkP
	K3b1nte3bwf0f0NO6WNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhUA-0003Lc-10; Wed, 15 Apr 2020 12:49:46 +0000
Received: from mail-vi1eur05on20621.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::621]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhTc-00038j-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A06RtMnieG7I1kIm8ygYH1RBJ2vPyMk6xhh777qb/RRdooFGwCALISG4GSppqJ5rMyrFfzBunRMrr0PRlY7JBuF4CJgAyJkmA+XR2WFGXC/BBuL+Xyrpc/v6zGLKHJzyZjGAYmBVQAB7WKufYPTMnOAPVXv+CxhH/pt6ehfcYSyfzQ355xFMDeuMULnr8yLQhcYjA/YC1Fhs4BwsY+60EDHhGtE6jGMCrlaVVnmYg73l5jamfi8AKC8yPY55REnW+bSJCbjAvjTj3tKYMLngXBFq7U4yZ/6a50xeX9oJcEea9jAvUbhDPIdobNhLwJgJf5itYDHxMllQ8ko5eKf1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0dByjc0tAMfIXhOiJhJHOqIaqT4YU/kTo4Kdenzn1qY=;
 b=CcMXu9RtLqcGQmK7/URTQaIniwI2XC552/Kwwn6Aa2wOH+UitP3gA/pz4j1L4vFGv9DNlfCdyKqJHqPXMMBPZ3cMES0qnbw0E0xc2CfqAwXl6q0Ng3umCrFBzjyADUAV1sTgU5nXU7nlkGOqpkUBLxgNioqM79IxOejxk3uPuLvW8BB7JZ17mZkkbSN2IAfWVciMz7M1ebfZQLFNb2NQrUGHmGxwIGZcejnXgdqOUBXvtSZsXVBq1U2eO69Ot9jnHoz0LMxOhlo9WKp4X/tvrEIURWlpRte4foGkp5d7mRSLc9TtwPEj9m7hmXJFsA3XIiYJILuiMpkK+SbO1p3y5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0dByjc0tAMfIXhOiJhJHOqIaqT4YU/kTo4Kdenzn1qY=;
 b=X5QYqljn4jGb5WbuiQHcLNNWfDbd1brkp++LYZx9cdEVPeKJp7Gm/okTqIe+jSAc96WY0sg8dcgofXKHsZbUiKKFMzEsI+kL9TxQzt6QUgKX6Nvegjj9zq/QPLPynb2Y/0RvUtz8pNXZB1Lza6tvXiFQ/oxDU9bDCGzXfVcEt3A=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 12:49:09 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 12:49:09 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V4 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Date: Wed, 15 Apr 2020 20:40:46 +0800
Message-Id: <1586954449-17463-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR02CA0098.apcprd02.prod.outlook.com (2603:1096:4:92::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.17 via Frontend Transport; Wed, 15 Apr 2020 12:49:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6140373a-d7b6-4320-8fb7-08d7e13b63d2
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:|DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB28560CACB99C9A80C0C9987388DB0@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(6486002)(66946007)(26005)(186003)(52116002)(16526019)(6506007)(956004)(5660300002)(2616005)(6512007)(4326008)(6666004)(2906002)(316002)(8936002)(966005)(69590400007)(66556008)(9686003)(36756003)(81156014)(8676002)(478600001)(86362001)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hoekhTfE4jsnEr6cPOcSdUI0DZRfBNhWN7pDR/GR3qA6jqAks4rKW4WLDdrxFLWv+FlImisBFG9pilXN4zcONSKTXygMobIrnI/DV3BMthfY6Lg2rRSPgsbndJ38waTQsAP+qHOw624P2TKHhz4+YLGNV2sgdIIiQAef4tiF4cKd8HExdsRYskLgVTXo1FlW8bBu+O/uhvGL7YujwHvOKSQKbNbIyNckuMfpB5LFXy/Tcy5UpRnX/56aIrErsoWAHd7l9GkqrzkYK8pXKmPEgMu8f4a9A+kkyouwTkmo45nMO0k4Qb+sByU7KVGoorcIPDIv/AdKzrcj1q2QlX1/CiKdCJaTnQ08KmlgQS4McRJixDGPc18WX+hllVB/KnUjuWB6pgkYnf9neiSdbiKDyUSg0B9E4FdOzKgGtnFcrGuYWq+L8bS/8+wLgTSVl4g4i9BUr1Vyamc2/tnSSSsPo5QiovxwTGPqFXDGtcoYWgn7pELf0PNzX7uvTM2jjhSBBKr3RqaikPtiaki+eJxfgt3Hazc85oJW0t/kPebeeMdPmGQF6DZ07tlz9terGcUNo5PpYijkynzD93GgTMLaHA==
X-MS-Exchange-AntiSpam-MessageData: 1DDFCWNXnI/iz78KZakS19QrwunLvlUfIR1rn0E2O3PU8ZGp9iiRtWqKF+peu48GZRTACDKcgEjMtw6xcODSiOqa511+/5nGZ89S2exTzOJRevLqbi6KiZqHJae+N+UCAABnwcIlSz9rCqgndEJK3w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6140373a-d7b6-4320-8fb7-08d7e13b63d2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 12:49:09.3196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rYTJlCG+5K2LCEoO+6dyshEYyIaWHKP3ad8dC9EcW1sYUDK9nNFImyUY9+7EvBUbiNOM575zo0pKGRmkSwTcOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054912_720401_960B0711 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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
pmc0 is used by M4, pmc1 is used by A7, they have different
register name and usage.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml

diff --git a/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
new file mode 100644
index 000000000000..c60903039718
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
@@ -0,0 +1,32 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/freescale/imx7ulp_pmc.yaml#
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
