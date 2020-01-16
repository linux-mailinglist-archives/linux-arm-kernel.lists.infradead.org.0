Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1A713D216
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 03:17:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1rJ2zXgXx1kSzIrWa5CWG0bjH7sadug6VkxUxvj/p0=; b=VK8eN/rDuSehFW
	4v1KAu+gEYSqgFpHkt7utRVhvR1zaKbqS1YUaSSUIj8hJWU0wc7iaApXURh0YGjZCPJ7Rmtizmpfe
	6ZpRz/zgCQGR3DTQfwfjEHFWFHyhZOnRFZe2ozrtRKXJcy+MVjBun3/dfTkQZ+UrsXVcgAswEWNjv
	ycjhHtVuch6rkHWPSXYYLd/brPfJoE1I88oAeho0QqaeuQixn/3GD1d7LItnaBFGknFyzHnGhXZMG
	NTYPxUeQJnhm3QcUSlmfdqF0jq2oz523cQkkolRG8YVdB6c/bSdwOGEhVUtIx9YwpOzbLARt+Aa8p
	yqVo9p+OcneEuAXr4NNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iruiY-0006O7-97; Thu, 16 Jan 2020 02:17:06 +0000
Received: from mail-eopbgr60080.outbound.protection.outlook.com ([40.107.6.80]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iruhW-0005cq-DU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 02:16:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W48CSH7+yxg8ne0W6+HuRb72Zgg5YUVVMIJ5RhgnrRv+cgfKU/rI6SK2th4uIdLJmkhqoDa/Yrygi/IXcZVdENfWP0jYe01nMdU3RvM+VbGVoKdw1JiI1SFZsraOPQUMWf239jZw1+o6U3ZATuMXA6KXxixIaHHrsGsxXM6Ooi1FgcT4+ZG87SeQHvdxs6gT3kYG6orVpNUFv/Yq49gGXOZoPnmsPkINPhj/exiOznXtVt531mTfx65fGFP/Nv/o90ejri4xnfViVdgmVG7EIRP6NjQxEs0vKmrkD69NIETddLBdmgqQPwg0UwR4FL6gV9qOpsDIGttl0r6Eg/8kTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNQA4pBlWfvS3JwJ/HKUKXzz2K1IdLwTO++PCDTph6A=;
 b=KNY8f/WbKeAgueaRepK+oSGFu4cz+cHOb4uGEUF1Q3S3JUexNaEfojmGzqp9rzL57K6jln18SQtFdCvMb6gAKrQna1kibn509gDOiZEMqeeARNEREuwhFapy9UoW+db6m/qPpTYnYuybENnI6WJjg7qR5eT5yBj3aC5+CdikR0HglH8rsJr2R8k/t0WM9kAtZ1VfXxB5h1CYF20hcfyWgkxHLYFHCZneJ0J+IC3i6uHOaPX8xfGCNnimnlzc0UCX+AMWITQE0Rjf3C46TjDKjP8fEYcfoCJ9aTKgjbifQSp7gtDzVauMhD3o541okUTtmm9rDyM9+Z4waTyq4RGWFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNQA4pBlWfvS3JwJ/HKUKXzz2K1IdLwTO++PCDTph6A=;
 b=MLBMqcHvT/JHIeQ0igKR3KthDqA/j4OOpJZw5uf/kd0J2wc7jO9VsAr35eM6xjYohE1Wusb3cNwiuHmSjDg4vJ4ZXfuPHGaJpNFabr5U2xARfEJphDVUD5mQSKRqLf7mcEzz501NaT73FtZgYP7Rjwqso5r7/DIShcwOLePZhNo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6289.eurprd04.prod.outlook.com (20.179.35.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Thu, 16 Jan 2020 02:16:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 02:16:00 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0012.apcprd03.prod.outlook.com (2603:1096:202::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Thu, 16 Jan 2020 02:15:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V3 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V3 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Index: AQHVzBLki5blCLQd2ku196asnlKIfQ==
Date: Thu, 16 Jan 2020 02:15:59 +0000
Message-ID: <1579140562-8060-4-git-send-email-peng.fan@nxp.com>
References: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579140562-8060-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0012.apcprd03.prod.outlook.com
 (2603:1096:202::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c6ad995c-0698-4172-bf05-08d79a2a0736
x-ms-traffictypediagnostic: AM0PR04MB6289:|AM0PR04MB6289:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB62894DD9B36232BEF5EC5F5588360@AM0PR04MB6289.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(396003)(136003)(366004)(189003)(199004)(478600001)(4326008)(5660300002)(316002)(54906003)(110136005)(8936002)(81166006)(81156014)(8676002)(36756003)(6512007)(71200400001)(69590400006)(16526019)(6636002)(26005)(6506007)(186003)(86362001)(52116002)(64756008)(956004)(66946007)(66476007)(6486002)(66556008)(44832011)(66446008)(2616005)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6289;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t7W81Tb8jVYfdHmaN7APTgjhggCScbO/er2fM5H9a4NGD00Z0UdJbRiV1Yu0yWGFvzmMaMoaJBDfDWYRSyED8ibXLA1b6Xx20K1Ip5HWThdGiqzlvpGehzizAVRBcOO/+D/NsuMrdFSrpO2L4f2duH6Nzo3Oi2J87UrYSPlK7/tMGFvfCbfryPkZpQDRX60mD0MXDV7CTnQM7i7hjc+XtLfvsY02L0/brfpDRRh35SKJqpFuBt63OtmM+K727krXiyr1vnF/nFEBfwQR0VLZEE9ga6N/KaMquf9JK/mlHRSZ3Iihm/8t3BqKpwoCipD7/feVyIGaN3k3Xc4bnR0nEnev6yLtEjXR7zVraYH3V7906kwLgcOaOzUNEpy1Zv72/Xv94/zWyE3snqjDZ9u9VXz1BpwEcbccJ5NZb6UFi64KsZmFW4FJsJd6WWquKbBjaw4Mv7w0UIAPokEy2HisaAQNMFLhkH0aVba9/QDMAWygR6dSU+AFBCXwN1kWt3AZYHYsMh1Ttljkg1w7Vu4BCw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6ad995c-0698-4172-bf05-08d79a2a0736
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 02:15:59.8385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mjY4Hw8I92bP32KBV3UMbs/FL35mUVsozMSNyxTYMkZnv2fBX6YYNPoVAP5zDtjt9KYetXgwBAbJnCz85s+1bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_181602_531747_13448AC7 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
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
