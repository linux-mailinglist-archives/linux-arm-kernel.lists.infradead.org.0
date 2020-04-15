Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 488E01AA1CB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7FKtVUvepCGcuaL6VJJRoC3tj2UbpwMehMVDZVD6RM=; b=gpjzzKRj3mBRkK
	1qN7l2/6u/RqY4sHpCJ+nacjc5Gstj01fBtUL5LzJWgf10fjW5uu3NeYqyGaiXnLnbi8DmsPtbrg2
	qsvWmfF3eUpRu39uY96esBb7UIgz/PoEp6LnDq3HfXiZnClOxiNJ7gRpQMisbQpF9J3L94/UMeKST
	4YSLF4UzNfnR/YuWGK8e2UUkt8qcK2XVQRadlbkyXts+dZwfVD2SlWYJQUUscH4CdyeIrxVTuwQkp
	AofVJyWnztnE3bk8VjdsCtKdokrPo4RIVcODFqD8FfMzO0ShbS2Th+Lnmi+H7L6S7pMsbEOEt1q5e
	5NJYeL/3YVczUep7IU8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhUU-0003hY-2I; Wed, 15 Apr 2020 12:50:06 +0000
Received: from mail-vi1eur05on2060.outbound.protection.outlook.com
 ([40.107.21.60] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhTt-0003Nx-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PaTxKtJZtl4YCHMldnqY4MJnQP2MFtN6qObp1Ff47vni1SvorzaYg162yqBhV5UCyJPyTChTZ00zlC/OoU/5JSEN7utNKTm1dz/xpoE1jCtGDUAH/0wb0zF3UkBc3VCk3sI8+LZFqFvD5wwcs0vx1PBc06fo6BmDJvkM1n1WLmEuMAt53BEiJODnF4awfuMqx6ZiOtcIcoLlkgLcexuXFcG7KrBjpVTA4zgcnqSsnlJXeJ7Oc4qqDthehvQMWOOh7g6ibnk9JVCXW13YpPFnf1ZZH+gNg/9Zmv+Zj0yHu9w8JhKekeUganS2m6OVd4F2Ll1az7CRv7v3iOI3CQjUZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ay+9PXBCAMyE3JNz/XEu4o0HEVcPTs3bbzwdLXVpVwI=;
 b=IgO/cB1AVIvzjPO4O8YYQF/OOjmW4tsXMFBWWZhjaTGWncjJ0ujtStsCetfu9VxUzu2XykVhbt0gOi833bMtBK5v6LK+jQCRvSOUv1fqPwRcnS8csKOxCT4uMISGLI+vHpjQq2RH5GXi5kaPci0ujqFcI8y01mfkW+XcBxXT/t7Vyw6fEGcKKjYHRsFgenUy2qhDE9Pr7NEZ1AXigqfZheZhQcOs5lYs/Sc1A+DPojUhqmhEO0++DGpK1TAmIUxFsekC0H+po+sC8s7JB8QOvtniNwGpamXu1G/ypH722GM3sswFXqgdRUKxv+Nu3EXTehjm3wQVoRpRq9Gy/fsSjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ay+9PXBCAMyE3JNz/XEu4o0HEVcPTs3bbzwdLXVpVwI=;
 b=eEnhZBBsfGKONx8A1gQiJomT2Fr2gFsdcF6DIK8LvvGMbKH5FBX9Vd9caHWdM9k8NgZ5x7E0DkQqmZJNwIZFWOm3or8JKA3DWzcrZq+Ag2C2NqJbFGS/NqwkM2OEiDPOtoR8bvYXpsR+jdBkY/i5Y53O0I7OlYKPNSOB28g7OkY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 12:49:24 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 12:49:24 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V4 3/4] ARM: imx: imx7ulp: support HSRUN mode
Date: Wed, 15 Apr 2020 20:40:48 +0800
Message-Id: <1586954449-17463-4-git-send-email-peng.fan@nxp.com>
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
 15.20.2900.17 via Frontend Transport; Wed, 15 Apr 2020 12:49:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e53b5eb4-976b-4c65-0bdc-08d7e13b6893
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:|DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2856C62783A9DB97F72A53C088DB0@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(6486002)(66946007)(26005)(186003)(52116002)(16526019)(6506007)(956004)(5660300002)(2616005)(6512007)(4326008)(6666004)(2906002)(316002)(8936002)(69590400007)(66556008)(9686003)(36756003)(81156014)(8676002)(478600001)(86362001)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p4z9hRsgZiepscgp1RaclslEing86gPcrkfcl5A+aio1mLPYphzVfBeP1D1CRSzYomdAgMyAljKgswKAYXhQPbJTFGBEKz84O3x2AxxhAg0Icm3ZK6mEcUsJnKQkKvqHejZlccki1UKo9Bw6lpcEFDFaoPm4bTnk31UcqJi2p5wlDG0ve90oA72s76I+xnLIVXySUkbd6f1AG3SqXvVssI+3p54f1h1Q9jy61z6ldRnKJ0Fjj/x9eeFodFjR7r/ahuWbVXFwtwz8ew5h1t6Kl0ZXEyqA3ZM0E8XIjaLrFFkmxImLL9x0kOIXKz3lheM2C5DDE1LUK8yRRYb1YNR+N5iw+3QOm153OILKEfnSd13/IQoJGGHroOAkURbMDu0TJUiVnsxu5WWLK9NZp94YwuGQFR654aCXQz3jIwHhEUY7uzr50We18B/PQy+wlr66enmrG6XQSYCG8WsieccQXxEzmSpy8v2vwRHGvfbavVj1l9inAy/IFHPo4GHCspz8
X-MS-Exchange-AntiSpam-MessageData: gg1GFHYUbhaJ1hSZcCfHrQiIbuimrYDgUgYLTu13p8qz4IbSTgAzurviCSyW3u29UUtgdZhnf8vqpLJgS44SJZg5SrXMJ9W0EMiKYLqZEnVQbvT9/mQQgNQGYGlFfAP+ghUCjxro+JWy8x/sQFdLYw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e53b5eb4-976b-4c65-0bdc-08d7e13b6893
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 12:49:17.3140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BNRPNf4zIwGhHEKlG4L0PE4w3FYslEyV9nXxtiBLCzWLNtOfwjkp9U3M3Biqwwy0k6uaYzZ9FvsdnrDp4LOzzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054929_120638_A7E7AC3B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Configure PMPROT to let ARM core could run into HSRUN mode.
In LDO-enabled mode, HSRUN mode is not allowed, so add a check before
configure PMPROT.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/pm-imx7ulp.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
index 2e756d8191fa..393faf1e8382 100644
--- a/arch/arm/mach-imx/pm-imx7ulp.c
+++ b/arch/arm/mach-imx/pm-imx7ulp.c
@@ -11,6 +11,10 @@
 
 #include "common.h"
 
+#define PMC0_CTRL		0x28
+#define BM_CTRL_LDOEN		BIT(31)
+
+#define SMC_PMPROT		0x8
 #define SMC_PMCTRL		0x10
 #define BP_PMCTRL_PSTOPO        16
 #define PSTOPO_PSTOP3		0x3
@@ -25,7 +29,10 @@
 #define BM_PMCTRL_RUNM		(3 << BP_PMCTRL_RUNM)
 #define BM_PMCTRL_STOPM		(7 << BP_PMCTRL_STOPM)
 
+#define BM_PMPROT_AHSRUN	BIT(7)
+
 static void __iomem *smc1_base;
+static void __iomem *pmc0_base;
 
 int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
 {
@@ -65,5 +72,13 @@ void __init imx7ulp_pm_init(void)
 	of_node_put(np);
 	WARN_ON(!smc1_base);
 
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx7ulp-pmc0");
+	pmc0_base = of_iomap(np, 0);
+	WARN_ON(!pmc0_base);
+	of_node_put(np);
+
+	if (!(readl_relaxed(pmc0_base + PMC0_CTRL) & BM_CTRL_LDOEN))
+		writel_relaxed(BM_PMPROT_AHSRUN, smc1_base + SMC_PMPROT);
+
 	imx7ulp_set_lpm(ULP_PM_RUN);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
