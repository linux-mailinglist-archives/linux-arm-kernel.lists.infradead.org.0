Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDE5182D9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6Dd7eUPmOg84bGcpUj1pz3aqMKNZnFaDnnu0qKwZNk=; b=duAT2AFZcPJO1c
	FKHeeMa+pmHqf0sLcuphVCtOSuMl+srvJhSNQab5KeV4s/5/06AT8OASnV8NlySLqG1mttFhaB2Mm
	GFynvihCrcNawyFohYQ8OTTGGo5Cl4h1S4I5ceZn7FD4d+zFGg8TdbrZlenvQFaeWlAGihWZ0rZL0
	Rmxq7AgTO4FLnfJ5EfNIN/TOs5reedKoI6JKXi2FdqpyhKWU7rPNz7S1iraqEF+xHTwpanoc7IgYN
	ywpnRupQzEwp7tDKI890kQTFY7e2qlzQZixl5ny7+NVmnVLDpdmYhm/AIvbGZsrOdslxTCONeyfB8
	Xp/egqROknTumcvtwmKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL51-0000Rj-3I; Thu, 12 Mar 2020 10:28:43 +0000
Received: from mail-eopbgr30050.outbound.protection.outlook.com ([40.107.3.50]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL3a-0007jy-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:27:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBwayy8EktIyE0WMr/ExbevajWQJ6mc59CmpVV7Xi2AVMqXP2Tmvh2kjILsVRr5hD61ZjEKNy17t0jc3PSljMzFthHHBNTTiWE7mSrCtImPd1eFWs4R1jwaahI/CkP44okQbDZ9lTzGDhy0fcbE8+1x1YSVElGkCx1xAUjraLsmOSR9TK59yyLay+QWQau55/vLECaJhRnRSZTLQPl1TIFmRK8v6IVm7Tx6M5wGz2p2fJj3ZaUEFlrJGChThknqLqCt9dFtbz3+nb3QQMq9RVEgzD4R8ZRjGGmgOOzrEE0Qx2ZBqwgOl5uakX8VuACgzND5kI6KptpPuYiW7gcYbvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obxC7ONXcmaL0Xazi7UayeJxNbg8wwo4Rkj8J9xuJHA=;
 b=HT5NMSCTDn/3654MbzcR90j8HU4igc5enUMWahgy+8lM7C2mZMGXQ8ksERM4OXVQyTuC/UsrQNNR+XGheaOPUpQFpnTZ8Ri2fw3yz0nvRn7ireeOp74/qBKGXKXDuJRpFrp67SZNnTr4XBiHVGX9KLF9djdarujbBbyIInwKDV6iPWgQiYpJaoo9JBaYatdm/36Yy7TuZ1VrdJIRX37r1Q3Y8ec3wJGN5BQuvU+0dFnfOGdf+KONi6lb4ZkzAfGbaHT9nnVbMmg+TELi2hxMgb5SaztNEpdddBasw+fmKA2UKCHqMXUGFDfMor4MmMJtWlvnjlDZBvr+rxsL8WZvMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=obxC7ONXcmaL0Xazi7UayeJxNbg8wwo4Rkj8J9xuJHA=;
 b=jmyXyfT+WudKIWtrNqkO+x/7AZIJPP9B+8H1i7gmM+c0ZhYVSpFu79G9AheP8U8E4SLKvmXtien4LfakTYG7qA5sn3RJqt7Fkw0R3P9Qj3UeVjX5X/9H9ZZTIZPhaccaxWatR8MCEJRLyad1CGDj0INp2CLVLBqZdZg66NbK3lA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6177.eurprd04.prod.outlook.com (20.179.34.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 10:27:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:27:11 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 06/10] clk: imx8m: migrate A53 clk root to use composite
 core
Date: Thu, 12 Mar 2020 18:19:40 +0800
Message-Id: <1584008384-11578-7-git-send-email-peng.fan@nxp.com>
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
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:27:04 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6f4257b3-1b6c-4d68-0027-08d7c66fec86
X-MS-TrafficTypeDiagnostic: AM0PR04MB6177:|AM0PR04MB6177:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6177866FB886DAA5EEAF293988FD0@AM0PR04MB6177.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:398;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(39860400002)(366004)(376002)(199004)(6506007)(9686003)(316002)(81156014)(66946007)(8936002)(7416002)(36756003)(66476007)(6666004)(69590400007)(2906002)(478600001)(6512007)(5660300002)(81166006)(8676002)(52116002)(2616005)(16526019)(186003)(66556008)(956004)(26005)(4326008)(6486002)(86362001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6177;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Z0mTE2sAk9MRXcET3jbixMPExZBt3vUDPOefYSxGvX39smwVmH+4x16c4dsC0vKRP154xMuczg3od/S3y67qcbTI9LMkiE/Xu6AxyAZYJ+ic0XHl+290Qlbp06LxMq8LKzbJFlcrrxl+0ITnUxE5y/KQY1AbxbPkOmf+CdwnJ0I6EyjmFtcg8N8KH5G36mPl2H74YsjQR6GNm+Q7bbyCV5D/9HH3CyS1fcFvN5icEKrEvR2UAOgVvsM15roHmtfzhVldro1+qsObActOUKNtzLmMR+CAy2N6aDZmgZpr6lYgD4aMDIzS8/T4+VDg1wm4l37RD+gsB6lPMphNbqqdPyJMgSZZ3qLXxyxrCEAUmg10/RLbpWqbCUapw71wSFPgsm/lBlP9W6mUPBxX/s4yVlpf1j5J1xfnoItL1mAGHWifM+Hf+59cZuzw9YzNpqOQ9c+kvpi22WB9oaoJRdsP9NQlXeo4eBsgqxJidiKzJl3NL5lc2VnCzYfl8mft9JARZmUFKArprBM4sn45YTu4Q==
X-MS-Exchange-AntiSpam-MessageData: 47h1y788eJoRMTpKObdlqvPwdibIRFuo1pE823HjdWx4RVDrBZyHrLIRW2qSJX/zWXOTzMyc6e9d3Kp2EQxGvStf7eRKrKhF9hMaEulasNWF9Hu7p+Haqmx/JwFziHZo6lD8xk6TPaULajksxySd+A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f4257b3-1b6c-4d68-0027-08d7c66fec86
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:27:11.0397 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ruSmGa8BGUD2Jy/eEtKg7jTX3qQ3HMxnys08CITSQ359idKg23sibn1ltBcmwYmtdQSKn5ffbsOeoeiD+G9AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032714_809814_9EAB7C00 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.50 listed in list.dnswl.org]
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

Migrate A53 clk root to use composite core clk type. It
will simplify code and make it easy to use composite
specific mux operation.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 6 +++---
 drivers/clk/imx/clk-imx8mn.c | 6 +++---
 drivers/clk/imx/clk-imx8mq.c | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 5435042a06e3..12443e06f329 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -416,9 +416,9 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* Core Slice */
-	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
-	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MM_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mm_a53_sels, base + 0x8000);
+	hws[IMX8MM_CLK_A53_CG] = hws[IMX8MM_CLK_A53_DIV];
+	hws[IMX8MM_CLK_A53_SRC] = hws[IMX8MM_CLK_A53_DIV];
 
 	hws[IMX8MM_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mm_m4_sels, base + 0x8080);
 	hws[IMX8MM_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mm_vpu_sels, base + 0x8100);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 6cac6ca03e12..bd3759b4afd0 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -413,9 +413,9 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	}
 
 	/* CORE */
-	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
-	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MN_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mn_a53_sels, base + 0x8000);
+	hws[IMX8MN_CLK_A53_SRC] = hws[IMX8MN_CLK_A53_DIV];
+	hws[IMX8MN_CLK_A53_CG] = hws[IMX8MN_CLK_A53_DIV];
 
 	hws[IMX8MN_CLK_GPU_CORE] = imx8m_clk_hw_composite_core("gpu_core", imx8mn_gpu_core_sels, base + 0x8180);
 	hws[IMX8MN_CLK_GPU_SHADER] = imx8m_clk_hw_composite_core("gpu_shader", imx8mn_gpu_shader_sels, base + 0x8200);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 201c7bbb201f..91309ff65441 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -405,9 +405,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* CORE */
-	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
-	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
-	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MQ_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mq_a53_sels, base + 0x8000);
+	hws[IMX8MQ_CLK_A53_CG] = hws[IMX8MQ_CLK_A53_DIV];
+	hws[IMX8MQ_CLK_A53_SRC] = hws[IMX8MQ_CLK_A53_DIV];
 
 	hws[IMX8MQ_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels, base + 0x8080);
 	hws[IMX8MQ_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mq_vpu_sels, base + 0x8100);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
