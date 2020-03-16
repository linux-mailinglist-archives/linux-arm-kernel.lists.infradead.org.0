Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B5E186753
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZSWsovhPQisZIxXgM3jZ4q2POVIJddbtEJZzYWOS/ec=; b=bs3AsnETZg49Uj
	4Ud3+k8PZjLH4FcDxQtCbxxsK3K8W0j9vlGVhwxxGELKFcfzOKYUTwM1ECIYZ7t6cDa2aHSBSl0vI
	Txv1VcJ8sfRXWzSgQMk2AI4tEXMGzK7y2pvk1Qd8mCmGwyC0ubuU7Y+lFZyBp5RUC+C/1nTgxWmPk
	T4eU7ef3acABqQCloBUz7SqKy3XXBRElYWEqRbd1QNmK/1EYIKEbXwd+1R4ABNJbjCjGQ+ZBYsF2e
	434SHZPLFFgYE4eNHhHUiA2nf8EfqHkt0DgmSqdfdI6vUlULrfix6Ogtxl+6I9v/84qlihRsj3cwk
	lpkLoTbvoKItYeQva/qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDleS-00086q-Fg; Mon, 16 Mar 2020 09:03:12 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDldz-0007vK-0f
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:02:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ERVtfAibClPCuoMvun7DizOt0VtZ+KsVyUR+PqjQO1WCfqJz7iYBUgh6Pujff/fNU7xDIa68wCHC3vX36F5odcgbKHFx64L+Qn/JELGYfFbni/iUSYBvL6J8unGfSOc+/8q4XqYqLl1rpXbZs7vyuAGrokUs2+U9mv6hpjGgNapC1HTMytrYkjSDE29xZGKszYoOqY5zAUwJHVEw78JQf6OBOB3n3GibV/s+EoIE9XBUALhwJhop0LjPLFNVWVLN7fhRCS1gPdcW30JTCS3C73yWv9XLL+FT0JjuP3H+/hTjESLIFlkbLmmBdOvwbsSOdIXVmB9pSmCzmm1haOIq4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=te/Hfk8xc61OwVdmSRVbSsSd81SCyAQnrmdY2Vh+lp8=;
 b=Kou0eTbKn8BK1JhMvCVXN/c4bTxGqJPTeklA47rHCG9WS9QxXSy2CKYRzD10oJ9xNs+vWyrVq+5W9NJ6Wk9GdfqWJmyXs+ISEaIapUhlK8wCAEpuLKEkUAwOxuR8PZrRHOZmMEk77Huj8Au3oUmHhzfXlGQRWBjNZfcooXMFFREShBjqnHy0VorPWUSyBEHnzIg7enDjuxxKMmH64i9UoEYo5EZbeZbaBHcYdXh8vzF+O3dwnYExbrh148HrIceRsIoYiwTmgnfbNQyD3By8FWFrPiSJk7Ng4GV5ZBp+H87907+X4Gs7rmmQBHB7n6LhcTjM3Dj3bG4KkjDXx2L8WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=te/Hfk8xc61OwVdmSRVbSsSd81SCyAQnrmdY2Vh+lp8=;
 b=hNsTU0pJplBENjvSpYtk1Xs+P3Q+E8qCsJi87JkwMYwk8ephKdWtpscTihAqFCAYeBfKBb/N+4wxXWpYfketXh5ZxRoPlFM0Y7zI+RS8Ad9dY07Hk1wEOUzkOIGMi+5YNiFxmmjk3CmsgkoypX+dK7axlwjCHgU6E4syOUr321w=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7169.eurprd04.prod.outlook.com (10.186.130.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 09:02:39 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 09:02:39 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH V3 1/4] dt-bindings: fsl: add i.MX7ULP PMC binding doc
Date: Mon, 16 Mar 2020 16:55:41 +0800
Message-Id: <1584348944-19633-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
References: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.18 via Frontend Transport; Mon, 16 Mar 2020 09:02:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 629a9add-f21b-4a01-a776-08d7c988c701
X-MS-TrafficTypeDiagnostic: AM0PR04MB7169:|AM0PR04MB7169:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB71695CCBD2E860FA5F3C117388F90@AM0PR04MB7169.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(9686003)(6512007)(4326008)(16526019)(8936002)(81156014)(81166006)(8676002)(2906002)(86362001)(316002)(26005)(186003)(956004)(2616005)(69590400007)(6666004)(36756003)(6506007)(66946007)(66556008)(66476007)(478600001)(966005)(5660300002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7169;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gMJr6onKblD7GOesCn4pLpeZwkhlItHQW/JFqz3fvSGK0zfrvATnGbabLGyWYIxs/KHW9mHzAS8rduNWlFBaeAbCbFWYVNi1yG2fFkhaRb4/yKDDSYkphTd2AC7wtiUBHg0S9I2ma+BeCKnMbeCD8j/BFfc7ZcEPL6TMH96xxUEjYqTkI8nFIszK5xbaKvm37B6KL+1srU1x1MZV++Dl6/mVhEWWg+RFL30ir8vjr3FEfIQC7yeE+DZL3ibKEawl+fAzUDnZsdt5s4L3CHLDGfEzlcK9LqYohnZ6bCOg1mUMZvO62xn+7zzyZA5khuz2wKHgNbF1BkMKo/aCiIcxFU5YojhGvSq1qsg14mSBfUAiikisK63wZRuU72/RfwFgIbMHvePlawCTAurF8iMhXciHmlmW/TgUJmboYEfDPYgCKvnkFsv2x3CmN/hLkdprjPQoYhrWiKYr6ELiujw2+ITOX8ybHplzpJx/j7JRj9hGAKbZuaJiQ6oN9WrhMX03Pf86cfdqrPpUbvxsG3L665yKgKh0fhhBUF+EdMqzABJjUSrllSvs4rzjXVLcD+4mHpoeh1C7GjWcSwE4CAa/OQ==
X-MS-Exchange-AntiSpam-MessageData: KlrKn5vCti2qB/oqC0LRAqhiQzjRt15BYCx9y9TwT3p4gt5jbiQdxtp1paS261WcSq75UCnEt+odzOJwErdvAqaZ/UXfeuCBomCzV6nYziRyt0JKM4aeN6IHFGUDb11z/sJhOHXEwsVV49rSh79qSg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 629a9add-f21b-4a01-a776-08d7c988c701
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 09:02:38.9303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lKBfmXN+3MWTdRCCdkVexOVlkf4PgefpSYMeMw9WdH7n/xs8D45NRZyEgnBOO7w4dYPzwZ7RHsvnb1pKP9GQmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020243_058951_BF57B05F 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
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
