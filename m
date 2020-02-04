Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245D6151B98
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:43:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeveuOTGlDw46aDI5QAVGStncdO7P5C7Kq8e+5yspng=; b=i5LUNWYyUxG07h
	U3nLXRedoqoEdGxBJkMgmTYhylMK7KarfBBhISt6lGAfIjmOm8vSZEabQqlH5OmRcCb43kOwzn0cr
	HeXNlztIwLX4INB2NVBlEBWfifSgBtR43oR+NoLZLc434WFUgqHU51Y/zoEkSd8BDRScKas6S2TD5
	ut3Al5dhCF68jx4L/2DWhxCI9BkgebdydsDX81DBhf0ZDmwvi8R0s4mtx3F3RxEKTOZyU2rA2VSVO
	Ys28CBbiFFjbOcxRO+i5Nv+zowrB+BqSVfBKqe8+MuifnTLMfyOH34Fee6K58+BP6PiLTVfSoPnvf
	QfSSpcvSCWiWJnLyoSwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyyUB-0007F9-0s; Tue, 04 Feb 2020 13:43:27 +0000
Received: from mail-db8eur05on2057.outbound.protection.outlook.com
 ([40.107.20.57] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyySW-0005nx-51
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lD1Hcq8XItEIfUat0huGq9C0JLHXIbgeGiTtjQMcrM0Ok61QQr/PA0JhEg/yF/7SFgA88fKBe3PB44tNHK849XxVdzgqg015TET3yqRxfpRb2hOvRBTcNszrph8DSNEk0qHg7fUYKQZvIvKAWIoyp2q2oXYLROTMCj/4koiP7d7aZcdvFw6DoyYf9apsDWrKFAuDTfHK+zqOhdcNLSyy1FVMh+XTVfa4c+vt+koNxuJcxs72ecvMs9NnFrX5cYi67WVAojdeP9h6KkyZFr7OmD+a/Sd3VyO4x0EoqF3VtknqYjGpmukniDxVtPyZtKbgP8BrZ+btY5zw/G611kSS6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NEvjWr/4AdbPMAtC1YFADze47JBcfN0qbQO1FdM2O68=;
 b=SL22kKevIjInpACyB4NUXI8azzwUjgbjT2/p9C2YZJt0wBzIeNJ0KQbPCEh88uqzos9wiEPYWe/uM9UzVUclSqXPKmhdl+UBAv6+44Oz8qYugnn4FcutQeY4/wNev+7cnZFcJvnBdnSgBlEBv4oR4qn5TaD87kwq2L5ojN4qYkkGW2WDGF80/Q/kIZVXAeTRgquvM3VjPzjg914bHiOQMm0JuVLTd1nAR2s28PlD2bSVXUfeZEP/MhD/T6S9DPJcPC/J+sA4WGNQG2mfVueBaJVcEqjHHYvf27DG0329h41hv+/3gIbi0vc9C9iclSZz3LPbFpxfeGhPqX7n4y5oAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NEvjWr/4AdbPMAtC1YFADze47JBcfN0qbQO1FdM2O68=;
 b=ZGrGqP42cLN9VPfkKfNCfpkR7BtHsNToGhk7VIRs7Pmx1B57dta9NeHJ4gCFQFGMIid+oBB7vRETKURErTGQbL/tYmcr/UYu64LwbnpHB2dUTUE4KSB0WyHwD6DxWIP/wbTxXt0H3ffxOUfvuCyVJ6Dz/XbEMgNUteAk7ianIH4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6932.eurprd04.prod.outlook.com (52.132.213.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Tue, 4 Feb 2020 13:41:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 7/7] ARM: imx: imx7ulp: create cpufreq device
Date: Tue,  4 Feb 2020 21:34:37 +0800
Message-Id: <1580823277-13644-8-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
References: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2ee1e305-793f-4cd0-36fa-08d7a977f725
X-MS-TrafficTypeDiagnostic: AM0PR04MB6932:|AM0PR04MB6932:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6932E326EB1DA519BBD960F688030@AM0PR04MB6932.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(189003)(199004)(16526019)(8936002)(26005)(186003)(2616005)(8676002)(81156014)(956004)(81166006)(4326008)(36756003)(86362001)(478600001)(6506007)(66476007)(66556008)(66946007)(69590400006)(4744005)(6512007)(9686003)(316002)(6486002)(2906002)(5660300002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6932;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uRKqjbExcXdjnzh42MlKq/RN0e5hNSOIooptQxI8q/jSI0RlSp/s5ErUMCK7gLuHc4mfkceBP4oHO6+5P6RKNc1QVrteqexLRgrdpdCpMs36fG8wqgiVBFq6HmM0YEP9mc05OjqSJ0xLTdkQlFfmGJ5x7i6ir//ndLXNmej3mLFLuT6+DYrxDYjq2GiKYL+Fq17dZzwtGUDlZ4ar8PwoVp/TzR4tMA1/0oSTxuaM8qu3nu4ImyGN9zG/FtTwu2ExFLz5V3q/Ok/U616E7yxezo50FRw/WTCMvsGCN+bXiBPLn1iypEFS78h+zzSPgsaua5VBFZgCl5AVWaCxZK0HrUA7X9qWh8i0P6ISIylmo7COoUg/nBBKtYtARzQzmFPOnohzyIjMrUlFiPGVLU/wQwXjmWfiN6reyn5NItDSWNna4YbNXCaykwNxDYZ79uAUWNwtVQryo5hJALzXk/JPAFcnKBYfA9yLpECm3vMwP3wPbA2U01AWUrEC0XDSfgNpNqY6Kp0lTnUiwvOEuiL6cHKS15YwTIZN5QC80hfypDw=
X-MS-Exchange-AntiSpam-MessageData: nFnRvmrc5t4r63UlwMxbjLlWz6Prm/xRqZEJjkrooVMixm7J59os+T/asyqgXdJP47ftZ8WtMCYtxKHZrD3H1fv9UZK66ffocKAlh4O/ZPQewttpr8aD+mIwqneUDwAmEMJT+JaBj6TPvcns1OZCiQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee1e305-793f-4cd0-36fa-08d7a977f725
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:41.2645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bvei+I6lgn3QdydFwK3Bq1lz6cTIBb3bGA/q0k5M2SBppfVNlJo9d4C3OpxdnX2G+M2FnHK0tom9jbREcSbHmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054144_244756_A145A464 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.57 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Create cpufreq device to let cpufreq driver could probe

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/mach-imx7ulp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/mach-imx7ulp.c b/arch/arm/mach-imx/mach-imx7ulp.c
index 128cf4c92aab..fc44fb4ca48b 100644
--- a/arch/arm/mach-imx/mach-imx7ulp.c
+++ b/arch/arm/mach-imx/mach-imx7ulp.c
@@ -67,6 +67,8 @@ static const char *const imx7ulp_dt_compat[] __initconst = {
 
 static void __init imx7ulp_init_late(void)
 {
+	platform_device_register_simple("cpufreq-dt", -1, NULL, 0);
+
 	imx7ulp_cpuidle_init();
 }
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
