Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EED1A634D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxG6Ggwsn2IMDUZm8CAg07j5+b1UUBMEsbu0ZdjGwPM=; b=hhea7f9w/hXqbk
	DsxmVza9YeG3EKCba5Km3MpjeU07aNZyay5mcw5kkAb6ECGlw092Q8DAriZ4qK4YID8FFOMdF/idr
	9eWbGGQHyJpt0Ep8jEHdsFHS2+MakIQZkc+YaMRmyY8bFPA9OxBSJboyMzSdr1xn5uuyzZaDNqlJb
	wE4ELXYTcDwqir8xu+SZaHluyzgQof7pdO+aRZf43eC81YEJ65s1/YRWjxq0GexxMPQQPshI+lmUP
	3ebAQpnMy71phYm4i9VuE9BlYBmmLIdRlrwZk2OrAMU1Cn5ScizjkRELSyfrzyUYXr4dHi7gs9hwF
	RxELGZj7V5utl2CZvr/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNt2V-00065m-O8; Mon, 13 Apr 2020 06:57:51 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNt26-0005wO-7P
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:57:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnmcmVa7G7mKIPNiPkHD3I3ZwsGkVsg65TNiQTJ8r1gP60/oik0tKD32L0oTImcFuWCppZdt5kzU+mpLFxVmzatTyTGb7HpII9id0oxKbLgyJ5OWxlmGIiebBQdT5ys//Jg3IP6tAUnX8rmJQSUIErWZPxbL5EwikaFqlfFJ/jm/OBUCZgUNoX2lwVIQeD3WOB+7SA8JZw1jQPFPZ2ywbTcDqS71Y2Jr+XDo4WJPU/dJ31QRkJ7Rh4svA2yrVSC3Bza6ZiRTwtWHUtKjbXH1weiPnwJPFMLPOw6+FJx+jx19boC5TVm+O8Li8mLDGtK80LUfdaiPdvRHoQEKZNqnmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOUvGQcFCI4VGVxKBmKJxz9nyt4dSetVyRYay1YvnBY=;
 b=NBksdiAypMHxvko+nAYZ4ON4UPX3NEEaPya3EZ1ZH/ERqTK+7C9px7gmfY+3phN+4DbqwtKeskRaaFUDQyQtT3mtO2O9zwOMt5G2z0DjE/1xA6VQVHREOZUb68u6wK2ZIkBS4UERtWV8mHNo9kEIEYyViW5dcS5nAmU7x+Jo6x7ngNUVYEu2AURpe6XW5/BuHP7oDL2lROPMBEjs8iIRN8uPmntw05kXqH50ylBeyRhukN2mQ8+mlhz1OO6vdhjY4eQwsC/PrVZzE+E4Arol5IbsrT98vgLeqo81UXrfkm3D0e4BVVMfzP21VO4mpoyeMLdCKAtU953ciRiOLaO4fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GOUvGQcFCI4VGVxKBmKJxz9nyt4dSetVyRYay1YvnBY=;
 b=hviTTqyH76Cdi/m7fno6QUTb6qkjCT+aKtaPPIKfu+xnGPls3f1YV19bwmim5UjdsukVt47bq78UE9IO2FzGxvqzrmdZpm4ot4b+aJ8aekfxJHbC89ARqq91axGadna4p95fUN1wHTF9AQt45QCgemuJwnW7Mii/P6gDonb6Dvo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB4564.eurprd04.prod.outlook.com (2603:10a6:208:74::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Mon, 13 Apr
 2020 06:57:21 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 06:57:21 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V2 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Date: Mon, 13 Apr 2020 14:49:05 +0800
Message-Id: <1586760548-23046-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
References: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0143.apcprd06.prod.outlook.com
 (2603:1096:1:1f::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0143.apcprd06.prod.outlook.com (2603:1096:1:1f::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 06:57:17 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 48266a4f-3604-4685-7117-08d7df77e9ca
X-MS-TrafficTypeDiagnostic: AM0PR04MB4564:|AM0PR04MB4564:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB45648212FB184E09C7FA826B88DD0@AM0PR04MB4564.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 037291602B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(4326008)(86362001)(8936002)(478600001)(9686003)(316002)(16526019)(26005)(6512007)(6506007)(6666004)(52116002)(186003)(966005)(8676002)(81156014)(6486002)(69590400007)(66476007)(66556008)(2616005)(956004)(36756003)(5660300002)(66946007)(2906002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NyefpIUYoddu9GW/Mra/DWfM+MvaXdICCzvmjLfDXZ5C5L3l166w4mYF8rHyLyGgEzCj8vIKdzPAjFsoHEnNMstdfJ80aQCe5rQ7hKUK/CgdNrjfSGiu2wTPXbPi0J6KDRe0nkDR3bFjDnecQa52k7SvIjs7UzkCzPhSmmH1fK/ATQBikxu6gmEzNpajxBX2mq5K8+oDfvLjQxqBI6Q2PvqJgfZ2ugB41OY+jSB9pSdYoNyWTS3DODNsQePc9hebtmWgHwormhy22c+Z1URhRIy0DK5/gKBIwE5iMCKRs+TGT8H4EgHqoy0LeQjf4CV146c+vDw5I/lnYObYdoQeMJD8uqlDW+AHiEe6MZqkoHuQ49YUHbemqdp64U+nyx36DZqIqdPGZsr59+Bg2ObLF6dKdZBsfBO1bGJSFi2snRuPV55PH2+HAEwz4Wk1ivnkpa9rQr6Qm33AgNQuNyNJ9SN4TaRanPq4ey7qUzjuTQgPONQJCVeGmpbNwsHvaNmljE4e4/pe+sTLIJBCTFql4GtnR4T0YJRU5RbJYi+b8D+ROFxTCFiXO5+1MXd4vlUR0U3VAW4C/nKjA6t5GiHICw==
X-MS-Exchange-AntiSpam-MessageData: CfpCet6f6GmSYxgYMJCArhswNh1RqI8O6wQX0Kiov13HQejz/o5NxkXeSfMtey+QUQ82VfCurGViZoL2X619l2j2zMX3BxKHgeNeV2FUoR8gVnxsPaj2O6rlNfoc0dKC3J0Bj1DAunCPylLuRnUwnQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48266a4f-3604-4685-7117-08d7df77e9ca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 06:57:21.4784 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wb7bmo47i20WGN5MnsJgNLMAlDq4gv3gd2R7N6RN1Wizh9imETT+dpqSzC2hh6MNkWd/uKiJFLFWl1wKo+XcIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235726_266619_473F8721 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
pmc0 is used by M4, pmc1 is used by A7, they have different
register name and usage.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Fix dt_bindings_check

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
