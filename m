Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12263182BF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtOYpDFpucrqd1UcFK0FWJ4LPpY9E1r7a/zWX18cU7c=; b=m3Ul6BKeejYUr4
	RjkqNlWipKRRbaTw8rme1SlD4OHJyG3cwiTAPACKKuRq8pz2kDKMaW5IKc035y041ZR/V1E0sXjEY
	JbraKWxzqC6CAJmD3KfO69TqkVelYNI1FKY2OJut/pRSMhDS8N1p7SURgdmSlmtod0tu0YzopEzT7
	Jq4OwHgBdljaqckc6lxpLK5gqxfUELPaJ7Z7IOwd27ybo2+iA3XDB+nkeIT2llrHc+7lrA4zJzHaj
	oYPvxcV/+HlEvVL9TDnU6mMay3Av8KkwvbCo1+E+ffJnu3z5Wc5/pxACyaCUi0BMl87i5T9/iUdic
	yDAN0/JPKNks66rZBXpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJpi-0003II-Dk; Thu, 12 Mar 2020 09:08:50 +0000
Received: from mail-db8eur05on20609.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::609]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJpL-0003CV-Q9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:08:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRZSW1dmTfoLEEU9mnySxvD7IpZtf5mTV+HNstEMtWMREpkA6NntIQggn1luAcdfbyuuI/6e2H6JtljBkDJLx/mqXtfR3X3lDjJFGffA8qxShTWkkkwFmjcfrRcDjfgB8UtDp6ycYRLaejrtOvhLFP+hLtVG01APAqJDzkP+E9GENyBoMl/tQ/rDN8ai8rxnCY9vYP2Egq5vByZrnbwqGplYVM6r3BChe/aJehmimk2AEWsBHCbGuv6S7UauhH2m9KnrmKxL35jHRvoZkN/YprLWRnbFLxGS4TxJ2rkmkjP79yBYcNNZqWsmZfHhIMJ1ZG67/iq9uvh/GBcnJ9egsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPM1nbgdwcb8xtaL+MbpVwbLO8aYAEbl3CkZO/v7p+A=;
 b=hayq4+OQHZv5B6ROl4OJ4s5wUvZe0IVX0pnCUrfb9oy7NoWx8OnAeeT1lK24dPEWJmVy44+jmkG5KHdlV3Cz0FxiQRoBQDpil5Y5zE8hxHzxsDm4JuFrIbx+cFEdS0Q5rpDRCEPU9/KJIs9xkApVTeFUrJc4Sr4AJX3Oge+NK/JJz3eKgi7H0ayFuRoa+sgda90vO3p53H6IJAQSY1u80RYvny07HM1XURe5OIdpHRtTGnyrnOMXSPi3IFIC9bwPJ1hH7YBWHRxvNVO/3CTnR8lmizX+zqJVvcH1Wo4WMTZu94OE2LStVUe4whxyvpZnnrJC3ijKvUJf42qi92m+TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPM1nbgdwcb8xtaL+MbpVwbLO8aYAEbl3CkZO/v7p+A=;
 b=V9EkavLwOc/WHckbgrwlopIph6DhMc82PS6hzYZz8WxpN+aDZ8+638GAieSjBBV/sdcdP0kJsIF9aFKuYo7spd0k5tEM0etJsIk/+bScdhg2mR5OZJaCE0CIWy0sSsSkBMj42IRL1qk9RtG47haYTsThyDscgyv+32FAtgqMb9I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5569.eurprd04.prod.outlook.com (20.178.113.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:08:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:08:25 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 02/10] clk: imx8m: drop clk_hw_set_parent for A53
Date: Thu, 12 Mar 2020 17:01:24 +0800
Message-Id: <1584003692-25523-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:08:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1e5d158c-21c9-4148-c2c8-08d7c664ebc2
X-MS-TrafficTypeDiagnostic: AM0PR04MB5569:|AM0PR04MB5569:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB55695C17CC1A91BFFC8F2EB088FD0@AM0PR04MB5569.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(69590400007)(36756003)(6666004)(26005)(52116002)(2616005)(7416002)(956004)(6506007)(186003)(5660300002)(16526019)(478600001)(86362001)(2906002)(66946007)(8676002)(81156014)(81166006)(66476007)(8936002)(66556008)(6512007)(9686003)(4326008)(316002)(6486002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5569;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0UzCbVTs+G3BaGRcOIPWDQBoKiv8vjhdU3bbecAyp/9cAm+vtMx1snrlOaKt7uCF3VCaKsj+QL6l9m0e0d3Z8VyV0PjJ/+L86YhpkPhXtoxoF/ZN89Jwg1G1x73ZOWkjrrtRTDylOwGBlHGedYwE27mX1RE/DUeimXpEL8l21Iywn4eDuH21reRpf2YPjHnOg8a1q13GcM4YgVLWlqxq1mSYkEMTYfUxsW+7oYpjm7csmumayvucHTDPyqKZxurjXH47rfn5mScUxNBhqyGzy8BJOw5EXn6SzPIrbvFD4JjjJ0jTGZC8ySsrKjFEDXN9SVf2Z6pgFO/J2IptdtmOgKwk8j0kzQuLvuO0A+viwWGtd0bAuv9ZyqeGpQWY3KDqbZrUEaLV6TvIk42k0YGJ8LMOnIdHkFk8qiplWgg4QFdp6kzrbxN2dSV410toqCBiUA6w6VH+jB6BmEn6rb9eMV7HSfhWQppG25gfnFSJprF/IJPjD1ekGO4ntOW5zwGQ9DIwZLEhO8iTQOrsuUb1EA==
X-MS-Exchange-AntiSpam-MessageData: dPh4Qc7hD2iHNibv5TmH1JYxn6+volszwxTNFEaZHd5t1iwRswBoZirA8KbTmh10sJ7YXK0CKfPZL4OfziRPq+9nUt5t3Z5gdVNqgpLMiHJnD8lQOCYKFqISwAOeBAZvtC6BkFEMjlltYsqJ4ZK8mQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e5d158c-21c9-4148-c2c8-08d7c664ebc2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:08:25.2632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QILDdMMWhU/w2e7XW5AW+MqjYCHYUP1iw9sPMBChkUYAoRLkQeWYfMFOTsw6hT7w34LKsi7pxBU5ol37GPJ71g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5569
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020827_875588_3C15DA43 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The parent settings have been moved to dtsi, we no need to
set parent here. And clk_hw_set_parent will trigger lockdep warning,
because this api not have prepare_lock.

Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 3 ---
 drivers/clk/imx/clk-imx8mn.c | 3 ---
 drivers/clk/imx/clk-imx8mp.c | 3 ---
 drivers/clk/imx/clk-imx8mq.c | 3 ---
 4 files changed, 12 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 925670438f23..5435042a06e3 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -614,9 +614,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 					   hws[IMX8MM_ARM_PLL_OUT]->clk,
 					   hws[IMX8MM_CLK_A53_DIV]->clk);
 
-	clk_hw_set_parent(hws[IMX8MM_CLK_A53_SRC], hws[IMX8MM_SYS_PLL1_800M]);
-	clk_hw_set_parent(hws[IMX8MM_CLK_A53_CORE], hws[IMX8MM_ARM_PLL_OUT]);
-
 	imx_check_clk_hws(hws, IMX8MM_CLK_END);
 
 	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 0bc7070235bd..6cac6ca03e12 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -565,9 +565,6 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 					   hws[IMX8MN_ARM_PLL_OUT]->clk,
 					   hws[IMX8MN_CLK_A53_DIV]->clk);
 
-	clk_hw_set_parent(hws[IMX8MN_CLK_A53_SRC], hws[IMX8MN_SYS_PLL1_800M]);
-	clk_hw_set_parent(hws[IMX8MN_CLK_A53_CORE], hws[IMX8MN_ARM_PLL_OUT]);
-
 	imx_check_clk_hws(hws, IMX8MN_CLK_END);
 
 	ret = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 41469e2cc3de..e05ec56df285 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -735,9 +735,6 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 					     hws[IMX8MP_ARM_PLL_OUT]->clk,
 					     hws[IMX8MP_CLK_A53_DIV]->clk);
 
-	clk_hw_set_parent(hws[IMX8MP_CLK_A53_SRC], hws[IMX8MP_SYS_PLL1_800M]);
-	clk_hw_set_parent(hws[IMX8MP_CLK_A53_CORE], hws[IMX8MP_ARM_PLL_OUT]);
-
 	imx_check_clk_hws(hws, IMX8MP_CLK_END);
 
 	of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index fdc68db68de5..201c7bbb201f 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -599,9 +599,6 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
 					   hws[IMX8MQ_CLK_A53_DIV]->clk);
 
-	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_SRC], hws[IMX8MQ_SYS1_PLL_800M]);
-	clk_hw_set_parent(hws[IMX8MQ_CLK_A53_CORE], hws[IMX8MQ_ARM_PLL_OUT]);
-
 	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
 
 	err = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
