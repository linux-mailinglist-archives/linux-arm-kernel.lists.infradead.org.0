Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6920C135642
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5cKitJNyLSjme66skDvSRX2Ru3OxKgELuPwYxXxFW0=; b=l1Mf48T2jr/iBE
	1Ep9cah6ocTWEyXKBwu8v2AC4HatfPHVgQwso4JI3PTsf7hgMl7gDZBckH4vWpqojMr7FUTx09dD+
	xfTRoYoJDeqPoO4jiCy9El+Prr17W3jlDYkwTmWm7cEwrycizAO+I+CXb2xEEwfOZq1F1serbmyZF
	lvWqtOzfp7Hqjnp0nGLG7lDwQ31ruTEpc0utvMHNZZ0ZzQvCIoz+YOtf3BGZqMQrAD+qPPu6sZPJe
	01fxFwokX/2nE74Zx6xBI+uPnW925Srdh3hwq8gi7SYq+GMnCUeiRj2QlTB9/bF+ZocWU67DGs5qj
	5d+Hvp7ELO5A5oqmvxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUUd-0004Ov-Gj; Thu, 09 Jan 2020 09:52:43 +0000
Received: from mail-eopbgr140079.outbound.protection.outlook.com
 ([40.107.14.79] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUU1-00044j-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:52:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KG3QDthfan+AkxmaoC44kIr1yOuDEUI+XOcE8s+jHQ9PEyWnkTK5KKVbIvkCuSBnrD7+f5ajn79/0FoXBOUiEPbozqEcu9TdcrIXJcbcszOwK8HPpOjx4qyvNM3k7E9BBsSgcBPixt5cryKigqBkkMB7NGAv1xV5FA5ZG65frtB+NUyHxRaaLuhWyO3b00vfnHgYb2JRrEVBFDAM2qPBOupWDaaUGapg6RHja99c5+W6g+ptD0sksqswLlS6ygAJrnL7NYR2Y/7sMZwGU0/IgKreRTVKMzOhBhOPDWI0tsV0Sss81vti7jLZUdAhqL0nsKVvD7d77SX8nXP4Ngn05w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=muRifBPHRwcqLMy00aKt6JR3b/i4J6Lpr9xqb2CLxMo=;
 b=T6QIdved3GdoMej7Wyy10/7p2KbjJev0w6Hc9pWRbplCNGlFQeNiX+C5onk+KvhDAr/ZpgZFQlrYIazrmnueN1DTv10ewWTd98zdoFuUbRXuMM7kookKNRf14rSycoeClUs9QYcCa50SIc5cM85/f9rHldNEoGXvz9ZnFcWYOWGqp1KrYexF4scjszUDf67K61dKaKztgnkeXRArfvTySxy3Vs7u92B2Dhi2KyI6Q1Va/0BuMz5UE+NX/qaNPohKreymrEh6UoGadyFdeC7bYxwqgNKLOgZHVhlRnt66nVjJzjWMBidcitWuVDFvL51tpjIbVWwVcILHE9HR2EnkgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=muRifBPHRwcqLMy00aKt6JR3b/i4J6Lpr9xqb2CLxMo=;
 b=oGxFEn89zWmElkJ4mG5szYY8nYEOqMeKa3m+pLQ7VCVlyN5FLoHDBpAXk0x/hYxdhkm5usAT2cF50LWRYXUq8nTVrXyAvamTlXnBTaaCouBEaq9OFP+G/F4GO8k6SrNAdhmgLzpBq9LNtyhkTSFZVE/C98ohkRiwT9JOAfdwllA=
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com (20.177.54.92) by
 VI1PR04MB6878.eurprd04.prod.outlook.com (52.133.244.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 9 Jan 2020 09:52:02 +0000
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b]) by VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b%6]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 09:52:02 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR02CA0172.apcprd02.prod.outlook.com (2603:1096:201:1f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.12 via Frontend Transport; Thu, 9 Jan 2020 09:51:55 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 2/4] clk: imx: imx8mq: use imx8m_clk_hw_core_composite
Thread-Topic: [PATCH 2/4] clk: imx: imx8mq: use imx8m_clk_hw_core_composite
Thread-Index: AQHVxtJxubTNOuBidU6XCx51bC8+lg==
Date: Thu, 9 Jan 2020 09:52:02 +0000
Message-ID: <1578563269-32710-3-git-send-email-peng.fan@nxp.com>
References: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0172.apcprd02.prod.outlook.com
 (2603:1096:201:1f::32) To VI1PR04MB4496.eurprd04.prod.outlook.com
 (2603:10a6:803:69::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c2b488d9-cf7a-4836-cfa3-08d794e993d0
x-ms-traffictypediagnostic: VI1PR04MB6878:|VI1PR04MB6878:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB687858513766DABE034111B088390@VI1PR04MB6878.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:239;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(189003)(199004)(6486002)(26005)(4326008)(54906003)(69590400006)(36756003)(6636002)(71200400001)(6506007)(110136005)(52116002)(478600001)(8936002)(6512007)(316002)(16526019)(186003)(86362001)(6666004)(2616005)(956004)(44832011)(66946007)(66556008)(5660300002)(66446008)(64756008)(2906002)(8676002)(81166006)(66476007)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6878;
 H:VI1PR04MB4496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wDG89ymshYTqWy7uo+8p8wfuNm4kS+zcYTqWdI9hlvEHYE6OnDTljznZbZxDOEmb6SfNNT9Z/8Htv7h7aarALUa6b/lnXCZofto8kmBYFL/3rt1p4LE3EryBZERNHxfLOhpUtflIp1K3MKDycE2iaMII6OXOSsk6RLYtfXjAwMGRZFf+Ngs5jEOccttaR2sTVIjJHdiCvrFKMq6BzosAkOEYZtOxXX1uB5fj61KolB/5FIbKqjGEH7Cdid8pLeFdK5c8+qfE2ArOBX3GQqZZ7G+J/c+tAwvz+ax9cHYnAhXht1a5UxccRarwpQ1uKV1tFKBKIDdy4/f8iuT3v52gGBwP2SxpGN2jeaXARpxOK9PIsMVaQGJirHbNrq8vA+Y1VLPcwM9KZ7ZRIhyB9r8PUs5m7PBBIOvexth8Bon8tiXLwIxtC/suhq6LaoC079jdCLanS6uKdx5GQfIOz9BKZr3KCB3tqr7LL6ks8eRdIRAvGUIFfIME0opF2d7gu6DtIDJAH8Tu7QVqEBR7WCq59g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2b488d9-cf7a-4836-cfa3-08d794e993d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 09:52:02.6439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n2LlPYd3hHLwF7M0MLu5ZI8x0r6O5P8pCpuNljmHtUrNdnDJtzGpszaDY0GUP6EjRvpMoNbhzESMG0NgbihJBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_015205_641541_B38DA7AE 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_core_composite to simplify code.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 4c0edca1a6d0..5e22950d4907 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -403,22 +403,13 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	/* CORE */
 	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
-	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
-	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
-	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
-	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
-
 	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
-	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
-	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
-
 	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
-	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MQ_CLK_M4_DIV] = imx8m_clk_hw_core_composite("arm_m4_div", imx8mq_arm_m4_sels, base + 0x8080);
+	hws[IMX8MQ_CLK_VPU_DIV] = imx8m_clk_hw_core_composite("vpu_div", imx8mq_vpu_sels, base + 0x8100);
+	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx8m_clk_hw_core_composite("gpu_core_div", imx8mq_gpu_core_sels, base + 0x8180);
+	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite("gpu_shader_div", imx8mq_gpu_shader_sels, base + 0x8200);
 
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
