Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7170B14AF1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzp26JjGpmqYKGQLa1hGwmhjeKlYD+0oZ6lDdFevs5A=; b=o03QTEb0qJG7of
	620pU3RPDKqHrPBUzhPQH0mvdnVdsHqXcUfytvggwNEdHVRBxLh2+Owm8opFl9Ab3rwMv3Z1MIsQC
	jmZHSiisYoI4sWR+0f7m2uWP7G7B0sNkzIZ9CCuBigN0ViwYvTL3sO27A6p4NMABLmIx7C+Lq4Zvb
	sZXSyytfV2fxmwV0bcbPP/3frgZ5HTA6nBlo13WL5CAyWCzBKkSIDwxxKL+gydzIoldjoIPQXMbqR
	GsOEH/w0Q2TXXRLYpuhCzDRI3NgvTrHTFqlLsYpbp8UOgyDNpWm5ZKPAlazan22nPUWKc3jJb6wBu
	D7gWkdpjGcFiB2UTIjHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJRh-0002ZA-Qo; Tue, 28 Jan 2020 05:29:53 +0000
Received: from mail-vi1eur05on2048.outbound.protection.outlook.com
 ([40.107.21.48] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJQe-0001sU-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:28:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cp8sfsdITjF9VzqJ+//LO/BOynh9WsoKz08ldFd3FMDJJtkc9XQXvCxW2jIC9XBLxkMnh7+8X1miQHZ7Zldlw41LL6SpayjT/8EsxuMl4xtbg0YutwdjfXs3kxT7F72Wds54HcCfn13mqPJH4srcM/Usx9rTqrbOozW9px27uRDA71pkAvXleBv2NTDBL8t3vtaXvo/elG8SeMGoaP0tJgUSAKvYGJfE1fNi2WhSi5zNm7etNF8ht/NLMsp6rq5skk8AYiJ+L9rZHO5H54SaST0FYbxu/XSyVy7iT7H4YT9Xh5cutiwE0Qax+Ly8RuzY7hfR5JT2ItiDPmO8k6MVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4c5ji5iRY/c/KIM2OC2UeIjiqJnN7GFOjzdDrVqlXw=;
 b=iyMZb4nR4+b74iIlMDNJaOWjNxrQjQj5dFaozqMGHKtRmpWw+Vp/N5VA5AUqwQyej8DWDp3y32zJ0G61h326MVd9CJ/Zm11G7mVkhvCuQrxH/YAjBpB2L6Hi8KtqaOs29ZxGW9GkVGorjQx4HNMmDjSXI/0hh7jUmwImOQRq4oSpnC3oKP+WpitUNaHgWblguZpIzJTCnfwndk34LYhZP5/NVvwaqKSccUyPgUzUC0nVllLh410imOTMaiqa7wuS8FFtIV4jSq3tUImXyjaV6oe2H3VB4XXM2yJUfKwNbrE2t0n+0Bhya5k1tpqjrwZFk96MWR0ENt9QzNVilFj5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B4c5ji5iRY/c/KIM2OC2UeIjiqJnN7GFOjzdDrVqlXw=;
 b=oZrJZ3kfmXD3/hr1cqXiJEtO8dFHYjPzFiM79T6c5Md5Hx5XbWkpWgrWHgjt1KJ8F4Khl0yBWIf9yK6UOg0RK6LQ/kzyCc3UpzYAxTjTS5JYIlpULXfrwpcal3aJM56yPjNB7L3rfyRUct9awb8E4Q2RFyxM5xoOMLjrZdpalP0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5939.eurprd04.prod.outlook.com (20.178.112.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.23; Tue, 28 Jan 2020 05:28:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 05:28:46 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0113.apcprd03.prod.outlook.com (2603:1096:203:b0::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.22 via Frontend Transport; Tue, 28 Jan 2020 05:28:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V4 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V4 3/4] clk: imx: imx8mm: use imx8m_clk_hw_composite_core
Thread-Index: AQHV1ZvP2+ovD9ZmcECh6GZdFmH9Hg==
Date: Tue, 28 Jan 2020 05:28:46 +0000
Message-ID: <1580189015-5744-4-git-send-email-peng.fan@nxp.com>
References: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:203:b0::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3d7d86d8-8abd-45db-64d2-08d7a3b2f240
x-ms-traffictypediagnostic: AM0PR04MB5939:|AM0PR04MB5939:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5939F969432365B2230A7009880A0@AM0PR04MB5939.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(366004)(376002)(189003)(199004)(2616005)(956004)(110136005)(54906003)(44832011)(5660300002)(316002)(186003)(16526019)(71200400001)(69590400006)(26005)(478600001)(81156014)(81166006)(6486002)(52116002)(6506007)(6636002)(2906002)(8676002)(4326008)(8936002)(6512007)(86362001)(66946007)(36756003)(66476007)(66556008)(66446008)(64756008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5939;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NRh52mA7X8tGhkSRH7n4BEcQdA686NIDMqUipEcUce2a3WTtTYeSuJAyuOkTzF85ejzgAPCmXsMe6U6HtVooBAgsuAWbyuBg41zDOJz25yj3UgBQfxUKm5kLd1dXm94yBBgN1Gdspvfievq6Qdr003Pq5TURf9bzZHJRPi7q2yMGKY4EQRMCpJnpLN03GC86IuGT28zpCN8biVdPYSbFIK2tziB47XnrTpQYwcHeWCxSpQaQgJAWuM7jHJ6SW+2XhiVrY7lTyLkz9yRwzmU+sqBQBQ5VWOPEs9vggrUBsbBZ0XyHNkxphH1Zf6XHLNF+/N8+hHvCdbj4Yqafmnhg6ZyqxcR9TX6XTULqzVMpVr5vFPsYTzQVxncOd8vfe2kp4x4DmMcQxz9cdrFzgf9AGGbszw/gOSOMhLC8o2eQiX5Ezd+8DypzMc49OwsgU7kFxG18LWQWZ6JEABLx30cgCb9uSS+dXSt5xkx5F6D9gphXL04Gl8Y9R3fVGpNDF4CYFbxjm2+nRr4x4p9N6rathHxG4ochOrCwcTLPRpLPddRvR4Am4PqoDFPW6Jhcbrn1
x-ms-exchange-antispam-messagedata: Qr6Dq/VJ8lprHizCLgzfoMqW0SeKNEbd8NcoIOWAU7cqYkbc7oi5wjDteST1a3LObAksOzCuOc1op7llCfmg04WxxfbJYDYUElEwtzG0NmERhZ5HvsKOfbMsACSnX6XDG2p9FJsdoNVscxTJaZ370Q==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d7d86d8-8abd-45db-64d2-08d7a3b2f240
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 05:28:46.1659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 78T1rj29x4JvZXIg5DDtC5upgFerlkcut+mwdtbblpzQ9p4GZovKd6OHVDSk48aa0PbPrtvDJCiE46MJx7WqUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_212849_050405_949C6BF9 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Add new definitions, and X_SRC/CG/DIV will be alias to the new
definitions for backwards compatibility

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c             | 35 +++++++++++++++++++-------------
 include/dt-bindings/clock/imx8mm-clock.h |  7 ++++++-
 2 files changed, 27 insertions(+), 15 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2ed93fc25087..f79a5f5d9ed5 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -414,20 +414,27 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 
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
+	hws[IMX8MM_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mm_m4_sels, base + 0x8080);
+	hws[IMX8MM_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mm_vpu_sels, base + 0x8100);
+	hws[IMX8MM_CLK_GPU3D_CORE] = imx8m_clk_hw_composite_core("gpu3d_core", imx8mm_gpu3d_sels, base + 0x8180);
+	hws[IMX8MM_CLK_GPU2D_CORE] = imx8m_clk_hw_composite_core("gpu2d_core", imx8mm_gpu2d_sels, base + 0x8200);
+
+	/* For backwards compatibility */
+	hws[IMX8MM_CLK_M4_SRC] = hws[IMX8MM_CLK_M4_CORE];
+	hws[IMX8MM_CLK_M4_CG] = hws[IMX8MM_CLK_M4_CORE];
+	hws[IMX8MM_CLK_M4_DIV] = hws[IMX8MM_CLK_M4_CORE];
+	hws[IMX8MM_CLK_VPU_SRC] = hws[IMX8MM_CLK_VPU_CORE];
+	hws[IMX8MM_CLK_VPU_CG] = hws[IMX8MM_CLK_VPU_CORE];
+	hws[IMX8MM_CLK_VPU_DIV] = hws[IMX8MM_CLK_VPU_CORE];
+	hws[IMX8MM_CLK_GPU3D_SRC] = hws[IMX8MM_CLK_GPU3D_CORE];
+	hws[IMX8MM_CLK_GPU3D_CG] = hws[IMX8MM_CLK_GPU3D_CORE];
+	hws[IMX8MM_CLK_GPU3D_DIV] = hws[IMX8MM_CLK_GPU3D_CORE];
+	hws[IMX8MM_CLK_GPU2D_SRC] = hws[IMX8MM_CLK_GPU2D_CORE];
+	hws[IMX8MM_CLK_GPU2D_CG] = hws[IMX8MM_CLK_GPU2D_CORE];
+	hws[IMX8MM_CLK_GPU2D_DIV] = hws[IMX8MM_CLK_GPU2D_CORE];
 
 	/* BUS */
 	hws[IMX8MM_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi",  imx8mm_main_axi_sels, base + 0x8800);
@@ -564,7 +571,7 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
 	hws[IMX8MM_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
 	hws[IMX8MM_CLK_USB1_CTRL_ROOT] = imx_clk_hw_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
-	hws[IMX8MM_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk", "gpu3d_div", base + 0x44f0, 0);
+	hws[IMX8MM_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk", "gpu3d_core", base + 0x44f0, 0);
 	hws[IMX8MM_CLK_USDHC1_ROOT] = imx_clk_hw_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
 	hws[IMX8MM_CLK_USDHC2_ROOT] = imx_clk_hw_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
 	hws[IMX8MM_CLK_WDOG1_ROOT] = imx_clk_hw_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
@@ -586,7 +593,7 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_CLK_SDMA1_ROOT] = imx_clk_hw_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
 	hws[IMX8MM_CLK_SDMA2_ROOT] = imx_clk_hw_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
 	hws[IMX8MM_CLK_SDMA3_ROOT] = imx_clk_hw_gate4("sdma3_clk", "ipg_audio_root", base + 0x45f0, 0);
-	hws[IMX8MM_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk", "gpu2d_div", base + 0x4660, 0);
+	hws[IMX8MM_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk", "gpu2d_core", base + 0x4660, 0);
 	hws[IMX8MM_CLK_CSI1_ROOT] = imx_clk_hw_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
 
 	hws[IMX8MM_CLK_GPT_3M] = imx_clk_hw_fixed_factor("gpt_3m", "osc_24m", 1, 8);
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index edeece2289f0..038c28d349e8 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -265,6 +265,11 @@
 #define IMX8MM_SYS_PLL2_333M_CG			244
 #define IMX8MM_SYS_PLL2_500M_CG			245
 
-#define IMX8MM_CLK_END				246
+#define IMX8MM_CLK_M4_CORE			246
+#define IMX8MM_CLK_VPU_CORE			247
+#define IMX8MM_CLK_GPU3D_CORE			248
+#define IMX8MM_CLK_GPU2D_CORE			249
+
+#define IMX8MM_CLK_END				250
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
