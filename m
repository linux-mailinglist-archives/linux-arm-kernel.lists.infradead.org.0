Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BDEB164122
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1rJ2zXgXx1kSzIrWa5CWG0bjH7sadug6VkxUxvj/p0=; b=Ty8gdiGVX8tEp4
	9sRp7IbiiK/E87IlCZfAhU3qkjK4fgPf6r7OpSgcwYo0OgGkICf2BwMkvvOXpaE1F8FSRrtOa9Iqz
	7Bb256Myk1EbSmdyRg3NcIPPo6c29uYeWE9RAfEL3vycfKg2axyv0oR5jgVZhLh7JHnZk57sqLIvM
	NEjkSo9pMZIUAtkY8BF7wx0W2I4Q2TZ3oqmLx4+ikMdHh4qpy6v7f7noaphijG3WR1CW04rne41N+
	1ehz5RlCleA2r3l/Ee3nr4sPy7OHeEMmr9uJ2nln9zkGqQ08shhljOB1xz+zO0lqfLFcpQkEyFiXY
	4Ptesmh5DnE2dJGAepzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MAz-0004eH-FE; Wed, 19 Feb 2020 10:01:53 +0000
Received: from mail-eopbgr30059.outbound.protection.outlook.com ([40.107.3.59]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M9H-0002FA-Ee
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:00:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dTHWEDcM03ZBXLZl0xhVfDJwuYn6BAWfUFQ7EpiES0vWrESAU5yq65wrW4yPrVviBO7pOEDhL+TyFSWPA4TjwhvPFbGsKsxiQT7Q3zFzsvbGcswW0y3HJTcZTLZIHM4QMlfNT9U6PGeGhtriQw/mNN0cHyy7fD067+C5C8bRKHaMQuSvjiTd7mjzodBy4ysZUXNexGHJkwV9CISqg8nCOA49qr1BbIPtg8xE4wQyh7ng0qWkNXYnB2/C7LnktqGSVrRhLuHnCNyTig0yKG9p+GbxSPNMw23/ezNywe9K8BH+8YJ4g+efPx1NjkttXcK3qmS4eyRb4ZqNKExWzk9nsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2FfUKUiIYfOPyyFV261SZOdJ3SXdMqmgC5PnY4vjiQ=;
 b=NH96ZSzFQuuV9PFbjm83hlTY7cDlQcjcDAMW2kwdzsGw84ZjMwIMoDF+QYEASSMvufJvhh7IihdYNBxv5GvLp0sZzjV9w1UzitcHizoGIxTlkRM0N/kTGZyG3nbwN9TZfslg0tJQqGnqL0upqvLHBGRaqoEquxIompEdPiKT3vSbJpVgzNCtIaOxjVZxcKeXu+F5vAsd+/BpFk55KpdHPzqQSB642wQYWWSe6ndUHLDd1xkehb5iSjeCn+ySKOnC76GO5hYo8Pc5oPD+stiI3gRaxuE0vg5XXy6hjYPmwHKVx87KatU/Mf672QF5sTmllZOOBDPsbxI0aYEquuJvVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2FfUKUiIYfOPyyFV261SZOdJ3SXdMqmgC5PnY4vjiQ=;
 b=kZHAj64TwohDnKpibHadVuaW4aZiFHip6nIPD4SjJuUcvWxl6gBLE01bbPXCgdH7N3/7EUmCEsIiZZLD7xTF+ufQkPJ7X6Mv7uIdMfrDs34u3mEVyiFNAilzA5TJnWZ7DNj9dj71wQ/Q0IYhGMUeBt25U8yisSMQI78w/+f+pBE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 10:00:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:00:03 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V3 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Date: Wed, 19 Feb 2020 17:53:39 +0800
Message-Id: <1582106022-20926-6-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 09:59:58 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9285761f-4ff5-4050-559f-08d7b5227d31
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6514DC848532F516681CAB3988100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(6666004)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j8Paetd1by+tG8rD3i7UC+dAeUtPzGdLDqgNsctAFTZQ3SEmaMnJe9dW9rr8mU8nKOtfv52+Wgan+XjE0UROxfzZvWuFWfwX9bH1hbWbdYPu7PyC5eJd9767KLAgNlRB5O/Ya3nCBZCn5TyEIT+NFbkrtAaj8tKdVjKVTg3xdM4IDOm7h+2I6zC4rn3+/y6VkTumpp0pY7wo9Z9e+rRyIZJUNYPnujDm9Cq57DYoFfhFgS97zTKn1jWH8B650/43VizRA/HnNLk1bo8JbBDpwmtbawIJ744/Ti7TM4eskGYPDC7Ja4LLYUkU6Mz4FLLFANJuDOyobm0M78mI9ZQTgjjjxVg/HeiRyrJkR9KResTAayo5UmdY+sg0rXQrjZImqu7Ffqg5jPlU4lpVY4uFJMf6SYV1LmHamGVFWyEuxtYy4Y/pWeJkpkizrNDOMGhn5k4fOt3gqRoIPGX1ebip7wrhKowb29koqOUxCmmTwEjxk/mUJoPeeYCpQn8DMmpmjH/9GV4aMEXkjak4/PaMgVxb8fxGW4NDM86zloIbdHf5FgZAi0jyytEcD2DiaM6+
X-MS-Exchange-AntiSpam-MessageData: 4ldDTNRQ2zJlvDsb14/gcmbCE/kELDwaeTpRyg19sgpcNiy/+lpmE7tju0o3id7VJZCV6Ova0HjWkkczzVRQ+HM6Oa6UGbQpffXcbKou7370VxXAnP049VzSwX1Ar09vhOgP42RM1F4pZYzd3FzZ+Q==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9285761f-4ff5-4050-559f-08d7b5227d31
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 10:00:03.2174 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lVC40lW5yy6N8iXPkDBdyFiiobbgrHlm/eUd7MBFxL4CgrZhBTARN5D5TSrokqtE56VPjpZgkUuGQ3HRggC1vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_020007_658898_9EAD29D5 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_composite_core to simplify code.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2ed93fc25087..197ba2cdab7d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -414,20 +414,13 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	/* Core Slice */
 	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
-	hws[IMX8MM_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mm_m4_sels, ARRAY_SIZE(imx8mm_m4_sels));
-	hws[IMX8MM_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mm_vpu_sels, ARRAY_SIZE(imx8mm_vpu_sels));
-	hws[IMX8MM_CLK_GPU3D_SRC] = imx_clk_hw_mux2("gpu3d_src", base + 0x8180, 24, 3,  imx8mm_gpu3d_sels, ARRAY_SIZE(imx8mm_gpu3d_sels));
-	hws[IMX8MM_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src", base + 0x8200, 24, 3, imx8mm_gpu2d_sels,  ARRAY_SIZE(imx8mm_gpu2d_sels));
 	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MM_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	hws[IMX8MM_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	hws[IMX8MM_CLK_GPU3D_CG] = imx_clk_hw_gate3("gpu3d_cg", "gpu3d_src", base + 0x8180, 28);
-	hws[IMX8MM_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg", "gpu2d_src", base + 0x8200, 28);
 	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MM_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	hws[IMX8MM_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	hws[IMX8MM_CLK_GPU3D_DIV] = imx_clk_hw_divider2("gpu3d_div", "gpu3d_cg", base + 0x8180, 0, 3);
-	hws[IMX8MM_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div", "gpu2d_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MM_CLK_M4_DIV] = imx8m_clk_hw_composite_core("arm_m4_div", imx8mm_m4_sels, base + 0x8080);
+	hws[IMX8MM_CLK_VPU_DIV] = imx8m_clk_hw_composite_core("vpu_div", imx8mm_vpu_sels, base + 0x8100);
+	hws[IMX8MM_CLK_GPU3D_DIV] = imx8m_clk_hw_composite_core("gpu3d_div", imx8mm_gpu3d_sels, base + 0x8180);
+	hws[IMX8MM_CLK_GPU2D_DIV] = imx8m_clk_hw_composite_core("gpu2d_div", imx8mm_gpu2d_sels, base + 0x8200);
 
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
