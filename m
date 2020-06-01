Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FB41E9C36
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 05:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsmsv305rOJJ3b37vQ7FiVqlakEBdrbILYWkYWW4a3Q=; b=Fa9vsIxxhUgugb
	8uS2qVOiqU90JCndmmqJYbQjJ59r7ZM/8G6Odi80e4mdMK4xRde68g5ZgX9gzK0R9CJE4eWFZrsuN
	s8XyNwG0jxNOrUjd77WFFc26QXHDQJWmPmp5huTgrHkEyyNodlGG/rsIidqvPO36/H3Jw6mKCCYM7
	HiG7B7YwIl+xC/yX3PQyITOq1qZ4NzKOPaACAPBOEbW/GZktl4/1PGs48qBfQLAO2XRfCh/FRONX6
	m+2ym5wTbv8/roVf2b5bNNMc7avbImrVBxRMGJ6ViqaMNRbsKvTvKOiRnu6JJss/l8tsdh1HwRXTK
	1ydy+WBBTzr9aYQoL1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfbWl-0007qg-IB; Mon, 01 Jun 2020 03:54:19 +0000
Received: from mail-am6eur05on2051.outbound.protection.outlook.com
 ([40.107.22.51] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfbWK-0007gq-Mj
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 03:53:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ognKsVoJyRnDX+XXp/gWqhO1AKSeaRa0M6nDFnszhfe9vI0VHoLAEzDLgp3YIHDS+z9dZkSyKdUvKJLjDroAzWX9mWAykXHfc4iF5vhP1m7umWRJB1SPI1dAO6WZXg3uTRd9B4sVn/3iiFFY4i2K6EBslQ1SWn6rGCqouY0oQiH0KQI7GDyMWe0v2IZvITl3IBMseudg7Z+IvffgFglkDTx69cbCCfxBHPlrAbfrV2BhYhL/hChCHHWPNtiKCngwgj1vFR9q5xJGtOEkuLnRAe+3nGKIqRN2xDsgPbpUuhp4LTXZNL7uV2x5cRriNpvIx01hCOrfcp6EHcrp2b3LoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B0jj48GEXVEJEsNfyPvgTGWw4d+irj9YPtfQIb/XxqA=;
 b=nsYDPruGnCalZATtLO4jMZ4GMo3miS913VpK4HRB/T9wMRKHa6cbA7FgjJQQnai30loGZJcbLk2Dfa3H3R5YPV2rqjzz0J4cV7gHz5KRyZKf2wIcQ5TTIftzwxWGbMkkr1JDBFOioZU8f4vrkQJ6L7lT4IZ/6hmEre7XsrNfVJf7uQdsOh8vHNL62FmA4H7ce+IVBslktJhVGyTjzfcx9HG47QaODeJ8Q8uVTx0o4W0HzLkdYLGt/5YW74pBjXCgSux/lgL3RAKKLGQykty45XLTq1ksZdSFnB+uon6hK2x5BqvVV0Bacgyc54ZKQOZ5wZ9TaEwHsUF475dguvZAxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B0jj48GEXVEJEsNfyPvgTGWw4d+irj9YPtfQIb/XxqA=;
 b=DV7e1pp/Wblam6fmifvzuVgHca6I22Cl1XLam+Wyszir59AhJe6Nv7QsqryvkDXhhOLsdwwX7ZuiyePRI/F3uukrrcSLdgeymgqiq0ufRwe1bBQ41fwy4u675sv5XDY9eSOECUzc/2YUBbp819iOYmZnx8luQWYXceEkPAqHsqU=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2920.eurprd04.prod.outlook.com (2603:10a6:4:9d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Mon, 1 Jun
 2020 03:53:49 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3045.022; Mon, 1 Jun 2020
 03:53:49 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de, jaswinder.singh@linaro.org
Subject: [PATCH V2 1/3] dt-bindings: mailbox: imx-mu: support i.MX8M
Date: Mon,  1 Jun 2020 11:43:17 +0800
Message-Id: <1590982999-7149-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
References: <1590982999-7149-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0096.apcprd03.prod.outlook.com
 (2603:1096:4:7c::24) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0096.apcprd03.prod.outlook.com (2603:1096:4:7c::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.7 via Frontend Transport; Mon, 1 Jun 2020 03:53:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 28d35860-0aff-452d-276f-08d805df6467
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2920:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2920316F0E5C62C89411ABFA888A0@DB6PR0402MB2920.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 0421BF7135
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2zxjHh9dc2oeAVGbUGukmKrGvTt6qXNmWbgXxKMe2r8cIA6tZnXmgt9qCJCmz3KMoBzJNh1TmryBITvyzLcutquAuX0lTZNyUJ9kmwn0LgUrbqrXgdlIAiwULp1k3jiaS74PuxdIsVaDiQDTBMNPYZjXINpm0P1UtQda0W+bFrSoD/XO/BW8QvcyXqSwXLs4j4HK+sB/mLZprpYljTC+fX3VIDC50cncLqCmtxFVDLqChvqy9uRHB3hxi5BVTNzM4ApmkxbxzNJRlLFet19UsdMg6homUe7I3gXXpJmyQGY1oBoIv9gy7NwfnOv2rKX+gf8bGfCUj8FNZWTYPmsdUtNMO/yAo5QPxwvB9K9Xgv0roAwg9eulmugEybE3mLwhyseJ5X5cmL9RWaJpSWxPkvzMTAe09v0cRQEsCv51Gis=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(396003)(136003)(346002)(39860400002)(376002)(36756003)(4326008)(6486002)(8936002)(6666004)(8676002)(7416002)(6506007)(9686003)(15650500001)(6512007)(478600001)(69590400007)(16526019)(26005)(316002)(52116002)(5660300002)(66946007)(66476007)(4744005)(2906002)(66556008)(86362001)(186003)(956004)(83380400001)(2616005)(15585785002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: LWta3kf9JxHO01OX75GmHRy1mF0ZAF+WEsrlMdkr0Z0n+5S0jkuDsxFDGBEhwH76Av4w78BdquGrIzlQUNpq9GSndMSfTA4jouUWYNPKiK5YMbbh9fgTDXeQ7Bx6zOYPuq7wGn7El/Oena9tVsNjLTAwsyp74Ci/HRCN85urvX9Qehz1q+N/vDpAZz+vSBv15cPdvoEWdkVXy3EXSg7O1R6jCWUE3DmGHLMUHkniIeKJhQT+vfqfnCN+ShAuGkluEZ3xt/ZOy/rF0YsEkRJrEfOJz1Y20kji92U7gl0ulMbR6n7p69nk8KJDXW++OHH/QnjnaarRrwy/7fxpY1VvfM6LXiCfU5RsgCmZo5BiDAn+BRgFPhpGAnomo1Xt7cNmZLX8Oh2io47pg/3AIl9hIjmKgyJaxX0igwtdsST1paUYhXfJvPhpY2DrHdWXxovBw59nFavH5xmroOFxaHDMFzJPuoT69iLFdjbqTQnlgIk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28d35860-0aff-452d-276f-08d805df6467
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2020 03:53:49.6971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5boU5tbZYPD6R3s6XEzlop/RzD5+QnUzggC6ig5U90x0wx5wP8kJzvkm8V6avFvvmrkNtffwlChnbpYtQT+wyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2920
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_205352_759084_17283C0F 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX8MQ/M/N/P compatible string to support i.MX8M SoCs

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 Documentation/devicetree/bindings/mailbox/fsl,mu.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
index 26b7a88c2fea..906377acf2cd 100644
--- a/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
+++ b/Documentation/devicetree/bindings/mailbox/fsl,mu.txt
@@ -18,7 +18,8 @@ Messaging Unit Device Node:
 Required properties:
 -------------------
 - compatible :	should be "fsl,<chip>-mu", the supported chips include
-		imx6sx, imx7s, imx8qxp, imx8qm.
+		imx6sx, imx7s, imx8qxp, imx8qm, imx8mq, imx8mm, imx8mn,
+		imx8mp.
 		The "fsl,imx6sx-mu" compatible is seen as generic and should
 		be included together with SoC specific compatible.
 		There is a version 1.0 MU on imx7ulp, use "fsl,imx7ulp-mu"
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
