Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9DC182DA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:29:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/HuHiVsgmRm09Q3lSdpfjTaBnQ+qM7xrhLvfG5swnY=; b=m0IwzItonVW5wk
	JEsvAyGkCnC4UyxAd3n2TP9draaEzWtFajcDhPGaf9VrsAHkOfdvy74CxQriTkKGYeeMfi+kynNRU
	66N3oxjGJpcCH93aDdrdKncpbqBsAh5ryir5IbTwGOJOabRsRRyhQASC56Xld8AYeDCW7wh+c4UYg
	KdVvXcuouPyjt92BY6/rPxNBieEZv0sTD0mT47JVbnRMoIF3cKkKLfQ4N8hZT9wz98WmFkOwP48WZ
	SRYWlRHsI5CjMU9uI/BlVrPsm0lcrBj2ScegSvFWV63I4OJNdGGCkuLYb4YKAIGEG4xnbkrpfmIG1
	VgffMZVFgN7NhB7NaROQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL5f-00010R-A3; Thu, 12 Mar 2020 10:29:23 +0000
Received: from mail-eopbgr30048.outbound.protection.outlook.com ([40.107.3.48]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL3y-00088Z-NW
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:27:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKZnzPDlWVXqRSGHVzfHsPs1BFcyPD1DWbfuA6cHafcf60JLjhUTv/tqEDIlb8lZG/uqCfUyo+RSuB/dxa8rkuOvU2sJeFRGGcjW+HbvpKtLK6WRfa+13cNCY05DwSsHgMTzWsMQbPgUmkm/Dca9KQMnRcCuKOqOiIC0BUvxO96DCcdLpoNaKYptsgc2jS8cEbCg1fQQ6UE1RCDvyufLHjb9JO8Npu9BVx4M/V2MnMWba54+TWQMscquQHdEQ8biWexxie/lH5zU93FM5Rpnv3/X/XSAebxU0HKvpJZgphOVS5sRno+VCFumNdM0m2RJ0OzoOxdZCLE9847v8fP27A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0PeA7CnEVAsvJFEtxx2e5r/o7pa2Wjtu4F3u8fNXJY=;
 b=kPjdyBTKPJPMhd+PHlAE3l+BG76MkrFpupGTrN71X2VV8Dajhvh9M9OLbK3HAbxHKmztQII/YMJLz1U7N1aM9/0rswVzKdqKoc9ap+S5QA3bLu5fNxg0RUard3QlD59Bc846oYRM9ZhihaMezbuKCdLLlUU3tlZ96ZNu6Jydad/s55UvO/vbCQ4vVu3nnNZAIdkRKSl0+TT2mZCqpv5dirayJt4lrjm4R/7AiI/WTkaFg0m1tNpE4ZjVH/Npl2aHNOg1vLzx9aVzCaj6ZWOmt/tPbTYQna/xd+ZYSmbegqiCuL2RCvFbV8ERfrBnEDFPYlHZ6MxiGWq+u9WQ99QCbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b0PeA7CnEVAsvJFEtxx2e5r/o7pa2Wjtu4F3u8fNXJY=;
 b=TfRAr0RRt+PGu9Xf2wfz+s5X8fIEPT+Sn+HveYnm1SHULOYbfuszafA9Q8MJUcvkXfmSQS+UCmgQG4MhUGqFpzYskr3k9JKBZylGzhpVWoPKCwGmks0uMR6CmMZJEV2yHJp+ekHJvy2Rj34zQyy8g4U35YO0vCJ8ENVJZaY0V7k=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4420.eurprd04.prod.outlook.com (52.135.148.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 10:27:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:27:34 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 09/10] clk: imx: use imx8m_clk_hw_composite_bus for i.MX8M
 bus clk slice
Date: Thu, 12 Mar 2020 18:19:43 +0800
Message-Id: <1584008384-11578-10-git-send-email-peng.fan@nxp.com>
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
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:27:28 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 096e284e-c723-4864-78d9-08d7c66ffa52
X-MS-TrafficTypeDiagnostic: AM0PR04MB4420:|AM0PR04MB4420:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB44207ACC1F5BF69D16751AF288FD0@AM0PR04MB4420.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:454;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(136003)(346002)(376002)(199004)(52116002)(186003)(6512007)(6506007)(2906002)(6486002)(16526019)(9686003)(36756003)(26005)(5660300002)(316002)(8676002)(66476007)(30864003)(2616005)(81156014)(81166006)(478600001)(66946007)(6666004)(7416002)(69590400007)(4326008)(956004)(8936002)(86362001)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4420;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jIp4YvWvf+8VSrmc7obrewA09//JCISceqt+QBiq8G6IA5QpmC92IgisdQi+p9Uf73atPGtfbqQfiFdcD9zdWYgMNvjxqcqZDWwn9aCWu/NgJ/HTR9jl5MqsdLfuISJYnxlQ9o4WptXDKEC2x5u4dVsysB9jE7B2K7K6W4o0JT8VLgTlDp18JxXPSueOdigGs8bW5w7JReJi1NAW1F+ycZr+NIM1+6aiCkqAJ6/67JSrzIwCDNP7Q5ESg1dMOqO2taADkDDFEdVlj7X5CR/6Hqo8O67prXYLMmXDET2h966OAowpRal6WiY1bbz1WJ1B/OKrlic4Ew1cwtpoVUzF48vqKk12ulU4K1sX8MCSPTpRZTJs4lNrQl2Qj4vPjWkMujdVGoOmIAG+bi9sOwsUU2Z5JtrhX59OSp6zuPwWb1/13Ez+yszYUxCtlG/JHLekI3Ab36pRGu0holzjBrx+vp4YsaFVwN7N2kB7x95Q0m334TxbDDj8LRLOMkGpS4o5
X-MS-Exchange-AntiSpam-MessageData: 2xQRCuzUS6sLsrRbskAjJQKu0Vr4fSSdFzlsnKfQc5B5PSbZUi46cfp8xON7WoACr3kq6ui3oFamLvt/2BiGiGtlCgCM+fw7ZQaSncfKMYwovSp04NRY10Bh10UPYmFSLEv384sN7M4faHdYhnVDaw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 096e284e-c723-4864-78d9-08d7c66ffa52
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:27:34.3910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T9LRSNI/kghbTAi4ZX3y7z4MfVAgE/+46OxAuMhn354qsgqlfQKLb2YZNBx/X4feGo4xnsgkfmz1SpteaydkKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4420
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032738_979129_5A561973 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.48 listed in list.dnswl.org]
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

Switch the bus clk use imx8m_clk_hw_composite_bus, then
we could avoid possible issue when setting mux of the clk.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 18 +++++++++---------
 drivers/clk/imx/clk-imx8mn.c | 16 ++++++++--------
 drivers/clk/imx/clk-imx8mp.c | 24 ++++++++++++------------
 drivers/clk/imx/clk-imx8mq.c | 20 ++++++++++----------
 4 files changed, 39 insertions(+), 39 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 12443e06f329..b793264c21c6 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -444,21 +444,21 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
-	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
+	hws[IMX8MM_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mm_enet_axi_sels, base + 0x8880);
 	hws[IMX8MM_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mm_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MM_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
-	hws[IMX8MM_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MM_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
-	hws[IMX8MM_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MM_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MM_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MM_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mm_vpu_bus_sels, base + 0x8980);
+	hws[IMX8MM_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mm_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MM_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mm_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MM_CLK_DISP_RTRM] = imx8m_clk_hw_composite_bus("disp_rtrm", imx8mm_disp_rtrm_sels, base + 0x8b00);
+	hws[IMX8MM_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mm_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MM_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mm_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MM_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mm_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MM_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mm_noc_sels, base + 0x8d00);
 	hws[IMX8MM_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mm_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
 	hws[IMX8MM_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mm_ahb_sels, base + 0x9000);
-	hws[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MM_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mm_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
 	hws[IMX8MM_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index bd3759b4afd0..213cc37b3173 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -432,17 +432,17 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
-	hws[IMX8MN_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mn_enet_axi_sels, base + 0x8880);
-	hws[IMX8MN_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mn_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MN_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mn_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MN_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mn_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MN_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mn_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MN_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mn_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MN_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mn_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MN_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mn_enet_axi_sels, base + 0x8880);
+	hws[IMX8MN_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_bus("nand_usdhc_bus", imx8mn_nand_usdhc_sels, base + 0x8900);
+	hws[IMX8MN_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mn_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MN_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mn_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MN_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mn_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MN_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mn_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MN_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mn_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MN_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mn_noc_sels, base + 0x8d00);
 
 	hws[IMX8MN_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mn_ahb_sels, base + 0x9000);
-	hws[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MN_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mn_audio_ahb_sels, base + 0x9100);
 	hws[IMX8MN_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
 	hws[IMX8MN_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 	hws[IMX8MN_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mn_dram_core_sels, ARRAY_SIZE(imx8mn_dram_core_sels), CLK_IS_CRITICAL);
diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 998e9e63f831..b4d9db9d5bf1 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -563,23 +563,23 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2("arm_a53_core", ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels));
 
 	hws[IMX8MP_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mp_main_axi_sels, ccm_base + 0x8800);
-	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
+	hws[IMX8MP_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mp_enet_axi_sels, ccm_base + 0x8880);
 	hws[IMX8MP_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_critical("nand_usdhc_bus", imx8mp_nand_usdhc_sels, ccm_base + 0x8900);
-	hws[IMX8MP_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mp_vpu_bus_sels, ccm_base + 0x8980);
-	hws[IMX8MP_CLK_MEDIA_AXI] = imx8m_clk_hw_composite("media_axi", imx8mp_media_axi_sels, ccm_base + 0x8a00);
-	hws[IMX8MP_CLK_MEDIA_APB] = imx8m_clk_hw_composite("media_apb", imx8mp_media_apb_sels, ccm_base + 0x8a80);
-	hws[IMX8MP_CLK_HDMI_APB] = imx8m_clk_hw_composite("hdmi_apb", imx8mp_media_apb_sels, ccm_base + 0x8b00);
-	hws[IMX8MP_CLK_HDMI_AXI] = imx8m_clk_hw_composite("hdmi_axi", imx8mp_media_axi_sels, ccm_base + 0x8b80);
-	hws[IMX8MP_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mp_gpu_axi_sels, ccm_base + 0x8c00);
-	hws[IMX8MP_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mp_gpu_ahb_sels, ccm_base + 0x8c80);
+	hws[IMX8MP_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mp_vpu_bus_sels, ccm_base + 0x8980);
+	hws[IMX8MP_CLK_MEDIA_AXI] = imx8m_clk_hw_composite_bus("media_axi", imx8mp_media_axi_sels, ccm_base + 0x8a00);
+	hws[IMX8MP_CLK_MEDIA_APB] = imx8m_clk_hw_composite_bus("media_apb", imx8mp_media_apb_sels, ccm_base + 0x8a80);
+	hws[IMX8MP_CLK_HDMI_APB] = imx8m_clk_hw_composite_bus("hdmi_apb", imx8mp_media_apb_sels, ccm_base + 0x8b00);
+	hws[IMX8MP_CLK_HDMI_AXI] = imx8m_clk_hw_composite_bus("hdmi_axi", imx8mp_media_axi_sels, ccm_base + 0x8b80);
+	hws[IMX8MP_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mp_gpu_axi_sels, ccm_base + 0x8c00);
+	hws[IMX8MP_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mp_gpu_ahb_sels, ccm_base + 0x8c80);
 	hws[IMX8MP_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mp_noc_sels, ccm_base + 0x8d00);
 	hws[IMX8MP_CLK_NOC_IO] = imx8m_clk_hw_composite_critical("noc_io", imx8mp_noc_io_sels, ccm_base + 0x8d80);
-	hws[IMX8MP_CLK_ML_AXI] = imx8m_clk_hw_composite("ml_axi", imx8mp_ml_axi_sels, ccm_base + 0x8e00);
-	hws[IMX8MP_CLK_ML_AHB] = imx8m_clk_hw_composite("ml_ahb", imx8mp_ml_ahb_sels, ccm_base + 0x8e80);
+	hws[IMX8MP_CLK_ML_AXI] = imx8m_clk_hw_composite_bus("ml_axi", imx8mp_ml_axi_sels, ccm_base + 0x8e00);
+	hws[IMX8MP_CLK_ML_AHB] = imx8m_clk_hw_composite_bus("ml_ahb", imx8mp_ml_ahb_sels, ccm_base + 0x8e80);
 
 	hws[IMX8MP_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb_root", imx8mp_ahb_sels, ccm_base + 0x9000);
-	hws[IMX8MP_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mp_audio_ahb_sels, ccm_base + 0x9100);
-	hws[IMX8MP_CLK_MIPI_DSI_ESC_RX] = imx8m_clk_hw_composite("mipi_dsi_esc_rx", imx8mp_mipi_dsi_esc_rx_sels, ccm_base + 0x9200);
+	hws[IMX8MP_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mp_audio_ahb_sels, ccm_base + 0x9100);
+	hws[IMX8MP_CLK_MIPI_DSI_ESC_RX] = imx8m_clk_hw_composite_bus("mipi_dsi_esc_rx", imx8mp_mipi_dsi_esc_rx_sels, ccm_base + 0x9200);
 
 	hws[IMX8MP_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb_root", ccm_base + 0x9080, 0, 1);
 	hws[IMX8MP_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", ccm_base + 0x9180, 0, 1);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 91309ff65441..a64aace213c2 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -432,22 +432,22 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
-	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
-	hws[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
-	hws[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
-	hws[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
-	hws[IMX8MQ_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
-	hws[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
-	hws[IMX8MQ_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
-	hws[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
-	hws[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite_bus("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
+	hws[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite_bus("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
+	hws[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_hw_composite_bus("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
+	hws[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_hw_composite_bus("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MQ_CLK_DISP_APB] = imx8m_clk_hw_composite_bus("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_hw_composite_bus("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
+	hws[IMX8MQ_CLK_USB_BUS] = imx8m_clk_hw_composite_bus("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_hw_composite_bus("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_hw_composite_bus("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
 	hws[IMX8MQ_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mq_noc_sels, base + 0x8d00);
 	hws[IMX8MQ_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
 	/* AHB clock is used by the AHB bus therefore marked as critical */
 	hws[IMX8MQ_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
-	hws[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_hw_composite_bus("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
 	hws[IMX8MQ_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
