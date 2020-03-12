Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD00182D7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:27:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtOYpDFpucrqd1UcFK0FWJ4LPpY9E1r7a/zWX18cU7c=; b=fWXHtjhtK/AihH
	y/gsts227+RwxoZJ3aC6QK1sWgvwzd9ZADmtBeDRzNOqANaPecKxhT2+khlzIZ/QRrgO83DEEcAPU
	fRwGP46ojkZmcT7usMa3kt0gwiSo7L0XHvLF/kL8i/HzWCQOTG/k1KxHsBTlCrDXkcub6EX6EQ3je
	yOQPVInnQ5uHk2zAofVbLY/hb+jLathGmHFlMi6VA6BemD2N3Yv7H9wj30/aIVpgoB5G6nCuF6cPi
	dmtH747nDZd4OV4epWp7ncuBYBjbSNQ6fQ0rgSbMpr0J7so5OuoyAD17smWRohdz2JOqStjMzlGIn
	K8SNo8YX2dag5i7X2aNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL3q-0007k3-09; Thu, 12 Mar 2020 10:27:30 +0000
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL3A-0007Mj-J2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:26:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Be7Jej0sWiogwxVVLTJD30mY2k8yUPR1EnHgmxR2uw3yo4iY+FLW3ky4semrOesiTXcePovhAOiUxPkTgzXnurpGSFmG+urU9vZYPUyp7rW0idsg+v8TQUBZ5tIKPMH2WeNMAJJhDLlSCk0iuKwFePGMFl3lfzj8yXf+6doqRZHVsZnMeeTTrmfrTBPLQQu2TrmZy0qB6B4DdlQdai4/j0nRlIC8YBYlPYsvOLtxFAj0R7NeJg749zi/yZxNV65XcUAJf4wa9J3QXUxInxmy1dPg92V0jWlKPeJ9dLqV5HZRSErh9GzcVQoYbg3lNRtwWhotZ3Ul4ZtpYyEKREeaXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPM1nbgdwcb8xtaL+MbpVwbLO8aYAEbl3CkZO/v7p+A=;
 b=PGxMDTGmnH55nls58Hv60fx3kYmXSpAPfnz3Q8BKtOFGZHfKE/HJpn9p5DWtmKhPn0hYKPxSv2ohbvLF7X+hWtRn7hosIJBPwyua4T60JOLKBluIJ0z8ciOpbRM5xcWNDf6rbk6geFwwfeZDcFAw9aW7BLOzHWgdKk0C6LDqr4tMleHQHIoBJvKc2xX+tzSzzAJJHa8FVDJAM91pD66B0ZcDCqDNSa+0mI3NPPUdVn9YA8UV3p/BFRySbdUHIYxuse98hs4M9oPUXpRGEk4RdbhN601e/I/4ucNdg1hotIV2d72hO4t7hBet04EZ4cyF+rtzmQEhAMSDU6mdXJRcQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IPM1nbgdwcb8xtaL+MbpVwbLO8aYAEbl3CkZO/v7p+A=;
 b=ezAXEEuOb0T9EfDNlqhdCVe1dOqzj7cmqwB0bTf/iMvnBElVBdeI1qFzUEIlERTtP60bEKd69XMsWnofAVT5/nd7kxzpO2ImqkLMjx7+IfokSBGzWq6hMZvl9Q31meipMAUCIEpK1rJbiefabvkskE1GEwm9S5rteRLXldGc7Zs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4195.eurprd04.prod.outlook.com (52.134.92.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 10:26:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:26:45 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 02/10] clk: imx8m: drop clk_hw_set_parent for A53
Date: Thu, 12 Mar 2020 18:19:36 +0800
Message-Id: <1584008384-11578-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:26:38 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 703d7b1d-f90c-49a4-5e88-08d7c66fdcfa
X-MS-TrafficTypeDiagnostic: AM0PR04MB4195:|AM0PR04MB4195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4195AD49576751F8C3F7401F88FD0@AM0PR04MB4195.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(956004)(26005)(6512007)(9686003)(2616005)(86362001)(8676002)(186003)(6506007)(81166006)(8936002)(7416002)(6486002)(478600001)(52116002)(69590400007)(316002)(66946007)(66476007)(16526019)(5660300002)(66556008)(36756003)(81156014)(4326008)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4195;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BFia3sLkocidA/IW/oboqiUmtdQF8ag03go2CmlKqpqhUDhJF0+i0nLEcXQXSZSbYlVf+jLCo4RiWfGl3C4YccacJ9ILcaL0BQxLLugfVEiBYmUvvygeq944qnTQc4eeJ3ziiQwvZsGu5X871jicgcwttHjiO6jaEfGBuq1Eff7GoaG8KqtmobY+dpjUBYkgWN/PPnJk0Z8UIOIra14KVS9A3zM/DSphAZe6ZmOLmSrEbQri/2j2ApJbeaaJp02PTUb2dSOMvlM1CIhrSUmXfwPaAJy1oYwfBWHga+4HBI68syiUrGwSQoQu2F83UcNDwATcPqFCrM6TLOXVdi8VK7DB6AaDRyN4RZeUL2Bruo5tERebDa7bn/SDvMjXKJP2C48lso/swvapBeogNiN/9gMFEGP3Iw9HO39Qboh2JQ5bnPN851qdL8TjcanWuNsa+YltSij/chkRq3bWzX6U/EchNXxzgSD6Lvyz3X/eHNJCEXQvspvRaM9iWjtyuhUgpQEKTbXt/bURXTZ80nHZ1A==
X-MS-Exchange-AntiSpam-MessageData: sivi3Gaoel3t8yKYHGjyz9B1hA1dGb8KFuy6Ja/fqh+R7BK8Er5ZoaChbFxo5eLrl0ecP1UoCHTe2ggGfCGT4a/bnsAT9arG0e3qy01uUx6oGd/JQVlIOGk6JhmsHc5LK/iLH5b+qkdDcCO9CH3KRQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 703d7b1d-f90c-49a4-5e88-08d7c66fdcfa
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:26:44.9668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7wt+wUVD6gbTz2n8q7U9/2M87Asyb6zeTdr2HqrBxnvV50GnG6vdiJnkGSd55GgBWlZ26snNZSYeiXybo2/ALQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032648_677051_13F175EF 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
